unit JpgToBmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Jpeg;

type
  TTipoConvert = (asFile,asStream);
  TTipoBmpPixel = (asDefault,as8Bit,as24Bit);

  TJpegToBmp = class(TComponent)
  private
    { Déclarations privées }
    FStreamBmp, FStreamJpeg  : TStream;
    FJpeg    : TJpegImage;
    FBmp     : TBitmap;
    FJpegStreamTmpOrigem: TMemoryStream;
    FBmpStreamTmpDestino: TMemoryStream;
    FTipoConvertOrigem: TTipoConvert;
    FTipoConvertDestino: TTipoConvert;
    FBmpFile : TFileName;
    FJpegFile: TFileName;
    FCompressionQuality: Integer;
    FBmpPixel: TTipoBmpPixel;
    FBmpGrayscale: Boolean;
    FBmpSuavizar: Boolean;
    FBmpProgressive: Boolean;
  protected
    { Déclarations protégées }
    procedure SetTipoConvertOrigem(Value: TTipoConvert);
    procedure SetTipoConvertDestino(Value: TTipoConvert);
    procedure SetBmpPixel(Value: TTipoBmpPixel);
    procedure FCopyJpegToBmp;
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
    property BmpPixel: TTipoBmpPixel read FBmpPixel write SetBmpPixel;
  end;

procedure Register;

implementation

procedure TJpegToBmp.FCopyJpegToBmp;
begin
  if FTipoConvertDestino=asFile then begin
     if FileExists(FBmpFile) then DeleteFile(FBmpFile);
     FStreamBmp := TFileStream.Create(FBmpFile,fmCreate);
  end;
  try
    if FTipoConvertOrigem=asFile then begin
       FStreamJpeg := TFileStream.Create(FJpegFile, fmOpenRead);
       FJpeg.LoadFromStream(FStreamJpeg);
    end else begin
       FJpegStreamTmpOrigem.Seek(0,soFromBeginning);
       FJpeg.LoadFromStream(FJpegStreamTmpOrigem);
    end;
    With FBmp do begin
         if FBmpPixel=asDefault then begin
            if FJpeg.PixelFormat=jf24bit then PixelFormat:=pf24bit
            else PixelFormat:=pf8bit;
         end else if FBmpPixel=as24Bit then PixelFormat:=pf24bit
         else PixelFormat:=pf8bit;
         Width := FJpeg.Width;
         Height := FJpeg.Height;
         Canvas.Draw(0,0,FJpeg);
         if FTipoConvertDestino=asFile then SaveToStream(FStreamBmp)
         else SaveToStream(FBmpStreamTmpDestino);
    end;
  finally
    if FTipoConvertOrigem=asFile then FStreamJpeg.Free;
    if FTipoConvertDestino=asFile then FStreamBmp.Free;
  end;
end;

constructor TJpegToBmp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FJpeg := TJpegImage.Create;
  FBmp  := TBitmap.Create;
  FJpegStreamTmpOrigem:= TMemoryStream.Create;
  FBmpStreamTmpDestino:= TMemoryStream.Create;
  FBmpPixel:=asDefault;
end;

destructor TJpegToBmp.Destroy;
begin
  FJpeg.Free;
  FBmp.Free;
  FJpegStreamTmpOrigem.Free;
  FBmpStreamTmpDestino.Free;
  inherited Destroy;
end;

procedure TJpegToBmp.SetTipoConvertOrigem(Value: TTipoConvert);
begin
	if FTipoConvertOrigem <> Value then begin
		FTipoConvertOrigem := Value;
    BmpPath:='';
	end;
end;

procedure TJpegToBmp.SetTipoConvertDestino(Value: TTipoConvert);
begin
	if FTipoConvertDestino <> Value then begin
		FTipoConvertDestino := Value;
    JpegPath:='';
	end;
end;

procedure TJpegToBmp.SetBmpPixel(Value: TTipoBmpPixel);
begin
	if FBmpPixel <> Value then	begin
    FBmpPixel := Value;
	end;
end;

procedure TJpegToBmp.SaveToFile(FStreamOrigem: TMemoryStream);
begin
  if FTipoConvertOrigem=asStream then begin
     FStreamOrigem.Seek(0,soFromBeginning);
     FJpegStreamTmpOrigem.LoadFromStream(FStreamOrigem);
  end;
  FCopyJpegToBmp;
  FJpegStreamTmpOrigem.Clear;
  FJpegStreamTmpOrigem.Seek(0,soFromBeginning);
end;

procedure TJpegToBmp.SaveToStream(FStreamOrigem: TMemoryStream; var FStreamDestino: TMemoryStream);
begin
  if FTipoConvertOrigem=asStream then begin
     FStreamOrigem.Seek(0,soFromBeginning);
     FJpegStreamTmpOrigem.LoadFromStream(FStreamOrigem);
  end;
  FCopyJpegToBmp;
  if FTipoConvertDestino=asStream then begin
     FStreamDestino.Clear;
     FStreamDestino.Seek(0,soFromBeginning);
     FBmpStreamTmpDestino.Seek(0,soFromBeginning);
     FStreamDestino.LoadFromStream(FBmpStreamTmpDestino);
  end;
  FStreamDestino.Seek(0,soFromBeginning);
  FBmpStreamTmpDestino.Clear;
  FBmpStreamTmpDestino.Seek(0,soFromBeginning);
  FJpegStreamTmpOrigem.Clear;
  FJpegStreamTmpOrigem.Seek(0,soFromBeginning);
end;

procedure Register;
begin
  RegisterComponents('HWS', [TJpegToBmp]);
end;

end.
