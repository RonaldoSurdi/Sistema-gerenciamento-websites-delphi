{###############################################################################
Programa: HWScontrol
Módulo: Módulo de dados.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit udm3;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  SimpleDS, Forms, Winsock, Messages, ComCtrls, Windows, hwsfunctions, Registry,
  SOAPConn, MConnect, InvokeRegistry, Rio, SOAPHTTPClient, Types, XSBuiltIns, RxRichEd,
  Graphics, ScktComp, Jpeg, MMSystem,StdCtrls,ExtCtrls, SOAPHTTPTrans, WinInet,
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient;
  {Controls, Dialogs, StdCtrls, mappoint, ExtCtrls, Variants, wininet;}

  //Variants, Controls,Dialogs, StdCtrls, ExtCtrls, Buttons, ToolWin, XPMan;
  //AppEvnts, TrayIcon, Menus, ImgList, ActnMan, ActnCtrls,uwebchat_msgMonitor, OleCtrls, SHDocVw, backup;


type
  IHWSwsFnApp = interface(IInvokable)
    //['{E4F918D6-429C-45D4-9D28-D3E64DDB65E3}']
    ['{8D8D0605-EF18-49CE-83EE-A71BF3E365CF}']
    function HWSdbAppUPbinPH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn2PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string; const FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn3PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string): Boolean; stdcall;
    function HWSdbAppUPbin4PH(const xcptp,xcpcod,xcpdt: string; const FileData: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppDOWNbinSZ(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): Integer; stdcall;
    function HWSdbAppREQbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string): Boolean; stdcall;
    function HWSdbAppUPbin(const xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbin(const xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppGETcp(const xtablename,xcpname,xcpwh: string): Integer; stdcall;
    function HWSdbAppXcp(const xtablename,xcpname,xcpvl: string): Boolean; stdcall;
    function HWSdbAppHtcp(const xtablename,xcpip,xcpvl,xcpmg: string): Boolean; stdcall;
    function HWSdbAppAtcp(const xHWSfld: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppCnfg(const xHWSid: string): TByteDynArray; stdcall;
    function HWSdbAppEXbin(const xHWSfld,xHWSprm: TByteDynArray): Boolean; stdcall;
    function HWSdbAppSmMs(const xHWSfld1,xHWSfld2: TByteDynArray): Integer; stdcall;
    function HWSdbAppHtct1(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Integer; stdcall;
    function HWSdbAppHtct2(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Boolean; stdcall;
    function HWSdbAppHtct3(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv5,xcpv6: string; xcpv4: TByteDynArray): Integer; stdcall;
    function HWSdbAppHtct4(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppHtct5(const xcpid: String; const xcpr1: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppHtct6(const xcpid: String; const xcpr1: TByteDynArray): Boolean; stdcall;
    function HWSdbAppHtct7(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4,xcpv5: TByteDynArray): TByteDynArray; stdcall;
  end;

  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
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
  THelpSysControl = record
    vrf00: Integer;     //codigo
    vrf01: String[100]; //tabela menu
    vrf02: String[100]; //tabela itens
    vrf03: String[100]; //tabela imagens
    vrf04: String[100]; //tabela binary img
  End;
  TAxDadosUsr = record
    codigo: Integer;
    usr: String[100];
    pass: String[100];
    operador: String[10];
    cod_web: Integer;
    cod_ent: Integer;
    cod_ent_1: Integer;
    cod_set: Integer;
    cod_grp: Integer;
    nome: String[255];
    website: String[255];
    razao_social: String[255];
    setor: String[255];
    master: Boolean;
    axtitle: String[255];
    axparm: String[255];
  End;
  Tdm3 = class(TDataModule)
    source_sql: TDataSource;
    source_sql3: TDataSource;
    source_sql4: TDataSource;
    source_sql5: TDataSource;
    source_sql2: TDataSource;
    source_sql6: TDataSource;
    source_sql7: TDataSource;
    source_sql8: TDataSource;
    source_sql9: TDataSource;
    source_sql10: TDataSource;
    source_sql11: TDataSource;
    ds_sql: TClientDataSet;
    ds_sql2: TClientDataSet;
    ds_sql3: TClientDataSet;
    ds_sql4: TClientDataSet;
    ds_sql5: TClientDataSet;
    ds_sql6: TClientDataSet;
    ds_sql7: TClientDataSet;
    ds_sql8: TClientDataSet;
    ds_sql9: TClientDataSet;
    ds_sql10: TClientDataSet;
    ds_sql11: TClientDataSet;
    executa: TClientDataSet;
    executa2: TClientDataSet;
    executa3: TClientDataSet;
    executa4: TClientDataSet;
    executa5: TClientDataSet;
    executa6: TClientDataSet;
    executa7: TClientDataSet;
    executa8: TClientDataSet;
    HWSconnection: TSoapConnection;
    HWSconnectionApp: THTTPRIO;
    procedure HWSconnectionAppAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure HWSconnectionAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure HWSconnectionAppHTTPWebNode1ReceivingData(Read,
      Total: Integer);
    procedure DataModuleCreate(Sender: TObject);
    procedure HWSconnectionAppHTTPWebNode1PostingData(Sent,
      Total: Integer);
  private
    { Private declarations }
  public
    duplicidadeChecked: Boolean;
    axcod_web,axhttp_web,axcod_Usr,ax_UsrName,axparmSAC,xcnt_axf,xcnt_usr,xcnt_pass: string;
    ax_UsrMst: Boolean;
    LstTables: TLstTables;
    XaxtvUPDATE: Boolean;
    xipserver,ax_title : string;
    CountSecID,XaxtvUPDATEtimer: Integer;
    axshowingMNG: Boolean;
    TerminateApplication: Boolean;
    xtotSendTransf,xtotSendTransfS,xtotReadTransf,xtotReadTransfS: Integer;
    function testWindowSize(xread:Boolean; var psx,psy,psw,psh,psv1,psv2,psv3,psv4: Integer):Boolean;
    function HDKeyNum(FDrive:String) :String;
    function GetIPcntHWS(var xipup:String):Boolean;
    function GetCodMax(xtabela,xcampo,xwhere:string):Integer;
    function winsysreg(tipo: byte; xhelpdesk,xhelpsys: boolean):boolean;
    function Autentica_usr:boolean;
    function Autentica_db:Tdgtdados;
    function gravar_logsys(messagehist:string):boolean;
    function SetCountSec1(xtable,cod_web,cod_ent,xdet,xtp:string):boolean;
    function SetCountSec2(xtable,cod_web,cod_ent,xtp,xstset:string):boolean;
    function SetCountSec3(xtable,xcpid,xstatusr,cod_web,cod_ent,xdesc:string; xobs:TStringList; xconfcnfIDax:String):Integer;
    function SetCountSec4(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp4:TMemoryStream; xcp5,xusrlist:TStringList; var xdtenv: String; xconfcnfIDax: String):Integer;
    function SetCountSec7(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp9,xcp10,xcp15:Boolean; xcp13:Integer; xcp11:TDateTime; xcp4:TMemoryStream; xcp5,xusrlist,xfilelist:TStringList; var xdtenv: String; xconfcnfIDax: String):Integer;
    function SetCountSec5(xcpid,xtable1,xcod_msg:string; var xdtenv: String):Integer;
    function deleta_reg(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
    function SACconecta_bd(cnt_usr,cnt_pass,xcod_grp,cnt_codweb,cnt_web:string):boolean;
    function GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
    function sentMailHWS(xHWSfld1,xHWSfld2: TStringList): Integer;
    function PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function PostBinaryStream4PH(xcptp,xcpcod,xcpdt: string; xFileData: TMemoryStream): Boolean;
    function PostBinaryStreamPHPart(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string; xFileData2: TMemoryStream): Boolean;
    function PostBinaryStreamPHEnd(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string): Boolean;
    function GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
    function RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;
    function rotateBitmap(xstrTPmem1:TMemoryStream; var xstrTPmem2:TMemoryStream; xTPcompress:Integer; xangleTP:Double): Boolean;
    function rotateFoto(xangulo:Integer; var xImagem_Out: TMemoryStream; var xImagem_size: Integer; var xImagem_UPDT: Boolean;
                        xcpTPmodelo,xcpTP1,xcpTP2,xcpTP3,xcpTP4: String): Boolean;
    function getTablesNms:Boolean;
    function AtualizarAtendentes(var axListView: TListView; var axGroupBox: TGroupBox;
                                 var axSplitter: TSplitter; var axListView_cod: TStringList;
                                 var axactivAtn: Boolean; IgnUsr,IResetRt: Boolean; xcodwebID,xhwsIDbt,xcodConfIDsec:String):Boolean;
    function AtualizarUsrWebNotResgistred(var axListView: TListView; var axGroupBox: TGroupBox;
                                          var axSplitter: TSplitter; var axListView_cod: TStringList;
                                          var axactivAtn: Boolean; xcodwebID:String):Boolean;
    function OpenChat(xOlnUsr: Boolean; VusrName,VusrXtp,VusrStatCaption: String; VusrCod, VusrStat: Integer; VusrType: Integer):Boolean;
    function OpenConferencia(xcodcnf,xconfTitle: String; testUSRLocCount,testUSRCODac:Integer):Boolean;
    function RefreshUserConf(testUSRLocCount,testUSRCODac:Integer):Boolean;
    procedure open_modulo(ax_mod,axcodmdl,ax_param:string);
    { Public declarations }
  end;

var
  dm3: Tdm3;
  Controlcnfg: TControlcnfg;
  Serverconect: TServerconectControl;
  Helpdesk: THelpdesk;
  HelpSys: THelpSysControl;
  AxDadosUsr: TAxDadosUsr;
  TD,TD2 : TTransactionDesc;
  function PlaySoundHWS(IdSound: Integer):Boolean;

implementation

Uses RichEdit, DateUtils, U_Cipher;
const
  PixelMax = 32768;
Type
  pPixelArray = ^TPixelArray;
  TPixelArray = Array[0..PixelMax-1] Of TRGBTriple;

{$R *.dfm}

function PlaySoundHWS(IdSound: Integer):Boolean;
var ResStream: TResourceStream;
    xfileMenSnd: TMemoryStream;
    xpthsnd,xflsnd,axpathappsound: String;
    axpathappsoundax: Boolean;
begin
     axpathappsound:=ExtractFilePath(Application.ExeName);
     axpathappsoundax:=(copy(axpathappsound,Length(axpathappsound)-3,4)='bin\');
     if axpathappsoundax then
        axpathappsound:=copy(axpathappsound,0,Length(axpathappsound)-4);
     xpthsnd:=axpathappsound+'sound\';
     Case IdSound of
         0:xflsnd:='alerta.wav';
         1:xflsnd:='msg.wav';
         2:xflsnd:='senmail.wav';
     End;
     xflsnd:=xpthsnd+xflsnd;
     if not DirectoryExists(xpthsnd) then CreateDir(xpthsnd);
     if not FileExists(xflsnd) and not axpathappsoundax then begin
       try
        xfileMenSnd:= TMemoryStream.Create;
        ResStream := TResourceStream.Create(Hinstance, 'snd'+IntToStr(IdSound), RT_RCDATA);
        xfileMenSnd.Clear;
        xfileMenSnd.Position:=0;
        xfileMenSnd.LoadFromStream(ResStream);
        xfileMenSnd.Position:=0;
        xfileMenSnd.SaveToFile(xflsnd);
       Except
        xflsnd:='';
       end;
     end;
     if xflsnd<>'' then
        SndPlaySound(PChar(xflsnd),SND_ASYNC);
     Result:=true;
end;

function Tdm3.testWindowSize(xread:Boolean; var psx,psy,psw,psh,psv1,psv2,psv3,psv4: Integer):Boolean;
var Reg: Tregistry;
    xMemorystrCnfg: TMemoryStream;
begin
    Reg:=Tregistry.create;
    xMemorystrCnfg:= TMemoryStream.Create;
    try
        with Reg do begin
            rootkey:=HKEY_LOCAL_MACHINE;
            //cria chave defaul no registro
            if not KeyExists('Software\HWS\SAC') then begin
              OpenKey('Software\HWS\SAC',True);
              Result:=false;
            end else begin
              if xread then begin
                 OpenKey('Software\HWS\SAC',False);
                 if ValueExists('xp') then
                    psx:=ReadInteger('xp');
                 if ValueExists('yp') then
                    psy:=ReadInteger('yp');
                 if ValueExists('wp') then
                    psw:=ReadInteger('wp');
                 if ValueExists('hp') then
                    psh:=ReadInteger('hp');
                 if ValueExists('v1') then
                    psv1:=ReadInteger('v1');
                 if ValueExists('v2') then
                    psv2:=ReadInteger('v2');
                 if ValueExists('v3') then
                    psv3:=ReadInteger('v3');
                 if ValueExists('v4') then
                    psv4:=ReadInteger('v4')
                 else psv4:=-1;
              end else begin
                 OpenKey('Software\HWS\SAC',true);
                 if psv4=1 then begin
                     WriteInteger('xp',psx);
                     WriteInteger('yp',psy);
                     WriteInteger('wp',psw);
                     WriteInteger('hp',psh);
                     WriteInteger('v1',psv1);
                     WriteInteger('v2',psv2);
                     WriteInteger('v3',psv3);
                 end else begin
                     WriteInteger('v4',psv4);
                 end;
              end;
              Result:=true;
            end;
            CloseKey;
            Reg.Free;
        end;
    except
        try
          Reg.CloseKey;
          Reg.Free;
        except
        end;
        Result:=false;
    end;
end;

function Tdm3.HDKeyNum(FDrive:String) :String;
Var
  Serial:DWord;
  DirLen,Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
  Try GetVolumeInformation(PChar(FDrive),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result := IntToHex(Serial,8);
  Except
    Result :='Network/Web';
  end; 
end;

function Tdm3.GetCodMax(xtabela,xcampo,xwhere:string):Integer;
var ax_cod1 : integer;
begin
    Try
      ax_cod1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppGETcp(EnDecryptString(xtabela,21535),EnDecryptString(xcampo,21535),EnDecryptString(xwhere,21535));
    Except
      ax_cod1:=0;
    End;
    Result := ax_cod1;
end;

function Tdm3.winsysreg(tipo: byte; xhelpdesk,xhelpsys: boolean):boolean;
var Reg: Tregistry;
    xMemorystrCnfg: TMemoryStream;
    ByteArray: TByteDynArray;
    axfilterLoad,xnameprg,xtmp: String;
    xnameprg_Bool: Boolean;
    xhdl,xhidID:String;
begin
    Result:=false;
    Reg:=Tregistry.create;
    xMemorystrCnfg:= TMemoryStream.Create;
    try
     Case tipo of
      1:begin
        xhdl := Application.ExeName;
        xhdl:= copy(xhdl,1,3);
        xhidID:=HDKeyNum(xhdl);
        with Reg do begin
            rootkey:=HKEY_LOCAL_MACHINE;
            //cria chave defaul no registro
            if not KeyExists('Software\HWS\SAC') then begin
                { Controlcnfg.vrf00:=0;     //codigo
                 Controlcnfg.vrf01:=true;  //iniciar com o windows
                 Controlcnfg.vrf02:=false;  //conectar automaticamento no login
                 Controlcnfg.vrf38:=true;  //atualizações automáticas
                 Controlcnfg.vrf39:=true;  //maximixar janela
                 Controlcnfg.vrf40:=-1;    //reproduzir som = -1:sim 0:não
                 Controlcnfg.vrf54:=EnDecryptString(xhidID,14282);  //HD Number
                 Controlcnfg.vrf95:='';    //cod para local
                 Controlcnfg.vrf16:= EnDecryptString('NotSavePassKill',23654); //usuario
                 Controlcnfg.vrf17:= EnDecryptString('NotSavePassKill',15187); //senha
                 Controlcnfg.vrf94:= EnDecryptString('NotSavePassKill',35412); //web}
               hwsf.BtMensagem('Ocorreu um erro na inicialização'+#13+'reinstale o aplicativo');
               Try
                if TerminateApplication then Application.Terminate;
                Exit;
               Except End;
            end else begin
               Try
                  OpenKey('Software\HWS\SAC',False);
                  ReadBinaryData('WebSACnfg', Controlcnfg, SizeOf(Controlcnfg));
                  WriteDateTime('Acesso',Now);
                  //WriteString('Path',Application.ExeName);
                  CloseKey;
               Except
                  CloseKey;
                  if TerminateApplication then Application.Terminate;
                  exit;
               End;
            end;
        end;
        {if (xhidID<>EnDecryptString(Controlcnfg.vrf54,14282)) then begin
           hwsf.BtMensagem('Instalação do sistema Inválida...');
           Application.Terminate;
        end;}
        if not GetIPcntHWS(xipserver) then begin
           if TerminateApplication then begin
              hwsf.BtMensagem('Erro de conexão com servidor.');
              Application.Terminate;
           end;
           exit;
        end;
        //if EnDecryptString(Controlcnfg.vrf94,37249)<>'tb' then
        //   xipserver:=EnDecryptString(Controlcnfg.vrf94,25189);
        Try
          xnameprg:='http://www.hws.com.br/HWSsycHst/';
          //xnameprg:='http://192.168.0.52/HWSsycHst/';
          HWSconnection.URL:= xnameprg+'HWScontrolSrv25.dll/soap/IHWSappdb';
          HWSconnectionApp.WSDLLocation:= xnameprg+'HWScontrolApp125vp.dll/wsdl/IHWSwsFnApp';
          HWSconnectionApp.Service:= 'IHWSwsFnAppservice';
          HWSconnectionApp.Port:= 'IHWSwsFnAppPort';
          HWSconnection.Connected:=true;
          xnameprg_Bool:=HWSconnection.Connected;
        Except
          xnameprg_Bool:=False;
        End;
        if not xnameprg_Bool then begin
           if TerminateApplication then begin
              hwsf.BtMensagem('Erro de conexão com servidor.');
              Application.Terminate;
           end;
           exit;
        end;
        //Serverconect
        xMemorystrCnfg.Clear;
        xMemorystrCnfg.Seek(0,soFromBeginning);
        //axfilterLoad:=EnDecryptString('Nfk31155jp',15348);
        axfilterLoad:=EnDecryptString('1111111111',15348);
        Try
           ByteArray := (HWSconnectionApp as IHWSwsFnApp).HWSdbAppCnfg(axfilterLoad);
           xMemorystrCnfg:=ByteArrayCompressedToStream(ByteArray);
        Except
           xMemorystrCnfg.Clear;
        End;
        xMemorystrCnfg.Seek(0,soFromBeginning);
        xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,16857);
        xMemorystrCnfg.Seek(0,soFromBeginning);
        xMemorystrCnfg.Read(Serverconect,xMemorystrCnfg.Size);
        xtmp:= EnDecryptString(Serverconect.vrf45,37249);
        //Helpdesk
        if xhelpdesk then begin
           xMemorystrCnfg.Clear;
           xMemorystrCnfg.Seek(0,soFromBeginning);
           axfilterLoad:=EnDecryptString('Nfk32255jp',15348);
           Try
              ByteArray := (HWSconnectionApp as IHWSwsFnApp).HWSdbAppCnfg(axfilterLoad);
              xMemorystrCnfg:=ByteArrayCompressedToStream(ByteArray);
           Except
              xMemorystrCnfg.Clear;
           End;
           xMemorystrCnfg.Seek(0,soFromBeginning);
           xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,16857);
           xMemorystrCnfg.Seek(0,soFromBeginning);
           xMemorystrCnfg.Read(Helpdesk,xMemorystrCnfg.Size);
        end;
        //Helpsys
        if xhelpsys then begin
           xMemorystrCnfg.Clear;
           xMemorystrCnfg.Seek(0,soFromBeginning);
           axfilterLoad:=EnDecryptString('Nfk35555jp',15348);
           Try
              ByteArray := (HWSconnectionApp as IHWSwsFnApp).HWSdbAppCnfg(axfilterLoad);
              xMemorystrCnfg:=ByteArrayCompressedToStream(ByteArray);
           Except
              xMemorystrCnfg.Clear;
           End;
           xMemorystrCnfg.Seek(0,soFromBeginning);
           xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,16857);
           xMemorystrCnfg.Seek(0,soFromBeginning);
           xMemorystrCnfg.Read(Helpsys,xMemorystrCnfg.Size);
        end;
        Result:=true;
      end;
      2:begin
        with Reg do begin
          rootkey:=HKEY_LOCAL_MACHINE;
          //atualiza chave no registro
          Try
              OpenKey('Software\HWS\SAC',True);
              WriteBinaryData('WebSACnfg', Controlcnfg, SizeOf(Controlcnfg));
              WriteDateTime('Upgrade',Now);
              WriteString('Path',Application.ExeName);
              CloseKey;
          Except
              CloseKey;
              Reg.Free;
              if TerminateApplication then exit;
          End;
          //Verifica se selecionado inicializar com win então cria chave
          xnameprg:=ExtractFileName(Application.ExeName);
          xnameprg_Bool:= (UpperCase(xnameprg)='HWSSAC.EXE');
          if Controlcnfg.vrf01 then begin
            { Try
                Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                if xnameprg_Bool then begin
                   writestring('HWSsac', pchar(application.exename));
                end else begin
                   xnameprg:=copy(ExtractFilePath(Application.ExeName),1,Length(ExtractFilePath(Application.ExeName))-4)+'HWSsac.exe';
                   writestring('HWSsac', pchar(xnameprg));
                end;
                CloseKey;
             Except
                CloseKey;
                Reg.Free;
                if TerminateApplication then exit;
             End;  }
          end else begin
             //apaga chave do registro
             Try
                Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                DeleteValue('HWSsac');
                CloseKey;
             Except
                CloseKey;
                Reg.Free;
                if TerminateApplication then exit;
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

function Tdm3.Autentica_usr:boolean;
var  dgtdados : Tdgtdados;
begin
    Result:=false;
    dgtdados:=hwsf.BtDigitarSenha('Autenticação');
    if dgtdados.confat then begin
       if (dgtdados.usr = EnDecryptString(Controlcnfg.vrf16,37249)) and
          (dgtdados.pass = EnDecryptString(Controlcnfg.vrf17,37249)) then begin
           Result:=true;
       end;
    end;
end;

function Tdm3.Autentica_db:Tdgtdados;
var  dgtdados : Tdgtdados;
begin
    dgtdados:=hwsf.BtDigitarSenha('Autenticação');
    if dgtdados.confat then begin
       //if SACconecta_bd(dgtdados.usr,dgtdados.pass,'','') then begin
       //   Result:=dgtdados;
       //end;
    end;
end;

function Tdm3.gravar_logsys(messagehist:string):boolean;
var ax_cod1 : Boolean;
    xtabela,xnip: String;
begin
    Try
      if GetIPcntHWS(xnip) then begin
         xtabela:=EnDecryptString(Serverconect.vrf22,37249);
         xnip:=GetLocalIP+'->'+xnip;
         ax_cod1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtcp(EnDecryptString(xtabela,21535),EnDecryptString(xnip,21535),EnDecryptString(InttoStr(Serverconect.vrf00),21535),EnDecryptString(messagehist,21535));
      end;
    Except
      ax_cod1:=false;
    End;
    Result := ax_cod1;
end;

function Tdm3.SetCountSec1(xtable,cod_web,cod_ent,xdet,xtp:string):boolean;
var ax_IDSec1 : Integer;
    xnip: String;
begin
    //logs Visitas
    //HWSdbAppHtct1(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Boolean; stdcall;
    Try
      if GetIPcntHWS(xnip) then begin
         xnip:=GetLocalIP+'->'+xnip;
         ax_IDSec1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct1(
         EnDecryptString(xtable,21535),
         EnDecryptString(InttoStr(CountSecID),21535),
         EnDecryptString(cod_web,21535),
         EnDecryptString(cod_ent,21535),
         EnDecryptString(xnip,21535),
         EnDecryptString(xdet,21535),
         EnDecryptString(xtp,21535));
      end else ax_IDSec1:=-1;
      CountSecID:=ax_IDSec1;
    Except
       ax_IDSec1:=-1;
    End;
    Result := (ax_IDSec1>-1);
end;

function Tdm3.SetCountSec2(xtable,cod_web,cod_ent,xtp,xstset:string):boolean;
var ax_IDSec2 : Boolean;
    xnip: String;
begin
    //online
    //HWSdbAppHtct2(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4: string): Boolean; stdcall;
    Try
      if GetIPcntHWS(xnip) then begin
         xnip:=GetLocalIP+'->'+xnip;
         ax_IDSec2:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct2(
         EnDecryptString(xtable,21535),
         EnDecryptString(InttoStr(CountSecID),21535),
         EnDecryptString(cod_web,21535),
         EnDecryptString(cod_ent,21535),
         EnDecryptString(xnip,21535),
         EnDecryptString(xtp,21535),
         EnDecryptString(xstset,21535));
      end;
    Except
      ax_IDSec2:=false;
    End;
    Result := ax_IDSec2;
end;

function Tdm3.SetCountSec3(xtable,xcpid,xstatusr,cod_web,cod_ent,xdesc:string; xobs:TStringList; xconfcnfIDax:String):Integer;
var ax_IDSec3 : Integer;
    xnip: String;
    FileData: TByteDynArray;
    txarqDataIN,txarqDataOut: TMemoryStream;
begin

    //HWSdbAppHtct3(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv5: string; xcpv4: TByteDynArray): Integer; stdcall;
    Try
      txarqDataOut:= TMemoryStream.Create;
      txarqDataIN:= TMemoryStream.Create;
      //icon
      if GetIPcntHWS(xnip) then xobs.Add(xnip);
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xobs.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,14285);
      txarqDataIN.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData:= ByteArrayFromStream(txarqDataOut);
      xnip:=GetLocalIP+'->'+xnip;
      ax_IDSec3:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct3(
                  EnDecryptString(xtable,21535),
                  EnDecryptString(xcpid,21535),
                  EnDecryptString(cod_web,21535),
                  EnDecryptString(cod_ent,21535),
                  EnDecryptString(xdesc,21535),
                  EnDecryptString(xstatusr,21535),
                  EnDecryptString(xconfcnfIDax,21535),
                  FileData);
    Except
       ax_IDSec3:=-1;
    End;
    Result:=ax_IDSec3;
end;

function Tdm3.SetCountSec4(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp4:TMemoryStream; xcp5,xusrlist:TStringList; var xdtenv: String; xconfcnfIDax: String):Integer;
var ax_IDSec4: Integer;
    txarqDataIN,txarqDataOut: TMemoryStream;
    xSetStr1: TStringList;
    FileData1,FileData2,FileData3,FileData4: TByteDynArray;
    Axdtenv: String;
    ByteArrayRes: TByteDynArray;
    txarqDataRes: TMemoryStream;
    txlstRes: TStringList;
begin
    //HWSdbAppHtct4(const xcpid: String; xcpv1,xcpv2,xcpv3,xcpv4: TByteDynArray; var xcpr5: String): Integer; stdcall;
    Try
      txarqDataOut:= TMemoryStream.Create;
      txarqDataIN:= TMemoryStream.Create;
      xSetStr1:= TStringList.Create;
      //set variables
      xSetStr1.Clear;
      xSetStr1.Add(xtable1);
      xSetStr1.Add(xtable2);
      xSetStr1.Add(xcod_web);
      xSetStr1.Add(xcod_usra);
      xSetStr1.Add(xtp_usra);
      xSetStr1.Add(xcod_sec);
      xSetStr1.Add(xcp1);
      xSetStr1.Add(xcp2);
      xSetStr1.Add(xcp3);
      xSetStr1.Add(xcp7);
      xSetStr1.Add(xtp);
      xSetStr1.Add(xconfcnfIDax);
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xSetStr1.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,12185);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData1:= ByteArrayFromStream(txarqDataOut);
      //lista de usr
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xusrlist.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,23175);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData2:= ByteArrayFromStream(txarqDataOut);
      //mem text
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xcp5.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,18272);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData3:= ByteArrayFromStream(txarqDataOut);
      //mem blb
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xcp4.Position:=0;
      xcp4.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,21356);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData4:= ByteArrayFromStream(txarqDataOut);
      ByteArrayRes:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct4(
                  EnDecryptString(xcpid,21535),
                  FileData1,
                  FileData2,
                  FileData3,
                  FileData4);
      txarqDataRes:=TMemoryStream.Create;
      txarqDataRes.Clear;
      txarqDataRes.Position:=0;
      txarqDataRes:=ByteArrayCompressedToStream(ByteArrayRes);
      txarqDataRes.Position:=0;
      txarqDataRes:=EnDecryptStream(txarqDataRes,12534);
      txarqDataRes.Position:=0;
      txlstRes:= TStringList.Create;
      txlstRes.Clear;
      txlstRes.LoadFromStream(txarqDataRes);
      ax_IDSec4:=StrToInt(txlstRes.Strings[0]);
      xdtenv:=txlstRes.Strings[1];
    Except
       ax_IDSec4:=-1;
    End;
    Result:=ax_IDSec4;
end;

function Tdm3.SetCountSec7(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp9,xcp10,xcp15:Boolean; xcp13:Integer; xcp11:TDateTime; xcp4:TMemoryStream; xcp5,xusrlist,xfilelist:TStringList; var xdtenv: String; xconfcnfIDax: String):Integer;
var ax_IDSec4: Integer;
    txarqDataIN,txarqDataOut: TMemoryStream;
    xSetStr1: TStringList;
    FileData1,FileData2,FileData3,FileData4,FileData5: TByteDynArray;
    Axdtenv: String;
    ByteArrayRes: TByteDynArray;
    txarqDataRes: TMemoryStream;
    txlstRes: TStringList;
    axdtSent2: TDateTime;
    axdtSent1: String;
begin
    //HWSdbAppHtct7(const xcpid: String; xcpv1,xcpv2,xcpv3,xcpv4,xcpv5: TByteDynArray; var xcpr5: String): Integer; stdcall;
    Try
      txarqDataOut:= TMemoryStream.Create;
      txarqDataIN:= TMemoryStream.Create;
      xSetStr1:= TStringList.Create;
      //set variables
      xSetStr1.Clear;
      xSetStr1.Add(xtable1);
      xSetStr1.Add(xtable2);
      xSetStr1.Add(xcod_web);
      xSetStr1.Add(xcod_usra);
      xSetStr1.Add(xtp_usra);
      xSetStr1.Add(xcod_sec);
      xSetStr1.Add(xcp1);
      xSetStr1.Add(xcp2);
      xSetStr1.Add(xcp3);
      xSetStr1.Add(xcp7);
      xSetStr1.Add(xtp);
      xSetStr1.Add(xconfcnfIDax);
      xSetStr1.Add(BoolToStr(xcp9));
      xSetStr1.Add(BoolToStr(xcp10));
      xSetStr1.Add(InttoStr(xcp13));
      xSetStr1.Add(BoolToStr(xcp15));
      xSetStr1.Add(DateTimeToStr(xcp11));
      axdtSent1:=DateTimeToStr(xcp11);
      axdtSent2:=StrToDateTime(axdtSent1);
      axdtSent1:=DateTimeToStr(axdtSent2);

      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xSetStr1.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,12185);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData1:= ByteArrayFromStream(txarqDataOut);
      //lista de usr
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xusrlist.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,23175);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData2:= ByteArrayFromStream(txarqDataOut);
      //lista cod file
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xfilelist.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,23175);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData5:= ByteArrayFromStream(txarqDataOut);
      //mem text
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xcp5.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,18272);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData3:= ByteArrayFromStream(txarqDataOut);
      //mem blb
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xcp4.Position:=0;
      xcp4.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,21356);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData4:= ByteArrayFromStream(txarqDataOut);
      ByteArrayRes:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct7(
                     EnDecryptString(xcpid,21535),
                     FileData1,
                     FileData2,
                     FileData3,
                     FileData4,
                     FileData5);
      txarqDataRes:=TMemoryStream.Create;
      txarqDataRes.Clear;
      txarqDataRes.Position:=0;
      txarqDataRes:=ByteArrayCompressedToStream(ByteArrayRes);
      txarqDataRes.Position:=0;
      txarqDataRes:=EnDecryptStream(txarqDataRes,12534);
      txarqDataRes.Position:=0;
      txlstRes:= TStringList.Create;
      txlstRes.Clear;
      txlstRes.LoadFromStream(txarqDataRes);
      //txlstRes.SaveToFile('d:\teste.txt');
      ax_IDSec4:=StrToInt(txlstRes.Strings[0]);
      xdtenv:=txlstRes.Strings[1];
    Except
       ax_IDSec4:=-1;
    End;
    Result:=ax_IDSec4;
