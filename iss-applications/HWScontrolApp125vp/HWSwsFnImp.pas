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
  public
  end;

implementation

uses WebBrokerSoap, Graphics, Clipbrd, Messages, hwsfunctions, ADODB, U_Cipher;

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
     xpthfiles:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
     xpthfilesMV:='f:/whws/hwshost.com.br/rv/mns95SeIoX/'+axcdweb+'/';
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
         DecompressedStream.Position:=0;
         try
           if FileExists(xpthfiles+xnomefile1) then
              MoveFile(Pchar(xpthfiles+xnomefile1),Pchar(xpthfilesMV+xnomefile1));
              //DeleteFile(xpthfiles+xnomefile1);
         except
           Result:=false;
         end;
         try
           if (DecompressedStream.Size>0) then begin
               DecompressedStream.Position:=0;
               DecompressedStream.SaveToFile(xpthfiles+xnomefile1);
           end;
         except
           Result:=false;
         end;
         if axcpdt2<>'' then begin
           DecompressedStream2.Position:=0;
           try
             if FileExists(xpthfiles+xnomefile2) then
                MoveFile(Pchar(xpthfiles+xnomefile2),Pchar(xpthfilesMV+xnomefile2));
                //DeleteFile(xnomefile2);
           except
              Result:=false;
           end;
           try
             if (DecompressedStream2.Size>0) then begin
               DecompressedStream2.Position:=0;
               DecompressedStream2.SaveToFile(xpthfiles+xnomefile2);
             end;
           except
              Result:=false;
           end;
         end;
     DecompressedStream.Free;
     DeCompressedStream2.Free;
     Result:=true;
  end;
end;

function THWSwsFnApp.HWSdbAppUPbn2PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string; const FileData2: TByteDynArray): Boolean;
var InStream, DeCompressedStream2 : TMemoryStream;
    axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile2,xpthfiles2,xpthfiles2MV,nmcpcod,axcpszp:string;
    xforMntPart,xforMntPartTot,DecompressSize: Integer;
    c_modTar: byte;
    xFileOutput: TFileStream;
    axResult: Boolean;
begin
  with (GetSoapWebModule as THWSappdbBin) do begin
     axResult:=false;
     try
          axcdweb:=EnDecryptString(xcdweb,14285);
          axtablename:=EnDecryptString(xtablename,14285);
          axcptp:=EnDecryptString(xcptp,14285);
          axcpcod:=EnDecryptString(xcpcod,14285);
          axcpcod2:=EnDecryptString(xcpcod2,14285);
          axcpdt:=EnDecryptString(xcpdt,14285);
          axcpdt2:=EnDecryptString(xcpdt2,14285);
          axcpcod_value:=EnDecryptString(xcpcod_value,14285);
          axcpszp:=EnDecryptString(xcpszp,14285);
          xforMntPartTot:=StrToInt(axcpszp);
     except
          exit;
          Result:=axResult;
     end;
     InStream:= TMemoryStream.Create;
     DeCompressedStream2:= TMemoryStream.Create;
     xnomefile2:='';
     xpthfiles2:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
     xpthfiles2MV:='f:/whws/hwshost.com.br/rv/mns95SeIoX/'+axcdweb+'/';
     if (not DirectoryExists(xpthfiles2)) then
        CreateDir(xpthfiles2);
     if (not DirectoryExists(xpthfiles2MV)) then
        CreateDir(xpthfiles2MV);
     if (axcpcod2<>'') then
         nmcpcod:= axcpcod2
     else nmcpcod:= axcpcod;
     try
          InStream.Clear;
          InStream.Position:=0;
          CopyToStream(FileData2,InStream);
          InStream.Position:=0;
          ExpandStream(InStream,DecompressedStream2);
          DecompressedStream2.Position:=0;
          DecompressSize:=DecompressedStream2.Size;
          DecompressedStream2.Position:=0;

          xnomefile2:=MD5Hash(axtablename+'_'+axcpdt2+'_'+nmcpcod+'_'+axcpcod_value)+'.hws';
          if xforMntPartTot = 1 then
             xFileOutput := TFileStream.Create(xpthfiles2+xnomefile2,fmCreate) //fmCreate or fmOpenWrite or fmShareExclusive);
          else xFileOutput := TFileStream.Create(xpthfiles2+xnomefile2,fmOpenWrite);//fmCreate or fmOpenWrite or fmShareExclusive);
          xFileOutput.Position:=xforMntPartTot-1;
          for xforMntPart:=0 to DecompressSize-1 do begin
              DecompressedStream2.Read(c_modTar, 1);
              xFileOutput.Write(c_modTar,1);
          end;
          axResult:=true;
     finally

     End;
     try
        xFileOutput.Free;
        InStream.Free;
        DeCompressedStream2.Free;
     except
     end;
     Result:=axResult;
  end;
