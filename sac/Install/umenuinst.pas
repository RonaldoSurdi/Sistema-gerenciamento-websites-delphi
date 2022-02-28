unit umenuinst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ToolWin, ComCtrls, backup, RxRichEd,
  Shellapi, filectrl, ShlObj, ActiveX, Registry, ComObj, DBXpress, DB,
  DBClient, SimpleDS, SqlExpr, FMTBcd, jpeg, SOAPConn, yupack, XPMan, zlib,
  ImgList, AppEvnts, TrayIcon, Winsock;

type
  TCharsHWS = set of Char;
  TControlcnfg = record
    vrf00: Integer;     //codigo
    vrf01: Boolean;     //iniciar com o windows
    vrf02: Boolean;     //conectar automaticamento no login
    vrf16: String[100]; //usuario login sistema
    vrf17: String[100]; //senha login sistema
    vrf38: Boolean;     //atualizações automáticas
    vrf39: Boolean;     //maximixar janela
    vrf40: Integer;     //reproduzir som = -1:sim 0:não
    vrf54: String[100];     //HD Number
    vrf94: String[100];     //ip fixo para conexão
    vrf95: String[100];     //cod para local
  End;
  TServerconectControl = record
    vrf00: Integer;     //codigo
    vrf03: Boolean;     //Utilizar criptografia de mensagens
    vrf04: Boolean;     //Utilizar chave publica
    vrf05: Boolean;     //Utilizar chave simetrica
    vrf06: String[100]; //usário chave simetrica
    vrf07: String[100]; //senha chave simetrica
    vrf08: String[250];    //chave publica
    vrf18: Boolean;     //utilizar login na inicialização do sistema
    vrf19: String[100]; //tabela usuários
    vrf20: String[100]; //tabela tabelas [0]
    vrf21: String[100]; //tabela tabelas.campos [0]
    vrf22: String[100]; //tabela logs
    vrf23: String[100]; //tabela contador
    vrf24: String[100]; //tabela módulos
    vrf25: String[100]; //tabela módulos tabelas
    vrf26: String[100]; //tabela entidades
    vrf27: String[100]; //tabela cidades
    vrf28: String[100]; //tabela estados
    vrf29: String[100]; //tabela websites
    vrf30: String[100]; //tabela logomarcas
    vrf31: String[100]; //tabela área de atuação
    vrf32: String[100]; //tabela módulos autorizados para website/entidade
    vrf33: String[100]; //tabela módulos autorizados para o cliente
    vrf34: String[100]; //tabela colaboradores
    vrf35: String[100]; //tabela setores colaboradores
    vrf36: String[100]; //tabela funções colaboradores
    vrf37: String[100]; //tabela menus
    vrf41: String[100];     //skins
    vrf42: String[100];     //skins - areas de atuacao
    vrf43: String[100];     //skins - personalização para websites - menus
    vrf44: String[100];     //skins - personalização para websites - formatação menu
    vrf45: String[100];     //skins - módulos web referentes aos módulos do skin web
    vrf46: String[100];     //skins - módulos web auxiliares sem administrador
    vrf47: String[100];     //skins - módulos web sons para menus
    vrf48: String[100];     //Languagens
    vrf49: String[100];     //Languagens websites
    vrf50: String[100];     //Languagens menus
    vrf51: String[100];     //Contatdor de acessos on-line Websites
    vrf52: String[100];     //Usuários on-line Websites
    vrf53: String[100];     //Cadastro moedas
  End;
  THelpSysControl = record
    vrf00: Integer;     //codigo
    vrf01: String[100]; //tabela menu
    vrf02: String[100]; //tabela itens
    vrf03: String[100]; //tabela imagens
    vrf04: String[100]; //tabela binary img
  End;
  TimageListAX = record
    codigo: array[0..100] of integer;
    descricao: array[0..100] of string[255];
    mdl: array[0..100] of string[255];
    lastver: array[0..100] of string[100];
    verinst: array[0..100] of string[100];
    cpt: array[0..100] of Boolean;
    cp2: array[0..100] of integer;
    cp3: array[0..100] of integer;
    cp4: array[0..100] of string[100];
    cp5: array[0..100] of string[100];
    cp6: array[0..100] of Boolean;
    cp7: array[0..100] of integer;
    count : integer;
  End;
  Txupdatever = Record
     codigo: Array[0..100] of Integer;
     count: Integer
  end;
  Tmenuinst = class(TForm)
    Panel1: TPanel;
    Timer_concluida: TTimer;
    Panel_fase1: TPanel;
    Panel3: TPanel;
    ds_sql: TClientDataSet;
    HWSconnection: TSoapConnection;
    executa: TClientDataSet;
    PageControl_menu: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    chave_cp1: TEdit;
    chave_cp2: TEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    ProgressBar_install: TProgressBar;
    RichEdit_termos: TRxRichEdit;
    ToolBar2: TToolBar;
    SpeedButton4: TSpeedButton;
    ToolBar3: TToolBar;
    SpeedButton2: TSpeedButton;
    ToolBar5: TToolBar;
    SpeedButton8: TSpeedButton;
    gbxCabecalho: TGroupBox;
    xvrf01: TCheckBox;
    xvrf02: TCheckBox;
    xvrf38: TCheckBox;
    xvrf39: TCheckBox;
    xvrf40: TCheckBox;
    RxRichEdit_result: TRxRichEdit;
    ProgressBar_install2_txt: TLabel;
    ProgressBar_install2: TProgressBar;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    ToolBar4: TToolBar;
    SpeedButton_concluir: TSpeedButton;
    XPManifest1: TXPManifest;
    Label10: TLabel;
    ds_sql3: TClientDataSet;
    CompressStream: TBackupFile;
    Image3: TImage;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    bt_iniciar: TSpeedButton;
    Label1: TLabel;
    Label6: TLabel;
    Image2: TImage;
    Label11: TLabel;
    Panel5: TPanel;
    Label13: TLabel;
    Panel6: TPanel;
    Label14: TLabel;
    StatusBar1: TStatusBar;
    CheckBox_min: TCheckBox;
    TrayIcon_menu: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    ImageList_install: TImageList;
    ds_sql4: TClientDataSet;
    Label7: TLabel;
    chave_web: TEdit;
    Label8: TLabel;
    setpassout: TCheckBox;
    Image1: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    CheckBoxtermos: TCheckBox;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer_concluidaTimer(Sender: TObject);
    procedure bt_iniciarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RichEdit_termosURLClick(Sender: TObject;
      const URLText: String; Button: TMouseButton);
    procedure RadioButton1Click(Sender: TObject);
    procedure SpeedButton_concluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HWSconnectionAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon_menuClick(Sender: TObject);
    procedure CheckBoxtermosClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    xletraun: String;
    dirdefault:string;
    function GetLocalIP : string;
    function GetIPcntHWS(var xipup:String):Boolean;
    procedure startInstall;
    procedure xinicontrol;
    procedure JumpTo(const aAdress: String);
    procedure pathdefaultEd;
    { Private declarations }
  public
    inexecut,xforclose: Boolean;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  menuinst: Tmenuinst;

