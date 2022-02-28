{###############################################################################
Programa: Hwsfunctions
Módulo: Unit contendo funções e procedures públicas.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit hwsfunctions;

interface
Uses Forms, Windows, Shellapi, Graphics, Classes, uloading, Winsock, Registry,
     INIFiles, MMSystem, zlib, Types, Messages;

type
  Tdgtdados = record
     usr : String;
     pass : String;
     confat : boolean;
  end;
  Tbt_search_ax = record
     default: Boolean;
     descricao: String;
     countinit: Integer;
     pathdefault: String;
     filelist: TStringList;
  end;
  Tloadx = class(Tfloading)
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TCharsHWS = set of Char;

  Thwsf = class
  private
    { Private declarations }
  public
    { Public declarations }
    function BtMensagem(Mensa:string):boolean;
    function BtConfirma(Mensa:string):boolean;
    function BtDesc(Mensa:string):String;
    function BtAviso(Mensa:TStringList):boolean;
    function BtDigitarSenha(Title:string):Tdgtdados;
    function Btpath:String;
    function Btsearch(pathdefault,filtrofind:string; var xpathdefault: String):TStringList;
    function Btsearch_ax(pathdefault,filtrofind:string):Tbt_search_ax;
    function Btopen(pathdefault,filtrofind:string; var xpathdefault: String):TStringList;
    function BtSobre:boolean;
    function HiconToBitmap:TBitmap;
    function HiconToBitmapexe(nomedoarqexe: String):TBitmap;
    function HiconToIcon:TIcon;
    function DisabledBitmap(FOriginal: TBitmap; OutlineColor: TColor): TBitmap;
    function GetFileHTTP(strRemoteFileName: string; var xipup:TStringList):Boolean;
  end;

var
  hwsf : Thwsf;
  loadx : Tloadx;
  function EnDecryptString(StrValue : String; Chave: Word) : String;
  function EnDecryptStream(InMS : TMemoryStream; Chave: Word) : TMemoryStream;
  procedure JumpTo(const aAdress: String);
  Function ExtractWindowsDir : String;
  Function ExtractSystemDir : String;
  Function ExtractTempDir : String;
  function FormatPath(xdirtmp:string):String;
  function GetLocalIP : string;
  function HexToInt(const HexStr: string): Word;
  procedure SavetoTextFile(lista:tstrings;filename:String);
  procedure ExtractRGB(ColorNum: longint; var Red,Green,Blue: integer);
  function ColorToHTML(InColor: TColor):String;
  function FileVerInfo(const FileName: string): TStringList;
  function FilterCharsHWS(const S: string; const ValidChars: TCharsHWS): string;
  function SoundCardAvailable: Boolean;
  function Verifyemail(email: string): boolean;
  function GetImg(Index: Integer):TBitmap; External 'HWSsksys.dll';
  function UpdateIpNumber(var xipup:String):Boolean;
  function GetIPcnt(var xipup:String):Boolean;
  //soap
  procedure CompressStream(inpStream,outStream: TStream);
  procedure CopyToStream(const InArray: TByteDynArray; var outStream: TMemoryStream);
  procedure ExpandStream(inpStream: TStream; var outStream: TMemoryStream);
  function ByteArrayFromStream(inStream: TMemoryStream): TByteDynArray;
  function ByteArrayCompressedToStream(const ByteArray: TByteDynArray): TMemoryStream;
  //rtftohtml
  //function RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;

implementation
//{$R *.DFM}
Uses uBt_Mensagem,uBt_Confirma,uBt_Aviso,uBt_digitarsenha,uBt_path,uSobre,
     SysUtils,reinit,uBt_search,uBt_desc,uBt_open, Spin, ScktComp;

function Thwsf.BtMensagem(Mensa:string):boolean;
begin
     Try
        Application.CreateForm(TBt_Mensagem,bt_mensagem);
        bt_mensagem.Mensagem_Texto.Caption:=Mensa;
        bt_mensagem.ShowModal;
     finally
        bt_mensagem.Free;
     End;
     Result:=true;
end;

function Thwsf.BtConfirma(Mensa:string):boolean;
begin
     Try
        Application.CreateForm(TBt_Confirma,Bt_Confirma);
        Bt_Confirma.Confirma_Texto.Caption:=Mensa;
        Bt_Confirma.ShowModal;
        Result:=Bt_Confirma.Bt_Confere;
     finally
        Bt_Confirma.Free;
     End;
end;

function Thwsf.BtDesc(Mensa:string):String;
begin
     Try
        Application.CreateForm(TBt_desc,Bt_desc);
        Bt_desc.Label1.Caption:=Mensa;
        Bt_desc.ShowModal;
        Result:=Bt_desc.bt_desctx;
     finally
        Bt_desc.Free;
     End;
end;

function Thwsf.BtAviso(Mensa:TStringList):boolean;
begin
     Try
        Application.CreateForm(TBt_Aviso,Bt_Aviso);
        Bt_Aviso.Aviso_Texto.Lines:=Mensa;
        Bt_Aviso.ShowModal;
     finally
        Bt_Aviso.Free;
     End;
     Result:=true;
end;

function Thwsf.BtDigitarSenha(Title:string):Tdgtdados;
var  dgtdados : Tdgtdados;
begin
     Try
        Application.CreateForm(TBt_digitarsenha,Bt_digitarsenha);
        Bt_digitarsenha.lb_autenticacao_title.Caption:=Title;
        Bt_Digitarsenha.ShowModal;
        dgtdados.confat:=Bt_Digitarsenha.fautenticasn;
        dgtdados.usr:=Bt_Digitarsenha.fautentica_usr;
        dgtdados.pass:=Bt_Digitarsenha.fautentica_pass;
        Result:=dgtdados;
     finally
        Bt_digitarsenha.Free;
     End;
end;

function Thwsf.Btpath:String;
begin
     Try
        Application.CreateForm(TBt_path,Bt_path);
        Bt_path.ShowModal;
        if Bt_path.Bt_Confere then Result:=Bt_path.ShellTreeView1.Path
        else Result:='';
     finally
        Bt_path.Free;
     End;
end;

function Thwsf.Btsearch(pathdefault,filtrofind:string; var xpathdefault: String):TStringList;
begin
     Try
        Application.CreateForm(TBt_search,Bt_search);
        Bt_search.xpathdefault:=pathdefault;
        if filtrofind<>'' then Bt_search.FilterComboBox1.Filter:=filtrofind;
        Bt_search.ShowModal;
        xpathdefault:= Bt_search.xpathdefault;
        Result:=Bt_search.xresultStringList;
     finally
        Bt_search.Free;
     End;
end;

function Thwsf.Btsearch_ax(pathdefault,filtrofind:string):Tbt_search_ax;
var  bt_search_ax: Tbt_search_ax;
begin
     Try
        Application.CreateForm(TBt_search,Bt_search);
        Bt_search.xpathdefault:=pathdefault;
        Bt_search.grp_search1.Visible:=true;
        if filtrofind<>'' then Bt_search.FilterComboBox1.Filter:=filtrofind;
        Bt_search.ShowModal;
        if Bt_search.rb_search1.Checked then begin
           bt_search_ax.default:=True;
           bt_search_ax.descricao:='';
           bt_search_ax.countinit:=0;
        end else begin
           bt_search_ax.default:=False;
           bt_search_ax.descricao:=Bt_search.ed_search1.Text;
           bt_search_ax.countinit:=Bt_search.ed_search2.Value;
        end;
        bt_search_ax.pathdefault:=Bt_search.xpathdefault;
        bt_search_ax.filelist:=TStringList.Create;
        bt_search_ax.filelist.Clear;
        bt_search_ax.filelist.Assign(Bt_search.xresultStringList);
        Result:=bt_search_ax;
     finally
        Bt_search.Free;
     End;
end;

function Thwsf.Btopen(pathdefault,filtrofind:string; var xpathdefault: String):TStringList;
begin
     Try
        Application.CreateForm(TBt_open,Bt_open);
        Bt_open.xpathdefault:=pathdefault;
        if filtrofind<>'' then Bt_open.FilterComboBox1.Filter:=filtrofind;
        Bt_open.ShowModal;
        xpathdefault:= Bt_open.xpathdefault;
        Result:=Bt_open.xresultStringList;
     finally
        Bt_search.Free;
     End;
end;

function Thwsf.BtSobre:boolean;
begin
    Try
       Application.CreateForm(TSobre,Sobre);
       Sobre.ShowModal;
    finally
       Sobre.Free;
    End;
    Result:=true;
end;

function EnDecryptString(StrValue : String; Chave: Word) : String;
var I: Integer;
    OutValue : String;
begin
    OutValue := '';
    for I := 1 to Length(StrValue) do
        OutValue := OutValue + char(Not(ord(StrValue[I])-Chave));
    Result := OutValue;
end;

function EnDecryptStream(InMS : TMemoryStream; Chave: Word) : TMemoryStream;
var
    I : Integer;
    C : byte;
    OutMS : TMemoryStream;
begin
    OutMS := TMemoryStream.Create;
    //try
      InMS.Seek(0,soFromBeginning);
      for I := 0 to InMS.Size - 1 do begin
          InMS.Read(C, 1);
          C := (C xor not(ord(chave shr I)));
          OutMS.Write(C,1);
      end;
      OutMS.Seek(0,soFromBeginning);
      Result:= OutMS;
      Result.Seek(0,soFromBeginning);
    //finally
    //  OutMS.Free;
    //end;
end;

function Thwsf.HiconToBitmap:TBitmap;
var
    Pic : TBitmap;
    xicon : Ticon;
begin
    xicon := Ticon.Create;
    xicon.Handle:=ExtractIcon(Application.Handle,PChar(Application.ExeName),0);
    Pic := TBitmap.Create;
    with Pic do begin
      width := xicon.Width;
      Height := xicon.Height;
      Canvas.Draw(0, 0, xicon);
    end;
    Result:=Pic;
end;

function Thwsf.HiconToBitmapexe(nomedoarqexe: String):TBitmap;
var
    Pic : TBitmap;
    xicon : Ticon;
begin
    xicon := Ticon.Create;
    xicon.Handle:=ExtractIcon(Application.Handle,PChar(nomedoarqexe),0);
    Pic := TBitmap.Create;
    with Pic do begin
      width := xicon.Width;
      Height := xicon.Height;
      Canvas.Draw(0, 0, xicon);
    end;
    Result:=Pic;
end;


function Thwsf.HiconToIcon:TIcon;
var
    xicon : Ticon;
begin
    xicon := Ticon.Create;
    xicon.Handle:=ExtractIcon(Application.Handle,PChar(Application.ExeName),0);
    Result:=xicon;
end;

function Thwsf.DisabledBitmap(FOriginal: TBitmap; OutlineColor: TColor): TBitmap;
const
    ROP_DSPDxax = $00E20746;
var
    MonoBmp: TBitmap;
    IRect: TRect;
begin
    IRect := Rect(0, 0, FOriginal.Width, FOriginal.Height);
    Result := TBitmap.Create;
    try
      Result.Width := FOriginal.Width;
      Result.Height := FOriginal.Height;
      MonoBmp := TBitmap.Create;
      try
        with MonoBmp do begin
          Assign(FOriginal);
          {$IFDEF S_D3}
          HandleType := bmDDB;
          {$ENDIF}
          Canvas.Brush.Color := clBlack;
          if Monochrome then begin
            Canvas.Font.Color := clWhite;
            Monochrome := False;
            Canvas.Brush.Color := clWhite;
          end;
          Monochrome := True;
        end;
        with Result.Canvas do begin
          Brush.Color := OutlineColor;
          FillRect(IRect);
          Brush.Color := clBtnHighlight;
          SetTextColor(Handle, clBlack);
          SetBkColor(Handle, clWhite);
          BitBlt(Handle, 1, 1, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top,
          MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
          Brush.Color := clBtnShadow;
          SetTextColor(Handle, clBlack);
          SetBkColor(Handle, clWhite);
          BitBlt(Handle, 0, 0, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top,
          MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
        End;
      finally
        MonoBmp.Free;
      end;
    except
      Result.Free;
      raise;
    end;
end;

procedure JumpTo(const aAdress: String);
var pathnv,buffer: String;
    Reg: Tregistry;
begin
    buffer := 'http://' + aAdress;
    pathnv:='';
    Reg:=Tregistry.create;
    try
      With Reg do begin
        rootkey:=HKEY_LOCAL_MACHINE;
        if KeyExists('Software\HWS\NavegadorHWS') then begin
         Try
            OpenKey('Software\HWS\NavegadorHWS',False);
            pathnv:=ReadString('Path')+' /'+buffer;
            CloseKey;
         Except
            CloseKey;
         End;
        end;
      end;
    finally
     Reg.Free;
    End;
    if pathnv<>'' then WinExec(PChar(pathnv),1)
    else ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

Function ExtractWindowsDir : String;
Var
    Buffer : Array[0..144] of Char;
Begin
    GetWindowsDirectory(Buffer,144);
    Result := FormatPath(StrPas(Buffer));
End;

Function ExtractSystemDir : String;
Var
    Buffer : Array[0..144] of Char;
Begin
    GetSystemDirectory(Buffer,144);
    Result := FormatPath(StrPas(Buffer));
End;

Function ExtractTempDir : String;
Var
    Buffer : Array[0..144] of Char;
Begin
    GetTempPath(144,Buffer);
    Result := FormatPath(StrPas(Buffer));
End;

function FormatPath(xdirtmp:string):String;
var axlength:string;
begin
    axlength:=copy(xdirtmp,Length(xdirtmp),1);
    if (copy(xdirtmp,Length(xdirtmp),1)<>'\') and
       (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
        xdirtmp:=xdirtmp+'\';
    Result:=xdirtmp;
end;

function GetLocalIP : string;
type
  TaPInAddr = array [0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe : PHostEnt;
  pptr : PaPInAddr;
  Buffer : array [0..63] of char;
  I : Integer;
  GInitData : TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe :=GetHostByName(buffer);
  if phe = nil then Exit;
  pptr := PaPInAddr(Phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do begin
  result:=StrPas(inet_ntoa(pptr^[I]^));
  result := StrPas(inet_ntoa(pptr^[I]^));
  Inc(I);
  end;
  WSACleanup;
end;

function HexToInt(const HexStr: string): Word;
var x_for:integer;
    result_int: real;
begin
    result_int := 0;
    for x_for:=1 to Length(HexStr) do begin
        result_int:= result_int+ord(HexStr[x_for]);
    end;
    result_int:=result_int*25.55;
    if (result_int > 65535) then
    while (result_int > 65535) do begin
         result_int:= result_int - 53;
    end;
    Result := StrtoInt(FormatFloat('0',result_int));
end;

procedure SavetoTextFile(lista:tstrings;filename:String);
var arqfile: TextFile;
    xarq: Integer;
begin
     Try
         AssignFile ( arqfile, filename );
         Rewrite ( arqfile );
         for xarq:=0 to lista.Count do
             Writeln ( arqfile, lista.Strings[xarq] );
     Finally
         CloseFile ( arqfile );
     End;
end;

procedure ExtractRGB(ColorNum: longint; var Red,Green,Blue: integer);
begin
  Red   :=  ColorNum AND $FF ;
  Green := (ColorNum SHR  8) AND $FF ;
  Blue  := (ColorNum SHR 16) AND $FF ;
end;

function ColorToHTML(InColor: TColor):String;
begin
  InColor := ColorToRGB(InColor);
  Result := Format('#%.2x%.2x%.2x',
    [GetRValue(InColor), GetGValue(InColor), GetBValue(InColor)]);
end;

function FileVerInfo(const FileName: string): TStringList;
const
    Key: array[1..9] of string =(
      'CompanyName',
      'ProductName',
      'FileDescription',
      'InternalName',
      'FileVersion',
      'LegalCopyright',
      'OriginalFilename',
      'ProductVersion',
      'Comments'
    );
var Dummy : THandle;
    BufferSize, Len : Integer;
    Buffer : PChar;
    LoCharSet, HiCharSet : Word;
    FixedFileInfo, Translate, Return : Pointer;
    StrFileInfo, Flags, TargetOS, TypeArq : string;
    i : Byte;
    FileInfo: TStringList;
begin
  FileInfo:= TStringList.Create;
  FileInfo.Clear;
  Result := FileInfo;
  If not FileExists(FileName) then begin
      //hwsf.BtMensagem('Arquivo não encontrado');
      exit;
  end;
  BufferSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  if BufferSize <> 0 then begin
      GetMem(Buffer, Succ(BufferSize));
      try
        if GetFileVersionInfo(PChar(FileName), 0, BufferSize,Buffer) then begin
           if VerQueryValue(Buffer, '\VarFileInfo\Translation', Translate, UINT(Len)) then begin
              LoCharSet := LoWord(Longint(Translate^));
              HiCharSet := HiWord(Longint(Translate^));
              for i := 1 to 9 do begin
                  StrFileInfo := Format('\StringFileInfo\0%x0%x\%s',[LoCharSet, HiCharSet, Key[i]]);
                  if VerQueryValue(Buffer,PChar(StrFileInfo), Return,UINT(Len)) then begin
                     FileInfo.Add(PChar(Return));
                  end;
              end;
              if VerQueryValue(Buffer,'\',FixedFileInfo, UINT(Len)) then
              with TVSFixedFileInfo(FixedFileInfo^) do begin
                  Flags := '';
                  if (dwFileFlags and VS_FF_DEBUG) = VS_FF_DEBUG then begin
                      Flags := Concat(Flags,'*Debug* ');
                  end;
                  if (dwFileFlags and VS_FF_SPECIALBUILD) = VS_FF_SPECIALBUILD then begin
                      Flags := Concat(Flags, '*Special Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PRIVATEBUILD) = VS_FF_PRIVATEBUILD then begin
                      Flags := Concat(Flags, '*Private Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PRERELEASE) = VS_FF_PRERELEASE then begin
                      Flags := Concat(Flags, '*Pre-Release Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PATCHED) = VS_FF_PATCHED then begin
                      Flags := Concat(Flags, '*Patched* ');
                  end;
                  if Flags <> '' then begin
                      FileInfo.Add('Atributos: ' + Flags);
                  end;
                  TargetOS := 'Plataforma (OS): ';
                  case dwFileOS of
                    VOS_UNKNOWN : TargetOS := Concat(TargetOS, 'Desconhecido');
                    VOS_DOS : TargetOS := Concat(TargetOS, 'MS-DOS');
                    VOS_OS216 : TargetOS := Concat(TargetOS, '16-bit OS/2');
                    VOS_OS232 : TargetOS := Concat(TargetOS, '32-bit OS/2');
                    VOS_NT : TargetOS := Concat(TargetOS, 'Windows NT');
                    VOS_NT_WINDOWS32, 4: TargetOS := Concat(TargetOS, 'Win32 API');
                    VOS_DOS_WINDOWS16: TargetOS := Concat(TargetOS, '16-bit Windows ','sob MS-DOS');
                  else
                    TargetOS := Concat(TargetOS, 'Fora do Padrão. Código: ', IntToStr(dwFileOS));
                  end;
                  FileInfo.Add(TargetOS);
                  TypeArq := 'Tipo de Arquivo: ';
                  case dwFileType of
                    VFT_UNKNOWN : TypeArq := Concat(TypeArq,'Desconhecido');
                    VFT_APP : TypeArq := Concat(TypeArq,'Aplicacao');
                    VFT_DLL : TypeArq := Concat(TypeArq,'Dynamic-Link Lib.');
                    VFT_DRV : begin
                      TypeArq := Concat(TypeArq,'Device driver - Driver ');
                      case dwFileSubtype of
                          VFT2_UNKNOWN : TypeArq := Concat(TypeArq,'Desconhecido');
                          VFT2_DRV_PRINTER : TypeArq := Concat(TypeArq,'de Impressao');
                          VFT2_DRV_KEYBOARD : TypeArq := Concat(TypeArq,'de Teclado');
                          VFT2_DRV_LANGUAGE : TypeArq := Concat(TypeArq,'de Idioma');
                          VFT2_DRV_DISPLAY : TypeArq := Concat(TypeArq,'de Vídeo');
                          VFT2_DRV_MOUSE : TypeArq := Concat(TypeArq,'de Mouse');
                          VFT2_DRV_NETWORK : TypeArq := Concat(TypeArq,'de Rede');
                          VFT2_DRV_SYSTEM : TypeArq := Concat(TypeArq,'de Sistema');
                          VFT2_DRV_INSTALLABLE : TypeArq := Concat(TypeArq,'Instalavel');
                          VFT2_DRV_SOUND : TypeArq := Concat(TypeArq,'Multimida');
                      end;
                    end;
                    VFT_FONT : begin
                      TypeArq := Concat(TypeArq,'Fonte - Fonte ');
                      case dwFileSubtype of
                          VFT2_UNKNOWN : TypeArq := Concat(TypeArq, 'Desconhecida');
                          VFT2_FONT_RASTER : TypeArq := Concat(TypeArq,'Raster');
                          VFT2_FONT_VECTOR : TypeArq := Concat(TypeArq,'Vetorial');
                          VFT2_FONT_TRUETYPE : TypeArq := Concat(TypeArq,'TrueType');
                      end;
                    end;
                    VFT_VXD : TypeArq := Concat(TypeArq,'Virtual Device');
                    VFT_STATIC_LIB: TypeArq := Concat(TypeArq,'Static-Link Lib.');
                  end;
                  FileInfo.Add(TypeArq);
              end;
           end;
        end;
      finally
        FreeMem(Buffer, Succ(BufferSize));
        Result := FileInfo;
      end;
  end;
end;

function FilterCharsHWS(const S: string; const ValidChars: TCharsHWS): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  if S[I] in ValidChars then
  Result := Result + S[I];
end;

function SoundCardAvailable: Boolean;
begin
  Result := WaveOutGetNumDevs > 0;
end;

function Verifyemail(email: string): boolean;
var axcrtmail: String;
    tam_email,pos_aroba,pos_ponto,qtd_pontos_esq,qtd_pontos_dir,qtd_arroba,id1,id2: Integer;
    error_mail, vet_valido_error: Boolean;
    const
        vet_valido: array [0..55] of string = ('0','1','2','3','4','5','6','7','8','9',
                                               'a','b','c','d','e','f','g','h','i','j',
                                               'k','l','m','n','o','p','q','r','s','t',
                                               'u','v','w','x','y','z','ç','ã','à','á',
                                               'â','è','é','ê','ì','í','õ','ò','ó','ô',
                                               'û','ù','ú','ü','_','-');
begin
        qtd_pontos_esq:=0;
        qtd_pontos_dir:=0;
        qtd_arroba:=0;
        pos_ponto:=0;
        pos_aroba:=0;
        tam_email:= Length(email);
        error_mail:=True;
        for id1:= 0 to tam_email-1 do begin
            axcrtmail:= Copy(email,id1+1,1);
            if axcrtmail = '@' then begin
               Inc(qtd_arroba);
               pos_aroba:=id1;
               if (qtd_arroba>1) or (id1=0) or (id1=tam_email-1) then begin // or (pos_ponto+1=id1)
                  error_mail:=False;
                  break;
               end;
            end else if axcrtmail = '.' then begin
               Inc(pos_ponto);
               if qtd_arroba = 0 then Inc(qtd_pontos_esq)
               else Inc(qtd_pontos_dir);
               if (id1=0) or (id1=tam_email-1) then begin // or (pos_aroba=id1-1)
                  error_mail:=False;
                  break;
               end;
            end else begin
               vet_valido_error:=False;
               for id2:=0 to 55 do begin
                   if axcrtmail=vet_valido[id2] then begin
                      vet_valido_error:=True;
                      break;
                   end;
               end;
               if not vet_valido_error then begin
                  error_mail:=False;
                  break;
               end;
            end;
        end;
        if error_mail then if (qtd_arroba=0) then error_mail:=False;
        if error_mail then if (qtd_arroba>1) then error_mail:=False;
        if error_mail then if (qtd_pontos_esq>20) then error_mail:=False;
        if error_mail then if (qtd_pontos_dir<1) then error_mail:=False;
        if error_mail then if (qtd_pontos_dir>4) then error_mail:=False;
        Result:= error_mail;
end;

procedure CompressStream(inpStream,outStream: TStream);
  var InpBuf,OutBuf: Pointer;
  var InpBytes,OutBytes: integer;
begin
    InpBuf := nil;
    OutBuf := nil;
    try
      GetMem(InpBuf,inpStream.size);
      inpStream.Position := 0;
      InpBytes := inpStream.Read(InpBuf^,inpStream.size);
      CompressBuf(InpBuf,InpBytes,OutBuf,OutBytes);
      outStream.Write(OutBuf^,OutBytes);
    finally
      if InpBuf <> nil then FreeMem(InpBuf);
      if OutBuf <> nil then FreeMem(OutBuf);
    end;
end;

procedure ExpandStream(inpStream: TStream; var outStream: TMemoryStream);
var InpBuf,OutBuf: Pointer;
    OutBytes,sz: integer;
begin
    InpBuf := nil;
    OutBuf := nil;
    sz := inpStream.size-inpStream.Position;
    if sz > 0 then
    try                     
      GetMem(InpBuf,sz);
      inpStream.Read(InpBuf^,sz);
      inpStream.Position:=0;
      DecompressBuf(InpBuf,sz,0,OutBuf,OutBytes);
      outStream.Write(OutBuf^,OutBytes);
      outStream.Position := 0;
    finally
      if InpBuf <> nil then FreeMem(InpBuf);
      if OutBuf <> nil then FreeMem(OutBuf);
    end;
end;

function ByteArrayCompressedToStream(const ByteArray: TByteDynArray):TMemoryStream;
var MStream,FStream: TMemoryStream;
begin
  MStream := TMemoryStream.Create;
  FStream := TMemoryStream.Create;
  CopyToStream( ByteArray, MStream );
  MStream.Position := 0;
  try
    ExpandStream(MStream, FStream);
    Result:=FStream;
  finally
    //MStream.Free;
    //FStream.Free;
  end;
end;

function ByteArrayFromStream(inStream: TMemoryStream): TByteDynArray;
var pTemp : pointer;
begin
  SetLength(Result, inStream.Size );
  pTemp := @Result[0];
  inStream.Position := 0;
  inStream.Read(pTemp^, inStream.Size);
end;

procedure CopyToStream( const InArray : TByteDynArray ; var outStream : TMemoryStream );
var pTemp : Pointer;
begin
  pTemp := @InArray[0];
  outStream.Write( pTemp^, Length(InArray));
end;

function Thwsf.GetFileHTTP(strRemoteFileName: string; var xipup:TStringList):Boolean;
var intReturnCode: Integer;
    s,strHost: string;
    szBuffer: array[0..128] of Char;
    FileOut: TMemoryStream;
    ClientSocket: TClientSocket;
    axip: TStringList;
begin
      strHost:='www.hws.com.br';
      xipup:= TStringList.Create;
      xipup.Text:='0.0.0.0';
      Result:=False;
      FileOut:= TMemoryStream.Create;
      FileOut.Clear;
      try
        ClientSocket := TClientSocket.Create(Nil);
        with ClientSocket do begin
          Host       := strHost;
          ClientType := ctBlocking;
          Port       := 80;
          try
            Open;
            s := 'GET ' + strRemoteFileName + '   HTTP/1.0'#13#10 + 'Host: ' + strHost + #13#10#13#10;
            intReturnCode := Socket.SendBuf(Pointer(s)^, Length(s));
            if intReturnCode > 0 then begin
              while (intReturnCode > 0) do begin
                 FillChar(szBuffer, SizeOf(szBuffer), 0);
                 intReturnCode := Socket.ReceiveBuf(szBuffer, SizeOf(szBuffer));
                 if intReturnCode > 0 then FileOut.Write(szBuffer, intReturnCode);
              end;
            end;
            Close;
          except
          end;
        end;
        FileOut.Seek(0,soFromBeginning);
        if FileOut.Size>0 then begin
           axip:= TStringList.Create;
           axip.LoadFromStream(FileOut);
           Try
              xipup:=axip;
              Result:= True;
           except
           end;
        end;
      finally
        FileOut.Free;
        ClientSocket.Free;
      end;
end;

function UpdateIpNumber(var xipup:String):Boolean;
var axipSTR: TStringList;
    axid: Integer;
begin
      Result:=false;
      axipSTR:= TStringList.Create;
      if hwsf.GetFileHTTP('/hwswebsys/LdipSrvHWS.cfg',axipSTR) then begin
         Try
            axid:=axipSTR.Count-1;
            if Length(axipSTR.Strings[axid])>15 then begin
               xipup:=copy(axipSTR.Strings[axid],8,Length(axipSTR.Strings[axid]));
               Result:=true;
            end else xipup:='Erro...';
         Except
            xipup:='Erro Leitura.';
         End;
      end else xipup:='Erro na conexão';
      axipSTR.Free;
end;

function GetIPcnt(var xipup:String):Boolean;
var axipSTR: TStringList;
begin
      Result:=false;
      axipSTR:= TStringList.Create;
      if hwsf.GetFileHTTP('/hwswebsys/getxip.php',axipSTR) then begin
         try
            xipup:=axipSTR.Strings[8];
            Result:=true;
         Except
            xipup:='Erro Leitura.';
         End;
      end else xipup:='Erro na conexão';
      axipSTR.Free;
end;

{function RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;
var Dest: TStringList;
    AxPos,AxTotal: integer; // Counter
    s_str,cel_str: string;
    xinitPara: Boolean;
    AxFontName: Array[0..1] of string;
    AxBold,AxItalic,AxUnderline,AxMarcador: Array[0..1] of boolean; // Format
    AxColor: Array[0..1] of tColor; // Color
    AxSize:  Array[0..1] of integer; // Size
    AxAlign: Array[0..1] of TParaAlignment; // Align

    function CalculateSize(pt:integer):integer;
    begin
      if xhead then begin
         case pt of
            0..7: result:=1;
            8..10: result:=2;
           11..13: result:=3;
           14..16: result:=4;
           17..20: result:=5;
           21..24: result:=6;
           else result:=7;
         end;
      end else result:=pt;
    end;

    function ColorRGB(axid: integer): String;
    begin
        Result:=IntToHex(GetRValue(AxColor[axid]),2)+
                IntToHex(GetGValue(AxColor[axid]),2)+
                IntToHex(GetBValue(AxColor[axid]),2);
    end;

    function getFormatText(axid: integer): String;
    begin
        with re_editor_tmp do begin
             AxFontName[axid]:= SelAttributes.Name;
             AxColor[axid]:= SelAttributes.Color;
             AxSize[axid]:= CalculateSize(SelAttributes.Size);
             AxAlign[axid]:= Paragraph.Alignment;
             AxBold[axid]:= fsBold in SelAttributes.Style;
             AxItalic[axid]:= fsItalic in SelAttributes.Style;
             AxUnderline[axid]:= fsUnderline in SelAttributes.Style;
             AxMarcador[axid]:= Boolean(Paragraph.Numbering);
        end;
    end;

begin
   Dest:= TStringList.Create;
   Dest.Clear;
   // Cabeçalho
   if xhead then begin
      Dest.Add('<html>');
      Dest.Add('<head>');
      Dest.Add('<meta name="generator" content="'+contenthead+'">');
      Dest.Add('</head>');
      Dest.Add('<body text="#000000" bgcolor="#FFFFFF" link="#FF0000"alink="#FF0000" vlink="#FF0000">');
   end else begin
      Dest.Add('<Text>');
   end;
   re_editor_tmp.SelectAll;
   AxTotal:= re_editor_tmp.SelLength;
   xinitPara:= true;
   s_str:='';
   for AxPos:=0 to 1 do begin
       AxFontName[AxPos]:= '';
       AxColor[AxPos]:= clBlack;
       AxSize[AxPos]:= 0;
       AxAlign[AxPos]:= paLeftJustify;
       AxBold[AxPos]:= false;
       AxItalic[AxPos]:= false;
       AxUnderline[AxPos]:= false;
       AxMarcador[AxPos]:= false;
   end;
   for AxPos:=0 to AxTotal do begin
       re_editor_tmp.SelStart:= AxPos;
       re_editor_tmp.SelLength:= 1;
       cel_str:= re_editor_tmp.SelText;
       if cel_str = #$D then begin
          if xinitPara then begin
             s_str:= s_str+'<p></p>';
          end else begin
             if AxUnderline[0] then s_str:=s_str+'</u>';
             if AxItalic[0] then s_str:=s_str+'</i>';
             if AxBold[0] then s_str:=s_str+'</b>';
             if AxMarcador[0] then begin
                s_str:= s_str+'</font>';
                s_str:= s_str+'</li>';
                re_editor_tmp.SelStart:= AxPos+1;
                re_editor_tmp.SelLength:= 1;
                if not Boolean(re_editor_tmp.Paragraph.Numbering) then begin
                   s_str:= s_str+'</ul>';
                   AxMarcador[1]:= false;
                end;
             end else s_str:= s_str+'</font></p>';
             Dest.Add(s_str);
             s_str:='';
             xinitPara:=true;
          end;
       end else begin
          if xinitPara then begin
             getFormatText(0);
             if (not AxMarcador[1] and AxMarcador[0]) then s_str:= s_str+'<ul>';
             if AxMarcador[0] then begin
                s_str:= s_str+'<li>';
             end else begin
                case AxAlign[0] of
                     paLeftJustify:s_str:=s_str+'<p align="left">';
                     paRightJustify:s_str:=s_str+'<p align="right">';
                     paCenter:s_str:=s_str+'<p align="center">';
                     paJustify:s_str:=s_str+'<p align="justify">';
                end;
             end;
             s_str:=s_str+'<font face="'+AxFontName[0]+
                              '" size="'+IntToStr(AxSize[0])+
                              '" color="#'+ColorRGB(0)+'">';
             if AxBold[0] then s_str:= s_str+'<b>';
             if AxItalic[0] then s_str:= s_str+'<i>';
             if AxUnderline[0] then s_str:= s_str+'<u>';
             xinitPara:=false;
          end else begin
             getFormatText(1);
             if AxUnderline[0]<>AxUnderline[1] then
                if AxUnderline[0] then s_str:= s_str+'</u>';
             if AxItalic[0]<>AxItalic[1] then
                if AxItalic[0] then s_str:= s_str+'</i>';
             if AxBold[0]<>AxBold[1] then
                if AxBold[0] then s_str:= s_str+'</b>';
             if (AxFontName[0]<>AxFontName[1]) or
                (AxColor[0]<>AxColor[1]) or
                (AxSize[0]<>AxSize[1]) then begin
                s_str:= s_str+'</font>';
                s_str:=s_str+'<font face="'+AxFontName[1]+
                              '" size="'+IntToStr(AxSize[1])+
                              '" color="#'+ColorRGB(1)+'">';
             end;
             if AxBold[0]<>AxBold[1] then
                if AxBold[1] then s_str:= s_str+'<b>';
             if AxItalic[0]<>AxItalic[1] then
                if AxItalic[1] then s_str:= s_str+'<i>';
             if AxUnderline[0]<>AxUnderline[1] then
                if AxUnderline[1] then s_str:= s_str+'<u>';
             AxFontName[0]:= AxFontName[1];
             AxColor[0]:= AxColor[1];
             AxSize[0]:= AxSize[1];
             AxAlign[0]:= AxAlign[1];
             AxBold[0]:= AxBold[1];
             AxItalic[0]:= AxItalic[1];
             AxUnderline[0]:= AxUnderline[1];
             AxMarcador[0]:= AxMarcador[1];
          end;
          if re_editor_tmp.SelText <> #$B then
             s_str:=s_str+re_editor_tmp.SelText;
       end;
   end;
   if AxUnderline[0] then s_str:=s_str+'</u>';
   if AxItalic[0] then s_str:=s_str+'</i>';
   if AxBold[0] then s_str:=s_str+'</b>';
   s_str:= s_str+'</font></p>';
   if AxMarcador[0] then
       s_str:= s_str+'</font></li></ul>'
   else s_str:= s_str+'</font></p>';
   Dest.Add(s_str);
   if xhead then begin
      Dest.Add('</body>');
      Dest.Add('</html>');
   end else Dest.Add('</Text>');
   Dest.Text:=Trim(Dest.Text);
   Result:=Dest;
end;}

end.
