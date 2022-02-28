unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, FileCtrl, Buttons, backup, Menus;

type
  TBackupDialog = class(TForm)
    OpenDialog: TOpenDialog;
    Backupfile1: TBackupFile;
    PageControl1: TPageControl;
    BackupTabSheet: TTabSheet;
    RestoreTabSheet: TTabSheet;
    FileListBox: TListBox;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    SaveDialog: TSaveDialog;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    ArchiveTitleEdit: TEdit;
    rgRestoreMode: TRadioGroup;
    Label3: TLabel;
    gbRestorepath: TGroupBox;
    rbOrigpath: TRadioButton;
    rbOtherPath: TRadioButton;
    EdPath: TEdit;
    CbFullPath: TCheckBox;
    ArchiveContentEdit: TEdit;
    Label4: TLabel;
    MeFiles: TMemo;
    AddFilesBitBtn: TBitBtn;
    AddWildCardsBitBtn: TBitBtn;
    ClearBitBtn: TBitBtn;
    OpenSetBitBtn: TBitBtn;
    SaveSetBitBtn: TBitBtn;
    BackupBitBtn: TBitBtn;
    CancelBitBtn: TBitBtn;
    OptionsGroupBox: TGroupBox;
    CbSaveFileID: TCheckBox;
    BackupModeRadioGroup: TRadioGroup;
    CompressionLevelRadioGroup: TRadioGroup;
    SaveSetAsBitBtn: TBitBtn;
    RestoreBitBtn: TBitBtn;
    CancelRestoreBitBtn: TBitBtn;
    BackupTitleLabel: TLabel;
    BackupTitleEdit: TEdit;
    BackupSetEdit: TEdit;
    BackupSetLabel: TLabel;
    DeleteBitBtn: TBitBtn;
    DefaultSetBitBtn: TBitBtn;
    RestorePathButton: TSpeedButton;
    UpButton: TSpeedButton;
    DownButton: TSpeedButton;
    SortListCheckBox: TCheckBox;
    ToolBarPanel: TPanel;
    BtnContexthelp: TSpeedButton;
    BtnHelpTOC: TSpeedButton;
    WhatsThisPopupmenu: TPopupMenu;
    Popupwhatsthis: TMenuItem;
    procedure Backupfile1Progress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure FileListBox1Click(Sender: TObject);
    procedure rbOrigpathClick(Sender: TObject);
    procedure AddFilesBitBtnClick(Sender: TObject);
    procedure AddWildCardsBitBtnClick(Sender: TObject);
    procedure ClearBitBtnClick(Sender: TObject);
    procedure BackupBitBtnClick(Sender: TObject);
    procedure CancelBitBtnClick(Sender: TObject);
    procedure SaveSetBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RestoreBitBtnClick(Sender: TObject);
    procedure OpenSetBitBtnClick(Sender: TObject);
    procedure SaveSetAsBitBtnClick(Sender: TObject);
    procedure BackupTitleEditChange(Sender: TObject);
    procedure FileListBoxClick(Sender: TObject);
    procedure DeleteBitBtnClick(Sender: TObject);
    procedure DefaultSetBitBtnClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Backupfile1NeedDisk(Sender: TObject; DiskID: Word;
      var Continue: Boolean);
    procedure CompressionLevelRadioGroupClick(Sender: TObject);
    procedure BackupModeRadioGroupClick(Sender: TObject);
    procedure RestorePathButtonClick(Sender: TObject);
    procedure DownButtonClick(Sender: TObject);
    procedure UpButtonClick(Sender: TObject);
    procedure SortListCheckBoxClick(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure BtnContexthelpClick(Sender: TObject);
    procedure BtnHelpTOCClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PopupwhatsthisClick(Sender: TObject);
  private
    fBackupSet:String;
    fModified: Boolean;
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    function  HandleMouseMsg(CtlHandle: THandle; Button: TMouseButton; Shift: TShiftState; X, Y: Integer): boolean;

    function SaveFileSet(FileName: String): Boolean;
    procedure SetButtons;
  public
  end;

var
  BackupDialog: TBackupDialog;
  OldCursor: TCursor;

const
  SELDIRHELP = 1000;
  
implementation

{$R *.DFM}

uses IniFiles;

procedure TBackupDialog.Backupfile1Progress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
begin
     with Progressbar1 do
     begin
     //     visible := Percent < 100;
          if visible then position := Percent;
     end;
     if Percent < 100 then
       Label1.caption := ExtractFileName(Filename)
     else
       begin
         Label1.Width := 300;
         Label1.caption := 'Writing to Disk ...... ';
       end;
end;

procedure TBackupDialog.FileListBox1Click(Sender: TObject);
var
   FileList: tstringlist;
   I: integer;
   S, FA, SZ: string;
begin
     FileList := TStringlist.create;
     MeFiles.lines.clear;
     ArchiveTitleEdit.text := backupfile1.getArchiveTitle(Filelistbox1.filename, FileList);
     if ArchiveTitleEdit.text = '' then ArchiveContentEdit.text := ''
     else begin
       ArchiveContentEdit.text := inttostr(backupfile1.FilesTotal)+' files, '+inttostr(round(backupfile1.SizeTotal/1024))+' KB total';
       MeFiles.lines.beginupdate;
       for I := 0 to FileList.Count-1 do
       begin
            S  := copy(FileList[i],1,pos(#9,FileList[i])-1);  //file name
            FA := copy(FileList[i],pos(#9,FileList[i])+1,pos('=',FileList[i])-pos(#9,FileList[i])-1);  //file age
            FA := DateToStr(
                  FileDateToDateTime(
                  StrtoInt(FA)       //integer file date is system + language independent!
                  ));
            SZ := copy(FileList[i],pos('=',FileList[i])+1, length(FileList[i])-pos('=',FileList[i]));  //file size in Bytes
            MeFiles.lines.add(S + ' from ' + FA + ', ' + SZ + ' bytes');
       end;
       if FileList.count = 0 then MeFiles.lines.add('No extended file information in this archive');
       MeFiles.lines.endupdate;
     end;
     FileList.Free;
     SetButtons;
end;

procedure TBackupDialog.rbOrigpathClick(Sender: TObject);
begin
  SetButtons;
end;

procedure TBackupDialog.AddFilesBitBtnClick(Sender: TObject);
var
   I: Integer;
begin
  Opendialog.FileName := '';
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  OpenDialog.Filter := 'All Files (*.*)|*.*|xBase Files (*.dbf, *.fpt)|*.dbf;*.fpt|List Files (*.lst)|*.lst|Data Files (*.dta)|*.dta';
  if OpenDialog.Execute then with FileListbox.Items do
    begin
      BeginUpdate;
      for I := 0 to OpenDialog.files.count-1 do
      if indexof(lowercase(OpenDialog.files[i])) = -1 then
        Add(lowercase(OpenDialog.files[i]));
      EndUpdate;
      fModified := True;
    end;
  SetButtons;
end;

procedure TBackupDialog.AddWildCardsBitBtnClick(Sender: TObject);
var
   S: string;
begin
  S := ExtractFilePath(Application.ExeName)+'*.*';
  if InputQuery('Add files with wildcards', 'Enter path + file mask', S) then
    begin
      FileListBox.items.add(S);
      fModified := True;
    end;
  SetButtons;
end;

procedure TBackupDialog.ClearBitBtnClick(Sender: TObject);
begin
  if fModified then
    if MessageDlg('Do you want to save changes?',mtConfirmation,
      [mbYes,mbNo], 0) = mrYes then
      SaveSetBitBtnClick(NIL);

  FileListBox.Items.Clear;
  BackupSetEdit.Text := 'Untitled';
  BackupTitleEdit.Text := 'My Backup';
  fBackupSet := '';
  fModified := False;
  SetButtons;
end;

procedure TBackupDialog.BackupBitBtnClick(Sender: TObject);
var
  NewName: String;
  Success: Boolean;
begin
  if (CompressionLevelRadioGroup.ItemIndex >=0) and
    (CompressionLevelRadioGroup.ItemIndex < 3)then
    if MessageDlg('You have elected to compress your Backup Data.'+#13+#13
    +'The compression routine is an Industry Standard one, but was not created '
    +'by Vertical Software.  We are therefore unable to guarantee a resolution '
    +'in the extremely unlikely event that a problem arises with compressed Backups.'
    +#13+#13+'To continue and make a compressed Backup, click Yes.  To Backup '
    +'without compression, click No and then set the Compression Level Option '
    +'to None before commencing the Backup.'
    +#13+#13+'Do you want to continue?',mtConfirmation,
      [mbYes,mbNo], 0) = mrNo then
        Exit;
  NewName := Copy(fBackupSet, 0, Pos('.', fBackupSet));
  NewName := NewName+'bck';
  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
  SaveDialog.FileName := NewName;
  SaveDialog.Filter := 'Backup archives (*.bck)|*.bck';
  SaveDialog.Title := 'Create Backup';
  SaveDialog.Options := [ofOverwritePrompt, ofHideReadOnly];
  with SaveDialog do if execute then
    begin
      if uppercase(copy(filename, 1, 1)) = 'A' then
        begin
          Showmessage('Drive A indicates a floppy drive - please insert a new empty disk');
          BackupFile1.maxSize := 1400000;  //backup to floppy
        end
      else
        BackupFile1.maxSize := 0;

      BackupFile1.BackupTitle      := BackupTitleEdit.text;
      BackupFile1.BackupMode       := TBackupMode(BackupModeRadioGroup.ItemIndex);
      BackupFile1.CompressionLevel := TCompressionLevel(CompressionLevelRadioGroup.Itemindex);
      BackupFile1.SaveFileID       := CbSaveFileID.checked;

      try
        Screen.Cursor := crAppStart;
        AddFilesBitBtn.Enabled := False;
        AddWildCardsBitBtn.Enabled := False;
        DefaultSetBitBtn.Enabled := False;
        DeleteBitBtn.Enabled := False;
        ClearBitBtn.Enabled := False;
        AddWildCardsBitBtn.Enabled := False;
        OpenSetBitBtn.Enabled := False;
        SaveSetBitBtn.Enabled := False;
        SaveSetAsBitBtn.Enabled := False;
        BackupBitBtn.Enabled := False;
        CancelBitBtn.Caption := '&Cancel';

        ProgressBar1.Visible := True;
        Success := BackupFile1.Backup(FileListbox.Items, filename);
      finally
        Label1.Caption := '';
        ProgressBar1.Visible := False;
        CancelBitBtn.Caption := '&Close';
        SetButtons;
        Screen.Cursor := crDefault;
      end;

      if Success then
        Showmessage('Backup sucessful. Compression rate = '+inttostr(BackupFile1.compressionrate)+' %')
           else Showmessage('Backup failed or aborted');
     end;
end;

procedure TBackupDialog.CancelBitBtnClick(Sender: TObject);
begin
  if not BackupFile1.Busy then
    begin
      if fModified then
        if MessageDlg('Do you want to save changes?',mtConfirmation,
          [mbYes,mbNo], 0) = mrYes then
          SaveSetBitBtnClick(NIL);
      Close;
    end
  else
    if MessageDlg('Do you want to abort the Backup?',mtConfirmation,
      [mbYes,mbNo], 0) = mrYes then
      Backupfile1.Stop;

end;

procedure TBackupDialog.SaveSetBitBtnClick(Sender: TObject);
begin
  // Check for no Title

  if fBackupSet = '' then
    begin
      SaveSetAsBitBtnClick(NIL);
      Exit;
    end;
  if not SaveFileSet(fBackupSet) then
    MessageDlg('Unable to save the current File Set.', mtError, [mbOk], 0);
end;

function TBackupDialog.HandleMouseMsg(CtlHandle: THandle; Button: TMouseButton; Shift: TShiftState; X, Y: Integer): boolean;
var
   FocusCtl: TWinControl;
   ClickCtl: TControl;
   ContextID: integer;
   Pt: TSmallPoint;

   function FindFocusControl(Ctl: TWinControl): TWinControl;
   var
      i: integer;
   begin
     { The simple function FindControl(Handle: HWnd) fails on combos,
     because a TCustomCombobox has 3 window handles. }

     Result := nil;
     if Ctl.handle = CtlHandle then
       result := Ctl
     else if (Ctl is TCustomCombobox)
       and (ChildWindowfromPoint(Ctl.handle, point(x,y)) = CtlHandle) then
       result := Ctl
     else
       begin
         for i := 0 to Ctl.controlcount-1 do
           begin
             if (Ctl.controls[i] is TWinControl) then result := FindFocusControl(TWinControl(ctl.controls[i]));
             if result <> nil then break;
           end;
       end;
   end;

   function FindContextID(Ctl: TControl): integer;
   begin
     Result := 0;
     { If our control is a TWinControl, it has a HelpContext property by sure, if not, we use
     the Tag property to retrieve a help context for TGraphicControls and TSpeedButtons. }

     if (Ctl is TWinControl) then
       Result := TWinControl(Ctl).helpcontext
     else if (Ctl is TGraphicControl) then
       Result := Ctl.tag;

     if (Ctl is TLabel) and (TLabel(Ctl).FocusControl <> nil) then
       Result := TLabel(Ctl).FocusControl.helpcontext;

     { If no help context number has been found, inherit the help context from the parent. }
     if (result = 0) and (Ctl.parent <> nil) then
       result := FindContextID(Ctl.parent);
   end;

begin
  Result := false;
  FocusCtl := FindFocusControl(self);
  if FocusCtl = nil then
    FocusCtl := self;
  ClickCtl := FocusCtl.controlatpos(point(x,y), true);
  if (ClickCtl = nil) then
    ClickCtl := FocusCtl;

  { ClickCtl is now definitely the control beneath the mouse cursor. This could be any
  control, even disabled controls are valid. FocusCtl, on the other hand, is that control
  which has received the mouse message. FocusCtl is a TWinControl and has a HelpContext property
  while ClickCtl may not have a HelpContext property - e.g. a TGraphicControl or TSpeedButton. }

  ContextID := FindContextID(ClickCtl);
  if ContextID = 0 then
    ContextID := 1000;

  case Button of
    mbLeft:  if (ClickCtl <> BtnContextHelp) then
              begin
                Pt := PointToSmallPoint(FocusCtl.Clienttoscreen( point(x,y) ));

                { When a help context number is a minus value, we display the help topic in the
                main window. If it is a plus value - the default -  we display it in a popup window.
                This is not a standard function of Winhelp but very useful. }

                if ContextID < 0 then
                  Application.HelpCommand(HELP_CONTEXT, abs(ContextID))
                else
                  begin
                    Application.HelpCommand(HELP_SETPOPUP_POS, Longint(Pt));
                    Application.HelpCommand(HELP_CONTEXTPOPUP, ContextID);
                  end;
                Result := true;
              end;
     mbRight: begin
                result := (not (ClickCtl is TCustomEdit)) and (not (ClickCtl is TCustomComboBox));
                if result then
                  begin
                    PopupWhatsthis.tag := ContextID;
                    Pt := PointToSmallPoint(FocusCtl.Clienttoscreen( point(x,y) ));
                    if TLabel(ClickCtl).PopupMenu = nil then
                      WhatsThisPopupmenu.popup(Pt.x, Pt.y)
                    else
                      TLabel(ClickCtl).PopupMenu.popup(Pt.x, Pt.y);
                   end;
              end;
     end;
end;

procedure TBackupDialog.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
{ If we ARE in help mode, trap every LEFT click,
  display help and don't process this message any further.
  If we are NOT in help mode, trap every RIGHT click to
  display a What's this popup menu or the default menu of the control.}

  Handled := false;

  if Screen.activeform = self then
  case Msg.message of
  WM_LBUTTONDOWN:
     if BtnContexthelp.down then
        Handled := HandleMouseMsg(Msg.hwnd, mbLeft, KeysToShiftState(Msg.wParam), Loword(Msg.lParam), Hiword(Msg.lParam));
  WM_RBUTTONUP:
        Handled := HandleMouseMsg(Msg.hwnd, mbRight, KeysToShiftState(Msg.wParam), Loword(Msg.lParam), Hiword(Msg.lParam));
  end;
end;

function TBackupDialog.SaveFileSet(FileName: String): Boolean;
var
  BackupIni: TIniFile;
  i: Integer;
begin
  Result := False;
  // if the file exists, delete it
  if FileExists(FileName) then
    if not DeleteFile(FileName) then
      if MessageDlg('Unable to delete existing file - continue anyway?',
        mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        Exit;
  try
    // Set cursor
    Screen.Cursor := crHourglass;

    // Create the IniFile
    BackupIni := TIniFile.Create(FileName);

    // Save the Details
    // File Title
    BackupIni.WriteString('Title','Title', BackupTitleEdit.text);

    // Save File Details?
    BackupIni.WriteBool('Save File Details', 'SaveFileDetails', cbSaveFileId.Checked);

    // Backup Mode
    BackupIni.WriteInteger('Backup Mode', 'BackupMode', BackupModeRadioGroup.ItemIndex);

    // Compression Level
    BackupIni.WriteInteger('CompressionLevel', 'CompressionLevel', CompressionLevelRadioGroup.ItemIndex);

    // File Names
    for i := 0 to FileListbox.Items.Count-1 do
      BackupIni.WriteString('Files', IntToStr(i), FileListBox.Items[i]);

    // Close the IniFile
    BackupIni.Free;

    // Update the Modified Flag
    fModified := False;

    // Set Return value
    Result := True;

    SetButtons;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TBackupDialog.SetButtons;
var
  ItemSelected: Boolean;
begin
  AddFilesBitBtn.Enabled := True;
  AddWildCardsBitBtn.Enabled := True;
  DefaultSetBitBtn.Enabled := True;
  OpenSetBitBtn.Enabled := True;

  ItemSelected := FileListBox.ItemIndex > -1;
  DeleteBitBtn.Enabled := ItemSelected;
  UpButton.Enabled := ItemSelected and not SortListCheckBox.Checked;
  DownButton.Enabled := ItemSelected and not SortListCheckBox.Checked;

  ClearBitBtn.Enabled := (FileListbox.Items.Count > 0);
  SaveSetBitBtn.Enabled := (FileListbox.Items.Count > 0) and
    ((fBackupSet <> '') or fModified);
  SaveSetAsBitBtn.Enabled := SaveSetBitBtn.Enabled;
  BackupBitBtn.Enabled := SaveSetBitBtn.Enabled;
  RestoreBitBtn.Enabled := FileListBox1.ItemIndex > -1;

  EdPath.enabled := rbOtherPath.checked;
  RestorePathButton.Enabled := EdPath.Enabled;
  cbFullPath.enabled := rbOtherPath.checked;
end;

procedure TBackupDialog.FormCreate(Sender: TObject);
begin
  ShowHint := True;
  fBackupSet := '';
  fModified := False;
  DirectoryListBox1.Directory := ExtractFilePath(Application.ExeName);
  EdPath.Text := ExtractFilePath(Application.ExeName);
  Application.helpfile := changefileext(application.exename, '.hlp');
  Application.onMessage := AppMessage;
  SetButtons;
end;

procedure TBackupDialog.RestoreBitBtnClick(Sender: TObject);
var
   S: string;
   Success: Boolean;
begin
  Screen.Cursor := crAppStart;
  try
     backupfile1.Restoremode  := TRestoreMode(rgRestoreMode.itemindex);
     if rbOrigpath.checked then S := ''
     else begin
          S := EdPath.text;
          if trim(s) = '' then
          begin
               showmessage('Please enter a target path');
               exit;
          end;
     end;
     backupfile1.RestoreFullPath := cbFullpath.enabled and cbFullpath.checked;
     ProgressBar1.Visible := True;
     RestorePathButton.Enabled := False;
     RestoreBitBtn.Enabled := False;
     CancelRestoreBitBtn.Caption := '&Cancel';
     Success := backupfile1.restore(filelistbox1.filename, S);
     Label1.Caption := '';
     if Success then
       showmessage('Restore successfully finished, '+inttostr(backupfile1.FilesProcessed)+' files of '+inttostr(backupfile1.FilesTotal)+' restored')
     else
       showmessage('Restore failed or user has canceled');
  finally
    CancelRestoreBitBtn.Caption := '&Close';
    SetButtons;
    ProgressBar1.Visible := False;
    Screen.Cursor := crDefault;
  end;

end;

procedure TBackupDialog.OpenSetBitBtnClick(Sender: TObject);
var
  BackupIni: TIniFile;
  i, DelCount: Integer;
  WorkString: String;
begin
  if fModified then
    if MessageDlg('Do you want to save changes to the current Backup Set?',mtConfirmation,
      [mbYes,mbNo], 0) = mrYes then
      SaveSetBitBtnClick(NIL);

  // Set up the Open Dialog
  OpenDialog.Filter := 'Backup File Sets (*.bfs)|*.bfs';
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);

  // Show Open Dialog
  if not OpenDialog.Execute then
    Exit;

  try
    // reset the Cursor
    Screen.Cursor := crHourGlass;

    // Clear any existing files
    FileListBox.Items.Clear;
    
    // Open Ini File
    BackupIni := TIniFile.Create(OpenDialog.FileName);

    // Load Set Name
    fBackupSet := OpenDialog.FileName;
    BackupSetEdit.Text := ExtractFileName(fBackupSet);

    // Load Backup Title
    BackupTitleEdit.Text := BackupIni.ReadString('Title', 'Title', 'Untitled');

    // Save File Details?
    cbSaveFileID.Checked := BackupIni.ReadBool('Save File Details', 'SaveFileDetails', True);

    // Backup Mode
    BackupModeRadioGroup.ItemIndex := BackupIni.ReadInteger('Backup Mode', 'BackupMode', 0);

    // Compression Level
    CompressionLevelRadioGroup.ItemIndex := BackupIni.ReadInteger('CompressionLevel', 'CompressionLevel', 0);

    // Turn off the listbox during the Update
    FileListBox.Items.BeginUpdate;

    // Load Files
    BackupIni.ReadSectionValues('Files', FileListBox.Items);

    // Strip out the Keys
    for i := 0 to FileListBox.Items.Count-1 do
      begin
        Workstring := FileListBox.Items[i];
        DelCount := Pos('=', Workstring);
        Delete(Workstring, 1, DelCount );
        FileListBox.Items[i] := WorkString;
      end;

    // Turn the listbox back on
    FileListBox.Items.EndUpdate;

    // Close Ini File
    BackupIni.Free;

    // Set Modification flag
    fModified := False;

    // Set up the buttons to reflect changes
    SetButtons;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TBackupDialog.SaveSetAsBitBtnClick(Sender: TObject);
begin

  // Set up the Save Dialog
  SaveDialog.Filter := 'Backup File Sets (*.bfs)|*.bfs';
  SaveDialog.Title := 'Save As';
  // Display the Save Dialog
  if SaveDialog.Execute then
     if not SaveFileSet(SaveDialog.FileName) then
       MessageDlg('Unable to save the File Set.', mtError, [mbOk], 0)
     else
       fBackupSet := SaveDialog.FileName;
end;

procedure TBackupDialog.BackupTitleEditChange(Sender: TObject);
begin
  fModified := True;
end;

procedure TBackupDialog.FileListBoxClick(Sender: TObject);
begin
  SetButtons;
end;

procedure TBackupDialog.DeleteBitBtnClick(Sender: TObject);
begin
  FileListBox.Items.Delete(FileListBox.ItemIndex);
  fModified := True;
  SetButtons;
end;

procedure TBackupDialog.DefaultSetBitBtnClick(Sender: TObject);
begin
  // If file already exists, warn and get instructions
  if FileExists(ExtractFilePath(Application.ExeName)+'Default.bfs') then
    if MessageDlg('Default Backup Set already exists - Do you want to overwrite?',
      mtConfirmation, [mbYes,mbNo], 0) = mrNo then
      Exit;

  // Clear existing stuff
  ClearBitBtnClick(NIL);

  // Update the BackupSet variable
  fBackupSet := ExtractFilePath(Application.ExeName)+'Default.bfs';

  // Update the Backup Set Edit
  BackupSetEdit.Text := 'Default.bfs';

  // Update the Title
  BackupTitleEdit.Text := 'Default Backup';

  // Save File Details
  cbSaveFileId.Checked := True;

  // Backup Mode
  BackupModeRadioGroup.ItemIndex := 0;

  // CompressionLevel
  CompressionLevelRadioGroup.ItemIndex := 0;

  // Turn off the listbox during the Update
  FileListBox.Items.BeginUpdate;

  // Add multiple Default files using Wildcards
  // xBase Data Files
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.dbf');

  // xBase Memo Files
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.fpt');

  // Data List files
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.lst');

  // Data files
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.dta');

  //  Program IniFiles
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.ini');

  // Program List Files
  FileListBox.Items.Add(ExtractFilePath(Application.ExeName)+'*.lst');

  // Turn the listbox back on
  FileListBox.Items.EndUpdate;


  if not SaveFileSet(fBackupSet) then
    MessageDlg('Unable to save the current File Set.', mtError, [mbOk], 0);

end;

procedure TBackupDialog.PageControl1Change(Sender: TObject);
begin
  if fModified and (PageControl1.ActivePage = RestoreTabSheet) then
    if MessageDlg('Do you want to save changes to the Backup Set?',mtConfirmation,
      [mbYes,mbNo], 0) = mrYes then
      SaveSetBitBtnClick(NIL);
end;

procedure TBackupDialog.Backupfile1NeedDisk(Sender: TObject; DiskID: Word;
  var Continue: Boolean);
begin
  Continue := MessageDlg('Please insert disk ' +
       inttostr(DiskID)+' and click OK to continue', 
         mtInformation, mbOKCancel, 0) = mrOK;
end;

procedure TBackupDialog.CompressionLevelRadioGroupClick(Sender: TObject);
begin
  fModified := True;
end;

procedure TBackupDialog.BackupModeRadioGroupClick(Sender: TObject);
begin
  fModified := True;
end;

procedure TBackupDialog.RestorePathButtonClick(Sender: TObject);
var
  Dir: String;
begin
  if DirectoryExists(EdPath.Text) then
    Dir := EdPath.Text
  else
    Dir := '';
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
     EdPath.Text := Dir;
end;

procedure TBackupDialog.DownButtonClick(Sender: TObject);
var
  NewPosition: Integer;
begin
  with FileListbox do
    begin
      if ItemIndex = -1 then
        begin
          ItemIndex := 0;
          fModified := True;
          SetButtons;
          Exit;
        end;
      If ItemIndex < Items.Count -1 then
        begin
          NewPosition := ItemIndex+1;
          Items.Exchange(NewPosition, ItemIndex);
          ItemIndex := NewPosition;
          fModified := True;
          SetButtons;
        end;
end;
end;

procedure TBackupDialog.UpButtonClick(Sender: TObject);
var
  NewPosition: Integer;
begin
  with FileListbox do
    if ItemIndex > 0 then
      begin
        NewPosition := ItemIndex-1;
        Items.Exchange(NewPosition, ItemIndex);
        ItemIndex := NewPosition;
        fModified := True;
        SetButtons;
      end;
end;


procedure TBackupDialog.SortListCheckBoxClick(Sender: TObject);
begin
  FileListBox.Sorted := SortListCheckBox.Checked;
  fModified := True;
  SetButtons;
end;

procedure TBackupDialog.DriveComboBox1Change(Sender: TObject);
begin
  SetButtons;
end;

procedure TBackupDialog.DirectoryListBox1Change(Sender: TObject);
begin
  SetButtons;
end;

procedure TBackupDialog.BtnContexthelpClick(Sender: TObject);
begin
  if BtnContexthelp.down then  //in help mode now
    begin
      OldCursor := Screen.Cursor;
      Screen.Cursor := crHelp;
    end
  else
    Screen.Cursor := OldCursor;
end;

procedure TBackupDialog.BtnHelpTOCClick(Sender: TObject);
begin
  application.helpcommand(HELP_FINDER, 0);
end;

procedure TBackupDialog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key = VK_ESCAPE) and BtnContextHelp.down then BtnContextHelpClick(self);
end;

procedure TBackupDialog.PopupwhatsthisClick(Sender: TObject);
begin
     if TMenuItem(sender).tag < 0
       then Application.HelpCommand(HELP_CONTEXT, abs(TMenuItem(sender).tag)) //display in main window
       else Application.HelpCommand(HELP_CONTEXTPOPUP, TMenuItem(sender).tag);
end;

end.