implementation

uses uselectdir, Math, ScktComp, U_Cipher;

{$R *.dfm}
{$R MIDAS.RES}
{$R TERMOS.RES}

procedure Tmenuinst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if (inexecut and not xforclose) then begin
         If Application.MessageBox('Tem certeza que desejas cancelar instalação do sistema HWSsac?','Cancelar Instalação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then begin
            inexecut:=false;
            exit;
         end;
      end else if (not xforclose) then begin
         If Application.MessageBox('Fechar instalação do sistema HWSsac?','Cancelar Instalação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idno then begin
            Action:=caNone;
            exit;
         end;
      end;
      Action:=caFree;
end;

function Tmenuinst.GetLocalIP : string;
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

function Tmenuinst.GetIPcntHWS(var xipup:String):Boolean;
function GetFileHTTP(strRemoteFileName: string; var xipup:TStringList):Boolean;
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
var axipSTR: TStringList;
begin
      Result:=false;
      axipSTR:= TStringList.Create;
      if GetFileHTTP('/hwswebsys/getxip.php',axipSTR) then begin
         try
            xipup:=axipSTR.Strings[8];
            Result:=true;
         Except
            xipup:='Erro Leitura.';
         End;
      end else xipup:='Erro na conexão';
      axipSTR.Free;
end;

procedure Tmenuinst.FormCreate(Sender: TObject);
var AxExport2: TMemoryStream;

  function HiconToBitmap:TBitmap;
  var Pic : TBitmap;
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

  function getcfgSrv(Index: Integer):TMemoryStream;
  var AxExport: TMemoryStream;
      ResStream : TResourceStream;
  begin
      AxExport:=TMemoryStream.Create;
      ResStream := TResourceStream.CreateFromID (HInstance, Index, RT_RCDATA);
      AxExport.LoadFromStream(ResStream);
      AxExport.Seek(0,soFromBeginning);
      Result:= AxExport;
  end;

begin
      inexecut:=false;
      xforclose:=false;
      RichEdit_termos.Justify;

      AxExport2:= TMemoryStream.Create;
      AxExport2:= getcfgSrv(1);
      AxExport2.Seek(0,soFromBeginning);
      RichEdit_termos.Lines.LoadFromStream(AxExport2);
      AxExport2.Free;

      TabSheet2.TabVisible:=false;
      TabSheet3.TabVisible:=false;
      TabSheet4.TabVisible:=false;
      TabSheet5.TabVisible:=false;
      pathdefaultEd;
end;

procedure Tmenuinst.pathdefaultEd;
    function ExtractSystemDir2 : String;
    var Buffer : Array[0..144] of Char;
        xdirtmp: String;
    begin
        GetSystemDirectory(Buffer,144);
        xdirtmp:= StrPas(Buffer);
        if (copy(xdirtmp,Length(xdirtmp),1)<>'\') and
           (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
           xdirtmp:=xdirtmp+'\';
        Result:=xdirtmp;
    end;
begin
     xletraun:=ExtractSystemDir2;
     xletraun:=copy(xletraun,1,2);
     Edit1.Text:=xletraun+'\HWS\HWSsac\';
end;

function EnDecryptStream(InMS : TMemoryStream; Chave: Word) : TMemoryStream;
    var I : Integer;
        C : byte;
        OutMS : TMemoryStream;
    begin
      OutMS := TMemoryStream.Create;
      InMS.Seek(0,soFromBeginning);
      for I := 0 to InMS.Size - 1 do begin
          InMS.Read(C, 1);
          C := (C xor not(ord(chave shr I)));
          OutMS.Write(C,1);
      end;
      OutMS.Seek(0,soFromBeginning);
      Result:= OutMS;
      Result.Seek(0,soFromBeginning);
end;

procedure Tmenuinst.startInstall;
var Controlcnfg: TControlcnfg;
    Serverconect: TServerconectControl;
    HelpSys: THelpSysControl;
    imageListAX: TimageListAX;
    xupdatever: Txupdatever;
    xtotit,xcdidmod: Integer;
    xerror:boolean;
    HprevHist: HWND;
    testdir,testdir2,xdirpthinst:string;
    xperc: Real;
    xpercax: Integer;
    StrLst: TStringList;
    StrLstADD: Boolean;

    function HDKeyNum(FDrive:String) :String;
    var Serial:DWord;
        DirLen,Flags: DWord;
        DLabel : Array[0..11] of Char;
    begin
      Try GetVolumeInformation(PChar(FDrive),dLabel,12,@Serial,DirLen,Flags,nil,0);
        Result := IntToHex(Serial,8);
      Except
        Result :='Network/Web';
      end;
    end;

    function FilterCharsHWS(const S: string; const ValidChars: TCharsHWS): string;
    var I: integer;
    begin
      Result := '';
      for I := 1 to Length(S) do
      if S[I] in ValidChars then
      Result := Result + S[I];
    end;

    function DeleteDir(hHandle: THandle; Const sPath : String; Confirm: boolean):Boolean;
    var OpStruc: TSHFileOpStruct;
        FromBuffer, ToBuffer: Array[0..128] of Char;
    begin
        Result:=True;
        Try
            fillChar( OpStruc, Sizeof(OpStruc), 0 );
            FillChar( FromBuffer, Sizeof(FromBuffer), 0 );
            FillChar( ToBuffer, Sizeof(ToBuffer), 0 );
            StrPCopy( FromBuffer, sPath);
            With OpStruc do begin
                 Application.ProcessMessages;
                 Wnd:= hHandle;
                 wFunc:=FO_DELETE;
                 pFrom:= @FromBuffer;
                 pTo:= @ToBuffer;
                 if not confirm then begin
                    fFlags:= FOF_NOCONFIRMATION;
                 end;
                 fAnyOperationsAborted:=False;
                 hNameMappings:=nil;
                 //lpszProgressTitle:=nil;
            end;
            ShFileOperation(OpStruc);
        Except
            Result:=False;
        End;
    end;

    function copiaarqsys(PathToSave,Nomearqx:String;tipoarqx:PCHAR;substarqx:boolean):Boolean;
    var Res : TResourceStream;
    begin
        If FileExists(PathToSave) and (substarqx) Then DeleteFile(PathToSave);
        If not FileExists(PathToSave) Then begin
           Res := TResourceStream.Create(Hinstance, Nomearqx, tipoarqx);
           Try
              Res.SavetoFile(PathToSave);
           Finally
              Res.Free;
           End;
        End;
        Result:=True;
    end;

    procedure Createicones (FileName, InitialDir, ShortcutName, ShortcutFolder : String; Parameters:PCHAR; tipox:integer);
    var MyObject : IUnknown;
        MySLink : IShellLink;
        MyPFile : IPersistFile;
        Directory,shellx,axpathdir : String;
        WFileName : WideString;
        MyReg : TRegIniFile;
    begin
        case tipox of
            1: shellx:='Desktop';
            2,3,4: shellx:='Programs';
        end;
        MyObject := CreateComObject(CLSID_ShellLink);
        MySLink := MyObject as IShellLink;
        MyPFile := MyObject as IPersistFile;
        with MySLink do begin
          SetArguments(Parameters);
          SetPath(PChar(FileName));
          SetWorkingDirectory(PChar(InitialDir));
        end;
        MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
        Directory := MyReg.ReadString('Shell Folders',shellx,'');
        if tipox=2 then begin
           axpathdir:=Directory+'\HWS Web Solution';
           if not DirectoryExists(axpathdir) then CreateDir(axpathdir);
           WFileName := axpathdir+'\'+ShortcutName+'.lnk';
        end else if tipox=3 then begin
           axpathdir:=Directory+'\HWS Web Solution';
           if not DirectoryExists(axpathdir) then CreateDir(axpathdir);
           axpathdir:=Directory+'\HWS Web Solution\Configurações';
           if not DirectoryExists(axpathdir) then CreateDir(axpathdir);
           WFileName := axpathdir+'\'+ShortcutName+'.lnk';
        end else if tipox=4 then begin
           axpathdir:=Directory+'\HWS Web Solution';
           if not DirectoryExists(axpathdir) then CreateDir(axpathdir);
           axpathdir:=Directory+'\HWS Web Solution\Desinstalar';
           if not DirectoryExists(axpathdir) then CreateDir(axpathdir);
           WFileName := axpathdir+'\'+ShortcutName+'.lnk';
        end else begin
           WFileName := Directory + '\' + ShortcutName + '.lnk';
        end;
        MyPFile.Save (PWChar (WFileName), False);
        MyReg.Free;
    end;

    function ExtractSystemDir : String;
    var Buffer : Array[0..144] of Char;
        xdirtmp: String;
    begin
        GetSystemDirectory(Buffer,144);
        xdirtmp:= StrPas(Buffer);
        if (copy(xdirtmp,Length(xdirtmp),1)<>'\') and
           (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
           xdirtmp:=xdirtmp+'\';
        Result:=xdirtmp;
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

    function setCnfgDefault:boolean;
    var xhdl,xhidID,
        cnt_usr,cnt_pass,cnt_web:String;
    begin
         xhdl := dirdefault;
         xhdl:= copy(xhdl,1,3);
         xhidID:=HDKeyNum(xhdl);
         cnt_usr:=FilterCharsHWS(chave_cp1.Text,['A'..'Z', 'a'..'z', '0'..'9']);
         cnt_pass:=FilterCharsHWS(chave_cp2.Text,['A'..'Z', 'a'..'z', '0'..'9']);
         if copy(chave_web.Text,1,4)='www.' then chave_web.Text:=copy(chave_web.Text,5,Length(chave_web.Text)-3);
         cnt_web:=FilterCharsHWS(chave_web.Text,['A'..'Z', 'a'..'z', '0'..'9', '.']);//'www.'+
         With Controlcnfg do begin
              vrf00:=0;     //codigo
              vrf01:=false;//xvrf01.Checked;  //iniciar com o windows
              vrf02:=xvrf02.Checked;  //conectar automaticamento no login
              vrf38:=xvrf38.Checked;  //atualizações automáticas
              vrf39:=xvrf39.Checked;  //maximixar janela
              vrf40:=strtoint(BoolToStr(xvrf40.Checked));    //reproduzir som = -1:sim 0:não
              vrf54:=EnDecryptString(xhidID,14282);  //HD Number
              vrf95:='';    //cod para local
              vrf16:= EnDecryptString(cnt_usr,23654); //usuario
              if setpassout.Checked then vrf17:= EnDecryptString(cnt_pass,15187)
              else vrf17:= EnDecryptString('NotSavePassKill',15187); //senha
              vrf94:= EnDecryptString(cnt_web,35412); //web
         end;
         Result:=True;
    end;                                               

    function winsysreg(tipo:byte):boolean;
    var Reg: Tregistry;
    begin
        Result:=False;
        Reg:=Tregistry.create;
        try
         Case tipo of
          1:begin
            with Reg do begin
              rootkey:=HKEY_LOCAL_MACHINE;
              //atualiza chave no registro
              Try
                  OpenKey('Software\HWS\SAC',True);
                  WriteBinaryData('WebSACnfg', Controlcnfg, SizeOf(Controlcnfg));
                  WriteDateTime('Instalação',Now);
                  WriteDateTime('Upgrade',Now);
                  WriteDateTime('Acesso',Now);
                  WriteString('Path',dirdefault+'HWSsac.exe');
                  CloseKey;
              Except
                  CloseKey;
                  Reg.Free;
                  exit;
              End;
              //Verifica se selecionado inicializar com win então cria chave
              if Controlcnfg.vrf01 then begin
                 Try
                    Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                    writestring('HWSsac', dirdefault+'HWSsac.exe');
                    CloseKey;
                 Except
                    CloseKey;
                    Reg.Free;
                    exit;
                 End;
              end else begin
                 //apaga chave do registro
                 Try
                    Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                    DeleteValue('HWSsac');
                    CloseKey;
                 Except
                    CloseKey;
                    Reg.Free;
                    exit;
                 End;
              end;
            end;
            Result:=true;
          end;
         End;
        finally
         Reg.Free;
        End;
    end;

    function conecta_bd(xcnt_usr,xcnt_pass,xcnt_web:string):boolean;
    var cnt_usr,cnt_pass,cnt_web,axcod_web:String;
    begin
         Result:=False;
         cnt_usr:=FilterCharsHWS(chave_cp1.Text,['A'..'Z', 'a'..'z', '0'..'9']);
         cnt_pass:=FilterCharsHWS(chave_cp2.Text,['A'..'Z', 'a'..'z', '0'..'9']);
         if copy(chave_web.Text,1,4)='www.' then chave_web.Text:=copy(chave_web.Text,5,Length(chave_web.Text)-3);
         cnt_web:='www.'+FilterCharsHWS(chave_web.Text,['A'..'Z', 'a'..'z', '0'..'9', '.']);//'www.'+
         axcod_web:='0';
         Try
           With Serverconect do begin
            With executa do begin
             CommandText:='SELECT A.codigo,A.website,B.codigo,B.cod_web,B.cod_grp FROM '+
                          EnDecryptString(Serverconect.vrf29,37249)+' A,'+
                          EnDecryptString(Serverconect.vrf32,37249)+' B'+
                          ' WHERE A.website='+#39+cnt_web+#39+
                          ' AND B.cod_web=A.codigo';
             Open;
             if RecordCount>0 then axcod_web:=fieldbyname('codigo').AsString;
             Close;
             if axcod_web<>'0' then begin
               //usuario atendimento
               CommandText:= 'SELECT codigo,cod_ent,cp3,cp37 FROM m7_fky94'+
                             ' WHERE cod_ent='+#39+axcod_web+#39+
                             ' AND xtp='+#39+'306'+#39+
                             ' AND cp6='+#39+cnt_usr+#39+
                             ' AND cp7='+#39+MD5Hash(cnt_pass)+#39+
                             ' ORDER BY codigo';
               Open;
               if RecordCount>0 then begin
                  Serverconect.vrf00:=fieldbyname('codigo').AsInteger;
                  Result:=True;
               end;
               Close;
             end;
            end;
           end;
        Except
        End;
    end;

    function LoadcnfgHttp: Boolean;
    var axfilterLoad: string;
        xMemorystrCnfg: TMemoryStream;
    begin
        setCnfgDefault;
        HWSconnection.URL:= 'http://www.hws.com.br/HWSsycHst/HWScontrolSrv25.dll/soap/IHWSappdb';
        Application.ProcessMessages;
        HWSconnection.Connected:=true;
        Application.ProcessMessages;
        if not HWSconnection.Connected then begin
           Result:=false;
           exit;
        end;
        axfilterLoad:='WHERE (codigo='+#39+'1'+#39+') OR (codigo='+#39+'5'+#39+')';
        xMemorystrCnfg:= TMemoryStream.Create;
        Try
        with ds_sql do begin
             CommandText:= 'SELECT codigo,cp1 FROM m0_fky961 '+axfilterLoad+' ORDER BY codigo';
             Application.ProcessMessages;
             Open;
             Application.ProcessMessages;
             //serverconect
             xMemorystrCnfg.Clear;
             xMemorystrCnfg.Seek(0,soFromBeginning);
             if Locate('codigo',1,[]) then begin
                TBlobField(FieldByName('cp1')).SaveToStream(xMemorystrCnfg);
                xMemorystrCnfg.Seek(0,soFromBeginning);
                xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,16857);
                xMemorystrCnfg.Seek(0,soFromBeginning);
             end else begin
                Result:=false;
                exit;
             end;
             xMemorystrCnfg.Read(Serverconect,xMemorystrCnfg.Size);
             //Helpsys
             xMemorystrCnfg.Clear;
             xMemorystrCnfg.Seek(0,soFromBeginning);
             if Locate('codigo',5,[]) then begin
                TBlobField(FieldByName('cp1')).SaveToStream(xMemorystrCnfg);
                xMemorystrCnfg.Seek(0,soFromBeginning);
                xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,16857);
                xMemorystrCnfg.Seek(0,soFromBeginning);
             end else begin
                Result:=false;
                exit;
             end;
             xMemorystrCnfg.Read(Helpsys,xMemorystrCnfg.Size);
             Close;
        end;
        Result:=true;
        Except
            Result:=false;
        End;
    end;

    function updatemod(xcodmod: integer; xcodmodPai: integer; xcpt: Boolean; xmdl,xlastver,xpathextract: string): boolean;
    var OutMS_mod,OutMS_tmp: TMemoryStream;
        xchr,xcmod,xordtmp: integer;
        c_mod : byte;
        xfilepath_mod,xfilepath_mod2: String;
        Success: Boolean;
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
    begin
        Result:=true;
        Try
           OutMS_mod:= TMemoryStream.Create;
           OutMS_mod.Clear;
           OutMS_tmp:= TMemoryStream.Create;
           OutMS_tmp.Clear;
           xfilepath_mod:='';
           With ds_sql do begin
                CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24,37249)+'_ax '+
                              'WHERE cod_mod='+#39+InttoStr(xcodmodPai)+#39' ORDER BY ordem';
                Application.ProcessMessages;
                Open;
                Application.ProcessMessages;
                ProgressBar_install2.Position:=50;
                First;
                OutMS_mod.Seek(0,soFromBeginning);
                While not Eof do begin
                    OutMS_tmp.Clear;
                    OutMS_tmp.Seek(0,soFromBeginning);
                    TBlobField(FieldByName('img')).SaveToStream(OutMS_tmp);
                    OutMS_tmp.Seek(0,soFromBeginning);
                    if xcpt then begin
                       xchr:=HexToInt(xmdl+fieldbyname('codigo').AsString+xlastver+Inttostr(xcodmodPai));
                       OutMS_tmp:=EnDecryptStream(OutMS_tmp,xchr);
                       OutMS_tmp.Seek(0,soFromBeginning);
                    end;
                    for xcmod:=0 to OutMS_tmp.Size-1 do begin
                        OutMS_tmp.Read(c_mod,1);
                        OutMS_mod.Write(c_mod,1);
                    end;
                    Next;
                    Application.ProcessMessages;
                end;
                ProgressBar_install2.Position:=75;
                Close;
           end;
           With executa do begin
                OutMS_mod.Seek(0,soFromBeginning);
                if OutMS_mod.Size > 0 then begin
                   xfilepath_mod:=xpathextract+xmdl;
                   xfilepath_mod2:=xpathextract;
                   if FileExists(xfilepath_mod) then
                      MoveFile(Pchar(xfilepath_mod),Pchar(xfilepath_mod+'.BKP'));
                   OutMS_mod.Seek(0,soFromBeginning);
                   Success := CompressStream.RestoreFromStream(OutMS_mod,xfilepath_mod2);
                   if not Success then begin
                      if FileExists(xfilepath_mod) then
                         DeleteFile(Pchar(xfilepath_mod));
                      if FileExists(xfilepath_mod+'.BKP') then
                         MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
                      OutMS_mod.Free;
                      Result:=false;
                      Exit;
                   end;
                   {CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33,37249)+' SET verinst=:p0 '+
                                 'WHERE cod_grp=:p1 AND cod_usr=:p2';
                   Params[0].AsString:= xlastver;
                   Params[1].AsInteger:= xcodmod;
                   Params[2].AsInteger:= Serverconect.vrf00;
                   Application.ProcessMessages;
                   Execute;   }
                   Application.ProcessMessages;
                   DeleteFile(xfilepath_mod+'.BKP');
                end else Result:=false;
           end;
           ProgressBar_install2.Position:=100;
           OutMS_mod.Free;
        Except
           try
           OutMS_mod.Free;
           if FileExists(xfilepath_mod) then
              DeleteFile(Pchar(xfilepath_mod));
           if FileExists(xfilepath_mod+'.BKP') then
              MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
           except
           end;
           Result:=false;
        End;
    end;

    procedure forminstall(axinst,axinst2: Boolean);
    begin
      Application.ProcessMessages;
      inexecut:=axinst;
      TabSheet1.TabVisible:= not axinst;
      TabSheet2.TabVisible:= not axinst;
      TabSheet3.TabVisible:= not axinst;
      TabSheet4.TabVisible:= not axinst;
      SpeedButton_concluir.Visible:= not axinst;
      if not axinst2 then TabSheet5.TabVisible:= axinst2;
    end;

    function gravar_logsys(messagehist:string):boolean;
    var ax_cod1 : Boolean;
        xtabela,xnip: String;
    begin
        Try
          if GetIPcntHWS(xnip) then begin
             xtabela:=EnDecryptString(Serverconect.vrf22,37249);
             xnip:=GetLocalIP+'->'+xnip;
             //ax_cod1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtcp(EnDecryptString(xtabela,21535),EnDecryptString(xnip,21535),EnDecryptString(InttoStr(Serverconect.vrf00),21535),EnDecryptString(messagehist,21535));
          end;
        Except
          ax_cod1:=false;
        End;
        Result := ax_cod1;
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

begin
      Application.ProcessMessages;
      RxRichEdit_result.Clear;
      ProgressBar_install.Position:=0;
      ProgressBar_install2.Position:=0;
      forminstall(true,true);
      if not RadioButton1.Checked then begin
         ProgressBar_install2_txt.Visible:=false;
         ProgressBar_install2.Visible:=false;
      end;
      dirdefault:=Edit1.Text;
      ProgressBar_install.Max:=44;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Application.ProcessMessages;
      HprevHist := FindWindow(Nil, PChar('HWSsac atm'));
      if HprevHist <> 0 then begin
         CloseWindow(HprevHist);
         Sleep(1000);
      end;
      HprevHist := FindWindow(Nil, PChar('HWSsac atm'));
      if HprevHist <> 0 then begin
         forminstall(false,false);
         ShowMessage('HWSsac está ativo, finalize e tente novamente.');
         ShowWindow(HprevHist,1);
         exit;
      end;
      if (not inexecut) then begin
         Application.Terminate;
         exit;
      end;
      RxRichEdit_result.Lines.Add('Iniciando instalação do HWSsac.');
      RxRichEdit_result.Lines.Add('');
      RxRichEdit_result.Lines.Add('');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Application.ProcessMessages;
      if (chave_web.Text='') then begin
         forminstall(false,false);
         ShowMessage('Digite o website.');
         PageControl_menu.TabIndex:=2;
         chave_web.SetFocus;
         exit;
      end;
      if (chave_cp1.Text='') or (chave_cp2.Text='') then begin
         forminstall(false,false);
         ShowMessage('Digite usuário e senha para autenticação.');
         PageControl_menu.TabIndex:=2;
         chave_cp1.SetFocus;
         exit;
      end;
      RxRichEdit_result.Lines.Add('Verificando configurações.');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if copy(dirdefault,Length(dirdefault),1)<>'\' then
         dirdefault:=dirdefault+'\';
      xerror:=true;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Application.ProcessMessages;
      //if (dirdefault<>'') then begin
          if not DirectoryExists(xletraun+'\HWS') then CreateDir(xletraun+'\HWS');
          if not DirectoryExists(xletraun+'\HWS\HWSsac') then CreateDir(xletraun+'\HWS\HWSsac');
          if DirectoryExists(xletraun+'\HWS\HWSsac') then xerror:=false;
      //end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if xerror then begin
         forminstall(false,false);
         ShowMessage('Caminho selecionado para instalação inválido.');
         PageControl_menu.TabIndex:=3;
         Edit1.SetFocus;
         Edit1.SelectAll;
         exit;
      end;
      RxRichEdit_result.Lines.Add(' ');
      RxRichEdit_result.Lines.Add('Favor não desconectar internet...');
      RxRichEdit_result.Lines.Add(' ');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if CheckBox_min.Checked then begin
         RxRichEdit_result.Lines.Add('O Sistema será Minimizado em sua Área de Notificação.');
         RxRichEdit_result.Lines.Add('');
         Application.ProcessMessages;
         Sleep(5000);
         TrayIcon_menu.Active := True;
         TrayIcon_menu.Animate:= True;
         TrayIcon_menu.Hint:='Instalação HWSsac'+#13+'aguarde...';
         Application.Minimize;
      end;
      Application.ProcessMessages;
      if not FileExists(ExtractSystemDir+'midas.dll') then begin
         RxRichEdit_result.Lines.Add('Registrando biblioteca de comunicação.');
         try
            //biblioteca de comunicação
            copiaarqsys(ExtractSystemDir+'midas.dll','MIDASDLL','DLLFILE',False);
            xerror:=false;
         Except
            xerror:=true;
         End;
         if xerror then begin
            forminstall(false,false);
            ShowWindow(Application.Handle,SW_RESTORE);
            SetForegroundWindow(Application.Handle);
            Application.ProcessMessages;
            ShowMessage('Erro ao registrar biblioteca de comunicação.');
            PageControl_menu.TabIndex:=3;
            TrayIcon_menu.Active := False;
            exit;
         end;
         //registrando midas.dll
         WinExec('REGSVR32 /S MIDAS.DLL', SW_HIDE);
         RxRichEdit_result.Lines.Add('Processo executado com sucesso.');
         RxRichEdit_result.Lines.Add('');
      end;
      Application.ProcessMessages;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //teste comunicação com servidor
      RxRichEdit_result.Lines.Add('Verificando integridade da conexão com internet.');
      if (not inexecut) then begin
         Application.Terminate;
         exit;
      end;
      Application.ProcessMessages;
      if not LoadcnfgHttp then begin
         if (not inexecut) then begin
            Application.Terminate;
            exit;
         end;
         forminstall(false,false);
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
         Application.ProcessMessages;
         ShowMessage('Você está desconectado da internet ou seu firewall bloqueou a comunicação com servidor.');
         PageControl_menu.TabIndex:=3;
         TrayIcon_menu.Active := False;
         exit;
      end;
      if (not inexecut) then begin
         Application.Terminate;
         exit;
      end;
      Application.ProcessMessages;
      RxRichEdit_result.Lines.Add('Conexão aceita com sucesso.');
      RxRichEdit_result.Lines.Add('');
      //autenticação
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      RxRichEdit_result.Lines.Add('Verificando dados para autenticação.');
      if not conecta_bd(chave_cp1.Text,chave_cp2.Text,chave_web.Text) then begin
         forminstall(false,false);
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
         Application.ProcessMessages;
         ShowMessage('Website, usuário ou Senha inválido(s).');
         PageControl_menu.TabIndex:=2;
         chave_cp1.SetFocus;
         chave_cp1.SelectAll;
         TrayIcon_menu.Active := False;
         exit;
      end;
      Application.ProcessMessages;
      RxRichEdit_result.Lines.Add('Autenticado com sucesso.');
      RxRichEdit_result.Lines.Add('');
      //copia arquivos
      RxRichEdit_result.Lines.Add('');
      RxRichEdit_result.Lines.Add('Baixando e instalando arquivos do sistema.');
      StrLst := TStringList.Create;
      try
         //cria diretórios do sistema
         if not DirectoryExists(copy(dirdefault,1,Length(dirdefault)-12)) then
            CreateDir(copy(dirdefault,1,Length(dirdefault)-12));
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         CreateDir(copy(dirdefault,1,Length(dirdefault)-1));
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         CreateDir(dirdefault+'bin');
         //copia arquivo
         xerror:=false;
         with ds_sql3 do begin
              CommandText:= 'SELECT codigo,mdl,lastver,cpt,cp3,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24,37249)+
                            ' WHERE (((cp2='+#39+BoolToStr(true)+#39+')'+
                            ' AND (mdl<>'+#39+'HWScontrol.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'uninstall.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'HWScontrolConfig.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'HWShelp.exe'+#39+'))'+
                            ' OR (mdl='+#39+'HWSsac.exe'+#39+')'+
                            ' OR (mdl='+#39+'HWSsacuninstall.exe'+#39+'))'+
                            ' OR ((cp2='+#39+BoolToStr(false)+#39+')'+
                            ' AND (mdl like '+#39+'HWSsac%'+#39+'))'+
                            ' ORDER BY codigo';
              Application.ProcessMessages;
              Open;
              Application.ProcessMessages;
              First;
              while not Eof do begin
                  if (not inexecut) then begin
                     Application.Terminate;
                     exit;
                  end;
                  Case fieldbyname('cp3').AsInteger of
                       0: xdirpthinst:= dirdefault;
                       1: xdirpthinst:= dirdefault+'bin\';
                       2: xdirpthinst:= ExtractSystemDir;
                  End;
                  ProgressBar_install2.Position:=0;
                  StrLstADD:=true;
                  if FileExists(xdirpthinst+fieldbyname('mdl').AsString) then begin
                     StrLst:=FileVerInfo(xdirpthinst+fieldbyname('mdl').AsString);
                     if StrLst.Count > 0 then
                        StrLstADD:=(StrLst.Strings[4]<>fieldbyname('lastver').AsString);
                  end;
                  if StrLstADD then begin
                     if not updatemod(fieldbyname('codigo').AsInteger,fieldbyname('codigo').AsInteger,StrToBool(fieldbyname('cpt').AsString),fieldbyname('mdl').AsString,fieldbyname('lastver').AsString,xdirpthinst) then
                        xerror:=true;
                     if ExtractFileExt(xdirpthinst+fieldbyname('mdl').AsString)='.bpl' then
                        xerror:=false;
                  end else xerror:=false;
                  if ProgressBar_install.Position<91 then begin
                     ProgressBar_install.Position:=ProgressBar_install.Position+1;
                  end;
                  next;
                  Application.ProcessMessages;
              end;
              Close;
         end;
         ProgressBar_install2.Position:=0;
         ProgressBar_install.Position:=35;
      Except
         xerror:=true;
      End;
      if xerror then begin
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
         Application.ProcessMessages;
         RxRichEdit_result.Lines.Add('Ocorreu algum erro ao instalar dependências.');
         RxRichEdit_result.Lines.Add('O sistema tentará localizar a solução, aguarde...');
         startInstall;
         TrayIcon_menu.Active := False;
         exit;
      end;
      RxRichEdit_result.Lines.Add('Arquivos instalados com sucesso.');
      RxRichEdit_result.Lines.Add('');
      RxRichEdit_result.Lines.Add('');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;

      RxRichEdit_result.Lines.Add('Criando icones.');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //cria icones
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'HWSsac.exe',dirdefault,'HWSsac','','',1);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'HWSsac.exe',dirdefault,'HWSsac','','',2);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'HWSsacuninstall.exe',dirdefault,'HWSsac','','',4);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      RxRichEdit_result.Lines.Add('Icones criados com sucesso.');
      RxRichEdit_result.Lines.Add('');
      //registra HWSsac no windows
      RxRichEdit_result.Lines.Add('Registrando sistema.');
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      winsysreg(1);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      RxRichEdit_result.Lines.Add('Sistema registrado.');
      RxRichEdit_result.Lines.Add('');
      //finalizando
      RxRichEdit_result.Lines.Add('');
      RxRichEdit_result.Lines.Add('HWSsac instalado com sucesso.');
      RxRichEdit_result.Lines.Add('');
      RxRichEdit_result.Lines.Add('Clique no botão abaixo ou aguarde 10 segundos que o sistema abrirá automaticamente.');
      inexecut:=false;
      xforclose:=true;
      TrayIcon_menu.Active := False;
      forminstall(false,true);
      Timer_concluida.Enabled:=true;
