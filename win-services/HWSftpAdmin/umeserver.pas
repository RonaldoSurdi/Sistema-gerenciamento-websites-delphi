unit umeserver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ToolWin, AppEvnts, ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPServer, IdFTPServer,
  idglobal, IdHashCRC, IdFTPList, IdSocketHandle, TrayIcon, Shellapi, Spin,
  IdTCPConnection, IdTCPClient, IdHTTP, Menus;
type
  Tdgtdados = record
     usr : String;
     pass : String;
     confat : boolean;
  end;
  THb_cnfg = record
    vrf00: integer;     //ref
    vrf01: String[10]; //porta default
    vrf02: String[100]; //admin user
    vrf03: String[100]; //admin pass
    vrf04: String[20]; //Terminate Wait
    vrf05: integer; //iniciar conectado
    vrf06: integer; //iniciar com windows
    vrf07: integer; //Tipo de arquivos
    vrf08: String[20]; //MaxConnections 0
    vrf09: String[20]; //ListenQueue 15
    vrf10: String[255]; // Brindings
    
  End;
  THb_groups = record
    vrf00: integer;     //count
    vrf01: array[0..50] of integer; //códigos
    vrf02: array[0..50] of String[50]; //grupos
    vrf03: array[0..50] of String[4]; //permissões
  End;
  THb_users = record
    vrf00: integer;     //count
    vrf01: array[0..50] of integer; //códigos
    vrf02: array[0..50] of String[100]; //usuarios
    vrf03: array[0..50] of String[100]; //senhas
    vrf04: array[0..50] of String[250]; //diretório
    vrf05: array[0..50] of String[250]; //path default
    vrf06: array[0..50] of String[4]; //permissões
    vrf07: array[0..50] of integer; //Cód. Group
  End;

  File_Hb_cnfg = file of THb_cnfg;
  File_Hb_groups = file of THb_groups;
  File_Hb_users = file of THb_users;

  Txfilename = Record
      xopen: Boolean;
      xfile: String;
  End;

  TForm1 = class(TForm)
    RichEdit_log: TRichEdit;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    TimerLog: TTimer;
    GroupBox_monitor: TGroupBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    PhysMem: TLabel;
    AvalRes: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    SpinEdit1: TSpinEdit;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    OSBuilder: TLabel;
    stOSVersao: TLabel;
    stOS: TLabel;
    CPUt: TLabel;
    FreeCPUFreq: TLabel;
    ProgressBar_mem: TProgressBar;
    FreeRes: TLabel;
    CheckBox2: TCheckBox;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Usurios1: TMenuItem;
    Cadastro1: TMenuItem;
    Grupos1: TMenuItem;
    Sistema1: TMenuItem;
    Configuraes1: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Logs1: TMenuItem;
    Monitorar1: TMenuItem;
    Label3: TLabel;
    OpenDialog1_logs: TOpenDialog;
    estarServidor1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Logs1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Monitorar1Click(Sender: TObject);
    procedure estarServidor1Click(Sender: TObject);
  private
    xaut: Boolean;
    xfilename: Txfilename;
    procedure monitorar;
    { Private declarations }
  public
    xfilenameCNFG: string;
    Hb_cnfg: THb_cnfg;
    Hb_groups: THb_groups;
    Hb_users: THb_users;
    reg_Hb_cnfg: File_Hb_cnfg;
    reg_Hb_groups: File_Hb_groups;
    reg_Hb_users: File_Hb_users;
    procedure gravar_log(xmensa:String);
    function EnDecryptString(StrValue : String; Chave: Word) : String;
    function EnDecryptStream(InMS : TMemoryStream; Chave: Word) : TMemoryStream;
    function HiconToIcon:TIcon;
    function BtDigitarSenha(Title:string):Tdgtdados;
    function BtMensagem(Mensa:string):boolean;
    function BtConfirma(Mensa:string):boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;
  MS: TMemoryStatus;
  function GetCPUSpeed: Double;

implementation

Uses uusers, ugroups, uconfig, uBt_Mensagem, uBt_Confirma, uBt_digitarsenha, uftptest, uSobre;

{$R *.dfm}


function GetCPUSpeed: Double;
const DelayTime = 500;
var
   TimerHi, TimerLo: DWORD;
   PriorityClass, Priority: Integer;
