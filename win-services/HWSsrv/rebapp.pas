unit rebapp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  rebappTh, ExtCtrls, Forms, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, DB, AppEvnts, FMTBcd, DBXpress, SqlExpr, DBClient,
  Provider;

type
  Txfilename = Record
      xopen: Boolean;
      xfile: String;
  End;
  THWSsfsrv = class(TService)
    Timermn: TTimer;
    TimerUSRonline: TTimer;
    TimerConf: TTimer;
    ApplicationEvents1: TApplicationEvents;
    TimerINI: TTimer;
    HWSconnection: TSQLConnection;
    TimerUSRsac: TTimer;
    executabinTB: TSQLDataSet;
    SQLqueryTB: TSQLDataSet;
    SQLquery2TB: TSQLDataSet;
    SQLqueryEX: TDataSetProvider;
    SQLqueryEX2: TDataSetProvider;
    executabinEX: TDataSetProvider;
    executabin: TClientDataSet;
    SQLquery: TClientDataSet;
    SQLquery2: TClientDataSet;
    executabin2TB: TSQLDataSet;
    executabin2EX: TDataSetProvider;
    executabin2: TClientDataSet;
    executabin3TB: TSQLDataSet;
    executabin3EX: TDataSetProvider;
    executabin3: TClientDataSet;
    TimerUSRAtendimt: TTimer;
    executabin4TB: TSQLDataSet;
    executabin4EX: TDataSetProvider;
    executabin4: TClientDataSet;
    procedure TimermnTimer(Sender: TObject);
    procedure TimerConfTimer(Sender: TObject);
    procedure TimerINITimer(Sender: TObject);
    procedure TimerUSRsacTimer(Sender: TObject);
    procedure TimerUSRonlineTimer(Sender: TObject);
    procedure TimerUSRAtendimtTimer(Sender: TObject);
  private
    { Private declarations }
    inRebootExec: Boolean;
    inRebootExecTimer,inAutoRebootExec: Integer;
    MS: TMemoryStatus;
    xfilename: Txfilename;
    fServicePri: Integer;
    fThreadPri: Integer;
    procedure MonitorRAM;
    procedure gravar_log(xmensa:String);
    function WindowsExit(RebootParam: Longword): Boolean;
    function GetCPUSpeed: Double;
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  HWSsfsrv: THWSsfsrv;

implementation

uses hwsfunctions, DateUtils;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
     HWSsfsrv.Controller(CtrlCode);
end;

function THWSsfsrv.GetServiceController: TServiceController;
begin
     Result := ServiceController;
end;

procedure THWSsfsrv.gravar_log(xmensa:String);
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

function THWSsfsrv.WindowsExit(RebootParam: Longword): Boolean;
var
     TTokenHd: THandle;
     TTokenPvg: TTokenPrivileges;
     cbtpPrevious: DWORD;
     rTTokenPvg: TTokenPrivileges;
     pcbtpPreviousRequired: DWORD;
     tpResult: Boolean;
const
     SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin
     if Win32Platform = VER_PLATFORM_WIN32_NT then
     begin
       tpResult := OpenProcessToken(GetCurrentProcess(),
       TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
       TTokenHd) ;
       if tpResult then
       begin
         tpResult := LookupPrivilegeValue(nil,
                                          SE_SHUTDOWN_NAME,
                                          TTokenPvg.Privileges[0].Luid) ;
         TTokenPvg.PrivilegeCount := 1;
         TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
         cbtpPrevious := SizeOf(rTTokenPvg) ;
         pcbtpPreviousRequired := 0;
         if tpResult then
           Windows.AdjustTokenPrivileges(TTokenHd,
                                         False,
                                         TTokenPvg,
                                         cbtpPrevious,
                                         rTTokenPvg,
                                         pcbtpPreviousRequired) ;
       end;
     end;
     Result := ExitWindowsEx(RebootParam, 0) ;
end;

function THWSsfsrv.GetCPUSpeed: Double;
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

procedure THWSsfsrv.TimermnTimer(Sender: TObject);
begin
      HWSsfsrv.MonitorRAM;