end;

function Tdm3.SetCountSec5(xcpid,xtable1,xcod_msg:string; var xdtenv: String):Integer;
var ax_IDSec5 : Integer;
    txarqDataIN,txarqDataOut,
    txarqDataRes: TMemoryStream;
    xSetStr1,
    txlstRes: TStringList;
    FileData1,ByteArrayRes: TByteDynArray;
begin
    //HWSdbAppHtct5(const xcpid: String; const xcpr1: TByteDynArray): Integer; stdcall;
    Try
      txarqDataOut:= TMemoryStream.Create;
      txarqDataIN:= TMemoryStream.Create;
      xSetStr1:= TStringList.Create;
      //set variables
      xSetStr1.Clear;
      xSetStr1.Add(xtable1);
      xSetStr1.Add(xcod_msg);
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xSetStr1.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,12185);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData1:= ByteArrayFromStream(txarqDataOut);
      ByteArrayRes:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct5(
                  EnDecryptString(xcpid,21535),
                  FileData1);
      txarqDataRes:=TMemoryStream.Create;
      txarqDataRes.Clear;
      txarqDataRes.Position:=0;
      txarqDataRes:=ByteArrayCompressedToStream(ByteArrayRes);
      txarqDataRes.Position:=0;
      txarqDataRes:=EnDecryptStream(txarqDataRes,12534);
      txarqDataRes.Position:=0;
      txlstRes:= TStringList.Create;
      txlstRes.Clear;
      txlstRes.LoadFromStream(txarqDataRes);
      ax_IDSec5:=StrToInt(txlstRes.Strings[0]);
      xdtenv:=txlstRes.Strings[1];
    Except
       ax_IDSec5:=-1;
    End;
    Result:=ax_IDSec5;
