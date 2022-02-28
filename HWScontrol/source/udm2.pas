{###############################################################################
Programa: HWScontrol
Módulo: Módulo de dados.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit udm2;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  SimpleDS, Forms, Winsock, Messages, ComCtrls, Windows, hwsfunctions, Registry,
  SOAPConn, MConnect, InvokeRegistry, Rio, SOAPHTTPClient, Types, XSBuiltIns, RxRichEd,
  Graphics, ScktComp, Jpeg,
  SOAPHTTPTrans;
  {Controls, Dialogs, StdCtrls, mappoint, ExtCtrls, Variants, wininet;}


type
  IHWSwsFnApp = interface(IInvokable)
    //['{E4F918D6-429C-45D4-9D28-D3E64DDB65E3}']
    ['{8D8D0605-EF18-49CE-83EE-A71BF3E365CF}']
    function HWSdbAppUPbinPH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn2PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string; const FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppUPbn3PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string): Boolean; stdcall;
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
  end;

  TControlcnfg = record
    vrf00: Integer;     //codigo
    vrf01: Boolean;     //iniciar com o windows
    vrf02: Boolean;     //conectar automaticamento no login
    vrf16: String[100]; //usuario login sistema
    vrf17: String[100]; //senha login sistema
    vrf38: Boolean;     //atualizações automáticas
    vrf39: Boolean;     //bloquear ao minimizar
    vrf40: Integer;     //bloquear após x segundos 0 is null
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

  Tdm2 = class(TDataModule)
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
    xipserver: string;
    ax_title : string;
    axshowingMNG: Boolean;
    xtotSendTransf,xtotSendTransfS,xtotReadTransf,xtotReadTransfS: Integer;
    Function HDKeyNum(FDrive:String) :String;
    function GetCodMax(xtabela,xcampo,xwhere:string):Integer;
    function winsysreg(tipo: byte; xhelpdesk,xhelpsys: boolean):boolean;
    function Autentica_usr:boolean;
    function Autentica_db:Tdgtdados;
    function gravar_logsys(messagehist:string):boolean;
    function deleta_reg(xtabela,xcampo,xcodigo:string; pergsn,pergsn2:boolean):boolean;
    function conecta_bd(cnt_usr,cnt_pass,xax_parm:string):boolean;
    function GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
    function sentMailHWS(xHWSfld1,xHWSfld2: TStringList): Integer;
    function PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function PostBinaryStreamPHPart(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string; xFileData2: TMemoryStream): Boolean;
    function PostBinaryStreamPHEnd(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string): Boolean;
    function GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
    function RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;
    function rotateBitmap(xstrTPmem1:TMemoryStream; var xstrTPmem2:TMemoryStream; xTPcompress:Integer; xangleTP:Double): Boolean;
    function rotateFoto(xangulo:Integer; var xImagem_Out: TMemoryStream; var xImagem_size: Integer; var xImagem_UPDT: Boolean;
                        xcpTPmodelo,xcpTP1,xcpTP2,xcpTP3,xcpTP4: String): Boolean;
    { Public declarations }
  end;

var
  dm2: Tdm2;
  Controlcnfg: TControlcnfg;
  Serverconect: TServerconectControl;
  Helpdesk: THelpdesk;
  HelpSys: THelpSysControl;
  AxDadosUsr: TAxDadosUsr;
  TD,TD2 : TTransactionDesc;

implementation

Uses RichEdit, DateUtils, U_Cipher, umdl_filemanager;
const
  PixelMax = 32768;
Type
  pPixelArray = ^TPixelArray;
  TPixelArray = Array[0..PixelMax-1] Of TRGBTriple;

{$R *.dfm}

Function Tdm2.HDKeyNum(FDrive:String) :String;
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

function Tdm2.GetCodMax(xtabela,xcampo,xwhere:string):Integer;
var ax_cod1 : integer;
begin
    Try
      ax_cod1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppGETcp(EnDecryptString(xtabela,21535),EnDecryptString(xcampo,21535),EnDecryptString(xwhere,21535));
    Except
      ax_cod1:=0;
    End;
    Result := ax_cod1;
end;

function Tdm2.winsysreg(tipo: byte; xhelpdesk,xhelpsys: boolean):boolean;
var Reg: Tregistry;
    xMemorystrCnfg: TMemoryStream;
    ByteArray: TByteDynArray;
    axfilterLoad,xnameprg,xtmp: String;
    xnameprg_Bool: Boolean;
