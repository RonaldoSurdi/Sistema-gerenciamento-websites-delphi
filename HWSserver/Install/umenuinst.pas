unit umenuinst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ToolWin, ComCtrls, backup, RxRichEd,
  Shellapi, filectrl, ShlObj, ActiveX, Registry, ComObj, DBXpress, DB,
  DBClient, SimpleDS, SqlExpr, FMTBcd, jpeg;

type
  TCharsHWS = set of Char;
  TServercnfg = record
    vrf00: Integer;     //codigo
    vrf01: Boolean;     //iniciar com o windows
    vrf02: Boolean;     //conectar automaticamento no login
    vrf16: String[100]; //usuario login sistema
    vrf17: String[100]; //senha login sistema
    vrf38: Boolean;     //atualizações automáticas
    vrf39: Boolean;     //bloquear ao minimizar
    vrf40: Integer;     //bloquear após x segundos 0 is null
    vrf54: String[100];     //HD Number
  End;
  TServerconect = record
    vrf00: Integer;     //codigo
    vrf03: Boolean;     //Utilizar criptografia de mensagens
    vrf04: Boolean;     //Utilizar chave publica
    vrf05: Boolean;     //Utilizar chave simetrica
    vrf06: String[100]; //usário chave simetrica
    vrf07: String[100]; //senha chave simetrica
    vrf08: String[250];    //chave publica
    vrf09: array [0..1] of Integer;        //tipo conexão
    vrf10: array [0..1] of String[200]; //servidor
    vrf11: array [0..1] of String[200]; //database
    vrf12: array [0..1] of String[200]; //usuario
    vrf13: array [0..1] of String[200]; //senha
    vrf14: array [0..1] of Boolean;     //Salvar senha
    vrf15: array [0..1] of String[200]; //path Library database
    vrf18: Boolean;     //utilizar login na inicialização do sistema
    vrf19: array [0..1] of String[100]; //tabela usuários
    vrf20: String[100]; //tabela tabelas [0]
    vrf21: String[100]; //tabela tabelas.campos [0]
    vrf22: array [0..1] of String[100]; //tabela logs
    vrf23: String[100]; //tabela contador
    vrf24: array [0..1] of String[100]; //tabela módulos
    vrf25: array [0..1] of String[100]; //tabela módulos tabelas
    vrf26: String[100]; //tabela entidades
    vrf27: String[100]; //tabela cidades
    vrf28: String[100]; //tabela estados
    vrf29: String[100]; //tabela websites
    vrf30: String[100]; //tabela logomarcas
    vrf31: String[100]; //tabela área de atuação
    vrf32: array [0..1] of String[100]; //tabela módulos autorizados para website/entidade
    vrf33: array [0..1] of String[100]; //tabela módulos autorizados para o cliente
    vrf34: String[100]; //tabela colaboradores
    vrf35: String[100]; //tabela setores colaboradores
    vrf36: String[100]; //tabela funções colaboradores
    vrf37: array [0..1] of String[100]; //tabela menus
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
  THelpdesk = record
    vrf00: Integer;     //codigo
    vrf01: String[100]; //tabela responsáveis
    vrf02: String[100]; //tabela setores
    vrf03: String[100]; //tabela atividades
    vrf04: String[100]; //tabela aplicativos
    vrf05: String[100]; //tabela solicitações
    vrf06: String[100]; //tabela processos
    vrf07: String[100]; //tabela arquivos
    vrf08: String[100]; //tabela mensagens
    vrf09: String[100]; //tabela stream
  End;
  THelpSys = record
    vrf00: Integer;     //codigo
    vrf01: array [0..1] of String[100]; //tabela menu
    vrf02: array [0..1] of String[100]; //tabela itens
    vrf03: array [0..1] of String[100]; //tabela imagens
    vrf04: array [0..1] of String[100]; //tabela binary img
  End;
  Tmenuinst = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    bt_iniciar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    BackupFile1: TBackupFile;
    ProgressBar_install: TProgressBar;
    GroupBox2: TGroupBox;
    chave_cp1: TEdit;
    chave_cp2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rb_concordo: TRadioButton;
    rb_discordo: TRadioButton;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    conecta_sql: TSQLConnection;
    executa: TSQLQuery;
    pn_fim1: TPanel;
    ToolBar2: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_iniciarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    Servercnfg: TServercnfg;
    Serverconect: TServerconect;
    Helpdesk: THelpdesk;
    HelpSys: THelpSys;
    dirdefault:string;
    { Private declarations }
  public
    inexecut: Boolean;
    { Public declarations }
  end;

