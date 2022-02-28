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
  THWSsffileServer = class(TService)
    ApplicationEvents1: TApplicationEvents;
    TimerINI: TTimer;
    HWSconnection: TSQLConnection;
    executabinTB: TSQLDataSet;
    SQLqueryTB: TSQLDataSet;
    SQLqueryEX: TDataSetProvider;
    executabinEX: TDataSetProvider;
    executabin: TClientDataSet;
    SQLquery: TClientDataSet;
    TimerZipFiles: TTimer;
    SQLquery2TB: TSQLDataSet;
    SQLqueryEX2: TDataSetProvider;
    SQLquery2: TClientDataSet;
    procedure TimerINITimer(Sender: TObject);
    procedure TimerZipFilesTimer(Sender: TObject);
  private
    { Private declarations }
    inexec: Boolean;
    xfilename: Txfilename;
    procedure gravar_log(xmensa:String);
  public
    { Public declarations }
    function GetServiceController: TServiceController; override;
  end;

var
  HWSsffileServer: THWSsffileServer;

implementation

uses hwsfunctions, DateUtils, U_Cipher;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
     HWSsffileServer.Controller(CtrlCode);
end;

function THWSsffileServer.GetServiceController: TServiceController;
begin
     Result := ServiceController;
end;

procedure THWSsffileServer.gravar_log(xmensa:String);
var F: TextFile;
    xtime: string;
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

procedure THWSsffileServer.TimerINITimer(Sender: TObject);
begin
      TimerINI.Enabled:=false;
      inexec:=false;
      HWSsffileServer.gravar_log(#13+'***INICIADO***');
end;

procedure THWSsffileServer.TimerZipFilesTimer(Sender: TObject);
var xerrorID,linecmd: String;
    galzip: Boolean;
    name_fileszip: TStringList;
    filter_galzip, fileorigem, filedest, xfnepthOrg, xfnepthNov, xfnepthZIP, xfilenbZip, xfilenbLst: String;
    xcodgal,id_filezip: Integer;

    procedure Executa(Comando: string);
    var SI: TStartupInfo;
        PI: TProcessInformation;
    begin
        FillChar(SI, SizeOf(SI), 0);
        SI.cb := SizeOf(StartupInfo);
        SI.dwFlags := STARTF_USESHOWWINDOW;
        SI.wShowWindow := SW_HIDE;
        if CreateProcess(nil, PChar(Comando), nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil, SI, PI) then
           WaitForSingleObject(PI.hProcess, INFINITE);
    end;
begin
      if inexec then exit;
      inexec:=true;
      galzip:=false;
      try
          if not HWSconnection.Connected then
             HWSconnection.Open;
      except
         HWSsffileServer.gravar_log(#13+'Erro ao abrir Bases');
         inexec:=false;
         exit;
      end;
      xerrorID:='N1';
      try
             if SQLquery.Active then SQLquery.Close;
             SQLquery.CommandText:= 'SELECT codigo,cod_web,cod_gal FROM m0_fky956 '+
                                    'WHERE cpup='+#39+'0'+#39+
                                    ' ORDER BY cppr,codigo';
             SQLquery.Open;
             galzip:=(SQLquery.RecordCount>0);
      except
         HWSsffileServer.gravar_log(#13+'Erro ao executar SQL [buscar registros]/'+xerrorID);
      end;
      if (not galzip) then begin
          try if SQLquery.Active then SQLquery.Close; except end;
          inexec:=false;
          exit;
      end;
      xerrorID:='N2';
      name_fileszip:= TStringList.Create;
      name_fileszip.Clear;
      xfnepthOrg:= 'e:/whws/hwshost.com.br/mns95SeIo/';
			xfnepthNov:= 'e:/tmp/sys/';
      xfnepthZIP:= 'e:/whws/hwshost.com.br/mns95SeIo/zpfl/';
      xfilenbZip:='';
      xfilenbLst:= xfnepthNov+'prc.lst';
      filter_galzip:='';
      xcodgal:=0;
      try
         SQLquery.First;
         While not SQLquery.Eof do begin
             name_fileszip.Clear;
             if SQLquery2.Active then SQLquery2.Close;
             filter_galzip:='cod_gal='+#39+SQLquery.fieldbyname('cod_gal').AsString+#39;
             SQLquery2.CommandText:= 'SELECT codigo,cod_gal,cod_img,descricao,textft,nfl,ext,sz,prt,xpp,xpk FROM m0_fky952'+
                                    ' WHERE '+filter_galzip+
                                    ' ORDER BY cod_gal,cod_img';
             SQLquery2.Open;
             if not SQLquery2.Locate('xpk','1',[]) and not SQLquery2.Locate('xpk','2',[]) then begin
                SQLquery2.First;
                xcodgal:= SQLquery2.fieldbyname('cod_gal').AsInteger;
                //HWSsffileServer.gravar_log(#13+'Montando/'+IntToStr(xcodgal));
                While not SQLquery2.Eof do begin
                     fileorigem:=xfnepthOrg+UpperCase(MD5Hash('m0_fky953_img_larg_cod_img_'+SQLquery2.fieldbyname('cod_img').AsString))+'.hws';
                     filedest:=xfnepthNov+SQLquery2.fieldbyname('nfl').AsString+SQLquery2.fieldbyname('ext').AsString;
                     //HWSsffileServer.gravar_log(#13+'de ['+fileorigem+'] para ['+filedest+']');
                     CopyFile(PChar(fileorigem),PChar(filedest),true);
                     name_fileszip.Add(filedest);
                     SQLquery2.Next;
                end;
                xfilenbZip:=xfnepthZIP+UpperCase(MD5Hash('m0_fky953_img_larg_cod_gal_'+IntToStr(xcodgal)+'_zip'))+'.hws';
                if FileExists(xfilenbZip) then DeleteFile(xfilenbZip);
                if FileExists(xfilenbLst) then DeleteFile(xfilenbLst);
                name_fileszip.SaveToFile(xfilenbLst);

                linecmd:= 'C:\Program Files\WinRAR\Rar.exe A -ac -ep '+xfilenbZip+' @'+xfilenbLst;
                try
                    Executa(PChar(linecmd));
                    galzip:=true;
                except
                    galzip:=false;
                end;
                if (galzip) then begin
                    try
                       With executabin do begin
                            //codigo,cod_web,cod_gal,cpup,cpdt,cppr
                            CommandText:= 'UPDATE m0_fky956 SET cpup=:p0,cpdt='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                                          ' WHERE codigo=:cp1';
                            Params[0].AsInteger:=1;
                            Params[1].AsInteger:=SQLquery.fieldbyname('codigo').AsInteger;
                            Execute;
                            HWSsffileServer.gravar_log(#13+'Arquivo Atualizado ['+xfilenbZip+']/'+xerrorID);
                       end;
                    except
                       HWSsffileServer.gravar_log(#13+'Erro ao atualizar ZIP/'+xerrorID);
                    end;
                end;
                if FileExists(xfilenbLst) then DeleteFile(xfilenbLst);
                for id_filezip:=0 to (name_fileszip.Count-1) do begin
                    if FileExists(name_fileszip.Strings[id_filezip]) then DeleteFile(name_fileszip.Strings[id_filezip]);
                end;
             end;
             SQLquery.Next;
         end;
         if SQLquery.Active then SQLquery.Close;
         if SQLquery2.Active then SQLquery2.Close;
      except
         HWSsffileServer.gravar_log(#13+'Erro ao executar SQL [buscar registros]/'+xerrorID);
      end;
      try
         name_fileszip.Free;
      except
      end;
      inexec:=false;
end;

end.
