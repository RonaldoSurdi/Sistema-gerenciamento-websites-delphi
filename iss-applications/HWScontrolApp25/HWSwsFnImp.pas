unit HWSwsFnImp;

interface

uses InvokeRegistry, Windows, SysUtils, HWSwsFnSrv, DB, Classes, SqlExpr, Types,
     zlib, http, XSBuiltIns, IdMessage;
                   
type
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

  THWSwsFnApp = class(TInvokableClass, IHWSwsFnApp)
  private
    AxDadosUsr: TAxDadosUsr;
  protected
    function HWSdbAppUPbinPH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean; stdcall;
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
    function HWSdbAppUPbin4PH(const xcptp,xcpcod,xcpdt: string; const FileData: TByteDynArray): Boolean; stdcall;
  public
  end;

implementation

uses WebBrokerSoap, Graphics, Clipbrd, Messages, hwsfunctions, ADODB, U_Cipher,
  Math, DateUtils; //RichEdit

{ THWSwsFnApp }

function THWSwsFnApp.HWSdbAppUPbinPH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean;
var InStream, DeCompressedStream,DeCompressedStream2 : TMemoryStream;
    axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile1,xnomefile2,xpthfiles,xpthfilesMV,nmcpcod:string;
begin
  with (GetSoapWebModule as THWSappdbBin) do begin
     InStream := TMemoryStream.Create;
     DeCompressedStream := TMemoryStream.Create;
     DeCompressedStream2 := TMemoryStream.Create;
     axcdweb:=EnDecryptString(xcdweb,14285);
     axtablename:=EnDecryptString(xtablename,14285);
     axcptp:=EnDecryptString(xcptp,14285);
     axcpcod:=EnDecryptString(xcpcod,14285);
     axcpcod2:=EnDecryptString(xcpcod2,14285);
     axcpdt:=EnDecryptString(xcpdt,14285);
     axcpdt2:=EnDecryptString(xcpdt2,14285);
     axcpcod_value:=EnDecryptString(xcpcod_value,14285);
     xnomefile1:='';
     xnomefile2:='';
     if (axcdweb = 'sys') then begin
        xpthfiles:='e:/whws/hwshost.com.br/mns90SeIo/';
        xpthfilesMV:='e:/whws/hwshost.com.br/rv/mns90SeIoX/';
     end else begin
        xpthfiles:='e:/whws/hwshost.com.br/mns94SeIo/'+axcdweb+'/';
        xpthfilesMV:='e:/whws/hwshost.com.br/rv/mns94SeIoX/'+axcdweb+'/';
     end;
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);
     if (not DirectoryExists(xpthfilesMV)) then
        CreateDir(xpthfilesMV);
     if (axcpcod2<>'') then
         nmcpcod:= axcpcod2
     else nmcpcod:= axcpcod;
     try
          //icon
          InStream.Clear;
          InStream.Position:=0;
          CopyToStream(FileData,InStream);
          InStream.Position:=0;
          ExpandStream(InStream,DecompressedStream);
          DecompressedStream.Position:=0;
          xnomefile1:=MD5Hash(axtablename+'_'+axcpdt+'_'+nmcpcod+'_'+axcpcod_value)+'.hws';
          //ampliação
          if axcpdt2<>'' then begin
             InStream.Clear;
             InStream.Position:=0;
             CopyToStream(FileData2,InStream);
             InStream.Position:=0;
             ExpandStream(InStream,DecompressedStream2);
             DecompressedStream2.Position:=0;
             xnomefile2:=MD5Hash(axtablename+'_'+axcpdt2+'_'+nmcpcod+'_'+axcpcod_value)+'.hws';
          end;
     finally
          InStream.Free;
     end;
     {if ftpHWS.Connected then
        ftpHWS.Disconnect;
     ftpHWS.Connect();
     if ftpHWS.Connected then begin}
         DecompressedStream.Position:=0;
         try
           //ftpHWS.Delete(xpthfiles+xnomefile1);
           if FileExists(xpthfiles+xnomefile1) then
              MoveFile(Pchar(xpthfiles+xnomefile1),Pchar(xpthfilesMV+xnomefile1));
              //DeleteFile(xpthfiles+xnomefile1);
         except
           Result:=false;
         end;
         try
           //ftpHWS.Put(DecompressedStream,xpthfiles+xnomefile1,true);
           DecompressedStream.SaveToFile(xpthfiles+xnomefile1);
         except
           Result:=false;
         end;
         if axcpdt2<>'' then begin
           DecompressedStream2.Position:=0;
           try
             if FileExists(xpthfiles+xnomefile2) then
                MoveFile(Pchar(xpthfiles+xnomefile2),Pchar(xpthfilesMV+xnomefile2));
                //DeleteFile(xpthfiles+xnomefile2);
             //ftpHWS.Delete(xpthfiles+xnomefile2);
           except
              Result:=false;
           end;
           try
             //ftpHWS.Put(DecompressedStream2,xpthfiles+xnomefile2,true);
             DecompressedStream2.SaveToFile(xpthfiles+xnomefile2);
           except
              Result:=false;
           end;
         end;
         {ftpHWS.Disconnect;
     end else begin
         Result:=false;
     end;}
     DecompressedStream.Free;
     DeCompressedStream2.Free;
     Result:=true;
  end;