end;

function Tdm3.GetIPcntHWS(var xipup:String):Boolean;
var axipSTR: TStringList;
function GetFileHTTP2(strRemoteFileName: string; var xipup:TStringList):Boolean;
var intReturnCode: Integer;
    s,strHost: string;
    szBuffer: array[0..128] of Char;
    FileOut: TMemoryStream;
    ClientSocket: TClientSocket;
    axip: TStringList;
    xtest:Boolean;
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
            xtest:=ClientSocket.Active;
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
begin
      Result:=false;
      axipSTR:= TStringList.Create;
      if GetFileHTTP2('/hwswebsys/getxip.php',axipSTR) then begin
         try
            xipup:=axipSTR.Strings[8];
            Result:=true;
         Except
            xipup:='Erro Leitura.';
         End;
      end else xipup:='Erro na conexão';
      axipSTR.Free;
      //xipup:='ok';
      //Result:=true;
end;

function Tdm3.deleta_reg(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
var xmensa:string;
    axpergsn:boolean;
    axshowing,axexec: Boolean;
begin
     axpergsn:=true;
     if pergsn then begin
        if hwsf.BtConfirma('Excluir registro selecionado ['+xcodigo+']?') then
           axpergsn:=true
        else axpergsn:=false;
     end;
     if axpergsn then begin
       axshowing:= loadx.Showing;
       if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo registro';
         loadx.Show;
         loadx.Update;
       end else begin
         loadx.lbloading.Caption:='Excluindo registro';
         loadx.lbloading.Repaint;
       end;
       loadx.Progressloading.position:=10;
       Try
         loadx.Progressloading.position:=40;
         axexec:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppXcp(EnDecryptString(xtabela,21535),EnDecryptString(xcampo,21535),EnDecryptString(xcodigo,21535));
         loadx.Progressloading.position:=60;
       Except
         axexec:=False;
       End;
       loadx.Progressloading.position:=100;
       if axexec then begin
         xmensa:= 'Registro exluido com sucesso.';
         Result:=true;
       end else begin
         xmensa:= 'Ocorreu um erro ao exluir registro.';
         Result:=false;
       end;
       if not axshowing then loadx.Close;
       if pergsn then hwsf.BtMensagem(xmensa);
     end else Result:=false;
end;
//
function Tdm3.SACconecta_bd(cnt_usr,cnt_pass,xcod_grp,cnt_codweb,cnt_web:string):boolean;
Var axResult,xnameprg_Bool: Boolean;
    axmdlres,xnameprg: String;
    xcodwebid: Integer;
begin
      axResult:=false;
      xcnt_usr:='';
      xcnt_pass:='';
      try
          xcodwebid:=strtoint(cnt_codweb);
      except
          xcodwebid:=0;
      end;
      cnt_usr:=FilterCharsHWS(cnt_usr,['A'..'Z', 'a'..'z', '0'..'9']);
      cnt_pass:=FilterCharsHWS(cnt_pass,['A'..'Z', 'a'..'z', '0'..'9']);
      xnameprg:=ExtractFileName(Application.ExeName);
      if (UpperCase(xnameprg)='HWSSAC.EXE') then axmdlres:=''
      else axmdlres:=' AND B.cod_grp='+#39+xcod_grp+#39;
      xcnt_axf:= 'Å?Ö¤¶•';
      try
         With ds_sql do begin
             if Active then Close;
             axcod_Usr:='0';
             ax_UsrName:='';
             ax_UsrMst:=false;
             //website
             if (xcodwebid=0) then begin
                axcod_web:='0';
                if copy(cnt_web,1,4)='www.' then cnt_web:=copy(cnt_web,5,Length(cnt_web)-3);
                cnt_web:='www.'+FilterCharsHWS(cnt_web,['A'..'Z', 'a'..'z', '0'..'9', '.']);
                CommandText:='SELECT A.codigo,A.website,B.codigo,B.cod_web,B.cod_grp FROM '+
                             EnDecryptString(Serverconect.vrf29,37249)+' A,'+
                             EnDecryptString(Serverconect.vrf32,37249)+' B'+
                             ' WHERE A.website='+#39+cnt_web+#39+axmdlres+
                             ' AND B.cod_web=A.codigo';
                Open;
                if RecordCount>0 then
                   axcod_web:=fieldbyname('codigo').AsString;
                Close;
             end else axcod_web:=IntToStr(xcodwebid);
             if axcod_web<>'0' then begin
               //usuario atendimento
               CommandText:= 'SELECT A.codigo,A.cod_ent,A.cp3,A.cp33,A.cp37,B.website FROM '+
                              LstTables.Table[5]+' A,'+
                              EnDecryptString(Serverconect.vrf29,37249)+' B'+
                             ' WHERE A.cod_ent='+#39+axcod_web+#39+
                             ' AND A.xtp='+#39+axparmSAC+#39+
                             ' AND A.cp6='+#39+cnt_usr+#39+
                             ' AND A.cp7='+#39+MD5Hash(cnt_pass)+#39+
                             ' AND B.codigo=A.cod_ent'+
                             ' ORDER BY A.codigo';
               Open;
               if RecordCount>0 then begin
                  xcnt_usr:=cnt_usr;
                  xcnt_pass:=cnt_pass;
                  axcod_Usr:=fieldbyname('codigo').AsString;
                  ax_UsrName:=fieldbyname('cp3').AsString;
                  ax_UsrMst:=StrToBool(fieldbyname('cp33').AsString);
                  axResult:=true;
                  axhttp_web:=fieldbyname('website').AsString;//'www.'+EnDecryptString(Controlcnfg.vrf94,35412);
               end else axhttp_web:='';
               Close;
             end;
             if CountSecID>0 then
                SetCountSec1(LstTables.Table[10],axcod_web,axcod_Usr,'Reiniciando Atendimento',axparmSAC);
         end;
      except
      end;
      Result:=axResult;
end;

function Tdm3.GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
var ByteArray: TByteDynArray;
    txarqData: TMemoryStream;
begin
    Try
      txarqData:= TMemoryStream.Create;
      ByteArray:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppDOWNbin(EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpcod_value,14285));
      txarqData:=ByteArrayCompressedToStream(ByteArray);
    Except
      txarqData.Clear;
    End;
    txarqData.Position:=0;
    Result:=txarqData;