end;

procedure Tmenuinst.xinicontrol;
begin
      WinExec(PChar(dirdefault+'HWSsac.exe'),1);
      Close;
end;

procedure Tmenuinst.Timer_concluidaTimer(Sender: TObject);
begin
      xinicontrol;
end;

procedure Tmenuinst.bt_iniciarClick(Sender: TObject);
begin
      TabSheet2.TabVisible:=true;
      PageControl_menu.TabIndex:=1;
      RichEdit_termos.SetFocus;
end;

procedure Tmenuinst.SpeedButton4Click(Sender: TObject);
begin
      TabSheet3.TabVisible:=true;
      PageControl_menu.TabIndex:=2;
      chave_web.SetFocus;
end;

procedure Tmenuinst.SpeedButton2Click(Sender: TObject);
begin
      if ((chave_cp1.Text='') or (chave_cp2.Text='') or (chave_web.Text='')) then begin
         ShowMessage('Digite usuário e senha para autenticação.');
         chave_web.SetFocus;
         exit;
      end;
      TabSheet4.TabVisible:=true;
      PageControl_menu.TabIndex:=3;
end;

procedure Tmenuinst.SpeedButton8Click(Sender: TObject);
begin
      TabSheet5.TabVisible:=true;
      PageControl_menu.TabIndex:=4;
      startInstall;
