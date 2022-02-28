unit rebapp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  ExtCtrls, Forms, IdBaseComponent, IdComponent,
  IdTCPClient, IdHTTP, DB, AppEvnts, FMTBcd, DBXpress, SqlExpr, DBClient,
  Provider, IdTCPServer, IdFTPServer,
  Variants,StdCtrls, ComCtrls, IdTCPConnection, IdSocketHandle, Shellapi, Spin,
  IdHashCRC, idglobal, IdFTPList, IdIOHandler, IdIOHandlerStream, Registry;

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

  THWSsfftp = class(TService)
    ApplicationEvents1: TApplicationEvents;
    TimerINI: TTimer;
    IdFTPServer1: TIdFTPServer;
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceAfterUninstall(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceExecute(Sender: TService);
    procedure IdFTPServer1ChangeDirectory(ASender: TIdFTPServerThread;
      var VDirectory: String);
    procedure IdFTPServer1Connect(AThread: TIdPeerThread);
    procedure IdFTPServer1DeleteFile(ASender: TIdFTPServerThread;
      const APathName: String);
    procedure IdFTPServer1Disconnect(AThread: TIdPeerThread);
    procedure IdFTPServer1Exception(AThread: TIdPeerThread;
      AException: Exception);
    procedure IdFTPServer1Execute(AThread: TIdPeerThread);
    procedure IdFTPServer1GetCustomListFormat(ASender: TIdFTPServer;
      AItem: TIdFTPListItem; var VText: String);
    procedure IdFTPServer1GetFileSize(ASender: TIdFTPServerThread;
      const AFilename: String; var VFileSize: Int64);
    procedure IdFTPServer1ListDirectory(ASender: TIdFTPServerThread;
      const APath: String; ADirectoryListing: TIdFTPListItems);
    procedure IdFTPServer1ListenException(AThread: TIdListenerThread;
      AException: Exception);
    procedure IdFTPServer1MakeDirectory(ASender: TIdFTPServerThread;
      var VDirectory: String);
    procedure IdFTPServer1NoCommandHandler(ASender: TIdTCPServer;
      const AData: String; AThread: TIdPeerThread);
    procedure IdFTPServer1RemoveDirectory(ASender: TIdFTPServerThread;
      var VDirectory: String);
    procedure IdFTPServer1RenameFile(ASender: TIdFTPServerThread;
      const ARenameFromFile, ARenameToFile: String);
    procedure IdFTPServer1RetrieveFile(ASender: TIdFTPServerThread;
      const AFileName: String; var VStream: TStream);
    procedure IdFTPServer1Status(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: String);
    procedure IdFTPServer1StoreFile(ASender: TIdFTPServerThread;
      const AFileName: String; AAppend: Boolean; var VStream: TStream);
    procedure IdFTPServer1UserLogin(ASender: TIdFTPServerThread;
      const AUsername, APassword: String; var AAuthenticated: Boolean);
    procedure IdFTPServer1TIdCommandHandler0Command(ASender: TIdCommand);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure TimerINITimer(Sender: TObject);
  private
    { Private declarations }
    inRebootExec: Boolean;
    inRebootExecTimer,inAutoRebootExec: Integer;
    MS: TMemoryStatus;
    Hb_cnfg: THb_cnfg;
    Hb_groups: THb_groups;
    Hb_users: THb_users;
    xfilename: Txfilename;
    fServicePri: Integer;
    fThreadPri: Integer;
    xfilenameCNFG: String;
    function TransLatePath( const APathname, homeDir: string ) : string;
    procedure gravar_log(xmensa:String);
    function OpenCnfgFTP:Boolean;
    function Xconect(xcnx:Boolean):Boolean;
    procedure AddlistItem(aDirectoryListing: TIdFTPListItems; Filename: string; ItemType: TIdDirItemType; size: int64; date: tdatetime );
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  HWSsfftp: THWSsfftp;

const
  csRegEventLog = 'SYSTEM\CurrentControlSet\Services\Eventlog\Application';
  csServiceName = 'ServMain';

implementation

uses hwsfunctions, DateUtils;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
     HWSsfftp.Controller(CtrlCode);
end;

function THWSsfftp.GetServiceController: TServiceController;
begin
     Result := ServiceController;
end;

Procedure RegEventLog( aRegister : Boolean );
Var
  reg : TRegistry;
Begin
  reg := TRegistry.Create;
  Try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    If (reg.OpenKey(csRegEventLog, false)) Then
    Begin
      If (aRegister) Then
      Begin
        If (reg.OpenKey(csServiceName, true)) Then
        Begin
          reg.WriteString('EventMessageFile', ParamStr(0));
          reg.WriteInteger('TypesSupported', EVENTLOG_ERROR_TYPE
                        OR EVENTLOG_WARNING_TYPE OR EVENTLOG_INFORMATION_TYPE);
        End;
      End
      Else
        reg.DeleteKey(csServiceName);
    End;
  Finally
    reg.Free;
  End;
End;

procedure THWSsfftp.ServiceAfterInstall(Sender: TService);
begin
  RegEventLog(true);
end;

procedure THWSsfftp.ServiceAfterUninstall(Sender: TService);
begin
  RegEventLog(false);
end;

procedure THWSsfftp.ServiceStart(Sender: TService; var Started: Boolean);
begin
  Started := true;
end;

procedure THWSsfftp.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  IdFTPServer1.Active := false;
//  Xconect(false);
  Stopped := true;
end;

procedure THWSsfftp.ServiceExecute(Sender: TService);
begin
  while not Terminated do
    begin
      ServiceThread.ProcessRequests(False);
      sleep(100);
    end;
end;

function StartsWith( const str, substr: string ) : boolean;
begin
  result := copy( str, 1, length( substr ) ) = substr;
end;

function BackSlashToSlash( const str: string ) : string;
var
  a: dword;
begin
  result := str;
  for a := 1 to length( result ) do
    if result[a] = '\' then
      result[a] := '/';
end;

function SlashToBackSlash( const str: string ) : string;
var
  a: dword;
begin
  result := str;
  for a := 1 to length( result ) do
    if result[a] = '/' then
      result[a] := '\';
end;

function GetSizeOfFile( const APathname: string ) : int64;
begin
  result := FileSizeByName( APathname ) ;
end;

function GetNewDirectory( old, action: string ) : string;
var
  a: integer;
begin
  if action = '../' then
  begin
    if old = '/' then
    begin
      result := old;
      exit;
    end;
    a := length( old ) - 1;
    while ( old[a] <> '\' ) and ( old[a] <> '/' ) do
      dec( a ) ;
    result := copy( old, 1, a ) ;
    exit;
  end;
  if ( action[1] = '/' ) or ( action[1] = '\' ) then
    result := action
  else
    result := old + action;
end;

function CalculateCRC( const path: string ) : string;
var
  f: tfilestream;
  value: dword;
  IdHashCRC32: TIdHashCRC32;
begin
  IdHashCRC32 := nil;
  f := nil;
  try
    IdHashCRC32 := TIdHashCRC32.create;
    f := TFileStream.create( path, fmOpenRead or fmShareDenyWrite ) ;
    value := IdHashCRC32.HashValue( f ) ;
    result := inttohex( value, 8 ) ;
  finally
    f.free;
    IdHashCRC32.free;
  end;
end;

function THWSsfftp.TransLatePath( const APathname, homeDir: string ) : string;
var
  tmppath: string;
begin
  result := SlashToBackSlash(homeDir) ;
  tmppath := SlashToBackSlash(APathname) ;
  if homedir = '/' then begin
    result := tmppath;
    exit;
  end;
  if length(APathname) = 0 then
    exit;
  if result[length(result)] = '\' then
    result := copy(result,1,length(result)-1);
  if tmppath[1] <> '\' then
    result := result + '\';
  result := result + tmppath;
end;

procedure THWSsfftp.gravar_log(xmensa:String);
var F: TextFile;
    S,xtime: string;
    xfilenameDT,xfile: String;
begin
    if (not xfilename.xopen) then begin
       xfilename.xopen:=True;
       DateTimeToString(xfilenameDT,'ddmmyyyyhhnnss',Now);
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

function THWSsfftp.OpenCnfgFTP:Boolean;
var xmemfile: TMemoryStream;
    xresulterror:Boolean;
begin
      try
          xresulterror:=true;
          xfilenameCNFG := ExtractFilePath(Application.ExeName)+'HWSftp';
          xmemfile:= TMemoryStream.Create;
          if FileExists(xfilenameCNFG+'001.hws') then begin
             xmemfile.Clear;
             xmemfile.Position:=0;
             xmemfile.LoadFromFile(xfilenameCNFG+'001.hws');
             xmemfile.Position:=0;
             xmemfile:= EnDecryptStream(xmemfile,45621);
             xmemfile.Position:=0;
             xmemfile.Read(Hb_cnfg,xmemfile.Size);
          end else begin
             HWSsfftp.gravar_log(#13+'Erro ao ler arquivo de configurações ['+xfilenameCNFG+'001.hws'+']');
             xresulterror:=false;
          end;
          if FileExists(xfilenameCNFG+'002.hws') then begin
             xmemfile.Clear;
             xmemfile.Position:=0;
             xmemfile.LoadFromFile(xfilenameCNFG+'002.hws');
             xmemfile.Position:=0;
             xmemfile:= EnDecryptStream(xmemfile,45622);
             xmemfile.Position:=0;
             xmemfile.Read(Hb_groups,xmemfile.Size);
          end else begin
             HWSsfftp.gravar_log(#13+'Erro ao ler arquivo de configurações ['+xfilenameCNFG+'002.hws'+']');
             xresulterror:=false;
          end;
          if FileExists(xfilenameCNFG+'003.hws') then begin
             xmemfile.Clear;
             xmemfile.Position:=0;
             xmemfile.LoadFromFile(xfilenameCNFG+'003.hws');
             xmemfile.Position:=0;
             xmemfile:= EnDecryptStream(xmemfile,45623);
             xmemfile.Position:=0;
             xmemfile.Read(Hb_users,xmemfile.Size);
          end else begin
             HWSsfftp.gravar_log(#13+'Erro ao ler arquivo de configurações ['+xfilenameCNFG+'003.hws'+']');
             xresulterror:=false;
          end;
          xmemfile.Free;
      except
          HWSsfftp.gravar_log(#13+'Erro ao ler arquivos.');
          xresulterror:=false;
      end;
      Result:=xresulterror;
      if (xresulterror) then
          Xconect(true);
end;

function THWSsfftp.Xconect(xcnx:Boolean):Boolean;
var xresulterror:Boolean;
begin
      xresulterror:=true;
      if xcnx then begin
         if IdFTPServer1.Active then IdFTPServer1.Active:=false;
         //IdFTPServer1.DefaultPort:=strtoint(EnDecryptString(Hb_cnfg.vrf01,13584));
         //IdFTPServer1.DefaultDataPort:=strtoint(EnDecryptString(Hb_cnfg.vrf01,13584));
         //IdFTPServer1.TerminateWaitTime:=strtoint(EnDecryptString(Hb_cnfg.vrf04,13513));
         {Case Hb_cnfg.vrf07 of
              0: IdFTPServer1.EmulateSystem:= ftpsDOS;
              1: IdFTPServer1.EmulateSystem:= ftpsOther;
              2: IdFTPServer1.EmulateSystem:= ftpsUNIX;
              3: IdFTPServer1.EmulateSystem:= ftpsVAX;
         End; }
         //IdFTPServer1.MaxConnections:=strtoint(EnDecryptString(Hb_cnfg.vrf08,13514));
         //IdFTPServer1.ListenQueue:=strtoint(EnDecryptString(Hb_cnfg.vrf09,13515));
         //IdFTPServer1.Bindings:=EnDecryptString(Hb_cnfg.vrf10,21632);
         try
            IdFTPServer1.Active:=true;
            HWSsfftp.gravar_log(#13+'FTP Conectado');
         except
            xresulterror:=false;
            HWSsfftp.gravar_log(#13+'Ocorreu um Erro ao Conectar');
         end;
      end else begin
         try
            IdFTPServer1.Active:=false;
            HWSsfftp.gravar_log(#13+'FTP Desconectado');
         except
            xresulterror:=false;
            HWSsfftp.gravar_log(#13+'Ocorreu um Erro ao Desconectar');
         end;
      end;
      Result:=xresulterror;
end;

procedure THWSsfftp.IdFTPServer1ChangeDirectory(
  ASender: TIdFTPServerThread; var VDirectory: String);
begin
  VDirectory := GetNewDirectory( ASender.CurrentDir, VDirectory );
  HWSsfftp.gravar_log(#13+'ChangeDirectory: '+VDirectory+' - '+ASender.CurrentDir);
end;

procedure THWSsfftp.IdFTPServer1Connect(AThread: TIdPeerThread);
begin
      HWSsfftp.gravar_log(#13+'Connect: Conectado');
end;

procedure THWSsfftp.IdFTPServer1DeleteFile(ASender: TIdFTPServerThread;
  const APathName: String);
begin
      DeleteFile( pchar( TransLatePath( ASender.CurrentDir + '/' + APathname, ASender.HomeDir ) ) ) ;
      HWSsfftp.gravar_log(#13+'DeleteFile: '+ASender.CurrentDir + '/' + APathname);
end;

procedure THWSsfftp.IdFTPServer1Disconnect(AThread: TIdPeerThread);
begin
      HWSsfftp.gravar_log(#13+'Disconnect: Desconectado');
end;

procedure THWSsfftp.IdFTPServer1Exception(AThread: TIdPeerThread;
  AException: Exception);
begin
      HWSsfftp.gravar_log(#13+'Exception: '+AException.Message);
end;

procedure THWSsfftp.IdFTPServer1Execute(AThread: TIdPeerThread);
begin
      HWSsfftp.gravar_log(#13+'Execute');
end;

procedure THWSsfftp.IdFTPServer1GetCustomListFormat(ASender: TIdFTPServer;
  AItem: TIdFTPListItem; var VText: String);
begin
      HWSsfftp.gravar_log(#13+'CustomListFormat: '+VText);
end;

procedure THWSsfftp.IdFTPServer1GetFileSize(ASender: TIdFTPServerThread;
  const AFilename: String; var VFileSize: Int64);
begin
    VFileSize := GetSizeOfFile( TransLatePath( AFilename, ASender.HomeDir ) ) ;
    HWSsfftp.gravar_log(#13+'GetFileSize: '+AFilename+' - '+IntToStr(VFileSize));
end;

{procedure THWSsfftp.IdFTPServer1ListDirectory(ASender: TIdFTPServerThread;
  const APath: String; ADirectoryListing: TIdFTPListItems);
  procedure AddlistItem( aDirectoryListing: TIdFTPListItems; Filename: string; ItemType: TIdDirItemType; size: int64; date: tdatetime ) ;
  var
    listitem: TIdFTPListItem;
  begin
    listitem := aDirectoryListing.Add;
    listitem.ItemType := ItemType;
    listitem.FileName := Filename;
    listitem.OwnerName := '';
    listitem.GroupName := 'all';
    listitem.OwnerPermissions := '---';
    listitem.GroupPermissions := '---';
    listitem.UserPermissions := '---';
    listitem.Size := size;
    listitem.ModifiedDate := date;
  end;
var
  f: tsearchrec;
  a: integer;
begin
  ADirectoryListing.DirectoryName := apath;
  HWSsfftp.gravar_log(#13+'ListDirectory: '+apath);
  a := FindFirst( TransLatePath( apath, ASender.HomeDir ) + '*.*', faAnyFile, f ) ;
  while ( a = 0 ) do
  begin
    if ( f.Attr and faDirectory > 0 ) then
      AddlistItem( ADirectoryListing, f.Name, ditDirectory, f.size, FileDateToDateTime( f.Time ) )
    else
      AddlistItem( ADirectoryListing, f.Name, ditFile, f.size, FileDateToDateTime( f.Time ) ) ;
    a := FindNext( f ) ;
  end;
  FindClose( f ) ;
end;}

procedure THWSsfftp.IdFTPServer1ListDirectory(ASender: TIdFTPServerThread;
  const APath: String; ADirectoryListing: TIdFTPListItems);
var
  f: tSearchRec;
  a: integer;
begin
  //Memo1.Lines.Add('['+ GetNow() + '][????]-- ListDirectory Start --');
  try
    ADirectoryListing.DirectoryName := apath;
    a := FindFirst(TransLatePath(apath, ASender.HomeDir) + '*.*', faAnyFile, f);
    while (a = 0) do
    begin
      if (f.Attr and faDirectory > 0) then
        AddlistItem(ADirectoryListing, f.Name, ditDirectory, f.size, FileDateToDateTime(f.Time))
      else
        AddlistItem(ADirectoryListing, f.Name, ditFile, f.size, FileDateToDateTime(f.Time));
      a := FindNext(f);
    end;
    FindClose(f);
  except
    on E:Exception do
    HWSsfftp.gravar_log(#13+'Erro Listar Diretóriio: ' + E.Message);
  end;
end;

procedure THWSsfftp.AddlistItem(aDirectoryListing: TIdFTPListItems; Filename: string; ItemType: TIdDirItemType; size: int64; date: tdatetime );
var
  listitem: TIdFTPListItem;
begin
  listitem := aDirectoryListing.Add;
  listitem.ItemType := ItemType;
  listitem.FileName := Filename;
  listitem.OwnerName := 'anonymous';
  listitem.GroupName := 'all';
  listitem.OwnerPermissions := '---';
  listitem.GroupPermissions := '---';
  listitem.UserPermissions := '---';
  listitem.Size := size;
  listitem.ModifiedDate := date;
end;

procedure THWSsfftp.IdFTPServer1ListenException(AThread: TIdListenerThread;
  AException: Exception);
begin
    HWSsfftp.gravar_log(#13+'ListenException: '+AException.Message);
end;

procedure THWSsfftp.IdFTPServer1MakeDirectory(ASender: TIdFTPServerThread;
  var VDirectory: String);
begin
  MkDir( TransLatePath( VDirectory, ASender.HomeDir ) ) ;
  HWSsfftp.gravar_log(#13+'MakeDirectory: '+VDirectory);
end;

procedure THWSsfftp.IdFTPServer1NoCommandHandler(ASender: TIdTCPServer;
  const AData: String; AThread: TIdPeerThread);
begin
    HWSsfftp.gravar_log(#13+'NoCommandHandler'+AData);
end;

procedure THWSsfftp.IdFTPServer1RemoveDirectory(
  ASender: TIdFTPServerThread; var VDirectory: String);
begin
  RmDir( TransLatePath( VDirectory, ASender.HomeDir ) ) ;
  HWSsfftp.gravar_log(#13+'RemoveDirectory: '+VDirectory);
end;

procedure THWSsfftp.IdFTPServer1RenameFile(ASender: TIdFTPServerThread;
  const ARenameFromFile, ARenameToFile: String);
begin
  if not MoveFile( pchar( TransLatePath( ARenameFromFile, ASender.HomeDir ) ) , pchar( TransLatePath( ARenameToFile, ASender.HomeDir ) ) ) then
    RaiseLastWin32Error;
  HWSsfftp.gravar_log(#13+'RenameFile: '+ARenameFromFile);
end;

procedure THWSsfftp.IdFTPServer1RetrieveFile(ASender: TIdFTPServerThread;
  const AFileName: String; var VStream: TStream);
begin
  VStream := TFileStream.create( translatepath( AFilename, ASender.HomeDir ) , fmopenread or fmShareDenyWrite ) ;
  HWSsfftp.gravar_log(#13+'RetrieveFile: '+AFileName);
end;

procedure THWSsfftp.IdFTPServer1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
var xtext:String;
begin
      if AStatus=hsResolving then xtext:='Resolvendo'
      else if AStatus=hsConnecting then xtext:='Connctando'
      else if AStatus=hsConnected then xtext:='Conectado'
      else if AStatus=hsDisconnecting then xtext:='Desconectando'
      else if AStatus=hsDisconnected then xtext:='Desconectado'
      else if AStatus=hsStatusText then xtext:='Status'
      else if AStatus=ftpTransfer then xtext:='Transferindo'
      else if AStatus=ftpReady then xtext:='Lendo'
      else if AStatus=ftpAborted then xtext:='Cancelado';
      HWSsfftp.gravar_log(#13+'Status: '+xtext+' - '+AStatusText);
end;

procedure THWSsfftp.IdFTPServer1StoreFile(ASender: TIdFTPServerThread;
  const AFileName: String; AAppend: Boolean; var VStream: TStream);
begin
  if FileExists( translatepath( AFilename, ASender.HomeDir ) ) and AAppend then
  begin
    VStream := TFileStream.create( translatepath( AFilename, ASender.HomeDir ) , fmOpenWrite or fmShareDenyNone ) ;//fmOpenWrite or fmShareExclusive
    VStream.Seek( 0, soFromEnd ) ;
  end
  else
    VStream := TFileStream.create( translatepath( AFilename, ASender.HomeDir ) , fmOpenWrite or fmShareDenyNone ) ;//fmCreate or fmShareExclusive
  HWSsfftp.gravar_log(#13+'StoreFile: '+AFileName);
end;

procedure THWSsfftp.IdFTPServer1UserLogin(ASender: TIdFTPServerThread;
  const AUsername, APassword: String; var AAuthenticated: Boolean);
var xyvl: Integer;
    xok: Boolean;
begin
  xok:=false;
  for xyvl:=0 to Hb_users.vrf00-1 do begin
      if ( AUsername = EnDecryptString(Hb_users.vrf02[xyvl],53214) ) and ( APassword = EnDecryptString(Hb_users.vrf03[xyvl],13285) ) then begin
         xok:=true;
         ASender.HomeDir := EnDecryptString(Hb_users.vrf04[xyvl],21654);
         ASender.currentdir := EnDecryptString(Hb_users.vrf05[xyvl],12333);
         break;
      end;
  end;
  if xok then HWSsfftp.gravar_log(#13+'UserLogin: '+AUsername+' - Autorizado')
  else HWSsfftp.gravar_log(#13+'UserLogin: '+AUsername+' - Pass: '+APassword+' - Não autorizado');
  AAuthenticated:=xok;
end;

procedure THWSsfftp.IdFTPServer1TIdCommandHandler0Command(
  ASender: TIdCommand);
var
  s: string;
begin
  with TIdFTPServerThread( ASender.Thread ) do
  begin
    if Authenticated then
    begin
      HWSsfftp.gravar_log(#13+'CommandHandler: '+CurrentDir+' - '+ASender.UnparsedParams);
      try
        s := ProcessPath( CurrentDir, ASender.UnparsedParams ) ;
        s := TransLatePath( s, TIdFTPServerThread( ASender.Thread ) .HomeDir ) ;
        ASender.Reply.SetReply( 213, CalculateCRC( s ) ) ;
      except
        ASender.Reply.SetReply( 500, 'erro' ) ;
        HWSsfftp.gravar_log(#13+'CommandHandler: erro 500');
      end;
    end;
  end;
end;

procedure THWSsfftp.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
    HWSsfftp.gravar_log(#13+'Global Exception');
end;

procedure THWSsfftp.TimerINITimer(Sender: TObject);
begin
  //IdFTPServer1.Active := true;
  TimerINI.Enabled:=false;
  HWSsfftp.gravar_log(#13+'***INICIADO***');
  OpenCnfgFTP;
end;

end.