begin
   try
      PriorityClass := GetPriorityClass(GetCurrentProcess);
      Priority := GetThreadPriority(GetCurrentThread);
      SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
      //SetThreadPriority(GetCurrentThread,THREAD_PRIORITY_TIME_CRITICAL);
      Sleep(10);
      asm
         dw 310Fh // rdtsc
         mov TimerLo, eax
         mov TimerHi, edx
      end;
      Sleep(DelayTime);
      asm
         dw 310Fh // rdtsc
         sub eax, TimerLo
         sbb edx, TimerHi
         mov TimerLo, eax
         mov TimerHi, edx
      end;
      //SetThreadPriority(GetCurrentThread, Priority);
      SetPriorityClass(GetCurrentProcess, PriorityClass);
      Result := TimerLo / (1000.0 * DelayTime);
      except Result:=0 end;
end;

function TForm1.EnDecryptString(StrValue : String; Chave: Word) : String;
var I: Integer;
    OutValue : String;
begin
    OutValue := '';
    for I := 1 to Length(StrValue) do
        OutValue := OutValue + char(Not(ord(StrValue[I])-Chave));
    Result := OutValue;
end;

function TForm1.EnDecryptStream(InMS : TMemoryStream; Chave: Word) : TMemoryStream;
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

function TForm1.HiconToIcon:TIcon;
var
    xicon : Ticon;
begin
    xicon := Ticon.Create;
    xicon.Handle:=ExtractIcon(Application.Handle,PChar(Application.ExeName),0);
    Result:=xicon;
end;

function TForm1.BtDigitarSenha(Title:string):Tdgtdados;
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

function TForm1.BtMensagem(Mensa:string):boolean;
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