end;

procedure Tmenuinst.RichEdit_termosURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
var axURLText: String;
begin
      if copy(URLText,1,7)='http://' then axURLText:=copy(URLText,8,Length(URLText))
      else axURLText:=URLText;
      JumpTo(axURLText);
end;

procedure Tmenuinst.JumpTo(const aAdress: String);
var pathnv,buffer: String;
begin
    buffer := 'http://' + aAdress;
    ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

procedure Tmenuinst.RadioButton1Click(Sender: TObject);
begin
      xvrf38.Checked:=RadioButton1.Checked;
end;

procedure Tmenuinst.SpeedButton_concluirClick(Sender: TObject);
begin
      xinicontrol;
end;

{procedure Tmenuinst.HWSconnectionAfterExecute(const MethodName: String;
  SOAPResponse: TStream);
var memStream : TMemoryStream;
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
begin
  // need to decompress stream here
  memStream := TMemoryStream.Create;
  try
    SoapResponse.Position := 0;
    ExpandStream(SoapResponse, memStream);
    SoapResponse.Position := 0;
    memStream.Position := 0;
    SoapResponse.CopyFrom(memStream, memStream.Size);
    SoapResponse.Size := memStream.Size;
    SoapResponse.Position := 0;
  finally
    memStream.Free;
  end;
end;   }