var
  menuinst: Tmenuinst;

implementation

uses uselectdir, Math;

{$R *.dfm}
{$R DRVDLL.RES}
{$R HWSDLL.RES}
{$R HWSWEBSERVER.RES}
{$R MIDAS.RES}
{$R UNINSTALL.RES}
{$R HWScontrolsrvCnfg.RES}


procedure Tmenuinst.bt_cancelarClick(Sender: TObject);
begin
      Close;
end;

procedure Tmenuinst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if inexecut then Action:=caNone
      else Action:=caFree;
end;

procedure Tmenuinst.FormCreate(Sender: TObject);
begin
      inexecut:=false;
      if DirectoryExists('C:\Arquivos de Programas') then
         Edit1.Text:='C:\Arquivos de Programas\HWS\HWSwebServer\'
      else if DirectoryExists('C:\Program Files') then
         Edit1.Text:='C:\Program Files\HWS\HWSwebServer\'
      else if DirectoryExists('D:\Arquivos de Programas') then
         Edit1.Text:='D:\Arquivos de Programas\HWS\HWSwebServer\'
      else if DirectoryExists('D:\Program Files') then
         Edit1.Text:='D:\Program Files\HWS\HWSwebServer\';
end;

procedure Tmenuinst.bt_iniciarClick(Sender: TObject);
var xerror:boolean;
    HprevHist: HWND;
    testdir:string;

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

    function winsysreg(tipo:byte):boolean;
    var Reg: Tregistry;
    begin
        Result:=False;
        Reg:=Tregistry.create;
        try
         Case tipo of
          0:begin
            with Reg do begin
              rootkey:=HKEY_LOCAL_MACHINE;
              if KeyExists('Software\HWS\WebServer') then Result:=True;
            end;
          end;
          1:begin
            with Reg do begin
              rootkey:=HKEY_LOCAL_MACHINE;
              //atualiza chave no registro
              Try
                  OpenKey('Software\HWS\WebServer',True);
                  WriteBinaryData('WebServerCnfg', Servercnfg, SizeOf(Servercnfg));
                  WriteDateTime('Instalação',Now);
                  WriteDateTime('Upgrade',Now);
                  WriteDateTime('Acesso',Now);
                  WriteString('Path',dirdefault+'HWSwebServer.exe');
                  CloseKey;
              Except
                  CloseKey;
                  Reg.Free;
                  exit;
              End;
              //Verifica se selecionado inicializar com win então cria chave
              if Servercnfg.vrf01 then begin
                 Try
                    Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                    writestring('WebServer', pchar(application.exename));
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
                    DeleteValue('WebServer');
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
          4:begin
            with Reg do begin
              rootkey:=HKEY_LOCAL_MACHINE;
              Try
                  Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\UNINSTALL\HWSwebServer',True);
                  writestring('DisplayName', 'HWS Web Solution - HWSwebServer');
                  writestring('InstallLocation', copy(dirdefault,1,Length(dirdefault)-1));
                  writestring('Publisher', 'HWS Web Solution 2005');
                  writestring('UninstallString', dirdefault+'uninstall.exe');
                  writestring('URLInfoAbouut', 'http://www.hws.com.br');
                  CloseKey;
              Except
                  CloseKey;
                  Reg.Free;
                  exit;
              End;
              Result:=true;
            end;
          end;
         End;
        finally
         Reg.Free;
        End;
    end;

    function verifylibs(DriverName,GetDriverFunc,LibraryNma,VendorLib:string;syslib:boolean):String;
    begin
       if not FileExists(LibraryNma) and not syslib then begin
          Result:=LibraryNma;
       end else if not FileExists(VendorLib) and not syslib then begin
          Result:=VendorLib;
       end else begin
          conecta_sql.DriverName:=DriverName;
          conecta_sql.GetDriverFunc:=GetDriverFunc;
          conecta_sql.LibraryName:=LibraryNma;
          conecta_sql.VendorLib:=VendorLib;
          Result:='';
       end;
    end;

    function atualizacombo(tipo:byte;pathlib:string):boolean;
    var mensaerror,x1: string;
    begin
        x1:=Copy(pathlib,Length(pathlib),1);
        if Length(pathlib)<3 then pathlib:=''
        else begin
           if (x1 <> '\') and
              (x1 <> '/') then
              pathlib:=pathlib+'\';
           if not DirectoryExists(pathlib) then pathlib:='';
        end;
       Mensaerror:='';
       Case tipo of
          0: mensaerror:=verifylibs('DB2','getSQLDriverDB2',pathlib+'dbexpdb2.dll',pathlib+'db2cli.dll',(pathlib = ''));
          1: mensaerror:=verifylibs('Interbase','getSQLDriverINTERBASE',pathlib+'dbexpint.dll',pathlib+'gds32.dll',(pathlib = ''));
          2: mensaerror:=verifylibs('Informix','getSQLDriverINFORMIX',pathlib+'dbexpinf.dll',pathlib+'isqlb09a.dll',(pathlib = ''));
          3: mensaerror:=verifylibs('MSSQL','getSQLDriverMSSQL',pathlib+'dbexpmss.dll',pathlib+'oledb',(pathlib = ''));
          4: mensaerror:=verifylibs('MySQL','getSQLDriverMYSQL',pathlib+'dbexpmysql.dll',pathlib+'libmysql.dll',(pathlib = ''));
          5: mensaerror:=verifylibs('Oracle','getSQLDriverORACLE',pathlib+'dbexpora.dll',pathlib+'oci.dll',(pathlib = ''));
       End;
       If mensaerror<>'' then Result:=False
       else Result:=True;
    end;

    function FilterCharsHWS(const S: string; const ValidChars: TCharsHWS): string;
    var I: integer;
    begin
        Result := '';
        for I := 1 to Length(S) do
            if S[I] in ValidChars then Result := Result + S[I];
    end;

    function conecta_bases(xcnx:byte;xhost,xdb,xusr,xpass,xpathlib:string):boolean;
    begin
        if not atualizacombo(xcnx,xpathlib) then begin
           Result:=False;
           exit;
        end;
        With conecta_sql do begin
             Params.Clear;
             Params.Values['Hostname']  := xhost;
             Params.Values['Database']  := xdb;
             Params.Values['User_Name'] := xusr;
             Params.Values['Password']  := xpass;
             Try
               Connected := true;
             Except End;
             Result:=Connected;
        end;
    end;

    function conecta_bd(cnt_usr,cnt_pass:string):boolean;
    var x_error:TstringList;
        cv: string;
    begin
        cnt_usr:=FilterCharsHWS(cnt_usr,['A'..'Z', 'a'..'z', '0'..'9']);
        cnt_pass:=FilterCharsHWS(cnt_pass,['A'..'Z', 'a'..'z', '0'..'9']);
        Result:=False;
        With Serverconect do begin
             if conecta_bases(vrf09[1],EnDecryptString(vrf10[1],37249),
                              EnDecryptString(vrf11[1],37249),EnDecryptString(vrf12[1],37249),
                              EnDecryptString(vrf13[1],37249),EnDecryptString(vrf15[1],12527)) then begin
                With executa do begin
                     cv := 'B2d7485d9N';
                     SQL.Text:='Select * from '+EnDecryptString(Serverconect.vrf19[1],37249)+' Where decode(usuario,'+#39+cv+#39+') = '+#39+cnt_usr+#39+
                               ' AND decode(password,'+#39+cv+#39+') = '+#39+cnt_pass+#39+' AND stat = 1';
                     Open;
                     if Recordcount <=0 then begin
                        Close;
                        conecta_sql.Connected:=False;
                     end else begin
                        Serverconect.vrf00:=Fieldbyname('codigo').AsInteger;
                        Result:=True;
                        Close;
                     end;
                end;
             end;
        end;
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

    procedure LoadLibraryHWS;
    var axFileCnfg : TMemoryStream;
    begin
        Try
        axFileCnfg := TMemoryStream.Create;

        axFileCnfg.Clear;
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg:=getcfgSrv(3);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(Serverconect,axFileCnfg.Size);

        axFileCnfg.Clear;
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg:=getcfgSrv(1);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(Helpdesk,axFileCnfg.Size);

        axFileCnfg.Clear;
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg:=getcfgSrv(2);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(HelpSys,axFileCnfg.Size);
        Except
            ShowMessage('Erro ao carregar configurações');
            Application.Terminate;
        End;
    end;

begin
      Panel1.Enabled:=false;
      inexecut:=true;
      dirdefault:=Edit1.Text;
      ProgressBar_install.Position:=0;
      ProgressBar_install.Max:=53;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if not rb_concordo.Checked then begin
         inexecut:=false;
         Panel1.Enabled:=true;
         ProgressBar_install.Position:=0;
         ShowMessage('Para instalar você deve concordar com os termos de compromisso.');
         exit;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if (chave_cp1.Text='') or (chave_cp2.Text='') then begin
         inexecut:=false;
         Panel1.Enabled:=true;
         ProgressBar_install.Position:=0;
         ShowMessage('Digite usuário e senha para autenticação.');
         exit;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if copy(dirdefault,Length(dirdefault),1)<>'\' then
         dirdefault:=dirdefault+'\';
      xerror:=true;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if (dirdefault<>'') then begin
          if copy(dirdefault,Length(dirdefault)-16,17)='HWS\HWSwebServer\' then begin
             if DirectoryExists(copy(dirdefault,1,Length(dirdefault)-17)) then
                xerror:=false;
          end;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if xerror then begin
         inexecut:=false;
         Panel1.Enabled:=true;
         ProgressBar_install.Position:=0;
         ShowMessage('Caminho selecionado para instalação inválido.');
         Edit1.SetFocus;
         Edit1.SelectAll;
         exit;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      HprevHist := FindWindow(Nil, PChar('HWS Web Server'));
      if HprevHist <> 0 then begin
         inexecut:=false;
         Panel1.Enabled:=true;
         ProgressBar_install.Position:=0;
         ShowMessage('HWSwebServer está ativo, feche todos os programas HWS e tente novamente.');
         exit;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if DirectoryExists(dirdefault) then begin
         If Application.MessageBox('HWSwebServer já foi instalado neste caminho, substituir arquivos?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then begin
            if not DeleteDir(Self.Handle,copy(dirdefault,1,Length(dirdefault)-1),False) then xerror:=true
            else Sleep(1000);
            if not xerror then if DirectoryExists(dirdefault) then xerror:=true;
            if xerror then begin
              inexecut:=false;
              Panel1.Enabled:=true;
              ProgressBar_install.Position:=0;
              ShowMessage('Ocorreu algum erro ao excluir arquivos, tente novamente.');
              exit;
            end;
         end else begin
            inexecut:=false;
            Panel1.Enabled:=true;
            ProgressBar_install.Position:=0;
            exit;
         end;
      end;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //cria diretórios do sistema
      if not DirectoryExists(copy(dirdefault,1,Length(dirdefault)-14)) then
         CreateDir(copy(dirdefault,1,Length(dirdefault)-14));
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      CreateDir(copy(dirdefault,1,Length(dirdefault)-1));
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      CreateDir(dirdefault+'bin');
      //copia arquivo
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(ExtractSystemDir+'midas.dll','MIDASDLL','DLLFILE',False);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(ExtractSystemDir+'dbexpmysql.dll','DBEXPMYSQLDLL','DLLFILE',False);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(ExtractSystemDir+'libmySQL.dll','LIBMYSQLDLL','DLLFILE',False);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(ExtractSystemDir+'HWSsksys.dll','HWSSKSYSDLL','DLLFILE',True);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(ExtractSystemDir+'HWSskcnt.dll','HWSSKCNTDLL','DLLFILE',True);
         //bpl files
         copiaarqsys(ExtractSystemDir+'dbexpress70.bpl','DBEXPRESS70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'dbrtl70.bpl','DBRTL70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'dbxcds70.bpl','DBXCDS70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'dsnap70.bpl','DSNAP70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'dsnapcon70.bpl','DSNAPCON70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'hws.bpl','HWSBPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'hwsdialogs.bpl','HWSDIALOGSBPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'inet70.bpl','INET70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'rtl70.bpl','RTL70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'RxCtl7.bpl','RXCTL7BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'soaprtl70.bpl','SOAPRTL70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vcl70.bpl','VCL70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vcldb70.bpl','VCLDB70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vclie70.bpl','VCLIE70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vcljpg70.bpl','VCLJPG70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vclshlctrls70.bpl','VCLSHLCTRLS70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vclsmp70.bpl','VCLSMP70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'vclx70.bpl','VCLX70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         copiaarqsys(ExtractSystemDir+'xmlrtl70.bpl','XMLRTL70BPL','BPLFILE',True);
         ProgressBar_install.Position:=ProgressBar_install.Position+1;
         //fim
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(dirdefault+'HWSwebServer.exe','HWSWEBSERVEREXE','EXEFILE',True);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(dirdefault+'uninstall.exe','UNINSTALLEXE','EXEFILE',True);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      copiaarqsys(dirdefault+'bin\HWSserverconfig.exe','HWSSERVERCONFIGEXE','EXEFILE',True);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //criando registros
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //registrando midas.dll
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      WinExec('REGSVR32 /S MIDAS.DLL', SW_HIDE);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      LoadLibraryHWS;
      //teste conexão
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      if not conecta_bd(chave_cp1.Text,chave_cp2.Text) then begin
         DeleteDir(Self.Handle,copy(dirdefault,1,Length(dirdefault)-1),False);
         inexecut:=false;
         Panel1.Enabled:=true;
         ProgressBar_install.Position:=0;
         ShowMessage('Chave de autenticação inválida.');
         exit;
      end;
      //cria icones
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'HWSwebServer.exe',dirdefault,'HWSwebServer','','',1);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'HWSwebServer.exe',dirdefault,'HWSwebServer','','',2);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'bin\HWSserverconfig.exe',dirdefault,'HWSwebServer','','',3);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      Createicones(dirdefault+'uninstall.exe',dirdefault,'HWSwebServer','','',4);
      //grava registros
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      winsysreg(1);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      winsysreg(4);
      ProgressBar_install.Position:=ProgressBar_install.Position+1;
      //finalizando
      inexecut:=false;
      Panel1.Enabled:=true;
      GroupBox1.Visible:=false;
      GroupBox2.Visible:=false;
      GroupBox3.Visible:=false;
      ToolBar1.Visible:=false;
      pn_fim1.Visible:=true;
      ToolBar2.Visible:=true;