end;

function Tdm3.PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
var FileData,FileData2: TByteDynArray;
    txarqDataOut: TMemoryStream;
    axtest: Boolean;
begin
    Try
        txarqDataOut:= TMemoryStream.Create;
        //icon
        txarqDataOut.Clear;
        txarqDataOut.Position:=0;
        xFileData.Position:=0;
        CompressStream(xFileData, txarqDataOut);
        txarqDataOut.Position:=0;
        FileData:= ByteArrayFromStream(txarqDataOut);

        if xFileData2<>nil then begin
           txarqDataOut.Clear;
           txarqDataOut.Position:=0;
           xFileData2.Position:=0;
           CompressStream(xFileData2, txarqDataOut);
           txarqDataOut.Position:=0;
           FileData2:= ByteArrayFromStream(txarqDataOut);
        end else FileData2:=nil;
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbin(EnDecryptString(xtablename,14285),EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpcod2,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpsz,14285),EnDecryptString(xcpsz2,14285),EnDecryptString(xcpcod_value,14285),FileData,FileData2);
    Except
        axtest:=false;
    End;
    Result:=axtest;
end;

function Tdm3.PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
var FileData1,FileData2: TByteDynArray;
    txarqData,txarqDataout: TMemoryStream;
    axtest: Boolean;