end;

function THWSwsFnApp.HWSdbAppDOWNbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray;
var MStream,OutStream: TMemoryStream;
    axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile1,xpthfiles:string;
    xboolfile:Boolean;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     MSTream := TMemoryStream.Create;
     axcdweb:=EnDecryptString(xcdweb,14285);
     axtablename:=EnDecryptString(xtablename,14285);
     axcpcod:=EnDecryptString(xcpcod,14285);
     axcpdt:=EnDecryptString(xcpdt,14285);
     axcpcod_value:=EnDecryptString(xcpcod_value,14285);
     xnomefile1:='';
      if (axcdweb = 'sys') then begin
        xpthfiles:='e:/whws/hwshost.com.br/mns90SeIo/';
     end else begin
        xpthfiles:='e:/whws/hwshost.com.br/mns94SeIo/'+axcdweb+'/';
     end;
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);
     {if ftpHWS.Connected then
        ftpHWS.Disconnect;
     ftpHWS.Connect();
     if ftpHWS.Connected then begin}
         xnomefile1:=xpthfiles+MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
         MStream.Position:=0;
         MStream.Clear;
         MStream.Position:=0;
         xboolfile := true;
         try
            if FileExists(xnomefile1) then
               MStream.LoadFromFile(xnomefile1);
            //ftpHWS.Get(xnomefile1,MStream,xboolfile);
         except
            MStream.Clear;
         end;
         {ftpHWS.Disconnect;
     end else begin
         MStream.Clear;
     end;}
     MStream.Position:=0;
     if MStream.Size>0 then begin
        OutStream := TMemoryStream.Create;
        try
            MStream.Position:=0;
            OutStream.Clear;
            OutStream.Position:= 0;
            CompressStream(MStream, OutStream);
            OutStream.Position:=0;
            Result := ByteArrayFromStream(OutStream);
        finally
            OutStream.Free;
            MStream.Free;
        end;
     end else begin
        Result := nil;
        MSTream.Free;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppDOWNbinSZ(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): Integer;
var MStream: TMemoryStream;
    axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile1,xnomefile2,xpthfilesIn,xpthfiles:string;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     MSTream := TMemoryStream.Create;
     axcdweb:=EnDecryptString(xcdweb,14285);
     axtablename:=EnDecryptString(xtablename,14285);
     axcpcod:=EnDecryptString(xcpcod,14285);
     axcpdt:=EnDecryptString(xcpdt,14285);
     axcpcod_value:=EnDecryptString(xcpcod_value,14285);
     xnomefile1:='';
     if (axcdweb = 'sys') then begin
        xpthfilesIn:='e:/whws/hwshost.com.br/mns90SeIo/';
        xpthfiles:=xpthfilesIn;
     end else begin
        xpthfilesIn:='e:/whws/hwshost.com.br/mns94SeIo/';
        xpthfiles:=xpthfilesIn+axcdweb+'/';
     end;
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);
     xnomefile1:=xpthfiles+MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
     xnomefile2:=xpthfilesIn+MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
     MStream.Position:=0;
     MStream.Clear;
     MStream.Position:=0;
     try
        if FileExists(xnomefile1) then begin
           MStream.LoadFromFile(xnomefile1);
           if FileExists(xnomefile2) then
              DeleteFile(Pchar(xnomefile2));
        end else if FileExists(xnomefile2) then begin
            //MoveFile(Pchar(xnomefile2),Pchar(xnomefile1));
            CopyFile(Pchar(xnomefile2),Pchar(xnomefile1),true);
            DeleteFile(Pchar(xnomefile2));
            MStream.LoadFromFile(xnomefile1);
        end;
     except
        MStream.Clear;
     end;
     try
        MStream.Position:=0;
        Result:=MStream.Size;
     finally
        MStream.Free;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppREQbinPH(const xcdweb,xtablename,xcpcod,xcpdt,xcpdt2,xcpcod_value: string): Boolean;
var axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile1,xnomefile2,xpthfiles,xpthfilesMV:string;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
         try
             axcdweb:=EnDecryptString(xcdweb,14285);
             axtablename:=EnDecryptString(xtablename,14285);
             axcpcod:=EnDecryptString(xcpcod,14285);
             axcpdt:=EnDecryptString(xcpdt,14285);
             axcpdt2:=EnDecryptString(xcpdt2,14285);
             axcpcod_value:=EnDecryptString(xcpcod_value,14285);
         except
             Result:=false;
             exit;
         end;
         xnomefile1:='';
         xnomefile2:='';
         if (axcdweb = 'sys') then begin
            xpthfiles:='e:/whws/hwshost.com.br/mns90SeIo/';
            xpthfilesMV:='e:/whws/hwshost.com.br/rv/mns90SeIoX/';
         end else begin
            xpthfiles:='e:/whws/hwshost.com.br/mns94SeIo/'+axcdweb+'/';
            xpthfilesMV:='e:/whws/hwshost.com.br/rv/mns94SeIoX/'+axcdweb+'/';
         end;
         if (not DirectoryExists(xpthfiles)) then
            CreateDir(xpthfiles);
         if (not DirectoryExists(xpthfilesMV)) then
            CreateDir(xpthfilesMV);
         {if ftpHWS.Connected then
            ftpHWS.Disconnect;
         ftpHWS.Connect();
         if ftpHWS.Connected then begin}
         xnomefile1:=MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
         try
            //ftpHWS.Delete(xnomefile1);
            if FileExists(xpthfiles+xnomefile1) then
               MoveFile(Pchar(xpthfiles+xnomefile1),Pchar(xpthfilesMV+xnomefile1));
               //DeleteFile(xnomefile1);
         except
            Result:=false;
         end;
         if (axcpdt2<>'') then begin
            xnomefile1:=MD5Hash(axtablename+'_'+axcpdt2+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
            try
              //ftpHWS.Delete(xnomefile1);
              if FileExists(xpthfiles+xnomefile1) then
                 MoveFile(Pchar(xpthfiles+xnomefile1),Pchar(xpthfilesMV+xnomefile1));
                 //DeleteFile(xnomefile1);
              Result:=true;
            except
              Result:=false;
            end;
         end;
         {ftpHWS.Disconnect;
         Result:=true;
     end else begin
         Result:=false;
     end;}
   end;
end;

function THWSwsFnApp.HWSdbAppUPbin(const xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value: string; const FileData,FileData2: TByteDynArray): Boolean;
var InStream, DeCompressedStream,DeCompressedStream2 : TMemoryStream;
    xcodimg,xnprm: Integer;
    axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpsz,axcpsz2,axcpcod_value,
    axCommandText: string;
begin
  with (GetSoapWebModule as THWSappdbBin) do begin
     InStream := TMemoryStream.Create;
     DeCompressedStream := TMemoryStream.Create;
     DeCompressedStream2 := TMemoryStream.Create;
     axtablename:=EnDecryptString(xtablename,14285);
     axcptp:=EnDecryptString(xcptp,14285);
     axcpcod:=EnDecryptString(xcpcod,14285);
     axcpcod2:=EnDecryptString(xcpcod2,14285);
     axcpdt:=EnDecryptString(xcpdt,14285);
     axcpdt2:=EnDecryptString(xcpdt2,14285);
     axcpsz:=EnDecryptString(xcpsz,14285);
     axcpsz2:=EnDecryptString(xcpsz2,14285);
     axcpcod_value:=EnDecryptString(xcpcod_value,14285);
     try
          //icon
          InStream.Clear;
          InStream.Position:=0;
          CopyToStream(FileData,InStream);
          InStream.Position:=0;
          ExpandStream(InStream,DecompressedStream);
          DecompressedStream.Position:=0;
          //ampliação
          if axcpdt2<>'' then begin
             InStream.Clear;
             InStream.Position:=0;
             CopyToStream(FileData2,InStream);
             InStream.Position:=0;
             ExpandStream(InStream,DecompressedStream2);
             DecompressedStream2.Position:=0;
          end;
     finally
          InStream.Free;
     end;
     with executabin do begin
          try
             CommandText:= '';
             if axcptp='INST' then begin
               CommandText:= 'SELECT MAX('+axcpcod+') FROM '+axtablename;
               Open;
               if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                  xcodimg:= Fields[0].AsInteger+1
               else xcodimg:= 1;
               Close;
               //CommandText
               axCommandText:= 'INSERT INTO '+axtablename+' ('+axcpcod+','+axcpdt;
               if axcpsz<>'' then
                  axCommandText:= axCommandText+','+axcpsz;
               if axcpdt2<>'' then
                  axCommandText:= axCommandText+','+axcpdt2;
               if axcpsz2<>'' then
                  axCommandText:= axCommandText+','+axcpsz2;
               if axcpcod2<>'' then
                  axCommandText:= axCommandText+','+axcpcod2;
               axCommandText:= axCommandText+') VALUES(:p0,:p1';
               xnprm:=2;
               if axcpsz<>'' then begin
                  axCommandText:= axCommandText+',:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               if axcpdt2<>'' then begin
                  axCommandText:= axCommandText+',:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               if axcpsz2<>'' then begin
                  axCommandText:= axCommandText+',:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               if axcpcod2<>'' then begin
                  axCommandText:= axCommandText+',:p'+IntToStr(xnprm);
               end;
               axCommandText:= axCommandText+')';
               CommandText:=axCommandText;
               //Params
               Params[0].AsInteger:=xcodimg;
               Params[1].LoadFromStream(DecompressedStream,ftBlob);
               xnprm:=2;
               if axcpsz<>'' then begin
                  DecompressedStream.Position:=0;
                  Params[xnprm].AsInteger:=DecompressedStream.Size;
                  Inc(xnprm);
               end;
               if axcpdt2<>'' then begin
                  Params[xnprm].LoadFromStream(DecompressedStream2,ftBlob);
                  Inc(xnprm);
               end;
               if axcpsz2<>'' then begin
                  DecompressedStream2.Position:=0;
                  Params[xnprm].AsInteger:=DecompressedStream2.Size;
                  Inc(xnprm);
               end;
               if axcpcod2<>'' then begin
                  Params[xnprm].AsInteger:=StrtoInt(axcpcod_value);
               end;
             end else if axcptp='UPDT' then begin
               //axCommandText
               axCommandText:= 'UPDATE '+axtablename+' SET '+axcpdt+'=:p0';
               xnprm:=1;
               if axcpsz<>'' then begin
                  axCommandText:= axCommandText+','+axcpsz+'=:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               if axcpdt2<>'' then begin
                  axCommandText:= axCommandText+','+axcpdt2+'=:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               if axcpsz2<>'' then begin
                  axCommandText:= axCommandText+','+axcpsz2+'=:p'+IntToStr(xnprm);
                  Inc(xnprm);
               end;
               axCommandText:= axCommandText+' WHERE '+axcpcod+'=:p'+IntToStr(xnprm);
               CommandText:=axCommandText;
               //Params
               Params[0].LoadFromStream(DecompressedStream,ftBlob);
               xnprm:=1;
               if axcpsz<>'' then begin
                  DecompressedStream.Position:=0;
                  Params[xnprm].AsInteger:=DecompressedStream.Size;
                  Inc(xnprm);
               end;
               if axcpdt2<>'' then begin
                  Params[xnprm].LoadFromStream(DecompressedStream2,ftBlob);
                  Inc(xnprm);
               end;
               if axcpsz2<>'' then begin
                  DecompressedStream2.Position:=0;
                  Params[xnprm].AsInteger:=DecompressedStream2.Size;
                  Inc(xnprm);
               end;
               Params[xnprm].AsInteger:=StrtoInt(axcpcod_value);
             end;
             ExecSQL;
          except
               DecompressedStream.Free;
               DeCompressedStream2.Free;
               Result:=false;
               exit;
          end;
     end;
     DecompressedStream.Free;
     DeCompressedStream2.Free;
     Result:=true;
  end;
end;

function THWSwsFnApp.HWSdbAppDOWNbin(const xtablename,xcpcod,xcpdt,xcpcod_value: string): TByteDynArray;
var MStream,OutStream : TMemoryStream;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     MSTream := TMemoryStream.Create;
     with executabin do begin
          try
              CommandText:= 'SELECT '+EnDecryptString(xcpdt,14285)+' FROM '+EnDecryptString(xtablename,14285)+
                            ' WHERE '+EnDecryptString(xcpcod,14285)+'='+#39+EnDecryptString(xcpcod_value,14285)+#39;
              Open;
              if not fields[0].IsNull then
                 TBlobField(Fields[0]).SaveToStream(MStream);
              Close;
          except
              Result := nil;
              MSTream.Free;
              Exit;
          end;
     end;
     MStream.Position:=0;
     if MStream.Size>0 then begin
        OutStream := TMemoryStream.Create;
        try
            MStream.Position:=0;
            OutStream.Clear;
            OutStream.Position:= 0;
            CompressStream(MStream, OutStream);
            OutStream.Position:=0;
            Result := ByteArrayFromStream(OutStream);
        finally
            OutStream.Free;
            MStream.Free;
        end;
     end else begin
        Result := nil;
        MSTream.Free;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppGETcp(const xtablename,xcpname,xcpwh: string): Integer;
var ax_cod: integer;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        with executabin do begin
             CommandText:= 'SELECT MAX('+EnDecryptString(xcpname,21535)+') FROM '+EnDecryptString(xtablename,21535);
             if EnDecryptString(xcpwh,21535)<>'' then
                CommandText:= CommandText+' '+EnDecryptString(xcpwh,21535);
             Open;
             if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                ax_cod:= Fields[0].AsInteger+1
             else ax_cod := 1;
             Close;
          end;
     Except
        ax_cod:=0;
     End;
     Result := ax_cod;
   end;
end;

function THWSwsFnApp.HWSdbAppXcp(const xtablename,xcpname,xcpvl: string): Boolean;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        with executabin do begin
             CommandText:= 'DELETE FROM '+EnDecryptString(xtablename,21535)+' WHERE '+EnDecryptString(xcpname,21535)+'='+#39+EnDecryptString(xcpvl,21535)+#39;
             ExecSQL;
         end;
         Result:=true;
     Except
         Result:=false;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppHtcp(const xtablename,xcpip,xcpvl,xcpmg: string): Boolean;
var ax_cod: integer;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        with executabin do begin
             CommandText:= 'SELECT MAX(codigo) FROM '+EnDecryptString(xtablename,21535);
             Open;
             if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                ax_cod:= Fields[0].AsInteger+1
             else ax_cod:= 1;
             Close;
             CommandText:= 'INSERT INTO '+EnDecryptString(xtablename,21535)+' (codigo,cod_usr,ip,obs,xconf,data_time) '+
             'VALUES(:p0,:p1,:p2,:p3,:p4,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
             Params[0].AsInteger:=ax_cod;
             Params[1].AsInteger:=StrtoInt(EnDecryptString(xcpvl,21535));
             Params[2].AsString:=EnDecryptString(xcpip,21535);
             Params[3].AsMemo:= EnDecryptString(xcpmg,21535);
             Params[4].AsString:= BoolToStr(true);
             ExecSQL;
        end;
        Result:=true;
     except
        Result:=false;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppAtcp(const xHWSfld: TByteDynArray): TByteDynArray;
var AxMenSQL, AxMenDados: TMemoryStream;
    AxMenSQLtext: TStringList;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     AxMenDados:= TMemoryStream.Create;
     AxMenSQL:= TMemoryStream.Create;
     AxMenSQLtext:= TStringList.Create;
     Try
        CopyToStream(xHWSfld,AxMenSQL);
        AxMenSQL.Position:=0;
        ExpandStream(AxMenSQL,AxMenDados);
        AxMenDados.Position:=0;
        AxMenDados:=EnDecryptStream(AxMenDados,14285);
        AxMenDados.Position:=0;
        AxMenSQLtext.LoadFromStream(AxMenDados);
        AxMenDados.Clear;
        AxMenDados.Position:=0;
        if AxMenSQLtext.Text<>'' then
        with executabin do begin
             CommandText:=AxMenSQLtext.Text;
             Open;
             if (fieldbyname('codigo').AsString<>'') and (fieldbyname('codigo').AsString<>'0') then begin
                with AxDadosUsr do begin
                     codigo:= fieldbyname('codigo').AsInteger;
                     usr:= '0';//cnt_usr;
                     pass:= '0';//cnt_pass;
                     operador:= '0';//ParamStr(2);
                     cod_web:= fieldbyname('cod_web').AsInteger;
                     cod_ent:= fieldbyname('cod_ent').AsInteger;
                     cod_ent_1:= fieldbyname('cod_ent_1').AsInteger;
                     cod_set:= fieldbyname('cod_set').AsInteger;
                     cod_grp:= fieldbyname('cod_grp').AsInteger;
                     nome:= fieldbyname('nome').AsString;
                     website:= fieldbyname('website').AsString;
                     razao_social:= fieldbyname('razao_social').AsString;
                     setor:= fieldbyname('descricao').AsString;
                     master:= StrToBool(fieldbyname('xconf').AsString);
                     axtitle:= fieldbyname('cp4').AsString;
                     axparm:= fieldbyname('cp5').AsString;
                end;
                AxMenDados.Write(AxDadosUsr,SizeOf(AxDadosUsr));
             end;
             Close;
        end;
     except
        AxMenDados.Clear;
     end;
     try
        AxMenDados.Position:=0;
        if AxMenDados.Size<=0 then begin
           with AxDadosUsr do begin
                codigo:= 0;
                usr:= '0';
                pass:= '0';
                operador:= '0';
                cod_web:= 0;
                cod_ent:= 0;
                cod_ent_1:= 0;
                cod_set:= 0;
                cod_grp:= 0;
                nome:= 'null';
                website:= 'null';
                razao_social:= 'null';
                setor:= 'null';
                master:= false;
           end;
           AxMenDados.Write(AxDadosUsr,SizeOf(AxDadosUsr));
        end;
        AxMenDados.Position:=0;
        AxMenSQL.Clear;
        AxMenSQL.Position:=0;
        AxMenDados:=EnDecryptStream(AxMenDados,14285);
        AxMenDados.Position:=0;
        CompressStream(AxMenDados, AxMenSQL);
        AxMenSQL.Position:=0;
        Result := ByteArrayFromStream(AxMenSQL);
     finally
        AxMenSQL.Free;
        AxMenDados.Free;
        AxMenSQLtext.Free;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppCnfg(const xHWSid: string): TByteDynArray;
var AxMenSQL,AxMenDados: TMemoryStream;
    xHWSidax: Integer;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     AxMenDados:= TMemoryStream.Create;
     AxMenSQL:= TMemoryStream.Create;
     Try
        xHWSidax:=StrToInt(copy(EnDecryptString(xHWSid,15348),5,1));
        AxMenDados.Clear;
        AxMenDados.Position:=0;
        AxMenSQL.Clear;
        AxMenSQL.Position:=0;
        with executabin do begin
             CommandText:= 'SELECT codigo,cp1 FROM m0_fky961 '+
                           'WHERE codigo='+#39+InttoStr(xHWSidax)+#39;
             Open;
             if not fields[1].IsNull then
                TBlobField(fields[1]).SaveToStream(AxMenDados);
             Close;
        end;
     except
        AxMenDados.Clear;
     end;
     try
        AxMenDados.Position:=0;
        AxMenSQL.Clear;
        AxMenSQL.Position:=0;
        CompressStream(AxMenDados, AxMenSQL);
        AxMenSQL.Position:=0;
        Result := ByteArrayFromStream(AxMenSQL);
     finally
        AxMenSQL.Free;
        AxMenDados.Free;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppEXbin(const xHWSfld,xHWSprm: TByteDynArray): Boolean;
var AxMenSQL, AxMenDados: TMemoryStream;
    AxMenSQLtext: TStringList;
    AxMenSQLparam: TParams;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     AxMenDados:= TMemoryStream.Create;
     AxMenSQL:= TMemoryStream.Create;
     AxMenSQLtext:= TStringList.Create;
     Try
        AxMenSQLparam:= TParams.Create;
        //copia commandtext sql
        CopyToStream(xHWSfld,AxMenSQL);
        AxMenSQL.Position:=0;
        ExpandStream(AxMenSQL,AxMenDados);
        AxMenDados.Position:=0;
        AxMenDados:=EnDecryptStream(AxMenDados,14285);
        AxMenDados.Position:=0;
        AxMenSQLtext.Clear;
        AxMenSQLtext.LoadFromStream(AxMenDados);
        //limpa stream
        AxMenDados.Clear;
        AxMenDados.Position:=0;
        AxMenSQL.Clear;
        AxMenSQL.Position:=0;
        //copia params sql
        CopyToStream(xHWSprm,AxMenSQL);
        AxMenSQL.Position:=0;
        ExpandStream(AxMenSQL,AxMenDados);
        AxMenDados.Position:=0;
        AxMenDados:=EnDecryptStream(AxMenDados,14285);
        AxMenDados.Position:=0;
        AxMenDados.Read(AxMenSQLparam,AxMenDados.Size);
        //executa
        if AxMenSQLtext.Text<>'' then
        with executabin do begin
             CommandText:=AxMenSQLtext.Text;
             Params.Assign(AxMenSQLparam);
             ExecSQL;
        end;
        Result:=true;
     except
        Result:=false;
     end;
     AxMenSQL.Free;
     AxMenDados.Free;
     AxMenSQLtext.Free;
   end;
end;

function THWSwsFnApp.HWSdbAppSmMs(const xHWSfld1,xHWSfld2: TByteDynArray): Integer;
var AxMen1blb,AxMen2blb: TMemoryStream;
    AxMen1text,AxMen2text: TStringList;
    xidResult: Integer;
    axmBody: String;
begin
   {xHWSfld1
    0-xmHost
    1-xmUser
    2-xmPass
    3-xmNome
    4-xmMail
    5-xmSubject
    6-xmRcpNome
    7-xmRcpMail:string
    8-xmPort
    9-xmPriority:Integer
    10-xmSendBann: Boolean
    11-xmBannHeight
    12-xmBannWidth: Real
    13-xmBannFile
    14-xmCodWeb
    15-xmWeb: String
    xHWSfld2
    0-xmMsgLst: TStringList
    }
    with (GetSoapWebModule as THWSappdbBin) do begin
      try
        AxMen1blb:= TMemoryStream.Create;
        AxMen2blb:= TMemoryStream.Create;
        AxMen1text:= TStringList.Create;
        AxMen2text:= TStringList.Create;
        //copia configurações
        AxMen1blb.Clear;
        AxMen1blb.Position:=0;
        AxMen2blb.Clear;
        AxMen2blb.Position:=0;
        AxMen1text.Clear;
        CopyToStream(xHWSfld1,AxMen1blb);
        AxMen1blb.Position:=0;
        ExpandStream(AxMen1blb,AxMen2blb);
        AxMen2blb.Position:=0;
        AxMen2blb:=EnDecryptStream(AxMen2blb,14285);
        AxMen2blb.Position:=0;
        AxMen1text.LoadFromStream(AxMen2blb);
        //copia mensagem
        AxMen1blb.Clear;
        AxMen1blb.Position:=0;
        AxMen2blb.Clear;
        AxMen2blb.Position:=0;
        AxMen2text.Clear;
        CopyToStream(xHWSfld2,AxMen1blb);
        AxMen1blb.Position:=0;
        ExpandStream(AxMen1blb,AxMen2blb);
        AxMen2blb.Position:=0;
        AxMen2blb:=EnDecryptStream(AxMen2blb,14285);
        AxMen2blb.Position:=0;
        AxMen2text.LoadFromStream(AxMen2blb);
        //inicia sistema de envio
        xidResult:=0;
        smtpHWS.Host := AxMen1text.Strings[0];
        smtpHWS.Port := StrToInt(AxMen1text.Strings[0]);
        smtpHWS.Username := AxMen1text.Strings[1];
        smtpHWS.Password := AxMen1text.Strings[2];
        smtpHWS.Connect;
        smtpHWS.Authenticate;
        MessageHWS.From.Name:= AxMen1text.Strings[3];
        MessageHWS.From.Address:= AxMen1text.Strings[4];
        Case StrToInt(AxMen1text.Strings[9]) of
             0: MessageHWS.Priority := mpHighest;
             1: MessageHWS.Priority := mpHigh;
             2: MessageHWS.Priority := mpNormal;
             3: MessageHWS.Priority := mpLow;
             4: MessageHWS.Priority := mpLowest;
        end;
        MessageHWS.Recipients.EMailAddresses:= AxMen1text.Strings[7];
        MessageHWS.Subject := AxMen1text.Strings[5];
        MessageHWS.Body.Clear;
        if StrToBool(AxMen1text.Strings[10]) then begin
           axmBody:='<body topmargin="0"><p><a href="http://'+AxMen1text.Strings[15]+'" target=_blank>'+
                    ' <IMG src="http://'+AxMen1text.Strings[15]+'/'+AxMen1text.Strings[13]+'"'+
	                  ' height='+AxMen1text.Strings[11]+' width='+AxMen1text.Strings[12]+' border=0></a></p>';
           MessageHWS.Body.Add(axmBody);
        end;
        MessageHWS.Body.AddStrings(AxMen2text);
      except
         xidResult:=1;
      end;
      if (xidResult = 0) then begin
         try
            smtpHWS.Send(MessageHWS);
            xidResult:=3;
         except
            xidResult:=2;
         end;
         try
            smtpHWS.Disconnect;
         except
            xidResult:=4;
         end;
      end;
      Result:=xidResult;
      AxMen1blb.Free;
      AxMen2blb.Free;
      AxMen1text.Free;
      AxMen2text.Free;
    end;
end;

function THWSwsFnApp.HWSdbAppUPbin4PH(const xcptp,xcpcod,xcpdt: string; const FileData: TByteDynArray): Boolean;
var InStream, DeCompressedStream : TMemoryStream;
    xnomefile,axcptp,axcpcod,axcpdt:string;
    xerroridbin: Boolean;
begin
  with (GetSoapWebModule as THWSappdbBin) do begin
     xerroridbin:=false;
     try
          axcptp:=EnDecryptString(xcptp,14285);//cod website
          axcpcod:=EnDecryptString(xcpcod,14285); //cod msg
          axcpdt:=EnDecryptString(xcpdt,14285); //nome do arquivo
     finally
       try
          xnomefile:='e:/whws/hwshost.com.br/mns98SeIo/'+axcptp+'/'+axcpcod;
          if not DirectoryExists(xnomefile) then
             CreateDir(xnomefile);
          xnomefile:=xnomefile+'/'+axcpdt;
          if FileExists(xnomefile) then
             DeleteFile(xnomefile);
       except
       end;
     end;
     try
        try
          InStream := TMemoryStream.Create;
          DeCompressedStream := TMemoryStream.Create;
          InStream.Clear;
          DeCompressedStream.Clear;
          InStream.Position:=0;
          DeCompressedStream.Position:=0;
          CopyToStream(FileData,InStream);
          InStream.Position:=0;
          ExpandStream(InStream,DecompressedStream);
          DecompressedStream.Position:=0;
          if (DecompressedStream.Size>0) then begin
              DecompressedStream.Position:=0;
              DecompressedStream.SaveToFile(xnomefile);
              xerroridbin:=true;
          end;
        except
        end;
     finally
          try
              InStream.Free;
              DeCompressedStream.Free;
          except
          end;
     end;
     Result:=xerroridbin;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(THWSwsFnApp);

end.