end;

function THWSwsFnApp.HWSdbAppUPbn3PH(const xcdweb,xtablename,xcptp,xcpcod,xcpcod2,xcpdt,xcpdt2,xcpsz,xcpsz2,xcpcod_value,xcpszp: string): Boolean;
var axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile2,xpthfiles,xpthfilesMV,xpthfiles2MV,xpthfiles2,nmcpcod,axcpszp:string;
    axResult: Boolean;
begin
  with (GetSoapWebModule as THWSappdbBin) do begin
     try
          axcdweb:=EnDecryptString(xcdweb,14285);
          axtablename:=EnDecryptString(xtablename,14285);
          axcptp:=EnDecryptString(xcptp,14285);
          axcpcod:=EnDecryptString(xcpcod,14285);
          axcpcod2:=EnDecryptString(xcpcod2,14285);
          axcpdt:=EnDecryptString(xcpdt,14285);
          axcpdt2:=EnDecryptString(xcpdt2,14285);
          axcpcod_value:=EnDecryptString(xcpcod_value,14285);
          axcpszp:=EnDecryptString(xcpszp,14285);
     except
          exit;
          Result:=false;
     end;
     axResult:=false;
     xnomefile2:='';
     xpthfiles:='f:/whws/hwshost.com.br/mns95SeIoTMP/'+axcdweb+'/';
     xpthfiles2:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
     xpthfilesMV:='f:/whws/hwshost.com.br/rv/mns95SeIoTMPX/'+axcdweb+'/';
     xpthfiles2MV:='f:/whws/hwshost.com.br/rv/mns95SeIoX/'+axcdweb+'/';
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);
     if (not DirectoryExists(xpthfiles2)) then
        CreateDir(xpthfiles2);
      if (not DirectoryExists(xpthfilesMV)) then
        CreateDir(xpthfilesMV);
     if (not DirectoryExists(xpthfiles2MV)) then
        CreateDir(xpthfiles2MV);
     if (axcpcod2<>'') then
         nmcpcod:= axcpcod2
     else nmcpcod:= axcpcod;
     try
          xnomefile2:=MD5Hash(axtablename+'_'+axcpdt2+'_'+nmcpcod+'_'+axcpcod_value)+'.hws';
          if FileExists(xpthfiles2+xnomefile2) then
             MoveFile(Pchar(xpthfiles2+xnomefile2),Pchar(xpthfiles2MV+xnomefile2));
          if FileExists(xpthfiles+xnomefile2) then begin
             MoveFile(Pchar(xpthfiles+xnomefile2),Pchar(xpthfiles2+xnomefile2));
             axResult:=true;
          end else axResult:=false;
     except
          axResult:=false;
     end;
     Result:=axResult;
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
          xnomefile:='e:/whws/hwshost.com.br/mns96SeIo/'+axcptp+'/'+axcpcod;
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
     xpthfiles:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);

     xnomefile1:=xpthfiles+MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
     MStream.Position:=0;
     MStream.Clear;
     MStream.Position:=0;
     xboolfile := true;
     try
        if FileExists(xnomefile1) then
           MStream.LoadFromFile(xnomefile1);
     except
        MStream.Clear;
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