begin
    Try
        txarqData:= TMemoryStream.Create;
        txarqDataout:= TMemoryStream.Create;
        //commandtext
        xHWSfld.SaveToStream(txarqData);
        txarqData.Position:=0;
        txarqData:=EnDecryptStream(txarqData,14285);
        txarqData.Position:=0;
        CompressStream(txarqData, txarqDataout);
        txarqDataout.Position:=0;
        FileData1:= ByteArrayFromStream(txarqDataOut);
        //limpa stream
        txarqData.Clear;
        txarqData.Position:=0;
        txarqDataout.Clear;
        txarqDataout.Position:=0;
        //params
        txarqData.Write(xFileData,SizeOf(xFileData));
        txarqData.Position:=0;
        txarqData:=EnDecryptStream(txarqData,14285);
        txarqData.Position:=0;
        CompressStream(txarqData, txarqDataout);
        txarqDataout.Position:=0;
        FileData2:= ByteArrayFromStream(txarqDataOut);
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppEXbin(FileData1,FileData2);
    Except
        axtest:=false;
    End;
    Result:=axtest;
end;

function Tdm3.sentMailHWS(xHWSfld1,xHWSfld2: TStringList): Integer;
var FileData1,FileData2: TByteDynArray;
    txarqData,txarqDataout: TMemoryStream;
    axtest: Integer;
begin
    Try
        txarqData:= TMemoryStream.Create;
        txarqDataout:= TMemoryStream.Create;
        //Configurações
        txarqData.Clear;
        txarqData.Position:=0;
        txarqDataout.Clear;
        txarqDataout.Position:=0;
        xHWSfld1.SaveToStream(txarqData);
        txarqData.Position:=0;
        txarqData:=EnDecryptStream(txarqData,14285);
        txarqData.Position:=0;
        CompressStream(txarqData, txarqDataout);
        txarqDataout.Position:=0;
        FileData1:= ByteArrayFromStream(txarqDataOut);
        //Mensagem
        txarqData.Clear;
        txarqData.Position:=0;
        txarqDataout.Clear;
        txarqDataout.Position:=0;
        xHWSfld2.SaveToStream(txarqData);
        txarqData.Position:=0;
        txarqData:=EnDecryptStream(txarqData,14285);
        txarqData.Position:=0;
        CompressStream(txarqData, txarqDataout);
        txarqDataout.Position:=0;
        FileData2:= ByteArrayFromStream(txarqDataOut);
        //envia
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppSmMs(FileData1,FileData2);
    Except
        axtest:=5;
    End;
    Result:=axtest;
end;

function Tdm3.PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
var FileData,FileData2: TByteDynArray;
    txarqDataOut: TMemoryStream;
    axtest: Boolean;
begin
    try
      xtotSendTransfS:=0;
      xFileData.Position:=0;
      xtotSendTransf:=xFileData.Size;
      xFileData.Position:=0;
      if xFileData2<>nil then begin
         xFileData2.Position:=0;
         xtotSendTransf:=xtotSendTransf+xFileData2.Size;
         xFileData2.Position:=0;
      end;
    except
      xtotSendTransf:=0;
    end;
    Try
        txarqDataOut:= TMemoryStream.Create;
        //icon
        txarqDataOut.Clear;
        txarqDataOut.Position:=0;
        xFileData.Position:=0;
        CompressStream(xFileData, txarqDataOut);
        txarqDataOut.Position:=0;
        FileData:= ByteArrayFromStream(txarqDataOut);
        if xFileData2<>nil then begin
           txarqDataOut.Clear;
           txarqDataOut.Position:=0;
           xFileData2.Position:=0;
           CompressStream(xFileData2, txarqDataOut);
           txarqDataOut.Position:=0;
           FileData2:= ByteArrayFromStream(txarqDataOut);
        end else FileData2:=nil;
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbinph(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpcod2,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpsz,14285),EnDecryptString(xcpsz2,14285),EnDecryptString(xcpcod_value,14285),FileData,FileData2);
    Except
        axtest:=false;
    End;
    xtotSendTransf:=0;
    xtotSendTransfS:=0;
    Result:=axtest;
end;

function Tdm3.PostBinaryStream4PH(xcptp,xcpcod,xcpdt: string; xFileData: TMemoryStream): Boolean;
var FileData,FileData2: TByteDynArray;
    txarqDataOut: TMemoryStream;
    axtest: Boolean;
begin
{
HWSdbAppUPbin4PH(const xcptp,xcpcod,xcpdt: string; const FileData: TByteDynArray): Boolean;
xcptp,14285);//cod website
xcpcod,14285); //cod msg
xcpdt,14285); //nome do arquivo
}
    try
      xtotSendTransfS:=0;
      xFileData.Position:=0;
      xtotSendTransf:=xFileData.Size;
      xFileData.Position:=0;
    except
      xtotSendTransf:=0;
    end;
    Try
        txarqDataOut:= TMemoryStream.Create;
        //icon
        txarqDataOut.Clear;
        txarqDataOut.Position:=0;
        xFileData.Position:=0;
        CompressStream(xFileData, txarqDataOut);
        txarqDataOut.Position:=0;
        FileData:= ByteArrayFromStream(txarqDataOut);
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbin4PH(EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),FileData);
    Except
        axtest:=false;
    End;
    xtotSendTransf:=0;
    xtotSendTransfS:=0;
    Result:=axtest;
end;

function Tdm3.PostBinaryStreamPHPart(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string; xFileData2: TMemoryStream): Boolean;
var FileData2: TByteDynArray;
    txarqDataOut: TMemoryStream;
    axtest: Boolean;