begin
    Result:=false;
    Reg:=Tregistry.create;
    xMemorystrCnfg:= TMemoryStream.Create;
    try
     Case tipo of
      1:begin
        with Reg do begin
            rootkey:=HKEY_LOCAL_MACHINE;
            //cria chave defaul no registro
            if not KeyExists('Software\HWS\Webcontrol') then begin
               hwsf.BtMensagem('Ocorreu um erro na inicialização'+#13+'reinstale o aplicativo');
               Try
                Application.Terminate;
                Exit;
               Except End;
            end else begin
               Try
                  OpenKey('Software\HWS\Webcontrol',False);
                  ReadBinaryData('WebControlCnfg', Controlcnfg, SizeOf(Controlcnfg));
                  WriteDateTime('Acesso',Now);
                  WriteString('Path',Application.ExeName);
                  CloseKey;
               Except
                  CloseKey;
                  Application.Terminate;
                  exit;
               End;
            end;
        end;
        {if not UpdateIpNumber(xipserver) then begin
           hwsf.BtMensagem('Erro de conexão com servidor.');
           Application.Terminate;
           exit;
        end;}
        if EnDecryptString(Controlcnfg.vrf94,37249)<>'tb' then
           xipserver:=EnDecryptString(Controlcnfg.vrf94,25189);
        Try
          xnameprg:='http://www.hws.com.br/HWSsycHst/';
          //xnameprg:='http://192.168.0.52/HWSsycHst/';
          HWSconnection.URL:= xnameprg+'HWScontrolSrv25.dll/soap/IHWSappdb';
          HWSconnectionApp.WSDLLocation:= xnameprg+'HWScontrolApp25vp.dll/wsdl/IHWSwsFnApp';
          HWSconnectionApp.Service:= 'IHWSwsFnAppservice';
          HWSconnectionApp.Port:= 'IHWSwsFnAppPort';
          HWSconnection.Connected:=true;
          xnameprg_Bool:=HWSconnection.Connected;
        Except
          xnameprg_Bool:=False;
        End;
        if not xnameprg_Bool then begin
           hwsf.BtMensagem('Erro de conexão com servidor.');
           Application.Terminate;
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
              OpenKey('Software\HWS\Webcontrol',True);
              WriteBinaryData('WebcontrolCnfg', Controlcnfg, SizeOf(Controlcnfg));
              WriteDateTime('Upgrade',Now);
              WriteString('Path',Application.ExeName);
              CloseKey;
          Except
              CloseKey;
              Reg.Free;
              exit;
          End;
          //Verifica se selecionado inicializar com win então cria chave
          xnameprg:=ExtractFileName(Application.ExeName);
          xnameprg_Bool:= (UpperCase(xnameprg)='HWSCONTROL.EXE');
          if Controlcnfg.vrf01 then begin
             Try
                Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                if xnameprg_Bool then begin
                   writestring('HWScontrol', pchar(application.exename));
                end else begin
                   xnameprg:=copy(ExtractFilePath(Application.ExeName),1,Length(ExtractFilePath(Application.ExeName))-4)+'HWScontrol.exe';
                   writestring('HWScontrol', pchar(xnameprg));
                end;
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
                DeleteValue('HWScontrol');
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

function Tdm2.Autentica_usr:boolean;
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

function Tdm2.Autentica_db:Tdgtdados;
var  dgtdados : Tdgtdados;
begin
    dgtdados:=hwsf.BtDigitarSenha('Autenticação');
    if dgtdados.confat then begin
       if conecta_bd(dgtdados.usr,dgtdados.pass,'') then begin
          Result:=dgtdados;
       end;
    end;
end;

function Tdm2.gravar_logsys(messagehist:string):boolean;
var ax_cod1 : Boolean;
    xtabela,xnip: String;
begin
    Try
      //if GetIPcnt(xnip) then begin
         xtabela:=EnDecryptString(Serverconect.vrf22,37249);
         //xnip:=GetLocalIP+'->'+xnip;
         xnip:='int';
         ax_cod1:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppHtcp(EnDecryptString(xtabela,21535),EnDecryptString(xnip,21535),EnDecryptString(InttoStr(Serverconect.vrf00),21535),EnDecryptString(messagehist,21535));
      //end;
    Except
      ax_cod1:=false;
    End;
    Result := ax_cod1;
end;

function Tdm2.deleta_reg(xtabela,xcampo,xcodigo:string; pergsn,pergsn2:boolean):boolean;
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
       try loadx.Close; except end;
       if (pergsn and pergsn2) then hwsf.BtMensagem(xmensa);
     end else Result:=false;
end;

function Tdm2.conecta_bd(cnt_usr,cnt_pass,xax_parm:string):boolean;
Var x_error,xCommandAut:TstringList;
    cv,xnameprg,xax_parmX: string;
    xnameprg_Bool,xnameprg2_Bool: Boolean;
    xMemorystrCnfg,xMemorystrCnfgout: TMemoryStream;
    ByteArray,ByteArray2: TByteDynArray;
begin
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Conectando Bases';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.position:=0;
      x_error:=TStringList.Create;
      x_error.Clear;
      cnt_usr:=FilterCharsHWS(cnt_usr,['A'..'Z', 'a'..'z', '0'..'9']);
      cnt_pass:=FilterCharsHWS(cnt_pass,['A'..'Z', 'a'..'z', '0'..'9']);
      xnameprg:=ExtractFileName(Application.ExeName);
      xnameprg_Bool:= (UpperCase(xnameprg)='HWSCONTROL.EXE');
      xnameprg2_Bool:= (UpperCase(xnameprg)='HWSHELP.EXE');
      With Serverconect do begin
           loadx.lbloading.Caption:='Conectando';
           loadx.lbloading.Repaint;
           loadx.Progressloading.position:=25;
           Try
                  cv := 'B2d7485d9N';
                  xCommandAut:= TStringList.Create;
                  if (xax_parm <> '') then
                      xax_parmX:=' AND G.cp5='+#39+xax_parm+#39
                  else xax_parmX:=' AND G.cp5 is null';
                  if xnameprg_Bool or xnameprg2_Bool then begin
                     xCommandAut.Text:= 'SELECT A.codigo,A.cod_ent,A.cod_web,A.xconf,B.nome,B.cod_set,B.cod_ent,C.razao_social,D.descricao,E.website,F.cod_grp,G.cp4,G.cp5 FROM '+
                                EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                                EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                                EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                                EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                                EnDecryptString(Serverconect.vrf29,37249)+' E, '+  //website
                                EnDecryptString(Serverconect.vrf33,37249)+' F, '+  //módulos autorizados para o cliente
                                EnDecryptString(Serverconect.vrf24,37249)+' G '+  //módulos
                                'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web AND F.cod_usr=A.codigo AND G.codigo=F.cod_grp '+
                                ' AND A.usuario = '+#39+cnt_usr+#39+
                                ' AND A.password = '+#39+MD5Hash(cnt_pass)+#39+
                                ' AND A.stat = 1'+xax_parmX+' limit 0,1'
                  end else begin
                     xCommandAut.Text:= 'SELECT A.codigo,A.cod_ent,A.cod_web,A.xconf,B.nome,B.cod_set,B.cod_ent,C.razao_social,D.descricao,E.website,F.cod_grp,G.cp4,G.cp5 FROM '+
                                EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                                EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                                EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                                EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                                EnDecryptString(Serverconect.vrf29,37249)+' E, '+  //website
                                EnDecryptString(Serverconect.vrf33,37249)+' F, '+  //módulos autorizados para o cliente
                                EnDecryptString(Serverconect.vrf24,37249)+' G '+  //módulos
                                'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web AND F.cod_usr=A.codigo AND G.codigo=F.cod_grp '+
                                'AND G.mdl='+#39+xnameprg+#39+
                                ' AND A.usuario = '+#39+cnt_usr+#39+
                                ' AND A.password = '+#39+MD5Hash(cnt_pass)+#39+
                                ' AND A.stat = 1'+xax_parmX+' limit 0,1'
                  end;
                  xMemorystrCnfg:= TMemoryStream.Create;
                  xMemorystrCnfgout:= TMemoryStream.Create;
                  //prepara parameros
                  xCommandAut.SaveToStream(xMemorystrCnfg);
                  xMemorystrCnfg.Seek(0,soFromBeginning);
                  xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,14285);
                  xMemorystrCnfg.Seek(0,soFromBeginning);
                  CompressStream(xMemorystrCnfg, xMemorystrCnfgout);
                  xMemorystrCnfgout.Position:=0;
                  ByteArray:= ByteArrayFromStream(xMemorystrCnfgout);
                  xMemorystrCnfg.Clear;
                  //limpa stream
                  xMemorystrCnfg.Seek(0,soFromBeginning);
                  xMemorystrCnfgout.Clear;
                  xMemorystrCnfgout.Seek(0,soFromBeginning);
                  //recebe params
                  ByteArray2 := (HWSconnectionApp as IHWSwsFnApp).HWSdbAppAtcp(ByteArray);
                  xMemorystrCnfg:=ByteArrayCompressedToStream(ByteArray2);
                  xMemorystrCnfg.Seek(0,soFromBeginning);
                  xMemorystrCnfg:=EnDecryptStream(xMemorystrCnfg,14285);
                  xMemorystrCnfg.Seek(0,soFromBeginning);
                  xMemorystrCnfg.Read(AxDadosUsr,xMemorystrCnfg.Size);
                  if AxDadosUsr.codigo=0 then begin
                     x_error.Add('Autenticação com o sistema inválida.');
                     //Application.Terminate;
                  end else begin
                     Serverconect.vrf00:= AxDadosUsr.codigo;
                     AxDadosUsr.usr:=cnt_usr;
                     AxDadosUsr.pass:=cnt_pass;
                     AxDadosUsr.operador:='Å?Ö¤¶•';
                     AxDadosUsr.axparm:=xax_parm;

                  end;
           Except
                   x_error.Add('Erro ao tentar conectar com servidor.');
           End;
           loadx.Progressloading.position:=50;
      end;
      if x_error.Text<>'' then begin
         hwsf.BtAviso(x_error);
         Result:=False;
      end else begin
         gravar_logsys('Bases Conectadas');
         Result:=True;
      end;
      loadx.Close;
