unit umenunist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ToolWin,
  Shellapi, filectrl, ShlObj, ActiveX, Registry, ComObj, jpeg, XPMan,
  FileFind, AppEvnts;

type
  TDriveType = (dtUnknown, dtNoDrive, dtFloppy, dtFixed, dtNetwork, dtCDROM, dtRAM);
  Tmenuinst = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    bt_iniciar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    RichEdit_detalhes: TRichEdit;
    FileSearch1: TFileSearch;
    XPManifest1: TXPManifest;
    Panel3: TPanel;
    Label1: TLabel;
    Label_status: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FileSearch1ChangeFolder(fullpath: String; info: TSearchRec);
    procedure FileSearch1FileFind(fullpath: String; info: TSearchRec);
    procedure FileSearch1Finish(Sender: TObject);
    procedure bt_iniciarClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    axListFiles: TStringList;
    procedure desinstalar;
    { Private declarations }
  public
    inexecut: Boolean;
    { Public declarations }
  end;

var
  menuinst: Tmenuinst;

implementation

{$R *.dfm}

procedure Tmenuinst.bt_cancelarClick(Sender: TObject);
begin
      Close;
end;

procedure Tmenuinst.desinstalar;
var xind: Integer;
//    xtempfile,xparams,xparamsax: string;

    {function ExtractTempDir : String;
    var Buffer : Array[0..144] of Char;
        xdirtmp: String;
    begin
        GetTempPath(144,Buffer);
        xdirtmp:= StrPas(Buffer);
        if (copy(xdirtmp,Length(xdirtmp),1)<>'\') or
           (copy(xdirtmp,Length(xdirtmp),1)<>'/') then
           xdirtmp:=xdirtmp+'\';
        Result:=xdirtmp;
    end;}

    {procedure Exectmpfile; // procedure to delete the current program
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
              Add(xtempfile+xparams);
              Add('del ' + batchname);
              SaveToFile(batchname);
              ChDir(ExtractTempDir);
              WinExec(PChar(batchname), SW_HIDE);
            finally
              batchfile.Free;
            end;
            Halt;
          end;
        end; //else with Owner as TForm do Close;
    end; }

    {function DeleteDir(hHandle: THandle; Const sPath : String; Confirm: boolean):Boolean;
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
    end;  }

    function Deleteicones(ShortcutName : String; tipox:integer):Boolean;
    var Directory,shellx,axpathdeldir : String;
        WFileName: WideString;
        MyReg: TRegIniFile;
        xdeldir: Boolean;
    begin
        Result:=True;
        case tipox of
            1: shellx:='Desktop';
            2: shellx:='Programs';
        end;
        MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
        Directory := MyReg.ReadString('Shell Folders',shellx,'');
        if tipox=1 then begin
           WFileName := Directory+'\'+ShortcutName+'.lnk';
           if FileExists(WFileName) then DeleteFile(WFileName);
        end else begin
           WFileName := Directory+'\HWS Web Solution\Configurações\'+ShortcutName+'.lnk';
           if FileExists(WFileName) then DeleteFile(WFileName);
           WFileName := Directory+'\HWS Web Solution\Desinstalar\'+ShortcutName+'.lnk';
           if FileExists(WFileName) then DeleteFile(WFileName);
           WFileName := Directory+'\HWS Web Solution\'+ShortcutName+'.lnk';
           if FileExists(WFileName) then DeleteFile(WFileName);
           try
           RmDir(Directory+'\HWS Web Solution\Configurações');
           except end;
           try
           RmDir(Directory+'\HWS Web Solution\Desinstalar');
           except end;
           try
           RmDir(Directory+'\HWS Web Solution\');
           except end;
        end;
        MyReg.Free;
    end;

    function winsysregdel:boolean;
    var Reg: Tregistry;
    begin
        Reg:=Tregistry.create;
        Result:=True;
        try
             with Reg do begin
                  rootkey:=HKEY_LOCAL_MACHINE;
                  if KeyExists('Software\HWS\SAC') then begin
                     Try
                        DeleteKey('Software\HWS\SAC');
                     Except
                        Result:=False;
                     End;
                  end;
                  Try
                     Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                     DeleteValue('HWSsac');
                     CloseKey;
                  Except
                     Result:=False;
                     CloseKey;
                  End;
                  rootkey:=HKEY_LOCAL_MACHINE;
                  if KeyExists('Software\MICROSOFT\WINDOWS\CURRENTVERSION\UNINSTALL\HWSsac') then begin
                     Try
                        DeleteKey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\UNINSTALL\HWSsac');
                     Except
                        Result:=False;
                     End;
                  end;
             end;
        finally
           Reg.Free;
        End;
    end;

    procedure DelExe; // procedure to delete the current program
    var batchfile: TStringList;
        batchname: string;

        function GetTmpDir: string; // Get the windows temporary directory
        var pc: PChar;
        begin
            pc := StrAlloc(MAX_PATH + 1);
            GetTempPath(MAX_PATH, pc);
            Result := string(pc);
            StrDispose(pc);
        end;

        function GetTmpFileName(ext: string): string;
        var pc: PChar;
        begin
            pc := StrAlloc(MAX_PATH + 1);
            GetTempFileName(PChar(GetTmpDir), 'EZC', 0, pc);
            Result := string(pc);
            Result := ChangeFileExt(Result, ext);
            StrDispose(pc);
        end;

    begin
        if (TDRiveType(GetDriveType(PChar('C:\'))) = dtFloppy) or
           (TDRiveType(GetDriveType(PChar('C:\'))) = dtFixed) then begin
           batchname := GetTmpFileName('.bat');
           FileSetAttr(ParamStr(0), 0);
           batchfile := TStringList.Create;
           with batchfile do begin
                try
                   Add(':Label1');
                   Add('del "' + ParamStr(0) + '"');
                   Add('if Exist "' + ParamStr(0) + '" goto Label1');
                   Add('rmdir "' + ExtractFilePath(ParamStr(0)) + '"');
                   Add('rmdir /s /q "' + ExtractFilePath(Application.ExeName) + '"');
                   Add('rmdir "' + copy(ExtractFilePath(Application.ExeName),1,(Length(ExtractFilePath(Application.ExeName))-11)) + '"');
                   Add('del "' + GetTmpDir + ExtractFileName(ParamStr(0)) + '"');
                   Add('del ' + batchname);
                   SaveToFile(batchname);
                   ChDir(GetTmpDir);
                   WinExec(PChar(batchname), SW_HIDE);
                finally
                   batchfile.Free;
                end;
                //Halt;
                Application.Terminate;
           end;
        end; //else with Owner as TForm do Close;
    end;

    function deletefilesys(xnamefile:string):Boolean;
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
    begin
        Try
            DeleteFile(ExtractSystemDir+xnamefile);
            Result:=true;
        Except
            Result:=false;
        End;
    end;

begin
      RichEdit_detalhes.Lines.Add('Removendo arquivos.');
      RichEdit_detalhes.Lines.Add('');
      for xind:=0 to axListFiles.Count-1 do begin
          DeleteFile(axListFiles.Strings[xind]);
          RichEdit_detalhes.Lines.Add(axListFiles.Strings[xind]+' ... removido.');
      end;
      RichEdit_detalhes.Lines.Add('Removendo Bibliotecas de comunicação.');
      RichEdit_detalhes.Lines.Add('');
      deletefilesys('midas.dll');
      deletefilesys('HWSsksys.dll');
      deletefilesys('dbexpress70.bpl');
      deletefilesys('dbrtl70.bpl');
      deletefilesys('dbxcds70.bpl');
      deletefilesys('dsnap70.bpl');
      deletefilesys('dsnapcon70.bpl');
      deletefilesys('hws.bpl');
      deletefilesys('hwsdialogs.bpl');
      deletefilesys('inet70.bpl');
      deletefilesys('rtl70.bpl');
      deletefilesys('RxCtl7.bpl');
      deletefilesys('soaprtl70.bpl');
      deletefilesys('vcl70.bpl');
      deletefilesys('vcldb70.bpl');
      deletefilesys('vclie70.bpl');
      deletefilesys('vcljpg70.bpl');
      deletefilesys('vclshlctrls70.bpl');
      deletefilesys('vclsmp70.bpl');
      deletefilesys('vclx70.bpl');
      deletefilesys('xmlrtl70.bpl');
      RichEdit_detalhes.Lines.Add('');
      RichEdit_detalhes.Lines.Add('');
      RichEdit_detalhes.Lines.Add('Removendo icones.');
      Deleteicones('HWSsac',1);
      Deleteicones('HWSsac',2);
      RichEdit_detalhes.Lines.Add('Icones removidos.');
      RichEdit_detalhes.Lines.Add('');
      RichEdit_detalhes.Lines.Add('Removendo registros do sistema.');
      winsysregdel;
      RichEdit_detalhes.Lines.Add('Registros removidos.');
      RichEdit_detalhes.Lines.Add('');
      RichEdit_detalhes.Lines.Add('Concluindo...');
      Sleep(500);
      inexecut:=false;
      DelExe;
      Close;
end;

procedure Tmenuinst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if inexecut then Action:=caNone;
end;

procedure Tmenuinst.FormCreate(Sender: TObject);
begin
      inexecut:=false;
      axListFiles:= TStringList.Create;
end;

procedure Tmenuinst.FileSearch1ChangeFolder(fullpath: String;
  info: TSearchRec);
begin
    	Label_status.caption := fullPath;
end;

procedure Tmenuinst.FileSearch1FileFind(fullpath: String;
  info: TSearchRec);
var xnamefile: string;
begin
      xnamefile:=fullPath+info.name;
      if Length(xnamefile) >= 13 then begin
         if copy(xnamefile,Length(xnamefile)-12,13)<>'uninstall.exe' then
          	axListFiles.add(xnamefile);
      end else axListFiles.add(xnamefile);
end;

procedure Tmenuinst.FileSearch1Finish(Sender: TObject);
begin
      Label_status.Caption:='Processo concluído';
      desinstalar;
end;

function EnumWindowsProc (Wnd: HWND; lb: TStringlist): BOOL; stdcall;
var
   caption: Array [0..128] of Char;
begin
  Result := True;
  if IsWindowVisible(Wnd) and
  ((getWindowLong(Wnd, GWL_HWNDPARENT) = 0) or
  (HWND(GetWindowLong(Wnd, GWL_HWNDPARENT)) = GetDesktopWindow)) and
  ((GetWindowLong(Wnd, GWL_EXSTYLE) and WS_EX_TOOLWINDOW) = 0)
  then
  begin
     SendMessage( Wnd, WM_GETTEXT, Sizeof(caption),integer(@caption));
     lb.AddObject( caption,TObject( Wnd ));
  end;
end;

function closeAllForms():Boolean;
var axMdlclose:String;
  strs:TStringlist;
  i:integer;
  hwnd:Thandle;
begin
  Result:=true;
  try
  strs:=tstringlist.Create;
  EnumWindows( @EnumWindowsProc, integer(strs));
  for i := 1 to strs.Count-1 do begin
    axMdlclose:= strs.Strings[i];
    if (copy(LowerCase(axMdlclose),1,10) = 'hwssac') then begin
        hwnd:=findwindow(nil,pchar(strs.Strings[i]));
        if hwnd <> 0 then
           sendmessage(hwnd,wm_close,0,0);
    end;
  end;
  except
      Result:=false;
  end;
end;

procedure Tmenuinst.bt_iniciarClick(Sender: TObject);
begin
      If Application.MessageBox('Desinstalar HWSsac?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then begin
         if not closeAllForms() then begin
            ShowMessage('É necessário finalizar o sistema HWSsac!!!');
            exit;
         end;
         inexecut:=true;
         bt_iniciar.Enabled:=false;
         bt_cancelar.Enabled:=false;
         axListFiles.Clear;
         RichEdit_detalhes.Clear;
         RichEdit_detalhes.Lines.Add('Preparando para desinstalar.');
         RichEdit_detalhes.Lines.Add('');
         filesearch1.SearchFile:=ExtractFilePath(Application.ExeName)+'*.*';
    	   filesearch1.Start;
      end;
end;

procedure Tmenuinst.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      ShowMessage('AVISO: Falha ao desinstalar aplicativo.');
end;

end.