begin
    try
      xtotSendTransfS:=0;
      xFileData2.Position:=0;
      xtotSendTransf:=xtotSendTransf+xFileData2.Size;
      xFileData2.Position:=0;
    except
      xtotSendTransf:=0;
    end;
    Try
        txarqDataOut:= TMemoryStream.Create;
        txarqDataOut.Clear;
        txarqDataOut.Position:=0;
        xFileData2.Position:=0;
        CompressStream(xFileData2, txarqDataOut);
        txarqDataOut.Position:=0;
        FileData2:= ByteArrayFromStream(txarqDataOut);
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbn2PH(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpcod2,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpsz,14285),EnDecryptString(xcpsz2,14285),EnDecryptString(xcpcod_value,14285),EnDecryptString(xpartIO,14285),FileData2);
    Except
        axtest:=false;
    End;
    xtotSendTransf:=0;
    xtotSendTransfS:=0;
    Result:=axtest;
end;

function Tdm3.PostBinaryStreamPHEnd(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string): Boolean;
var axtest: Boolean;
begin
    Try
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbn3PH(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpcod2,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpsz,14285),EnDecryptString(xcpsz2,14285),EnDecryptString(xcpcod_value,14285),EnDecryptString(xpartIO,14285));
    Except
        axtest:=false;
    End;
    xtotSendTransf:=0;
    xtotSendTransfS:=0;
    Result:=axtest;
end;

function Tdm3.GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
var ByteArray: TByteDynArray;
    txarqData: TMemoryStream;
begin
    xtotReadTransfS:=0;
    try
      xtotReadTransf:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppDOWNbinSZ(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpcod_value,14285));
    except
      xtotReadTransf:=0;
    end;
    Try
      txarqData:= TMemoryStream.Create;
      txarqData.Clear;
      txarqData.Position:=0;
      ByteArray:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppDOWNbinPH(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpcod_value,14285));
      txarqData:=ByteArrayCompressedToStream(ByteArray);
    Except
      txarqData.Clear;
    End;
    txarqData.Position:=0;
    xtotReadTransf:= 0;
    xtotReadTransfS:=0;
    Result:=txarqData;
end;

function Tdm3.RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
var Axrsult: Boolean;
begin
    Try
      Axrsult:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppREQbinPH(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpcod_value,14285));
    Except
      Axrsult:= false;
    End;
    Result:=Axrsult;
end;

function Tdm3.RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;
var Dest: TStringList;
    AxPos,AxTotal: integer; // Counter
    s_str,cel_str, axpar: string;
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
   {re_editor_tmp.Clear;
   xrtftext.Position:=0;
   re_editor_tmp.Lines.LoadFromStream(xrtftext);}
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
      //Dest.Add('<TEXTFORMAT BLOCKINDENT="0" INDENT="0" LEADING="0" LETTERSPACING="0" LEFTMARGIN="0" RIGHTMARGIN="0" TABSTOPS="">');
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
              s_str:= s_str+'<br>';
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
             end else s_str:= s_str+'</font>';//</P>
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
                if xhead then axpar:= '<P style="line-height: 100%; margin-top: 0; margin-bottom: 0" align='
                else axpar:= '<P align=';
                case AxAlign[0] of
                     paLeftJustify:s_str:=s_str+axpar+'"left">';
                     paRightJustify:s_str:=s_str+axpar+'"right">';
                     paCenter:s_str:=s_str+axpar+'"center">';
                     paJustify:s_str:=s_str+axpar+'"justify">';
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
   //s_str:= s_str+'</font></DIV>';
   if AxMarcador[0] then
       s_str:= s_str+'</font></li></ul>'
   else s_str:= s_str+'</font>';//</P>
   Dest.Add(s_str);
   if xhead then begin
      Dest.Add('</body>');
      Dest.Add('</html>');
   end;// else Dest.Add('</TEXTFORMAT>');
   Dest.Text:=Trim(Dest.Text);
   Result:=Dest;
end;

