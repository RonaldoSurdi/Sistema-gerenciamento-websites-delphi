unit udesinstalando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,
  Shellapi, filectrl, ShlObj, ActiveX, Registry, ComObj;

type
  TDriveType = (dtUnknown, dtNoDrive, dtFloppy, dtFixed, dtNetwork, dtCDROM, dtRAM);
  Tdesinstalando = class(TForm)
    ProgressBar_install: TProgressBar;
    RichEdit1: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure executadesinstalacao;
    { Private declarations }
  public
    inexecut,isshowing: Boolean;
    dirdefault: string;
    ck1,ck2,ck3,ck4: Boolean;
    { Public declarations }
  end;

var
  desinstalando: Tdesinstalando;

implementation

{$R *.dfm}

procedure Tdesinstalando.FormCreate(Sender: TObject);
begin
      inexecut:=false;
      isshowing:=true;
end;

procedure Tdesinstalando.executadesinstalacao;
var axstat:string;

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

    function ExtractTempDir : String;
    var Buffer : Array[0..144] of Char;
        xdirtmp: String;
    begin
        GetTempPath(144,Buffer);
        xdirtmp:= StrPas(Buffer);
        if (copy(xdirtmp,Length(xdirtmp),1)<>'\') and
           (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
           xdirtmp:=xdirtmp+'\';
        Result:=xdirtmp;
    end;

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

    function Localizaarquivos(Origem:String):Boolean;
    var SR: TSearchRec;
        I: integer;
    begin
        Result:=False;
        I := FindFirst(Origem+'\*.*', faAnyFile, SR);
        while I = 0 do begin
          if (SR.Attr and faDirectory) <> faDirectory then
             Result:=True;
          I := FindNext(SR);
        end;
    end;

    function Deleteicones(ShortcutName : String; tipox:integer; xforcar: Boolean):Boolean;
    var Directory,shellx,axpathdeldir : String;
        WFileName: WideString;
        MyReg: TRegIniFile;
        xdeldir: Boolean;
    begin
        Result:=True;
        case tipox of
            1: shellx:='Desktop';
            2,3: shellx:='Programs';
        end;
        MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
        Directory := MyReg.ReadString('Shell Folders',shellx,'');
        if tipox=5 then begin
           axpathdeldir:=Directory+'\HWS Web Solution';
           if DirectoryExists(axpathdeldir) then begin
              xdeldir:=true;
              if not xforcar then
                 if Localizaarquivos(axpathdeldir) then xdeldir:=false;
              if xdeldir then DeleteDir(Self.Handle,axpathdeldir,False)
              else Result:=False;
           end;
        end else if tipox=6 then begin
           axpathdeldir:=Directory+'\HWS Web Solution\Configurações';
           if DirectoryExists(axpathdeldir) then begin
              xdeldir:=true;
              if not xforcar then
                 if Localizaarquivos(axpathdeldir) then xdeldir:=false;
              if xdeldir then DeleteDir(Self.Handle,axpathdeldir,False)
              else Result:=False;
           end;
        end else if tipox=7 then begin
           axpathdeldir:=Directory+'\HWS Web Solution\Desinstalar';
           if DirectoryExists(axpathdeldir) then begin
              xdeldir:=true;
              if not xforcar then
                 if Localizaarquivos(axpathdeldir) then xdeldir:=false;
              if xdeldir then DeleteDir(Self.Handle,axpathdeldir,False)
              else Result:=False;
           end;
        end else begin
           if tipox=2 then begin
              WFileName := Directory+'\HWS Web Solution\'+ShortcutName+'.lnk';
           end else if tipox=3 then begin
              WFileName := Directory+'\HWS Web Solution\Configurações'+ShortcutName+'.lnk';
           end else if tipox=4 then begin
              WFileName := Directory+'\HWS Web Solution\Desinstalar'+ShortcutName+'.lnk';
           end else begin
              WFileName := Directory+'\'+ShortcutName+'.lnk';
           end;
           if FileExists(WFileName) then
              DeleteFile(WFileName);
        end;
        MyReg.Free;
    end;

    function deletefilesys(xfilename:string):string;
    var xerrordel: Boolean;
    begin
        Try
           if FileExists(xfilename) then
              DeleteFile(xfilename);
        Except
           xerrordel:=true;
        End;
        if FileExists(xfilename) then xerrordel:=true;
        if xerrordel then Result:='<'+xfilename+'>'
        else Result:='';
    end;

    function winsysregdel(tipo:byte):boolean;
    var Reg: Tregistry;
    begin
        Reg:=Tregistry.create;
        Result:=True;
        try
           Case tipo of
              1:begin
                with Reg do begin
                  rootkey:=HKEY_LOCAL_MACHINE;
                  if KeyExists('Software\HWS\Webcontrol') then begin
                     Try
                        DeleteKey('Software\HWS\Webcontrol');
                     Except
                        Result:=False;
                     End;
                  end;
                  Try
                     Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                     DeleteValue('HWScontrol');
                     CloseKey;
                  Except
                     Result:=False;
                     CloseKey;
                  End;
                end;
                with Reg do begin
                  rootkey:=HKEY_LOCAL_MACHINE;
                  if KeyExists('Software\MICROSOFT\WINDOWS\CURRENTVERSION\UNINSTALL\HWScontrol') then begin
                     Try
                        DeleteKey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\UNINSTALL\HWScontrol');
                     Except
                        Result:=False;
                     End;
                  end;
                end;
              end;
           End;
        finally
           Reg.Free;
        End;
    end;

    procedure DelExe; // procedure to delete the current program
      function GetTmpFileName(ext: string): string;
      var pc: PChar;
      begin
          pc := StrAlloc(MAX_PATH + 1);
          GetTempFileName(PChar(ExtractTempDir), 'EZC', 0, pc);
          Result := string(pc);
          Result := ChangeFileExt(Result, ext);
          StrDispose(pc);
      end;
    var batchfile: TStringList;
        batchname: string;
        apagarexe : string;
    begin
        apagarexe :=ExtractFilePath(Application.ExeName);
        if (TDRiveType(GetDriveType(PChar('C:\'))) = dtFloppy) or (TDRiveType(GetDriveType(PChar('C:\'))) = dtFixed) then begin
          batchname := GetTmpFileName('.bat');
          FileSetAttr(ParamStr(0), 0);
          batchfile := TStringList.Create;
          with batchfile do begin
            try
              Add(':Label1');
              Add('del "' + ParamStr(0) + '"');
              Add('if Exist "' + ParamStr(0) + '" goto Label1');
              Add('rmdir "' + ExtractFilePath(ParamStr(0)) + '"');
              Add('del "' + ExtractTempDir + ExtractFileName(ParamStr(0)) + '"');
              Add('del ' + apagarexe+'\*.*');
              Add('rmdir ' + apagarexe);
              Add('del ' + batchname);
              SaveToFile(batchname);
              ChDir(ExtractTempDir);
              WinExec(PChar(batchname), SW_HIDE);
            finally
              batchfile.Free;
            end;
            Application.Terminate;
            //Halt;
          end;
        end; //else with Owner as TForm do Close;
    end;

begin
    //inicializando
    inexecut:=true;
    ProgressBar_install.Position:=0;
    RichEdit1.Clear;
    RichEdit1.Lines.Add('Iniciando desinstalação do sistema.');
    RichEdit1.Lines.Add(' ');
    Application.ProcessMessages;
    ProgressBar_install.Position:=10;
    Sleep(3000);
    //lendo paramentros
    RichEdit1.Lines.Add('Removendo arquivos de sistema');
    Application.ProcessMessages;
    if DeleteDir(Self.Handle,dirdefault,False) then axstat:='OK'
    else axstat:='Erro ao remover arquivos ['+dirdefault+']';
    RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]:=RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]+' --> '+axstat;
    Application.ProcessMessages;

    RichEdit1.Lines.Add('Removendo icones');
    Application.ProcessMessages;
    Deleteicones('HWScontrol',1,false);
    if not Deleteicones('HWScontrol',5,false) then Deleteicones('HWScontrol',2,false);
    if not Deleteicones('HWScontrol',6,false) then Deleteicones('HWScontrol',3,false);
    if not Deleteicones('HWScontrol',7,false) then Deleteicones('HWScontrol',4,false);
    RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]:=RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]+' --> OK';
    Application.ProcessMessages;

    RichEdit1.Lines.Add('Removendo configurações');
    Application.ProcessMessages;
    if winsysregdel(1) then axstat:='OK'
    else axstat:='Erro';
    RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]:=RichEdit1.Lines.Strings[RichEdit1.Lines.Count-1]+' --> '+axstat;
    Application.ProcessMessages;

    RichEdit1.Lines.Add(' ');
    RichEdit1.Lines.Add(' ');
    //finalizando
    ProgressBar_install.Position:=100;
    RichEdit1.Lines.Add('Processo concluído com sucesso.');
    RichEdit1.Lines.Add(' ');
    RichEdit1.Lines.Add('Aguarde que esta janela será finalizada automaticamente.');
    Application.ProcessMessages;
    Sleep(2000);
    inexecut:=false;
    Application.ProcessMessages;
    DelExe;
    Close;
end;

procedure Tdesinstalando.FormActivate(Sender: TObject);
begin
      if isshowing then begin
         isshowing:=false;
         executadesinstalacao;
      end;
end;

procedure Tdesinstalando.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      if inexecut then Action:=caNone
      else Action:=caFree;
end;

end.
