{###############################################################################
Programa: HWSwebServer
Módulo: Módulo de dados.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit udm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  SimpleDS, Forms, Winsock, Messages, ComCtrls, Windows, hwsfunctions, Registry,
  InvokeRegistry, Rio, SOAPHTTPClient, SOAPConn,
  Types, RxRichEd, ScktComp, MConnect, XSBuiltIns, Graphics, U_Cipher;

type
  IHWSwsFnApp = interface(IInvokable)
    //['{E4F918D6-429C-45D4-9D28-D3E64DDB65E3}']
    ['{8D8D0605-EF18-49CE-83EE-A71BF3E365CF}']
    function HWSdbAppUPbinPH(const xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbinPH(const xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppREQbinPH(const xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string): Boolean; stdcall;
    function HWSdbAppUPbin(const xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
    function HWSdbAppDOWNbin(const xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray; stdcall;
    function HWSdbAppGETcp(const xtablename,xcpname,xcpwh: string): Integer; stdcall;
    function HWSdbAppXcp(const xtablename,xcpname,xcpvl: string): Boolean; stdcall;
    function HWSdbAppHtcp(const xtablename,xcpip,xcpvl,xcpmg: string): Boolean; stdcall;
    function HWSdbAppAtcp(const xHWSfld: TByteDynArray): TByteDynArray; stdcall;
    function HWSdbAppCnfg(const xHWSid: string): TByteDynArray; stdcall;
    function HWSdbAppEXbin(const xHWSfld,xHWSprm: TByteDynArray): Boolean; stdcall;
  end;

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
  FileServerconect = file of TServerconect;
  FileHelpdesk = file of THelpdesk;
  FileHelpSys = file of THelpSys;

  Tdm = class(TDataModule)
    conecta_int: TSQLConnection;
    source_int: TDataSource;
    source_int3: TDataSource;
    source_int4: TDataSource;
    source_int5: TDataSource;
    source_int2: TDataSource;
    xdt_ds_int: TDataSetProvider;
    ds_int: TClientDataSet;
    xds_int: TSQLDataSet;
    xdt_ds_int2: TDataSetProvider;
    ds_int2: TClientDataSet;
    xds_int2: TSQLDataSet;
    xdt_ds_int3: TDataSetProvider;
    ds_int3: TClientDataSet;
    xds_int3: TSQLDataSet;
    xdt_ds_int4: TDataSetProvider;
    ds_int4: TClientDataSet;
    xds_int4: TSQLDataSet;
    xdt_ds_int5: TDataSetProvider;
    ds_int5: TClientDataSet;
    xds_int5: TSQLDataSet;
    xdt_executa_int: TDataSetProvider;
    executa_int: TClientDataSet;
    xexecuta_int: TSQLDataSet;
    xdt_executa_int2: TDataSetProvider;
    executa_int2: TClientDataSet;
    xexecuta_int2: TSQLDataSet;
    xdt_executa_int3: TDataSetProvider;
    executa_int3: TClientDataSet;
    xexecuta_int3: TSQLDataSet;
    xdt_executa_int4: TDataSetProvider;
    executa_int4: TClientDataSet;
    xexecuta_int4: TSQLDataSet;
    xdt_executa_int5: TDataSetProvider;
    executa_int5: TClientDataSet;
    xexecuta_int5: TSQLDataSet;
    xdt_executa_int6: TDataSetProvider;
    executa_int6: TClientDataSet;
    xexecuta_int6: TSQLDataSet;
    xdt_executa_int7: TDataSetProvider;
    executa_int7: TClientDataSet;
    xexecuta_int7: TSQLDataSet;
    xdt_executa_int8: TDataSetProvider;
    executa_int8: TClientDataSet;
    xexecuta_int8: TSQLDataSet;
    executabin_int: TSQLDataSet;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure HWSconnectionAppAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure HWSconnectionAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
  private
    function verifylibs(base:byte;DriverName,GetDriverFunc,LibraryNma,VendorLib:string;syslib:boolean):String;
    function atualizacombo(base:byte;tipo:byte;pathlib:string):boolean;
    { Private declarations }
  public
    function GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
    function PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
    function GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
    function RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
    function GetCodMax(tabela:string; modulo: byte):Integer;
    function conecta_bases(base:byte;xcnx:byte;xhost,xdb,xusr,xpass,xpathlib:string):boolean;
    function desconecta_bases(base:byte):boolean;
    function winsysreg(tipo:byte):boolean;
    function Autentica_usr:boolean;
    function Autentica_db:Tdgtdados;
    function gravar_logsys(messagehist:string):boolean;
    function deleta_reg(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
    function deleta_reg2(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
    function conecta_bd(cnt_client,cnt_server:boolean; cnt_usr,cnt_pass:string):boolean;
    function desconecta_bd(cnt_client,cnt_server:boolean):boolean;
    { Public declarations }
  end;

var
  dm: Tdm;
  Servercnfg: TServercnfg;
  Serverconect: TServerconect;
  regServerconect: FileServerconect;
  Helpdesk: THelpdesk;
  regHelpdesk: FileHelpdesk;
  HelpSys: THelpSys;
  regHelpSys: FileHelpSys;
  TD,TD2 : TTransactionDesc;
  function getcfgSrv(Index: Integer):TMemoryStream; External 'HWSskcnt.dll';

implementation

Uses DateUtils, Math;

{$R *.dfm}

function Tdm.GetBinaryStream(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
var ByteArray: TByteDynArray;
    txarqData: TMemoryStream;
begin
    Try
      txarqData:= TMemoryStream.Create;
      ByteArray := (HWSconnectionApp as IHWSwsFnApp).HWSdbAppDOWNbin(EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpcod_value,14285));
      txarqData:=ByteArrayCompressedToStream(ByteArray);
    Except
      txarqData.Clear;
    End;
    txarqData.Position:=0;
    Result:=txarqData;
end;

function Tdm.PostBinaryStream(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
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

function Tdm.PostBinaryCommandText(xHWSfld: TStringList; xFileData: TParams): Boolean;
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


function Tdm.PostBinaryStreamPH(xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; xFileData,xFileData2: TMemoryStream): Boolean;
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
        axtest:=(HWSconnectionApp as IHWSwsFnApp).HWSdbAppUPbinph(EnDecryptString(xtablename,14285),EnDecryptString(xcptp,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpcod2,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpsz,14285),EnDecryptString(xcpsz2,14285),EnDecryptString(xcpcod_value,14285),FileData,FileData2);
    Except
        axtest:=false;
    End;
    Result:=axtest;
end;

function Tdm.GetBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpcod_value: string):TMemoryStream;
var ByteArray: TByteDynArray;
    txarqData: TMemoryStream;
begin
    Try
      txarqData:= TMemoryStream.Create;
      txarqData.Clear;
      txarqData.Position:=0;
      ByteArray:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppDOWNbinPH(EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpcod_value,14285));
      txarqData:=ByteArrayCompressedToStream(ByteArray);
    Except
      txarqData.Clear;
    End;
    txarqData.Position:=0;
    Result:=txarqData;
end;

function Tdm.RemoveBinaryStreamPH(xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string):Boolean;
var Axrsult: Boolean;
begin
    Try
      Axrsult:= (HWSconnectionApp as IHWSwsFnApp).HWSdbAppREQbinPH(EnDecryptString(xtablename,14285),EnDecryptString(xcpcod,14285),EnDecryptString(xcpdt,14285),EnDecryptString(xcpdt2,14285),EnDecryptString(xcpcod_value,14285));
    Except
      Axrsult:= false;
    End;
    Result:=Axrsult;
end;

function Tdm.atualizacombo(base:byte;tipo:byte;pathlib:string):boolean;
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
    0: mensaerror:=verifylibs(base,'DB2','getSQLDriverDB2',pathlib+'dbexpdb2.dll',pathlib+'db2cli.dll',(pathlib = ''));
    1: mensaerror:=verifylibs(base,'Interbase','getSQLDriverINTERBASE',pathlib+'dbexpint.dll',pathlib+'gds32.dll',(pathlib = ''));
    2: mensaerror:=verifylibs(base,'Informix','getSQLDriverINFORMIX',pathlib+'dbexpinf.dll',pathlib+'isqlb09a.dll',(pathlib = ''));
    3: mensaerror:=verifylibs(base,'MSSQL','getSQLDriverMSSQL',pathlib+'dbexpmss.dll',pathlib+'oledb',(pathlib = ''));
    4: mensaerror:=verifylibs(base,'MySQL','getSQLDriverMYSQL',pathlib+'dbexpmysql.dll',pathlib+'libmysql.dll',(pathlib = ''));
    5: mensaerror:=verifylibs(base,'Oracle','getSQLDriverORACLE',pathlib+'dbexpora.dll',pathlib+'oci.dll',(pathlib = ''));
  End;
  If mensaerror<>'' then begin
    hwsf.BtMensagem('Arquivo '+mensaerror+' não encontrado!');
    Result:=False;
  end else Result:=True;
end;

function Tdm.verifylibs(base:byte;DriverName,GetDriverFunc,LibraryNma,VendorLib:string;syslib:boolean):String;
begin
     if not FileExists(LibraryNma) and not syslib then begin
        Result:=LibraryNma;
     end else if not FileExists(VendorLib) and not syslib then begin
        Result:=VendorLib;
     end else begin
        Case base of
          0: begin
             {conecta_sql.DriverName:=DriverName;
             conecta_sql.GetDriverFunc:=GetDriverFunc;
             conecta_sql.LibraryName:=LibraryNma;
             conecta_sql.VendorLib:=VendorLib;}
             Result:='';
          end;
          1: begin
             conecta_int.DriverName:=DriverName;
             conecta_int.GetDriverFunc:=GetDriverFunc;
             conecta_int.LibraryName:=LibraryNma;
             conecta_int.VendorLib:=VendorLib;
             Result:='';
          end;
        end;
     end;
end;

function Tdm.GetCodMax(tabela:string; modulo: byte):Integer;
var cod : integer;
begin
    Try
      Case modulo of
      1: begin
         With executa do begin
            CommandText := 'SELECT MAX(codigo) FROM '+tabela;
            Open;
            if RecordCount > 0 then cod:= Fields[0].AsInteger+1
            else cod := 1;
            Close;
         end;
      end;
      2: begin
         With executa_int do begin
            CommandText := 'SELECT MAX(codigo) FROM '+tabela;
            Open;
            if RecordCount > 0 then cod:= Fields[0].AsInteger+1
            else cod := 1;
            Close;
         end;
      end;
      end;
    Except cod:=0; End;
    Result := cod;
end;

function Tdm.conecta_bases(base:byte;xcnx:byte;xhost,xdb,xusr,xpass,xpathlib:string):boolean;
var xnameprg: string;
    xnameprg_Bool: Boolean;
begin
    if not atualizacombo(base,xcnx,xpathlib) then begin
       Result:=False;
       exit;
    end;
    Case base of
      0: begin
         Try
            xnameprg:='http://www.hws.com.br/HWSsycHst/';
            HWSconnection.URL:= xnameprg+'HWScontrolSrv25.dll/soap/IHWSappdb';
            HWSconnectionApp.WSDLLocation:= xnameprg+'HWScontrolApp125.dll/wsdl/IHWSwsFnApp';
            HWSconnectionApp.Service:= 'IHWSwsFnAppservice';
            HWSconnectionApp.Port:= 'IHWSwsFnAppPort';
            HWSconnection.Connected:=true;
            xnameprg_Bool:=HWSconnection.Connected;
          Except
            xnameprg_Bool:=False;
          End;
          Result:=xnameprg_Bool;
         {With conecta_sql do begin
            Params.Clear;
            Params.Values['Hostname']  := xhost;
            Params.Values['Database']  := xdb;
            Params.Values['User_Name'] := xusr;
            Params.Values['Password']  := xpass;
            Try
              Connected := true;
            Except End;
            Result:=Connected;
         end;}
      end;
      1: begin
         With conecta_int do begin
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
    end;
end;

function Tdm.desconecta_bases(base:byte):boolean;
begin
    Result:=True;
    Try
      Case base of
        0: HWSconnection.Connected:=false;//conecta_sql.Connected:=False;
        1: conecta_int.Connected:=false;
      end;
    Except
    End;
end;

function Tdm.winsysreg(tipo:byte):boolean;
var Reg: TRegistry;
    axFileCnfg : TMemoryStream;
begin
    Result:=false;
    Reg:=Tregistry.create;
    axFileCnfg := TMemoryStream.Create;
    axFileCnfg.Clear;
    axFileCnfg.Seek(0,soFromBeginning);
    try
     Case tipo of
      1:begin
        with Reg do begin
            rootkey:=HKEY_LOCAL_MACHINE;
            //cria chave defaul no registro
            if not KeyExists('Software\HWS\WebServer') then begin
               hwsf.BtMensagem('Ocorreu um erro na inicialização'+#13+'reinstale o aplicativo');
               Try
                Application.Terminate;
                Exit;
               Except End;
            end else begin
               Try
                  OpenKey('Software\HWS\WebServer',true);
                  //WriteBinaryData('WebServerCnfg', Servercnfg, SizeOf(Servercnfg));
                  ReadBinaryData('WebServerCnfg', Servercnfg, SizeOf(Servercnfg));
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
        //xnamedat:='HWScontrol004.hws';
        //if xnameprg_Bool then xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+xnamedat;
        {xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+'HWScontrol004.hws';
        AssignFile(regServerconect,ExtractFilePath(Application.ExeName)+'bin\'+'HWScontrol004.hws');
        if FileExists(xnamedat) then Reset(regServerconect)
        else Rewrite(regServerconect);
        Seek(regServerconect,0);
        while not Eof(regServerconect) do read(regServerconect,Serverconect);
        CloseFile(regServerconect);
        Result:=true;}
        axFileCnfg:=getcfgSrv(3);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(Serverconect,axFileCnfg.Size);
      end;
      4:begin
        //xnamedat:='HWScontrol002.hws';
        //if xnameprg_Bool then xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+xnamedat;
        {xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+'HWScontrol002.hws';
        AssignFile(regHelpdesk,xnamedat);
        if FileExists(xnamedat) then Reset(regHelpdesk)
        else Rewrite(regHelpdesk);
        Seek(regHelpdesk,0);
        while not Eof(regHelpdesk) do read(regHelpdesk,Helpdesk);
        CloseFile(regHelpdesk);
        Result:=true;}
        axFileCnfg:=getcfgSrv(1);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(Helpdesk,axFileCnfg.Size);
      end;
      6:begin
        //xnamedat:='HWScontrol003.hws';
        //if xnameprg_Bool then xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+xnamedat;
        {xnamedat:=ExtractFilePath(Application.ExeName)+'bin\'+'HWScontrol003.hws';
        AssignFile(regHelpSys,xnamedat);
        if FileExists(xnamedat) then Reset(regHelpSys)
        else Rewrite(regHelpSys);
        Seek(regHelpSys,0);
        while not Eof(regHelpSys) do read(regHelpSys,HelpSys);
        CloseFile(regHelpSys);
        Result:=true;}
        axFileCnfg:=getcfgSrv(2);
        axFileCnfg.Seek(0,soFromBeginning);
        axFileCnfg.Read(HelpSys,axFileCnfg.Size);
      end;
     End;
    finally
     Reg.Free;
     Result:=true;
    End;
end;

function Tdm.Autentica_usr:boolean;
var  dgtdados : Tdgtdados;
begin
    Result:=false;
    dgtdados:=hwsf.BtDigitarSenha('Autenticação');
    if dgtdados.confat then begin
       if (dgtdados.usr = EnDecryptString(Servercnfg.vrf16,37249)) and
          (dgtdados.pass = EnDecryptString(Servercnfg.vrf17,37249)) then begin
           Result:=true;
       end;
    end;
end;

function Tdm.Autentica_db:Tdgtdados;
var  dgtdados : Tdgtdados;
begin
    dgtdados:=hwsf.BtDigitarSenha('Autenticação');
    if dgtdados.confat then begin
       if conecta_bd(true,true,dgtdados.usr,dgtdados.pass) then begin
          Result:=dgtdados;
       end;
    end;
end;

function Tdm.gravar_logsys(messagehist:string):boolean;
var ax_cod_y3 : integer;
begin
  try
    with dm.executa_int do begin
      ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf22[1],37249),2);
      CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf22[1],37249)+' (codigo,cod_usr,ip,obs,data_time) '+
      'VALUES(:p0,:p1,encode(:p2,:p3),:p4,:p5)';
      Params[0].AsInteger:=ax_cod_y3;
      Params[1].AsInteger:=Serverconect.vrf00;
      Params[2].AsString:=GetLocalIP;
      Params[3].AsString:='3542';
      Params[4].AsMemo:= EnDecryptString(messagehist,3542);
      Params[5].AsString:=FormatDateTime('yyyymmdd hhmmss',Now);
      Execute;
    end;
  except
    Result:=false;
    exit;
  end;
  Result:=true;
end;

function Tdm.deleta_reg(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
var xmensa:string;
    axpergsn:boolean;
    axshowing: Boolean;
begin
     axpergsn:=true;
     if pergsn then begin
        if hwsf.BtConfirma('Excluir registro selecionado ['+xcodigo+']?') then
           axpergsn:=true
        else axpergsn:=false;
     end;
     if axpergsn then begin
       axshowing:= loadx.Showing;
       try
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
       except
       end;
       try
         with dm.executa do begin
             CommandText:= 'DELETE FROM '+xtabela+' WHERE '+xcampo+'='+#39+xcodigo+#39;
             try
               loadx.Progressloading.position:=30;
             except
             end;
             Execute;
             try
               loadx.Progressloading.position:=50;
             except
             end;
         end;
         try
         loadx.Progressloading.position:=100;
         except
         end;
         xmensa:= 'Registro exluido com sucesso.';
         Result:=true;
       except
         xmensa:= 'Ocorreu um erro ao exluir registro.';
         Result:=false;
       end;
       try
          if not axshowing then loadx.Free;
       except
       end;
       if pergsn then hwsf.BtMensagem(xmensa);
     end else Result:=false;
end;

function Tdm.deleta_reg2(xtabela,xcampo,xcodigo:string; pergsn:boolean):boolean;
var xmensa:string;
    axpergsn:boolean; 
    axshowing: Boolean;
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
       try
         with dm.executa_int do begin
             CommandText:= 'DELETE FROM '+xtabela+' WHERE '+xcampo+'='+#39+xcodigo+#39;
             loadx.Progressloading.position:=30;
             Execute;
             loadx.Progressloading.position:=60;
         end;
         loadx.Progressloading.position:=100;
         xmensa:= 'Registro exluido com sucesso.';
         Result:=true;
       except
         xmensa:= 'Ocorreu um erro ao exluir registro.';
         Result:=false;
       end;
       if not axshowing then loadx.Free;
       if pergsn then hwsf.BtMensagem(xmensa);
     end else Result:=false;
end;

function Tdm.conecta_bd(cnt_client,cnt_server:boolean; cnt_usr,cnt_pass:string):boolean;
Var x_error:TstringList;
    cv: string;
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
      With Serverconect do begin
           loadx.lbloading.Caption:='Base Client';
           loadx.lbloading.Repaint;
           if cnt_client then begin
              if not dm.conecta_bases(0,vrf09[0],EnDecryptString(vrf10[0],37249),
                                     EnDecryptString(vrf11[0],37249),EnDecryptString(vrf12[0],37249),
                                     EnDecryptString(vrf13[0],37249),EnDecryptString(vrf15[0],12527)) then
              x_error.Add('Erro ao tentar conectar com base Client.');
           end;
           loadx.Progressloading.position:=25;
           if cnt_server then begin
              loadx.lbloading.Caption:='Base Server';
              loadx.lbloading.Repaint;
              if dm.conecta_bases(1,vrf09[1],EnDecryptString(vrf10[1],37249),
                                 EnDecryptString(vrf11[1],37249),EnDecryptString(vrf12[1],37249),
                                 EnDecryptString(vrf13[1],37249),EnDecryptString(vrf15[1],12527)) then begin
                 Try
                 With dm.executa_int do begin
                  cv := 'B2d7485d9N';
                  CommandText:='Select * from '+EnDecryptString(Serverconect.vrf19[1],37249)+' Where decode(usuario,'+#39+cv+#39+') = '+#39+cnt_usr+#39+
                            ' AND decode(password,'+#39+cv+#39+') = '+#39+cnt_pass+#39+' AND stat = 1';
                  Open;
                  if Recordcount <=0 then begin
                     Close;
                     dm.conecta_int.Connected:=False;
                     x_error.Add('Autenticação com o sistema inválida.');
                  end else begin
                     Serverconect.vrf00:=Fieldbyname('codigo').AsInteger;
                     Close;
                  end;
                 end;
                 Except
                     x_error.Add('Erro ao tentar conectar com servidor.');
                 End;
              end else begin
                 x_error.Add('Erro ao tentar conectar com servidor.');
              end;
           end;
           loadx.Progressloading.position:=50;
      end;
      loadx.Close;
      if x_error.Text<>'' then begin
         hwsf.BtAviso(x_error);
         Result:=False;
      end else begin
         dm.gravar_logsys('Bases Conectadas');
         Result:=True;
      end;
end;

function Tdm.desconecta_bd(cnt_client,cnt_server:boolean):boolean;
var x_error: TStringList;
begin
      dm.gravar_logsys('Bases Desconectadas');
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Desconectando Bases';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.position:=25;
      x_error:=TStringList.Create;
      x_error.Clear;
      if cnt_client then
      if not dm.desconecta_bases(0) then
         x_error.Add('Erro ao tentar desconectar com base Client.');
      loadx.Progressloading.position:=50;
      if cnt_server then
      if not dm.desconecta_bases(1) then
         x_error.Add('Erro ao tentar desconectar com base Server.');
      loadx.Progressloading.position:=100;
      loadx.Free;
      if x_error.Text<>'' then begin
         hwsf.BtAviso(x_error);
         Result:=False;
      end else begin
         Result:=True;
      end;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
    dm.winsysreg(1);
    dm.winsysreg(4);
    dm.winsysreg(6);
end;

procedure Tdm.HWSconnectionAppAfterExecute(const MethodName: String;
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

procedure Tdm.HWSconnectionAfterExecute(const MethodName: String;
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

initialization
  InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp), 'urn:HWSwsFnSrv-IHWSwsFnApp', '');

end.