procedure Tmenuinst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
           VK_ESCAPE: Close;
           13: begin
              if (xforclose) then xinicontrol
              else if (not inexecut) then
              Case PageControl_menu.TabIndex of
                   0: bt_iniciar.Click;
                   1: if not CheckBoxtermos.Checked then ShowMessage('Você deve concordar com os termos de uso do softwares.')
                      else SpeedButton4.Click;
                   2: SpeedButton2.Click;
                   3: SpeedButton8.Click;
              end;
           end;
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

procedure Tmenuinst.HWSconnectionAfterExecute(const MethodName: String;
  SOAPResponse: TStream);
var memStream : TMemoryStream;
begin
  // need to decompress stream here
  memStream := TMemoryStream.Create;
  try
    SoapResponse.Position := 0;
    ExpandStream(SoapResponse, memStream);
    SoapResponse.Position := 0;
    memStream.Position := 0;
    SoapResponse.CopyFrom(memStream, memStream.Size);
    SoapResponse.Size := memStream.Size;
    SoapResponse.Position := 0;
  finally
    memStream.Free;
  end;
end;

procedure Tmenuinst.ApplicationEvents1Minimize(Sender: TObject);
begin
     if TrayIcon_menu.Active then begin
        ShowWindow(Application.Handle, SW_HIDE );
        Application.ProcessMessages;
     end;
end;

procedure Tmenuinst.TrayIcon_menuClick(Sender: TObject);
begin
     ShowWindow(Application.Handle,SW_RESTORE);
     SetForegroundWindow(Application.Handle);
     Application.ProcessMessages;
end;

procedure Tmenuinst.CheckBoxtermosClick(Sender: TObject);
begin
     SpeedButton4.Enabled:=CheckBoxtermos.Checked;
end;

procedure Tmenuinst.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      ShowMessage('AVISO: Falha na conexão.');
end;

end.