function TForm1.BtConfirma(Mensa:string):boolean;
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
var xmemfile: TMemoryStream;
begin
      xaut:=false;
      SendMessage(RichEdit_log.Handle, EM_LIMITTEXT, 0, $FFFFFF);
      gravar_log(#13+'Iniciado');
      xfilenameCNFG := ExtractFilePath(Application.ExeName)+'HWSftp';
      xmemfile:= TMemoryStream.Create;
      if FileExists(xfilenameCNFG+'001.hws') then begin
         xmemfile.Clear;
         xmemfile.Position:=0;
         xmemfile.LoadFromFile(Form1.xfilenameCNFG+'001.hws');
         xmemfile.Position:=0;
         xmemfile:= EnDecryptStream(xmemfile,45621);
         xmemfile.Position:=0;
         xmemfile.Read(Hb_cnfg,xmemfile.Size);
      end else begin
         With Hb_cnfg do begin
            vrf00:=0;
            vrf01:= EnDecryptString('21',13584);
            vrf02:= EnDecryptString('admroots',13584);
            vrf03:= EnDecryptString('works',26551);
            vrf04:= EnDecryptString('5000',13513);
            vrf05:= 0;
            vrf06:= 0;
            vrf07:= 2;
            vrf08:= EnDecryptString('0',13514);
            vrf09:= EnDecryptString('15',13515);
            vrf10:= EnDecryptString('',21632);
         end;
      end;
      if FileExists(xfilenameCNFG+'002.hws') then begin
         xmemfile.Clear;
         xmemfile.Position:=0;
         xmemfile.LoadFromFile(Form1.xfilenameCNFG+'002.hws');
         xmemfile.Position:=0;
         xmemfile:= EnDecryptStream(xmemfile,45622);
         xmemfile.Position:=0;
         xmemfile.Read(Hb_groups,xmemfile.Size);
      end else begin
         With Hb_groups do begin
            vrf00:=1;
            vrf01[0]:= 1;
            vrf02[0]:= EnDecryptString('group',15412);
            vrf03[0]:= EnDecryptString('xxxx',15432);
         end;
      end;
      if FileExists(xfilenameCNFG+'003.hws') then begin
         xmemfile.Clear;
         xmemfile.Position:=0;
         xmemfile.LoadFromFile(Form1.xfilenameCNFG+'003.hws');
         xmemfile.Position:=0;
         xmemfile:= EnDecryptStream(xmemfile,45623);
         xmemfile.Position:=0;
         xmemfile.Read(Hb_users,xmemfile.Size);
      end else begin
         With Hb_users do begin
            vrf00:=1;
            vrf01[0]:= 1;
            vrf02[0]:= EnDecryptString('myuser',53214);
            vrf03[0]:= EnDecryptString('mypass',13285);
            vrf04[0]:= EnDecryptString('/',21654);
            vrf05[0]:= EnDecryptString('/',12333);
            vrf06[0]:= EnDecryptString('xxxx',18578);
            vrf07[0]:= 1;
         end;
      end;
      xmemfile.Free;
end;

procedure TForm1.FormActivate(Sender: TObject);
var  dgtdados : Tdgtdados;
begin
      Application.Minimize;
      if not (xaut) then begin
         xaut:=false;
         dgtdados:=BtDigitarSenha('Autenticação');
         if dgtdados.confat then begin
            if (EnDecryptString(Hb_cnfg.vrf02,13584)<>dgtdados.usr) or (EnDecryptString(Hb_cnfg.vrf03,26551)<>dgtdados.pass) then begin
               BtMensagem('Autenticação inválida!');
               //Application.Terminate;
            end else begin
               xaut:=true;
               ShowWindow(Application.Handle,SW_RESTORE);
               SetForegroundWindow(Application.Handle);
            end;
         end;
         if not xaut then Close;
      end;
end;

procedure TForm1.gravar_log(xmensa:String);
var F: TextFile;
    S,xtime: string;
    xfilenameDT,xfile: String;
begin
    if (not xfilename.xopen) then begin
       xfilename.xopen:=True;
       DateTimeToString(xfilenameDT,'mmyyyy',Now);
       xfile := ExtractFileName(Application.ExeName);
       xfilename.xfile:=ExtractFilePath(Application.ExeName)+copy(xfile,0,Length(xfile)-4)+xfilenameDT+'.hws';
    end;
    AssignFile(F, xfilename.xfile);
    DateTimeToString(xtime,'yyyy-mm-dd hh:nn:ss',now);
    if FileExists(xfilename.xfile) then Append(F)
    else ReWrite(F);
    Writeln(F,xtime+xmensa);
    CloseFile(F);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
      gravar_log(#13+'Sistema Finalizado...');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var cpuspeed: String;
    xmemfree: Integer;
begin
      GlobalMemoryStatus(MS);
      PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
      AvalRes.Caption := FormatFloat('#,###" KB"', MS.dwAvailPhys / 1024);
      xmemfree:=MS.dwMemoryLoad;
      FreeRes.Caption := Format('%d %%', [xmemfree]);
      ProgressBar_mem.Position:=xmemfree;
      cpuspeed:=Format('%f MHz', [GetCPUSpeed]);
      FreeCPUFreq.caption := cpuspeed;
      if (CheckBox2.Checked) then begin
          if (xmemfree >= SpinEdit2.Value) then begin
             gravar_log(#13+'Sobrecarga de Memória');
          end;
      end;
end;

procedure TForm1.monitorar;
var verInfo : TOsVersionInfo;
begin
      GroupBox_monitor.Visible:=true;
      Timer1.Interval:=SpinEdit1.Value;
      Timer1.Enabled:=true;
      verInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
      if GetVersionEx(verInfo) then begin
         stOSVersao.Caption := IntToStr(verInfo.dwMajorVersion) +
         IntToStr(verInfo.dwMinorVersion);
         OSBuilder.Caption := IntToStr(verInfo.dwBuildNumber);
         case verInfo.dwPlatformId of
              VER_PLATFORM_WIN32s : stOS.Caption := 'Win 95';
              VER_PLATFORM_WIN32_WINDOWS : stOS.Caption := 'Win 95Osr2/98';
              VER_PLATFORM_WIN32_NT : stOS.Caption := 'Win NT/XP';
         end;
      end;
end;

procedure TForm1.Cadastro1Click(Sender: TObject);
begin
      Application.CreateForm(TForm3,Form3);
      Form3.ShowModal;
end;

procedure TForm1.Grupos1Click(Sender: TObject);
begin
      Application.CreateForm(TForm4,Form4);
      Form4.ShowModal;
end;

procedure TForm1.Configuraes1Click(Sender: TObject);
begin
      Application.CreateForm(TForm2,Form2);
      Form2.ShowModal;
end;

procedure TForm1.Logs1Click(Sender: TObject);
begin
    if OpenDialog1_logs.Execute then begin
       RichEdit_log.Lines.LoadFromFile(OpenDialog1_logs.FileName);
    end;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
    Try
       Application.CreateForm(TSobre,Sobre);
       Sobre.ShowModal;
    finally
       Sobre.Free;
    End;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.Monitorar1Click(Sender: TObject);
begin
    Monitorar1.Checked:=not Monitorar1.Checked;
    if (Monitorar1.Checked) then monitorar
    else begin
        Timer1.Enabled:=false;
        GroupBox_monitor.Visible:=false;
    end;
end;

procedure TForm1.estarServidor1Click(Sender: TObject);
begin
      Application.CreateForm(TForm5,Form5);
      Form5.ShowModal;
end;

end.
