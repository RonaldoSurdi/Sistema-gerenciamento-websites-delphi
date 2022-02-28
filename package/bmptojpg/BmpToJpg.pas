unit BmpToJpg;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Jpeg;

type
  TTipoConvert = (asFile,asStream);
  TTipoJpegPixel = (asDefault,as8Bit,as24Bit);

  TBmpToJpeg = class(TComponent)
  private
    { Déclarations privées }
    FStream  : TStream;
    FJpeg    : TJpegImage;
    FBmp     : TPicture;
    FBmpStreamTmpOrigem: TMemoryStream;
    FJpegStreamTmpDestino: TMemoryStream;
    FTipoConvertOrigem: TTipoConvert;
    FTipoConvertDestino: TTipoConvert;
    FBmpFile : TFileName;
    FJpegFile: TFileName;
    FCompressionQuality: Integer;
    FJpegPixel: TTipoJpegPixel;
    FJpegGrayscale: Boolean;
    FJpegSuavizar: Boolean;
    FJpegProgressive: Boolean;
  protected
    { Déclarations protégées }
    procedure SetTipoConvertOrigem(Value: TTipoConvert);
    procedure SetTipoConvertDestino(Value: TTipoConvert);
    procedure SetCompressionQuality(Value: Integer);
    procedure SetJpegPixel(Value: TTipoJpegPixel);
    procedure FCopyBmpToJpeg;
  public
    { Déclarations publiques }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SaveToFile(FStreamOrigem: TMemoryStream);
    procedure SaveToStream(FStreamOrigem: TMemoryStream; var FStreamDestino: TMemoryStream);
  published
    { Déclarations publiées }
    property BmpType: TTipoConvert read FTipoConvertOrigem write SetTipoConvertOrigem;
    property BmpPath: TFileName read FBmpFile write FBmpFile;
    property JpegType: TTipoConvert read FTipoConvertDestino write SetTipoConvertDestino;
    property JpegPath: TFileName read FJpegFile write FJpegFile;
    property JpegCompress: Integer read FCompressionQuality write SetCompressionQuality;
    property JpegPixel: TTipoJpegPixel read FJpegPixel write SetJpegPixel;
    property JpegGrayscale: Boolean read FJpegGrayscale write FJpegGrayscale;
    property JpegSmoothing: Boolean read FJpegSuavizar write FJpegSuavizar;
    property JpegProgressive: Boolean read FJpegProgressive write FJpegProgressive;
  end;

procedure Register;

implementation

procedure TBmpToJpeg.FCopyBmpToJpeg;
begin
  if FTipoConvertDestino=asFile then begin
     if FileExists(FJpegFile) then DeleteFile(FJpegFile);
     FStream := TFileStream.Create(FJpegFile,fmCreate);
  end;
  try
    if FTipoConvertOrigem=asFile then FBmp.LoadFromFile(FBmpFile)
    else begin
       FBmpStreamTmpOrigem.Seek(0,soFromBeginning);
       FBmp.Bitmap.LoadFromStream(FBmpStreamTmpOrigem);
    end;
    With FJpeg do begin
         CompressionQuality:=FCompressionQuality;
         if FJpegPixel=asDefault then begin
            if FBmp.Bitmap.PixelFormat=pf24bit then PixelFormat:=jf24Bit
            else PixelFormat:=jf8Bit;
         end else if FJpegPixel=as24Bit then PixelFormat:=jf24Bit
         else PixelFormat:=jf8Bit;
         Grayscale:= FJpegGrayscale;
         ProgressiveEncoding:= FJpegProgressive;
         Smoothing:= FJpegSuavizar;
         Assign(FBmp.Bitmap);
         Compress;
         if FTipoConvertDestino=asFile then SaveToStream(FStream)
         else SaveToStream(FJpegStreamTmpDestino);
    end;
  finally
    if FTipoConvertDestino=asFile then FStream.Free;
  end;
end;

constructor TBmpToJpeg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FJpeg := TJpegImage.Create;
  FBmp  := TPicture.Create;
  FBmpStreamTmpOrigem:= TMemoryStream.Create;
  FJpegStreamTmpDestino:= TMemoryStream.Create;
  FCompressionQuality:=30;
  FJpegGrayscale:=False;
  FJpegPixel:=asDefault;
end;

destructor TBmpToJpeg.Destroy;
begin
  FJpeg.Free;
  FBmp.Free;
  FBmpStreamTmpOrigem.Free;
  FJpegStreamTmpDestino.Free;
  inherited Destroy;
end;

procedure TBmpToJpeg.SetTipoConvertOrigem(Value: TTipoConvert);
begin
	if FTipoConvertOrigem <> Value then begin
		FTipoConvertOrigem := Value;
    BmpPath:='';
	end;
end;

procedure TBmpToJpeg.SetTipoConvertDestino(Value: TTipoConvert);
begin
	if FTipoConvertDestino <> Value then begin
		FTipoConvertDestino := Value;
    JpegPath:='';
	end;
end;

procedure TBmpToJpeg.SetCompressionQuality(Value: Integer);
begin
	if FCompressionQuality <> Value then begin
    if Value > 100 then FCompressionQuality:=100
		else FCompressionQuality := Value;
	end;
end;

procedure TBmpToJpeg.SetJpegPixel(Value: TTipoJpegPixel);
begin
	if FJpegPixel <> Value then	begin
    FJpegPixel := Value;
	end;
end;

procedure TBmpToJpeg.SaveToFile(FStreamOrigem: TMemoryStream);
begin
  if FTipoConvertOrigem=asStream then begin
     FStreamOrigem.Seek(0,soFromBeginning);
     FBmpStreamTmpOrigem.LoadFromStream(FStreamOrigem);
  end;
  FCopyBmpToJpeg;
  FBmpStreamTmpOrigem.Clear;
  FBmpStreamTmpOrigem.Seek(0,soFromBeginning);
end;

procedure TBmpToJpeg.SaveToStream(FStreamOrigem: TMemoryStream; var FStreamDestino: TMemoryStream);
begin
  if FTipoConvertOrigem=asStream then begin
     FStreamOrigem.Seek(0,soFromBeginning);
     FBmpStreamTmpOrigem.LoadFromStream(FStreamOrigem);
  end;
  FCopyBmpToJpeg;
  if FTipoConvertDestino=asStream then begin
     FJpegStreamTmpDestino.Seek(0,soFromBeginning);
     FStreamDestino.LoadFromStream(FJpegStreamTmpDestino);
  end;
  FStreamDestino.Seek(0,soFromBeginning);
  FJpegStreamTmpDestino.Clear;
  FJpegStreamTmpDestino.Seek(0,soFromBeginning);
  FBmpStreamTmpOrigem.Clear;
  FBmpStreamTmpOrigem.Seek(0,soFromBeginning);
end;

procedure Register;
begin
  RegisterComponents('HWS', [TBmpToJpeg]);
end;

end.