end;

function Tdm2.GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
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

function Tdm2.PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
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

function Tdm2.PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
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

function Tdm2.sentMailHWS(xHWSfld1,xHWSfld2: TStringList): Integer;
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

function Tdm2.PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
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

function Tdm2.PostBinaryStreamPHPart(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string; xFileData2: TMemoryStream): Boolean;
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


function Tdm2.PostBinaryStreamPHEnd(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xpartIO: string): Boolean;
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

function Tdm2.GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
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

function Tdm2.RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
var Axrsult: Boolean;
begin
    Try
      Axrsult:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppREQbinPH(EnDecryptString(IntToStr(AxDadosUsr.cod_web),14285),EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpcod_value,14285));
    Except
      Axrsult:= false;
    End;
    Result:=Axrsult;
end;

function Tdm2.RtfToHtml2(contenthead:string; xhead: Boolean; re_editor_tmp: TRxRichEdit):TStringList;
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

procedure Tdm2.HWSconnectionAppAfterExecute(const MethodName: String;
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

procedure Tdm2.HWSconnectionAfterExecute(const MethodName: String;
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

function Tdm2.rotateBitmap(xstrTPmem1:TMemoryStream; var xstrTPmem2:TMemoryStream; xTPcompress:Integer; xangleTP:Double): Boolean;
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

function Tdm2.rotateFoto(xangulo:Integer; var xImagem_Out: TMemoryStream; var xImagem_size: Integer; var xImagem_UPDT: Boolean;
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
      try loadx.Close; except end;
    end else hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
    Result:=xResultPr;
end;

procedure Tdm2.HWSconnectionAppHTTPWebNode1ReceivingData(Read,
  Total: Integer);
var pbDownload: Integer;
    lblProgress: String;
    axshowing: Boolean;
begin
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
end;

procedure Tdm2.DataModuleCreate(Sender: TObject);
begin
    xtotSendTransf:=0;
    xtotReadTransf:=0;
    xtotSendTransfS:=0;
    xtotReadTransfS:=0;
    axshowingMNG:=false;
end;

procedure Tdm2.HWSconnectionAppHTTPWebNode1PostingData(Sent,
  Total: Integer);
var pbDownload: Integer;
    lblProgress: String;
    axshowing: Boolean;
begin
    axshowing:= loadx.Showing;
    if ((axshowing or axshowingMNG) and (Sent>1024)) then begin
        pbDownload := Trunc( Sent/Total *100);
        if (pbDownload>100) then pbDownload:=100
        else if (pbDownload<0) then pbDownload:=1;
        //lblProgress := Format('Enviando %d de %d [%d',[ Trunc(Sent/1024),Trunc(Total/1024),pbDownload ])+'%]';
        loadx.Progressloading.Position:=pbDownload;
        if axshowingMNG then mdl_filemanager.ProgressBar3.Position:=pbDownload;
        //loadx.lbloading.Caption:=lblProgress;
        //loadx.lbloading.Repaint;
        Application.ProcessMessages;
    end;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp), 'urn:HWSwsFnSrv-IHWSwsFnApp', '');

end.


{var pbDownload: Integer;
    lblProgress: String;
    axshowing: Boolean;
begin
    axshowing:= loadx.Showing;
    if (axshowing and (Sent>1024)) then begin
        pbDownload := Trunc( Sent/Total *100);
        if (pbDownload>100) then pbDownload:=100
        else if (pbDownload<0) then pbDownload:=1;
        lblProgress := Format('Enviando %d de %d [%d',[ Trunc(Sent/1024),Trunc(Total/1024)])+'%]';
        loadx.Progressloading.Position:=pbDownload;
        loadx.lbloading.Caption:=lblProgress;
        loadx.lbloading.Repaint;
        Application.ProcessMessages;
    end;}