function THWSwsFnApp.HWSdbAppDOWNbinSZ(const xcdweb,xtablename,xcpcod,xcpdt,xcpcod_value: string): Integer;
var MStream: TMemoryStream;
    axcdweb,axtablename,axcptp,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile1,xpthfiles:string;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     MSTream := TMemoryStream.Create;
     axcdweb:=EnDecryptString(xcdweb,14285);
     axtablename:=EnDecryptString(xtablename,14285);
     axcpcod:=EnDecryptString(xcpcod,14285);
     axcpdt:=EnDecryptString(xcpdt,14285);
     axcpcod_value:=EnDecryptString(xcpcod_value,14285);
     xnomefile1:='';
     xpthfiles:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
     if (not DirectoryExists(xpthfiles)) then
        CreateDir(xpthfiles);
     xnomefile1:=xpthfiles+MD5Hash(axtablename+'_'+axcpdt+'_'+axcpcod+'_'+axcpcod_value)+'.hws';
     MStream.Position:=0;
     MStream.Clear;
     MStream.Position:=0;
     try
        if FileExists(xnomefile1) then
           MStream.LoadFromFile(xnomefile1);
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
var axcdweb,axtablename,axcptp,nmcpcod,axcpcod,axcpcod2,axcpdt,axcpdt2,axcpcod_value: string;
    xnomefile2,xnomefileMV,xpthfiles,xpthfiles2,xpthfilesMV,xpthfiles2MV:string;
    xfileexitsTmp: Boolean;
    xfileexitsIdTmp: Integer;
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
         xnomefile2:='';
         xpthfiles:='f:/whws/hwshost.com.br/mns95SeIoTMP/'+axcdweb+'/';
         xpthfiles2:='f:/whws/hwshost.com.br/mns95SeIo/'+axcdweb+'/';
         xpthfilesMV:='f:/whws/hwshost.com.br/rv/mns95SeIoTMPX/'+axcdweb+'/';
         xpthfiles2MV:='f:/whws/hwshost.com.br/rv/mns95SeIoX/'+axcdweb+'/';
         if (not DirectoryExists(xpthfiles)) then
            CreateDir(xpthfiles);
         if (not DirectoryExists(xpthfiles2)) then
            CreateDir(xpthfiles2);
         if (not DirectoryExists(xpthfilesMV)) then
            CreateDir(xpthfilesMV);
         if (not DirectoryExists(xpthfiles2MV)) then
            CreateDir(xpthfiles2MV);
         if (axcpcod2<>'') then
             nmcpcod:= axcpcod2
         else nmcpcod:= axcpcod;
         try
              xnomefile2:=MD5Hash(axtablename+'_'+axcpdt2+'_'+nmcpcod+'_'+axcpcod_value)+'.hws';
              xnomefileMV:=FormatDateTime('yyyymmddhhnnss-',Now);
              if FileExists(xpthfiles+xnomefile2) then
                 MoveFile(Pchar(xpthfiles+xnomefile2),Pchar(xpthfilesMV+xnomefileMV+xnomefile2));
              if FileExists(xpthfiles2+xnomefile2) then
                 MoveFile(Pchar(xpthfiles2+xnomefile2),Pchar(xpthfiles2MV+xnomefileMV+xnomefile2));
              Result:=true;
         except
              Result:=false;
         end;
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
             CommandText:= 'INSERT INTO '+EnDecryptString(xtablename,21535)+' (codigo,cod_usr,ip,obs,data_time) '+
             'VALUES(:p0,:p1,:p2,:p3,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
             Params[0].AsInteger:=ax_cod;
             Params[1].AsInteger:=StrtoInt(EnDecryptString(xcpvl,21535));
             Params[2].AsString:=EnDecryptString(xcpip,21535);
             Params[3].AsMemo:= EnDecryptString(xcpmg,21535);
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

function THWSwsFnApp.HWSdbAppHtct1(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Integer;
var xcodcdID,xcodWebID,xcodUsrID: integer;
begin
   //visitas
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        with executabin do begin
             xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
             if (xcodcdID = 0) then begin
                 CommandText:= 'SELECT MAX(codigo) FROM '+EnDecryptString(xtablename,21535);
                 Open;
                 if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                    xcodcdID:= Fields[0].AsInteger+1
                 else xcodcdID:= 1;
                 Close;
                 xcodWebID:=StrtoInt(EnDecryptString(xcpvl,21535));
                 xcodUsrID:= StrtoInt(EnDecryptString(xcpv2,21535));
                 CommandText:= 'INSERT INTO '+EnDecryptString(xtablename,21535)+' (codigo,xcod_id,cod_web,cod_ent,cp1,cp2,xtp,cp3,cp4) '+
                 'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
                 Params[0].AsInteger:=xcodcdID;
                 Params[1].AsInteger:=xcodcdID;
                 Params[2].AsInteger:=xcodWebID;
                 Params[3].AsInteger:=xcodUsrID;
                 Params[4].AsString:=EnDecryptString(xcpv3,21535);
                 Params[5].AsString:=EnDecryptString(xcpv4,21535);
                 Params[6].AsString:=EnDecryptString(xcpv5,21535);
                 if ((xcodWebID=0) or (xcodUsrID=0)) then xcodcdID:=0;
             end else begin
                 CommandText:= 'UPDATE '+EnDecryptString(xtablename,21535)+' SET cp2=:p0,cp4='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                 ' Where codigo=:p1';
                 Params[0].AsString:=EnDecryptString(xcpv4,21535);
                 Params[1].AsInteger:=xcodcdID;
                 xcodcdID:=0;
             end;
             ExecSQL;
        end;
        Result:=xcodcdID;
     except
        Result:=-1;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppHtct2(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv4,xcpv5: string): Boolean;
var ax_cod,xcodcdID,xcodent: integer;
    axdateID: TDateTime;
begin
   //online
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        with executabin do begin
             axdateID:= Now;
             xcodent:=StrtoInt(EnDecryptString(xcpv2,21535));
             xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
             CommandText:= 'UPDATE m7_fky94 SET cp37=:p0, cp38='+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdateID)+#39+
                           ' WHERE codigo=:p1';
             Params[0].AsInteger:=StrtoInt(EnDecryptString(xcpv5,21535));
             Params[1].AsInteger:=xcodent;
             ExecSQL;
             CommandText:= 'SELECT MAX(codigo) FROM '+EnDecryptString(xtablename,21535);
             Open;
             if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                ax_cod:= Fields[0].AsInteger+1
             else ax_cod:= 1;
             Close;
             CommandText:= 'INSERT INTO '+EnDecryptString(xtablename,21535)+' (codigo,xcod_id,cod_web,cod_ent,cp1,xtp,cp2) '+
             'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdateID)+#39+')';
             Params[0].AsInteger:=ax_cod;
             Params[1].AsInteger:=xcodcdID;
             Params[2].AsInteger:=StrtoInt(EnDecryptString(xcpvl,21535));
             Params[3].AsInteger:=xcodent;
             Params[4].AsString:=EnDecryptString(xcpv3,21535);
             Params[5].AsString:=EnDecryptString(xcpv4,21535);
             ExecSQL;
        end;
        Result:=true;
     except
        Result:=false;
     end;
   end;