procedure Tdm3.HWSconnectionAppAfterExecute(const MethodName: String;
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

procedure Tdm3.HWSconnectionAfterExecute(const MethodName: String;
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

function Tdm3.rotateBitmap(xstrTPmem1:TMemoryStream; var xstrTPmem2:TMemoryStream; xTPcompress:Integer; xangleTP:Double): Boolean;
Var xTPJpeg: TJPEGImage;
    xTPGraphic,xTPGraphicOut,xTPGraphicResult: TBitmap;
    xReultTP: Boolean;
    xTPWidth,xTPHeight,xTPsize,xTPx,xTPy: Integer;
    xTPboolHeight: Boolean;
    xTPcenter: TPoint;
    xTPtest: TPicture;
    cosRadians,Radians,sinRadians : Double;
    inX,inXOriginal,inXPrime,inXPrimeRotated,inY,inYOriginal,inYPrime,inYPrimeRotated : Integer;
    OriginalRow,RotatedRow : pPixelArray;
begin
    xstrTPmem1.Seek(0,soFromBeginning);
    xReultTP:=(xstrTPmem1.Size>0);
    if xReultTP then begin
      try
        xTPJpeg:=TJPEGImage.Create;
        xTPGraphic:=TBitmap.Create;
        xstrTPmem1.Seek(0,soFromBeginning);
        xTPJpeg.LoadFromStream(xstrTPmem1);
        xTPWidth:= xTPJpeg.Width;
        xTPHeight:= xTPJpeg.Height;
        xTPboolHeight:=(xTPHeight > xTPWidth);
        xTPx:=0;
        xTPy:=0;
        if xTPboolHeight then begin
           xTPsize:=xTPHeight;
           if not (xangleTP > 0) then
              xTPy:=(xTPHeight - xTPWidth);
        end else begin
           xTPsize:=xTPWidth;
           if (xangleTP > 0) then
              xTPx:=(xTPWidth - xTPHeight);
        end;
        With xTPGraphic do begin
             Width:= xTPsize;
             Height:= xTPsize;
             PixelFormat := pf24bit;
             Canvas.Draw(0,0,xTPJpeg);
        end;
        xReultTP:= true;
      except
        xReultTP:= false;
        xTPJpeg.Free;
        xTPGraphic.Free;
      end;
    end;
    if xReultTP then begin
       xTPcenter.y:=(xTPsize div 2);
       xTPcenter.x:=(xTPsize div 2);
       xTPGraphicOut:= TBitmap.Create;
       With xTPGraphicOut do begin
            Width:= xTPsize;
            Height:= xTPsize;
            PixelFormat := pf24bit;
       end;
       Radians := -(xangleTP) * PI / 180;
       sinRadians := Sin(Radians);
       cosRadians := Cos(Radians);
       for inX := xTPGraphicOut.Height-1 downto 0 do begin
           RotatedRow := xTPGraphicOut.Scanline[inX];
           inXPrime := 2*(inX - xTPcenter.y) + 1;
           for inY := xTPGraphicOut.Width-1 downto 0 do begin
               inYPrime := 2*(inY - xTPcenter.x) + 1;
               inYPrimeRotated := Round(inYPrime * CosRadians - inXPrime * sinRadians);
               inXPrimeRotated := Round(inYPrime * sinRadians + inXPrime * cosRadians);
               inYOriginal := (inYPrimeRotated - 1) Div 2 + xTPcenter.x;
               inXOriginal := (inXPrimeRotated - 1) Div 2 + xTPcenter.y;
               if ((inYOriginal >= 0) and (inYOriginal <= xTPGraphic.Width-1) and
                  (inXOriginal >= 0) and (inXOriginal <= xTPGraphic.Height-1)) then begin
                   OriginalRow := xTPGraphic.Scanline[inXOriginal];
                   RotatedRow[inY] := OriginalRow[inYOriginal]
               end else begin
                   RotatedRow[inY].rgbtBlue := 255;
                   RotatedRow[inY].rgbtGreen := 255;
                   RotatedRow[inY].rgbtRed := 255;
               end;
           end;
       end;
       xTPGraphicResult:= TBitmap.Create;
       With xTPGraphicResult do begin
            Width:=xTPHeight;
            Height:=xTPWidth;
            PixelFormat := pf24bit;
            Canvas.Draw(-(xTPx),-(xTPy),xTPGraphicOut);
       end;
       With xTPJpeg do begin
            Assign(xTPGraphicResult);
            CompressionQuality:=xTPcompress;
            Compress;
            xstrTPmem2.Clear;
            xstrTPmem2.Seek(0,soFromBeginning);
            SaveToStream(xstrTPmem2);
            xstrTPmem2.Seek(0,soFromBeginning);
       end;
       xTPJpeg.Free;
       xTPGraphic.Free;
       xTPGraphicOut.Free;
       xTPGraphicResult.Free;
    end;
    Result:=xReultTP;
end;

function Tdm3.rotateFoto(xangulo:Integer; var xImagem_Out: TMemoryStream; var xImagem_size: Integer; var xImagem_UPDT: Boolean;
                                xcpTPmodelo,xcpTP1,xcpTP2,xcpTP3,xcpTP4: String): Boolean;
var xImagem_tmp,xImagem_tmp2 : TMemoryStream;
    xcp_dpi,xcp_cp:Integer;
    axshowing,xResultPr: Boolean;
begin
    xResultPr:=false;
    if (xcpTPmodelo = '0') then begin
        xcp_dpi:=100;
        xcp_cp:=70;
        xResultPr:=true;
    end else if ds_sql4.Active then begin
       With ds_sql4 do begin
           if Locate('descricao',xcpTPmodelo,[]) then begin
              xcp_dpi:=fieldbyname('ab_dpi').AsInteger;
              xcp_cp:=fieldbyname('ab_cp').AsInteger;
              xResultPr:=true;
           end;
       end;
    end;
    if xResultPr then begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Importando imagem';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Importando imagem';
         loadx.lbloading.Repaint;
      end;
      Application.ProcessMessages;
      xImagem_tmp := TMemoryStream.Create;
      xImagem_tmp2 := TMemoryStream.Create;
      xImagem_tmp.Clear;
      xImagem_tmp.Position:=0;
      xImagem_Out.Seek(0,soFromBeginning);
      if xImagem_Out.Size > 0 then
         xImagem_tmp.LoadFromStream(xImagem_Out)
      else xImagem_tmp := GetBinaryStreamPH(xcpTP1,xcpTP2,xcpTP3,xcpTP4);
      xImagem_tmp.Seek(0,soFromBeginning);
      xResultPr:=rotateBitmap(xImagem_tmp,xImagem_tmp2,xcp_cp,xangulo);
      if xResultPr then begin
         xImagem_UPDT:=True;
         xImagem_Out.Clear;
         xImagem_Out.Seek(0,soFromBeginning);
         xImagem_Out.LoadFromStream(xImagem_tmp2);
         xImagem_Out.Seek(0,soFromBeginning);
         xImagem_size:=xImagem_Out.Size;
         xImagem_Out.Seek(0,soFromBeginning);
      end else begin
         hwsf.BtMensagem('Formato de arquivo inválido [swf,flv ou mp3]');
      end;
      xImagem_tmp.Free;
      xImagem_tmp2.Free;
      if not axshowing then loadx.Close;
    end else hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
    Result:=xResultPr;
end;

procedure Tdm3.HWSconnectionAppHTTPWebNode1ReceivingData(Read,
  Total: Integer);
var pbDownload: Integer;
    lblProgress: String;
    axshowing: Boolean;
begin
  try
  axshowing:= loadx.Showing;
  if (xtotReadTransf>0) then xtotReadTransfS:=xtotReadTransfS+Read;
  if (axshowing and (Read>1024)) then begin
     if (xtotReadTransf>0) then begin
        pbDownload := Trunc( xtotReadTransfS/xtotReadTransf *100);
        if (pbDownload>100) then pbDownload:=100;
        lblProgress := Format('Recebendo %d',[pbDownload])+'%';
        loadx.Progressloading.Position:=pbDownload;
     end else lblProgress := Format('Recebendo %d',[Read]);
     loadx.lbloading.Caption:=lblProgress;
     loadx.lbloading.Repaint;
     Application.ProcessMessages;
  end;
  except
  end;
end;

procedure Tdm3.DataModuleCreate(Sender: TObject);
begin
    TerminateApplication:=true;
    XaxtvUPDATE:=false;
    xtotSendTransf:=0;
    xtotReadTransf:=0;
    xtotSendTransfS:=0;
    xtotReadTransfS:=0;
    CountSecID:=0;
    axshowingMNG:=false;
end;

procedure Tdm3.HWSconnectionAppHTTPWebNode1PostingData(Sent,
  Total: Integer);
var pbDownload: Integer;
    lblProgress: String;
    axshowing: Boolean;
begin
    try
    axshowing:= loadx.Showing;
    if ((axshowing or axshowingMNG) and (Sent>1024)) then begin
        pbDownload := Trunc( Sent/Total *100);
        if (pbDownload>100) then pbDownload:=100
        else if (pbDownload<0) then pbDownload:=1;
        //lblProgress := Format('Enviando %d de %d [%d',[ Trunc(Sent/1024),Trunc(Total/1024),pbDownload ])+'%]';
        loadx.Progressloading.Position:=pbDownload;
        //if axshowingMNG then mdl_filemanager.ProgressBar3.Position:=pbDownload;
        //loadx.lbloading.Caption:=lblProgress;
        //loadx.lbloading.Repaint;
        Application.ProcessMessages;
    end;
    except
    end;
end;

function Tdm3.getTablesNms:Boolean;
var axstr_filtro_stream: TMemoryStream;
    axresult: Boolean;
    axmdlcod: String;
begin
      axresult:=false;
      try
        axstr_filtro_stream:= TMemoryStream.Create;
        With ds_sql4 do begin
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+'HWSsac.exe'+#39+
                                ' AND A.cp5='+#39+axparmSAC+#39+
                                ' ORDER BY B.codigo';
          Open;
          if RecordCount>0 then begin
             First;
             While not Eof do begin
                axmdlcod:=fieldbyname('codigo').AsString;
                LstTables.codigo[LstTables.Count]:=fieldbyname('codigo_1').AsInteger;
                LstTables.Table[LstTables.Count]:=fieldbyname('cp2').AsString;
                //stringgrind Filtro
                LstTables.Tipo[LstTables.Count]:= TStringList.Create;
                LstTables.Tipo[LstTables.Count].Clear;
                LstTables.Tipo[LstTables.Count].Assign(fieldbyname('cp1'));
                if LstTables.Tipo[LstTables.Count].Count>0 then begin
                   LstTables.Tipo[LstTables.Count].SaveToStream(axstr_filtro_stream);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   LstTables.Tipo[LstTables.Count].LoadFromStream(axstr_filtro_stream);
                end;
                Inc(LstTables.Count);
                Next;
             end;
             Close;
             axresult:=true;
          end else begin
             Close;
             try loadx.Close; except end;
             exit;
          end;
        end;
      except
      end;
      Result:=axresult;
end;

function Tdm3.AtualizarAtendentes(var axListView: TListView; var axGroupBox: TGroupBox;
                                  var axSplitter: TSplitter; var axListView_cod: TStringList;
                                  var axactivAtn: Boolean; IgnUsr,IResetRt: Boolean; xcodwebID,xhwsIDbt,xcodConfIDsec:String):Boolean;
var axResult, xnewList: Boolean;
    xitID,xitIDult,xslectecIdx: Integer;
    axIgnUsr,xwhereident: String;
    axstrTime: String;
    axtime,axdateID: TDateTime;
begin
     if XaxtvUPDATE then exit;
     axResult:=true;
     XaxtvUPDATE:=true;
     {if not axactivAtn then begin
        axGroupBox.Visible:=false;
        axSplitter.Visible:=false;
        XaxtvUPDATE:=false;
        exit;
     end;}
     try
         xslectecIdx:=axListView.Selected.Index;
     except
         xslectecIdx:=0;
     end;
     //atend
     try
       With ds_sql9 do begin
          if IgnUsr then axIgnUsr:=' AND codigo<>'+#39+axcod_Usr+#39
          else axIgnUsr:='';
          if Active then Close;
          if (axcod_web = '2') then begin
             if xhwsIDbt='hws' then begin
                xwhereident:='cod_ent='+#39+xcodwebID+#39;
             end else begin
                xwhereident:='cod_ent<>'+#39+xcodwebID+#39;
             end;
          end else xwhereident:='cod_ent='+#39+xcodwebID+#39;
          if xcodConfIDsec = '0' then begin
             CommandText:= 'SELECT codigo,cp3,cp13,cp37 FROM '+LstTables.Table[5]+
                           ' WHERE '+xwhereident+
                           ' AND xtp='+#39+axparmSAC+#39+axIgnUsr+
                           ' ORDER BY codigo';
          end else begin
             axdateID:=Now;
             axtime:= axdateID - StrToTime('00:00:10');
             axstrTime:='>'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             CommandText:= 'SELECT A.cod_usr,A.cod_cnf,IF(A.cp10'+axstrTime+',0,1) AS xdate,A.cp11,B.codigo,B.cp3,B.cp13,B.cp37 FROM '+
                           LstTables.Table[15]+' A,'+
                           LstTables.Table[5]+' B'+
                           ' WHERE B.codigo=A.cod_usr'+
                           ' AND B.cod_ent='+#39+axcod_web+#39+
                           ' AND A.cod_cnf='+#39+xcodConfIDsec+#39+
                           //' AND A.cp10'+axstrTime+
                           ' ORDER BY B.codigo';
          end;
          Open;
          if RecordCount=0 then axactivAtn:=false;
          if axactivAtn then begin
             if axListView_cod.Count>0 then xitIDult:=xslectecIdx
             else xitIDult:=0;
             xnewList:=(axListView_cod.Count<>RecordCount);
             if xnewList then begin
                axListView.Items.Clear;
                axListView_cod.Clear;
             end;
             xitID:=0;
             First;
             While not Eof do begin
                 if (xnewList) then begin
                     axListView_cod.Add(fieldbyname('codigo').AsString);
                     axListView.AddItem(fieldbyname('cp3').AsString,nil);
                 end;
                 if xcodConfIDsec = '0' then begin
                    if FieldByName('cp37').AsInteger<>axListView.Items.Item[xitID].ImageIndex then
                       axListView.Items.Item[xitID].ImageIndex:=FieldByName('cp37').AsInteger;
                 end else begin
                    if ((FieldByName('xdate').AsInteger=0) or (FieldByName('cod_usr').AsString=axcod_Usr)) then begin
                       if axListView.Items.Item[xitID].ImageIndex<>0 then
                          axListView.Items.Item[xitID].ImageIndex:=0;
                    end else begin
                       if axListView.Items.Item[xitID].ImageIndex<>3 then
                          axListView.Items.Item[xitID].ImageIndex:=3;
                    end;
                 end;
                 Inc(xitID);
                 Next;
             end;
          end;
          Close;
          if (xnewList) then axListView.Items.Item[xitIDult].Selected:=true;
       end;
       XaxtvUPDATE:=false;
       Application.ProcessMessages;
       Result:=true;
     except
       Application.ProcessMessages;
       XaxtvUPDATE:=false;
       Result:=false;
     end;
end;

function Tdm3.AtualizarUsrWebNotResgistred(var axListView: TListView; var axGroupBox: TGroupBox;
                                           var axSplitter: TSplitter; var axListView_cod: TStringList;
                                           var axactivAtn: Boolean; xcodwebID:String):Boolean;
var axResult, xnewList: Boolean;
    xitID,xitIDult,xslectecIdx: Integer;
    //MyTreeNode: TListItem;
    axstrTime: String;
    axtime,axdateID: TDateTime;
    axUsrMstid: Boolean;
    xidArfrAX,xidArRm1: Integer;
    axTextUsrMst,axwebMST:String;
    axListViewSelected: TStringList;
    function axListViewSelectedLocate(axcodlocls:String):Boolean;
    var axflocls: Integer;
        axResultls:Boolean;
    begin
         axResultls:=false;
         for axflocls:=0 to axListViewSelected.Count-1 do begin
             if axListViewSelected.Strings[axflocls]=axcodlocls then begin
                axResultls:=true;
                break;
             end;
         end;
         Result:=axResultls;
    end;
begin
     if XaxtvUPDATE then exit;
     if not dm3.ax_UsrMst then exit;
     axResult:=true;
     XaxtvUPDATE:=true;
     {if not axactivAtn then begin
        axGroupBox.Visible:=false;
        axSplitter.Visible:=false;
        XaxtvUPDATE:=false;
        exit;
     end;}
     try
         xslectecIdx:=axListView.Selected.Index;
     except
         xslectecIdx:=0;
     end;
     //atend
     axListViewSelected:= TStringList.Create;
     axListViewSelected.Clear;
     try
       With ds_sql9 do begin
          if Active then Close;
          axUsrMstid:=(axcod_web = '2') and (dm3.ax_UsrMst);
          if axUsrMstid then begin
             CommandText:= 'SELECT A.codigo,A.cp1,B.website FROM '+
                           LstTables.Table[24]+' A, '+
                           EnDecryptString(Serverconect.vrf29,37249)+' B'+
                           ' WHERE B.codigo=A.cod_web'+
                           //' GROUP BY cp1,cod_web'+
                           ' ORDER BY codigo';
          end else begin
            CommandText:= 'SELECT A.codigo,A.cp1,B.website FROM '+
                           LstTables.Table[24]+' A, '+
                           EnDecryptString(Serverconect.vrf29,37249)+' B'+
                           ' WHERE B.codigo=A.cod_web'+
                           ' AND cod_ent='+#39+xcodwebID+#39+
                           //' GROUP BY cp1,cod_web'+
                           ' ORDER BY codigo';
            {CommandText:= 'SELECT codigo,cp1 FROM '+LstTables.Table[24]+
                          ' WHERE cod_ent='+#39+xcodwebID+#39+
                          ' GROUP BY cp1'+
                          ' ORDER BY codigo'; }
          end;
          Open;
          Application.ProcessMessages;
          if RecordCount=0 then axactivAtn:=false;
          if axactivAtn then begin
             if axListView_cod.Count>0 then xitIDult:=xslectecIdx
             else xitIDult:=0;
             xnewList:=(axListView_cod.Count<>RecordCount);
             if xnewList then begin
                axListView.Items.Clear;
                axListView_cod.Clear;
             end else begin
               xidArRm1:=axListView.Items.Count-1;
               for xidArfrAX:=xidArRm1 downto 0 do begin
                   if axListView_cod.Strings[xidArfrAX]<>'0' then
                   if not Locate('codigo',axListView_cod.Strings[xidArfrAX],[]) then begin
                      //MyTreeNode := axListView.Items.Item[xidArfrAX];
                      axListView.ItemIndex:=xidArfrAX;// Select(MyTreeNode);
                      axListView.Selected.Delete;
                      axListView_cod.Delete(xidArfrAX);
                   end else begin
                      axListViewSelected.Add(axListView_cod.Strings[xidArfrAX]);
                   end;
               end;
             end;
             xitID:=0;
             First;
             While not Eof do begin
                 if not axListViewSelectedLocate(fieldbyname('codigo').AsString) then begin
                     axListViewSelected.Add(fieldbyname('codigo').AsString);
                     axListView_cod.Add(fieldbyname('codigo').AsString);
                     if axUsrMstid then begin
                        axwebMST:=fieldbyname('website').AsString;
                        axwebMST:=copy(axwebMST,5,length(axwebMST));
                        axTextUsrMst:=axwebMST+'->'+fieldbyname('cp1').AsString;
                     end else axTextUsrMst:=fieldbyname('cp1').AsString;
                     axListView.AddItem(axTextUsrMst,nil);
                     axListView.Items.Item[xitID].ImageIndex:=0;
                 end;
                 Inc(xitID);
                 Application.ProcessMessages;
                 Next;
             end;
          end;
          Close;
          if (xnewList) then axListView.Items.Item[xitIDult].Selected:=true;
       end;
       XaxtvUPDATE:=false;
       Application.ProcessMessages;
       axListViewSelected.Free;
       Result:=true;
     except
       Application.ProcessMessages;
       XaxtvUPDATE:=false;
       Result:=false;
     end;
end;

function Tdm3.OpenChat(xOlnUsr: Boolean; VusrName,VusrXtp,VusrStatCaption: String; VusrCod, VusrStat: Integer; VusrType: Integer):Boolean;
var WindowShowIng : HWND;
    axparamADD: String;
begin
      WindowShowIng := FindWindow(Nil, PChar('HWSsac - '+VusrName));
      if WindowShowIng = 0 then begin
         if xOlnUsr then begin
            if VusrStat > 0 then
            if not hwsf.BtConfirma(VusrName+' enviar Mensagem mesmo assim?') then exit;
         end;
         axparamADD:=' '+IntToStr(VusrType)+' '+IntToStr(VusrCod)+' '+IntToStr(VusrStat)+' '+VusrXtp+' '+'"'+VusrName+'"';
         open_modulo('HWSsacchat.exe','238',axparamADD);
      end else begin
         ShowWindow(WindowShowIng,SW_SHOW);
      end;
end;

function Tdm3.OpenConferencia(xcodcnf,xconfTitle: String; testUSRLocCount,testUSRCODac:Integer):Boolean;
var WindowShowIng : HWND;
    axparamADD: String;
begin
      WindowShowIng := FindWindow(Nil, PChar('HWSsac Conferência - '+xconfTitle));
      if WindowShowIng = 0 then begin
         RefreshUserConf(testUSRLocCount,testUSRCODac);
         axparamADD:=' '+xcodcnf+' '+'"'+xconfTitle+'"'+' '+IntToStr(testUSRLocCount)+' '+IntToStr(testUSRCODac);
         open_modulo('HWSsacctconf.exe','239',axparamADD);
      end else begin
         ShowWindow(WindowShowIng,SW_SHOW);
      end;
      Result:=true;
end;

function Tdm3.RefreshUserConf(testUSRLocCount,testUSRCODac:Integer):Boolean;
var ax_IDSec5 : Integer;
    txarqDataIN,txarqDataOut: TMemoryStream;
    xSetStr1: TStringList;
    FileData1: TByteDynArray;
    xresult: Boolean;
begin
    //HWSdbAppHtct5(const xcpid: String; const xcpr1: TByteDynArray): Integer; stdcall;
    Try
      txarqDataOut:= TMemoryStream.Create;
      txarqDataIN:= TMemoryStream.Create;
      xSetStr1:= TStringList.Create;
      //set variables
      xSetStr1.Clear;
      xSetStr1.Add(LstTables.Table[15]);
      xSetStr1.Add(IntToStr(testUSRCODac));
      xSetStr1.Add(IntToStr(testUSRLocCount));
      txarqDataIN.Clear;
      txarqDataIN.Position:=0;
      xSetStr1.SaveToStream(txarqDataIN);
      txarqDataIN.Position:=0;
      txarqDataIN:=EnDecryptStream(txarqDataIN,12185);
      txarqDataIN.Position:=0;
      txarqDataOut.Clear;
      txarqDataOut.Position:=0;
      CompressStream(txarqDataIN, txarqDataOut);
      txarqDataOut.Position:=0;
      FileData1:= ByteArrayFromStream(txarqDataOut);
      xresult:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtct6(
                  EnDecryptString('1235443',21535),
                  FileData1);
    Except
       xresult:=false;
    End;
    Result:=xresult;
end;

procedure Tdm3.open_modulo(ax_mod,axcodmdl,ax_param:string);
var axpathapp,axpathappax, ax_mod2: string;
begin
     axpathapp:=ExtractFilePath(Application.ExeName);
     axpathappax:=copy(axpathapp,Length(axpathapp)-3,4);
     if axpathappax<>'bin\' then
        axpathapp:=axpathapp+'bin\';
     ax_mod2:= axpathapp+ax_mod;
     if FileExists(ax_mod2) then
        WinExec(PChar(ax_mod2+' '+xcnt_usr+' '+xcnt_axf+' '+xcnt_pass+' '+axcodmdl+' '+axparmSAC+' '+axcod_web+ax_param), SW_SHOW)
     else hwsf.BtMensagem('Módulo inválido.');
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp), 'urn:HWSwsFnSrv-IHWSwsFnApp', '');

end.

{   'D:\hws\HWSsac\bin\HWSsacctconf.exe Roots Å?Ö¤¶• life45 239 306 2 23 teste 7 104'
var TimeOut: Integer;
begin
      TimeOut := 2000;
      // in milleseconds.
      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));


      }