end;

procedure Tmenuinst.SpeedButton1Click(Sender: TObject);
var axpath,axpastasys:string;
begin
      try
          axpastasys:='HWS\HWSwebServer\';
          if (Edit1.Text<>'') then begin
             if copy(Edit1.Text,Length(Edit1.Text),1)<>'\' then
                Edit1.Text:=Edit1.Text+'\';
             if copy(Edit1.Text,Length(Edit1.Text)-16,17)=axpastasys then
                axpath:=copy(Edit1.Text,1,Length(Edit1.Text)-17)
             else axpath:=Edit1.Text;
             if not DirectoryExists(axpath) then axpath:='';
          end else axpath:='';
          Application.CreateForm(Tselectdir, selectdir);
          selectdir.pathselected:=axpath;
          selectdir.pastasys:=axpastasys;
          selectdir.ShowModal;
          if selectdir.pathselected<>'' then Edit1.Text:=selectdir.pathselected;
      finally
          selectdir.Destroy;
      end;
end;

procedure Tmenuinst.SpeedButton3Click(Sender: TObject);
begin
      Close;
end;

procedure Tmenuinst.SpeedButton2Click(Sender: TObject);
begin
      WinExec(PChar(dirdefault+'HWSwebServer.exe'),1);
      Close;
end;

end.