end;


function THWSwsFnApp.HWSdbAppHtct3(const xtablename,xcpid,xcpvl,xcpv2,xcpv3,xcpv5,xcpv6: string; xcpv4: TByteDynArray): Integer;
var xcodcdID,xcodWebID,xcodUsrID,xstatUsr,xIDconf: integer;
    AxObsSQL, AxObsDados: TMemoryStream;
    AxObsSQLtext: TStringList;
    xIDconfSQL,xIDconfRes: String;
begin
   //
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        AxObsDados:= TMemoryStream.Create;
        AxObsSQL:= TMemoryStream.Create;
        AxObsSQLtext:= TStringList.Create;
        CopyToStream(xcpv4,AxObsSQL);
        AxObsSQL.Position:=0;
        ExpandStream(AxObsSQL,AxObsDados);
        AxObsDados.Position:=0;
        AxObsDados:=EnDecryptStream(AxObsDados,14285);
        AxObsDados.Position:=0;
        AxObsSQLtext.LoadFromStream(AxObsDados);
        with executabin do begin
             xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
             xstatUsr:=StrtoInt(EnDecryptString(xcpv5,21535));
             xIDconf:=StrtoInt(EnDecryptString(xcpv6,21535));
             xIDconfSQL:='';
             xIDconfRes:='';
             if (xIDconf<>0) then begin
                xIDconfSQL:=',cod_cnf';
                xIDconfRes:=','+#39+IntToStr(xIDconf)+#39;
             end;
             if (xcodcdID = 0) then begin
                 CommandText:= 'SELECT MAX(codigo) FROM '+EnDecryptString(xtablename,21535);
                 Open;
                 if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                    xcodcdID:= Fields[0].AsInteger+1
                 else xcodcdID:= 1;
                 Close;
                 xcodWebID:=StrtoInt(EnDecryptString(xcpvl,21535));
                 xcodUsrID:= StrtoInt(EnDecryptString(xcpv2,21535));
                 CommandText:= 'INSERT INTO '+EnDecryptString(xtablename,21535)+' (codigo,cod_ent,cod_usr,descricao,obs,xstc,xdt1,xdt2'+xIDconfSQL+') '+
                 'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+xIDconfRes+')';
                 Params[0].AsInteger:=xcodcdID;
                 Params[1].AsInteger:=xcodWebID;
                 Params[2].AsInteger:=xcodUsrID;
                 Params[3].AsString:=EnDecryptString(xcpv3,21535);
                 Params[4].Assign(AxObsSQLtext);
                 Params[5].AsInteger:=xstatUsr;
                 if ((xcodWebID=0) or (xcodUsrID=0)) then xcodcdID:=0;
             end else begin
                 CommandText:= 'UPDATE '+EnDecryptString(xtablename,21535)+' SET descricao=:p0,obs=:p1,xstc=:p2,xdt2='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                 ' Where codigo=:p3';
                 Params[0].AsString:=EnDecryptString(xcpv3,21535);
                 Params[1].Assign(AxObsSQLtext);
                 Params[2].AsInteger:=xstatUsr;
                 Params[3].AsInteger:=xcodcdID;
                 xcodcdID:=0;
             end;
             ExecSQL;
        end;
        Result:=xcodcdID;
     except
        Result:=-1;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppHtct4(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4: TByteDynArray): TByteDynArray;