end;

procedure THWSsfsrv.MonitorRAM;
var PhysMem,AvalRes,FreeRes,cpuspeed: String;
    xmemfree: Integer;
    xcpufree: Double;
    xresulthttp: String;
begin
      GlobalMemoryStatus(MS);
      xmemfree:=MS.dwMemoryLoad;
      if ((xmemfree >= 75) or (not xfilename.xopen) or (inRebootExec)) then begin
         PhysMem := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
         AvalRes := FormatFloat('#,###" KB"', MS.dwAvailPhys / 1024);
         FreeRes := Format('%d %%', [xmemfree]);
         xcpufree:=GetCPUSpeed;
         cpuspeed:=Format('%f MHz', [xcpufree]);
      end;
      if (inRebootExec) then begin
          Inc(inRebootExecTimer);
          if (inRebootExecTimer>=100) then begin
              inRebootExec:=false;
              inAutoRebootExec:=0;
              HWSsfsrv.gravar_log(#13+'**********SISTEMA INICIADO**********'+#13+
                          'id: '+IntToStr(inRebootExecTimer)+#13+
                          'Memória Avaliada: '+PhysMem+#13+
                          'Memória Livre: '+AvalRes+#13+
                          'Total: '+FreeRes+#13+
                          'CPU: '+cpuspeed);
          end;
      end;
      if (not xfilename.xopen) then begin
         inRebootExec:=true;
         inRebootExecTimer:=0;
         inAutoRebootExec:=0;
         HWSsfsrv.gravar_log(#13+'**********INICIALIZANDO SERVIDOR**********'+#13+
                          'Memória Avaliada: '+PhysMem+#13+
                          'Memória Livre: '+AvalRes+#13+
                          'Total: '+FreeRes+#13+
                          'CPU: '+cpuspeed);
      end else if ((xmemfree >= 90) and (xmemfree < 98)) then begin
         HWSsfsrv.gravar_log(#13+'**********ALERTA MEMÓRIA**********'+#13+
                          'Memória Avaliada: '+PhysMem+#13+
                          'Memória Livre: '+AvalRes+#13+
                          'Total: '+FreeRes+#13+
                          'CPU: '+cpuspeed);
      end else if (xmemfree >= 98) then begin
         Inc(inAutoRebootExec);
         HWSsfsrv.gravar_log(#13+'**********ALERTA MEMÓRIA NÍVEL CRÍTICO ['+IntToStr(inAutoRebootExec)+']**********'+#13+
                                 'Reinicialização automática do servidor'+#13+
                                 'Memória Avaliada: '+PhysMem+#13+
                                 'Memória Livre: '+AvalRes+#13+
                                 'Total: '+FreeRes+#13+
                                 'CPU: '+cpuspeed);
         {if (inAutoRebootExec>=10) then begin
             if (not inRebootExec) then begin
                HWSsfsrv.gravar_log(#13+'**********REINICIALIZANDO SERVIDOR MEMÓRIA**********'+#13);
                inRebootExec:=true;
                inAutoRebootExec:=0;
                sleep(1000);
                WindowsExit(EWX_REBOOT or EWX_FORCE);
             end;
         end;}
      end else begin
         inAutoRebootExec:=0;
      end;
end;

procedure THWSsfsrv.TimerConfTimer(Sender: TObject);
var axtime: TDateTime;
    axstrTime,xerrorID,xtypefin: String;
    axdateID: TDateTime;
    xincError: Integer;
begin
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao abrir Bases');
         exit;
      end;
      try
             {
             cp1- Bool imediata/agendada
             cp2- Data ativação
             cp3- Bool Fechar seção tempo
             cp4- Tempo limite
             cp5- Bool Fechar ao sair
             xstat- (0 - Nulo, 1-Ativo, 2-Agendado, 3-Finalizado)
             }
             //ativa conf agendadas
             xincError:=0;
             xerrorID:='N1';
             axdateID:=Now;
             axtime:= axdateID + StrToTime('00:01:00');
             axstrTime:='<'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             if SQLquery.Active then SQLquery.Close;
             SQLquery.CommandText:= 'SELECT codigo,cod_web FROM m7_fky298 '+
                                         'WHERE (xstat=2) '+
                                         ' AND (cp2'+axstrTime+')'+
                                         ' ORDER BY codigo';
             SQLquery.Open;
             xerrorID:='N2';
             if (SQLquery.RecordCount>0) then begin
                SQLquery.First;
                While not SQLquery.Eof do begin
                    Inc(xincError);
                    With executabin do begin
                          CommandText:= 'UPDATE m7_fky298 SET xstat=:p0 '+
                                        'WHERE codigo=:p1';
                          Params[0].AsInteger:=1;
                          Params[1].AsInteger:=SQLquery.fieldbyname('codigo').AsInteger;
                          Execute;
                    end;
                    HWSsfsrv.gravar_log(#13+'HWSsac - Conferência Agendada ativada ['+SQLquery.fieldbyname('cod_web').AsString+'/'+SQLquery.fieldbyname('codigo').AsString+']');
                    SQLquery.Next;
                end;
             end;
             xerrorID:='N3';
             SQLquery.Close;
             //auto fecha conf open
             axdateID:=Now;
             axtime:= axdateID - StrToTime('01:00:00');
             axstrTime:=#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             //,A.cp1,A.cp2,A.cp3,A.cp4,A.cp5,A.xstat,B.cod_cnf,B.cp10
             SQLquery.CommandText:= 'SELECT codigo,cod_web FROM m7_fky298'+
                                         ' WHERE (xstat=1) AND (cp3=-1 OR cp5=-1)'+
                                         ' AND cp2<'+axstrTime+
                                         ' ORDER BY codigo';
             SQLquery.Open;
             xerrorID:='N4';
             if (SQLquery.RecordCount>0) then begin
                While not SQLquery.Eof do begin
                    Inc(xincError);
                    if SQLquery2.Active then SQLquery2.Close;
                    SQLquery2.CommandText:= 'SELECT codigo,cod_cnf FROM m7_fky299'+
                                              ' WHERE cod_cnf='+#39+SQLquery.fieldbyname('codigo').AsString+#39+
                                              ' AND cp10>'+axstrTime;
                    SQLquery2.Open;
                    xerrorID:='N5';
                    if (SQLquery2.RecordCount=0) then begin
                      With executabin do begin
                          CommandText:= 'UPDATE m7_fky298 SET xstat=:p0,'+
                                        ' cp18='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                        ' WHERE codigo=:p1';
                          Params[0].AsInteger:=3;
                          Params[1].AsInteger:=SQLquery.fieldbyname('codigo').AsInteger;
                          Execute;
                          xerrorID:='N6';
                      end;
                      HWSsfsrv.gravar_log(#13+'HWSsac - Conferência Finaliza ['+SQLquery.fieldbyname('cod_web').AsString+'/'+SQLquery.fieldbyname('codigo').AsString+']');
                    end;
                    if SQLquery2.Active then SQLquery2.Close;
                    SQLquery.Next;
                end;
             end;
             xerrorID:='N6';
             SQLquery.Close;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao executar SQL [atualiza conf]/'+xerrorID+'/'+IntToStr(xincError));
         exit;
      end;
end;

procedure THWSsfsrv.TimerINITimer(Sender: TObject);
begin
      TimerINI.Enabled:=false;
      HWSsfsrv.gravar_log(#13+'***INICIADO***');
      //HWSsfsrv.gravar_log(#13+'***Erro de Sistema*** ['+E.Message+']');
end;

procedure THWSsfsrv.TimerUSRsacTimer(Sender: TObject);
var axtime: TDateTime;
    axstrTime,axstrTimeStamp,xerrorID: String;
    axdateID: TDateTime;
    xexecutereapir78: Boolean;
    xexecutereapir78tx: String;
begin
      xexecutereapir78:=false;
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao abrir Bases');
         exit;
      end;
      xerrorID:='N1';
      try
          With executabin2 do begin
             axdateID:=Now;
             axtime:= axdateID - StrToTime('00:03:00');
             axstrTime:='<'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             CommandText:= 'UPDATE m7_fky94 SET cp37=:p0 '+
                           'WHERE cp38'+axstrTime+' or cp38 is null';
             Params[0].AsInteger:=3;
             Execute;
             xerrorID:='N2';
             CommandText:= 'DELETE FROM m7_fky78 Where cp2'+axstrTime;
             Execute;
             xerrorID:='N3';
             CommandText:= 'DELETE FROM m7_fky178 Where cp2'+axstrTime;
             Execute;
             xerrorID:='N4';
          end;
      except
          HWSsfsrv.gravar_log(#13+'Erro ao executar SQL [atualiza users sac online]/'+xerrorID);
          xexecutereapir78:=true;
      end;
      if (xexecutereapir78) then begin
          try
             With executabin2 do begin
                 if (xerrorID = 'N2') then xexecutereapir78tx:='m7_fky78'
                 else xexecutereapir78tx:='m7_fky178';
                 CommandText:= 'TRUNCATE TABLE '+xexecutereapir78tx;
                 Execute;
             end;
          except
             HWSsfsrv.gravar_log(#13+'Erro ao reparar tabelas [atualiza users sac online]/'+xerrorID);
          end;
      end;
end;

procedure THWSsfsrv.TimerUSRonlineTimer(Sender: TObject);
var axtime: TDateTime;
    axstrTime,axstrTimeStamp,xerrorID: String;
    axdateID: TDateTime;
    xexecutereapir72: Boolean;
    xexecutereapir72tx: String;
begin
      xexecutereapir72:=false;
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao abrir Bases');
         exit;
      end;
      xerrorID:='N1';

      try
          With executabin3 do begin
             axdateID:=Now;
             axtime:= axdateID - StrToTime('01:00:00');
             axstrTime:='<'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             CommandText:= 'UPDATE m0_fky94 SET cp37=:p0 '+
                           'WHERE cp38'+axstrTime+' or cp38 is null AND xtp<='+#39+'305'+#39;
             Params[0].AsInteger:=3;
             Execute;
             xerrorID:='N2';
             CommandText:= 'DELETE FROM m0_fky78 Where cp2'+axstrTime;
             Execute;
             xerrorID:='N3';
             CommandText:= 'DELETE FROM m0_fky72 Where cp2'+axstrTime;
             Execute;
             xerrorID:='N4';
          end;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao executar SQL [atualiza users web online]/'+xerrorID);
         xexecutereapir72:=true;
      end;
      if (xexecutereapir72) then begin
          try
             With executabin3 do begin
                 if (xerrorID = 'N2') then xexecutereapir72tx:='m0_fky78'
                 else xexecutereapir72tx:='m0_fky72';
                 CommandText:= 'TRUNCATE TABLE '+xexecutereapir72tx;
                 Execute;
             end;
          except
             HWSsfsrv.gravar_log(#13+'Erro ao reparar tabelas [atualiza users sac online]/'+xerrorID);
          end;
      end;
end;

procedure THWSsfsrv.TimerUSRAtendimtTimer(Sender: TObject);
var axtime: TDateTime;
    axstrTime,axstrTimeStamp,xerrorID: String;
    axdateID: TDateTime;
begin
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao abrir Bases');
         exit;
      end;
      xerrorID:='N1';
      try
          With executabin4 do begin
             axdateID:=Now;
             axtime:= axdateID - StrToTime('00:00:20');
             axstrTime:='<'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axtime)+#39;
             CommandText:= 'UPDATE m0_fky94 SET cp37=:p0 '+
                           'WHERE cp38'+axstrTime+' or cp38 is null AND xtp>'+#39+'305'+#39;
             Params[0].AsInteger:=3;
             Execute;
             xerrorID:='N2';
          end;
      except
         HWSsfsrv.gravar_log(#13+'Erro ao executar SQL [atualiza users Atendimento online]/'+xerrorID);
         exit;
      end;

end;

end.