var xcodcdID, xcodDest, xIDdest, xIDdest2, xIDdest3,xIDconf: integer;
    AxStrIN, AxStrOUT, AxMsgMS4: TMemoryStream;
    AxMsgSL1,AxMsgSL2,AxMsgSL3: TStringList;
    axdtSent: TDateTime;
    xcpr5,xIDconfSQL,xIDconfRes: String;
begin
   //Send Mensagem
   //codigo, cod_ent, cod_usra, tp_usra, cod_sec, cp1, cp2, cp3, cp4, cp5, cp6, cp7, xtp
   //codigo, cod_msg, cod_usrb, tp_usrb, cp10, cp11, cp12, xtp
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        AxStrIN:= TMemoryStream.Create;
        AxStrOUT:= TMemoryStream.Create;
        AxMsgSL1:=TStringList.Create;
        AxMsgSL2:=TStringList.Create;
        AxMsgSL3:=TStringList.Create;
        AxMsgSL1.Clear;
        AxMsgSL2.Clear;
        AxMsgSL3.Clear;
        AxMsgMS4:= TMemoryStream.Create;
        AxMsgMS4.Clear;
        AxMsgMS4.Position:=0;
        xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
        if (xcodcdID = 573205) then begin
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv1,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,12185);
           AxStrOUT.Position:=0;
           AxMsgSL1.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv2,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,23175);
           AxStrOUT.Position:=0;
           AxMsgSL2.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv3,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,18272);
           AxStrOUT.Position:=0;
           AxMsgSL3.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv4,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,21356);
           AxStrOUT.Position:=0;
           AxMsgMS4.LoadFromStream(AxStrOUT);
           AxMsgMS4.Position:=0;
           axdtSent:=Now;
           with executabin do begin
             if Active then Close;
             CommandText:= 'SELECT MAX(codigo) FROM '+AxMsgSL1.Strings[0];
             Open;
             if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                  xcodcdID:= Fields[0].AsInteger+1
             else xcodcdID:= 1;
             Close;
             xIDdest2:=StrToInt(AxMsgSL1.Strings[9]);
             xIDconf:=StrToInt(AxMsgSL1.Strings[11]);
             xIDconfSQL:='';
             xIDconfRes:='';
             if (xIDconf<>0) then begin
                xIDconfSQL:=',cod_cnf';
                xIDconfRes:=','+#39+IntToStr(xIDconf)+#39;
             end;
             CommandText:= 'INSERT INTO '+AxMsgSL1.Strings[0]+' (codigo,cod_ent,cod_usra,tp_usra,cod_sec,cp1,cp2,cp3,cp4,cp5,cp7,xtp,cp6'+xIDconfSQL+') '+
             'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtSent)+#39+xIDconfRes+')';
             Params[0].AsInteger:=xcodcdID;
             Params[1].AsInteger:=StrToInt(AxMsgSL1.Strings[2]);
             Params[2].AsInteger:=StrToInt(AxMsgSL1.Strings[3]);
             Params[3].AsInteger:=StrToInt(AxMsgSL1.Strings[4]);
             Params[4].AsInteger:=StrToInt(AxMsgSL1.Strings[5]);
             Params[5].AsString:=AxMsgSL1.Strings[6];
             Params[6].AsInteger:=StrToInt(AxMsgSL1.Strings[7]);
             Params[7].AsString:=AxMsgSL1.Strings[8];
             Params[8].LoadFromStream(AxMsgMS4,ftBlob);
             Params[9].Assign(AxMsgSL3);
             Params[10].AsInteger:=xIDdest2;
             Params[11].AsString:=AxMsgSL1.Strings[10];
             ExecSQL;
             xIDdest3:=0;
             for xIDdest:=0 to xIDdest2-1 do begin
                 if Active then Close;
                 CommandText:= 'SELECT MAX(codigo) FROM '+AxMsgSL1.Strings[1];
                 Open;
                 if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                     xcodDest:= Fields[0].AsInteger+1
                 else xcodDest:= 1;
                 Close;
                 CommandText:= 'INSERT INTO '+AxMsgSL1.Strings[1]+' (codigo,cod_msg,cod_usrb,tp_usrb,cp11,cp12,xtp,cp10) '+
                 'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtSent)+#39+')';
                 Params[0].AsInteger:=xcodDest;
                 Params[1].AsInteger:=xcodcdID;
                 Params[2].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3]);
                 Params[3].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3+1]);
                 Params[4].AsInteger:=0;
                 Params[5].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3+2]);
                 Params[6].AsString:=AxMsgSL2.Strings[xIDdest3+3];
                 ExecSQL;
                 xIDdest3:=xIDdest3+4;
             end;
             xcpr5:=FormatDateTime('dd/mm/yyyy hh:nn:ss',axdtSent);
             AxMsgSL1.Clear;
             AxMsgSL1.Add(IntToStr(xcodcdID));
             AxMsgSL1.Add(xcpr5);
             AxStrIN.Clear;
             AxStrIN.Position:=0;
             AxMsgSL1.SaveToStream(AxStrIN);
             AxStrIN.Position:=0;
             AxStrIN:=EnDecryptStream(AxStrIN,12534);
             AxStrIN.Position:=0;
             AxStrOUT.Clear;
             AxStrOUT.Position:=0;
             CompressStream(AxStrIN, AxStrOUT);
             AxStrOUT.Position:=0;
             Result:=ByteArrayFromStream(AxStrOUT);
           end;
        end;
     except
        Result:=nil;
     end;
   end;
end;


function THWSwsFnApp.HWSdbAppHtct5(const xcpid: String; const xcpr1: TByteDynArray): TByteDynArray;
var AxStrIN, AxStrOUT: TMemoryStream;
    AxMsgSL1: TStringList;
    xcodcdID: Integer;
    axdtRemt: TDateTime;
    axcodmsg: Integer;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
        if (xcodcdID = 4658843) then begin
           AxStrIN:= TMemoryStream.Create;
           AxStrOUT:= TMemoryStream.Create;
           AxMsgSL1:=TStringList.Create;
           AxStrIN.Clear;
           AxStrIN.Position:=0;
           AxStrOUT.Clear;
           AxStrOUT.Position:=0;
           AxMsgSL1.Clear;
           CopyToStream(xcpr1,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,12185);
           AxStrOUT.Position:=0;
           AxMsgSL1.LoadFromStream(AxStrOUT);
           axdtRemt:=Now;
           axcodmsg:=StrToInt(AxMsgSL1.Strings[1]);
           with executabin do begin
              if Active then Close;
              CommandText:= 'UPDATE '+AxMsgSL1.Strings[0]+' SET cp11=:p0,'+
              'cp10='+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtRemt)+#39+
              ' WHERE codigo=:p1';
              Params[0].AsInteger:=1;
              Params[1].AsInteger:=axcodmsg;
              ExecSQL;
           end;
           AxMsgSL1.Clear;
           AxMsgSL1.Add(IntToStr(axcodmsg));
           AxMsgSL1.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss',axdtRemt));
           AxStrIN.Clear;
           AxStrIN.Position:=0;
           AxMsgSL1.SaveToStream(AxStrIN);
           AxStrIN.Position:=0;
           AxStrIN:=EnDecryptStream(AxStrIN,12534);
           AxStrIN.Position:=0;
           AxStrOUT.Clear;
           AxStrOUT.Position:=0;
           CompressStream(AxStrIN, AxStrOUT);
           AxStrOUT.Position:=0;
           Result:=ByteArrayFromStream(AxStrOUT);
        end;
     except
        Result:=nil;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppHtct6(const xcpid: String; const xcpr1: TByteDynArray): Boolean;
var AxStrIN, AxStrOUT: TMemoryStream;
    AxMsgSL1: TStringList;
    xcodcdID: Integer;
    axdtRemt: TDateTime;
    testUSRCODac,testUSRLocCount: Integer;
begin
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
        if (xcodcdID = 1235443) then begin
           AxStrIN:= TMemoryStream.Create;
           AxStrOUT:= TMemoryStream.Create;
           AxMsgSL1:=TStringList.Create;
           AxStrIN.Clear;
           AxStrIN.Position:=0;
           AxStrOUT.Clear;
           AxStrOUT.Position:=0;
           AxMsgSL1.Clear;
           CopyToStream(xcpr1,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,12185);
           AxStrOUT.Position:=0;
           AxMsgSL1.LoadFromStream(AxStrOUT);
           axdtRemt:=Now;
           testUSRCODac:=StrToInt(AxMsgSL1.Strings[1]);
           testUSRLocCount:=StrToInt(AxMsgSL1.Strings[2]);
           if executabin.Active then executabin.Close;
           if (testUSRLocCount>0) then begin
              executabin.CommandText:= 'UPDATE '+AxMsgSL1.Strings[0]+' SET cp11=:p0,'+
                                       'cp10='+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtRemt)+#39+
                                       ' WHERE codigo=:p1';
              executabin.Params[0].AsInteger:=testUSRLocCount;
              executabin.Params[1].AsInteger:=testUSRCODac;
           end else begin
              executabin.CommandText:= 'UPDATE '+AxMsgSL1.Strings[0]+' SET '+
                                       'cp10='+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtRemt)+#39+
                                       ' WHERE codigo=:p0';
              executabin.Params[0].asInteger:=testUSRCODac;
           end;
           executabin.ExecSQL;
           Result:=true;
        end;
     except
        Result:=false;
     end;
   end;
end;

function THWSwsFnApp.HWSdbAppHtct7(const xcpid: String; const xcpv1,xcpv2,xcpv3,xcpv4,xcpv5: TByteDynArray): TByteDynArray;
var xcodcdID, xcodDest, xIDdest, xIDdest2, xIDdest3,xIDconf,xIDAgend: integer;
    AxStrIN, AxStrOUT, AxMsgMS4: TMemoryStream;
    AxMsgSL1,AxMsgSL2,AxMsgSL3,AxMsgSL5: TStringList;
    AxMsgSL3Wide,AxMsgSL3WideResult: WideString;
    axdtSent,axdtSent2: TDateTime;
    xcpr5,xIDconfSQL,xIDconfRes: String;
    axdtSentAll: Boolean;
    filexopen: Boolean;
    xfilename: String;
    xfilelininc: Integer;
procedure gravar_log(xdateevn:Boolean; xmensa:String);
var F: TextFile;
    S,xtime: string;
    xfilenameDT,xfile: String;
begin
    if (not filexopen) then begin
       filexopen:=True;
       DateTimeToString(xfilenameDT,'ddmmyyyyhhnnss',Now);
       xfilename:='E:\whws\'+xfilenameDT+'.hws';
    end;
    AssignFile(F, xfilename);
    if xdateevn then begin
       DateTimeToString(xtime,'yyyy-mm-dd hh:nn:ss',now);
       xtime:=xtime+' - ';
    end else xtime:='';
    if FileExists(xfilename) then Append(F)
    else ReWrite(F);
    Writeln(F,xtime+xmensa);
    CloseFile(F);
end;
begin
   filexopen:=false;
   xfilelininc:=0;
   //Send Mensagem
   //codigo, cod_ent, cod_usra, tp_usra, cod_sec, cp1, cp2, cp3, cp4, cp5, cp6, cp7, xtp
   //codigo, cod_msg, cod_usrb, tp_usrb, cp10, cp11, cp12, xtp
   with (GetSoapWebModule as THWSappdbBin) do begin
     Try
        AxStrIN:= TMemoryStream.Create;
        AxStrOUT:= TMemoryStream.Create;
        AxMsgSL1:=TStringList.Create;
        AxMsgSL2:=TStringList.Create;
        AxMsgSL3:=TStringList.Create;
        AxMsgSL1.Clear;
        AxMsgSL2.Clear;
        AxMsgSL3.Clear;
        AxMsgMS4:= TMemoryStream.Create;
        AxMsgMS4.Clear;
        AxMsgMS4.Position:=0;
        AxMsgSL5:=TStringList.Create;
        AxMsgSL5.Clear;
        xcodcdID:=StrtoInt(EnDecryptString(xcpid,21535));
        //gravar_log(true,IntToStr(xfilelininc));Inc(xfilelininc);
        if (xcodcdID = 573205) then begin
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv1,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,12185);
           AxStrOUT.Position:=0;
           AxMsgSL1.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv2,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,23175);
           AxStrOUT.Position:=0;
           AxMsgSL2.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv3,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,18272);
           AxStrOUT.Position:=0;
           AxMsgSL3.LoadFromStream(AxStrOUT);
           AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv4,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,21356);
           AxStrOUT.Position:=0;
           AxMsgMS4.LoadFromStream(AxStrOUT);
           AxMsgMS4.Position:=0;
           //localiza tag
           {AxStrIN.Clear; AxStrIN.Position:=0; AxStrOUT.Clear; AxStrOUT.Position:=0;
           CopyToStream(xcpv5,AxStrIN);
           AxStrIN.Position:=0;
           ExpandStream(AxStrIN,AxStrOUT);
           AxStrOUT.Position:=0;
           AxStrOUT:=EnDecryptStream(AxStrOUT,18272);
           AxStrOUT.Position:=0;
           AxMsgSL5.LoadFromStream(AxStrOUT);
           }
           if (AxMsgSL1.Strings[12] = '-1') then xIDAgend:=0
           else xIDAgend:=1;
           axdtSent:=Now;
           axdtSent2:=Now;//StrToDateTime(AxMsgSL1.Strings[16]);
           axdtSentAll:= StrToBool(AxMsgSL1.Strings[12]);
           with executabin do begin
             if Active then Close;
             CommandText:= 'SELECT MAX(codigo) FROM '+AxMsgSL1.Strings[0];
             Open;
             if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                  xcodcdID:= Fields[0].AsInteger+1
             else xcodcdID:= 1;
             Close;
             //substitui tab
             AxMsgSL3WideResult:='';
             AxMsgSL3Wide:= AxMsgSL3.Text;
             AxMsgSL3WideResult:=StringReplace(AxMsgSL3Wide,'<<imghws>>',IntToStr(xcodcdID),[rfReplaceAll]);
             AxMsgSL3.Clear;
             AxMsgSL3.Add(AxMsgSL3WideResult);
             //
             xIDdest2:=StrToInt(AxMsgSL1.Strings[9]);
             xIDconf:=StrToInt(AxMsgSL1.Strings[11]);
             xIDconfSQL:='';
             xIDconfRes:='';
             if (xIDconf<>0) then begin
                xIDconfSQL:=',cod_cnf';
                xIDconfRes:=','+#39+IntToStr(xIDconf)+#39;
             end;
             CommandText:= 'INSERT INTO '+AxMsgSL1.Strings[0]+' (codigo,cod_ent,cod_usra,tp_usra,cod_sec,cp1,cp2,cp3,cp4,cp5,cp7,cp8,cp9,cp10,cp13,cp14,cp15,xtp,cp11,cp6'+xIDconfSQL+') '+
             'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtSent2)+#39+','+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtSent)+#39+xIDconfRes+')';
             Params[0].AsInteger:=xcodcdID;
             Params[1].AsInteger:=StrToInt(AxMsgSL1.Strings[2]);
             Params[2].AsInteger:=StrToInt(AxMsgSL1.Strings[3]);
             Params[3].AsInteger:=StrToInt(AxMsgSL1.Strings[4]);
             Params[4].AsInteger:=StrToInt(AxMsgSL1.Strings[5]);
             Params[5].AsString:=AxMsgSL1.Strings[6];
             Params[6].AsInteger:=StrToInt(AxMsgSL1.Strings[7]);
             Params[7].AsString:=AxMsgSL1.Strings[8];
             Params[8].LoadFromStream(AxMsgMS4,ftBlob);
             Params[9].Assign(AxMsgSL3);
             Params[10].AsInteger:=xIDdest2;
             Params[11].AsInteger:=xIDAgend;
             Params[12].AsString:=AxMsgSL1.Strings[12];
             Params[13].AsString:=AxMsgSL1.Strings[13];
             Params[14].AsInteger:=StrToInt(AxMsgSL1.Strings[14]);
             Params[15].AsFloat:=0;
             Params[16].AsString:=AxMsgSL1.Strings[15];
             Params[17].AsString:=AxMsgSL1.Strings[10];
             ExecSQL;
             //if not axdtSentAll then begin
             {xIDdest3:=0;
             for xIDdest:=0 to xIDdest2-1 do begin
                     if Active then Close;
                     CommandText:= 'SELECT MAX(codigo) FROM '+AxMsgSL1.Strings[1];
                     Open;
                     if (Fields[0].AsString<>'') and (Fields[0].AsString<>'0') then
                         xcodDest:= Fields[0].AsInteger+1
                     else xcodDest:= 1;
                     Close;
                     CommandText:= 'INSERT INTO '+AxMsgSL1.Strings[1]+' (codigo,cod_msg,cod_usrb,tp_usrb,cp11,cp12,xtp,cp10) '+
                     'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',axdtSent)+#39+')';
                     Params[0].AsInteger:=xcodDest;
                     Params[1].AsInteger:=xcodcdID;
                     Params[2].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3]);
                     Params[3].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3+1]);
                     Params[4].AsInteger:=0;
                     Params[5].AsInteger:=StrToInt(AxMsgSL2.Strings[xIDdest3+2]);
                     Params[6].AsString:=AxMsgSL2.Strings[xIDdest3+3];
                     ExecSQL;
                     xIDdest3:=xIDdest3+4;
             end;}
             //end;
             xcpr5:=FormatDateTime('dd/mm/yyyy hh:nn:ss',axdtSent);
             AxMsgSL1.Clear;
             AxMsgSL1.Add(IntToStr(xcodcdID));
             gravar_log(true,IntToStr(xcodcdID));
             AxMsgSL1.Add(xcpr5);
             AxStrIN.Clear;
             AxStrIN.Position:=0;
             AxMsgSL1.SaveToStream(AxStrIN);
             AxStrIN.Position:=0;
             AxStrIN:=EnDecryptStream(AxStrIN,12534);
             AxStrIN.Position:=0;
             AxStrOUT.Clear;
             AxStrOUT.Position:=0;
             CompressStream(AxStrIN, AxStrOUT);
             AxStrOUT.Position:=0;
             Result:=ByteArrayFromStream(AxStrOUT);
           end;
        end;
     except
        Result:=nil;
     end;
   end;
end;

initialization
  InvRegistry.RegisterInvokableClass(THWSwsFnApp);

end.

