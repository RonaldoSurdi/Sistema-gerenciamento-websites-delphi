unit FileSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DsgnIntf, StdCtrls, Buttons, ExtCtrls, FileCtrl;

type
  //Notify sub-directory being searched
  TProgressEvent = procedure(Sender: TObject; SearchDir, SearchMask: String) of object;
  //Notify file match found
  TMatchFoundEvent = procedure (Sender: TObject; Time, Size, Attr: Integer; FileName: String) of object;

  //Displays dialog at design time to allow selection of root directory
  //to begin search.
  TSelectDirectoryDialog = class(TForm)
  private
    FLabel1: TLabel;
    FOKBtn: TBitBtn;
    FCancelBtn: TBitBtn;
    FPanel: TPanel;
    FDirectoryListBox: TDirectoryListBox;
    FDriveComboBox: TDriveComboBox;
    FInitialDir: String;
    FSelectedDir: String;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean;
  published
    property InitialDir: String write FInitialDir;
    property SelectedDir: String read FSelectedDir;
  end;

  //Property class for root directory property
  TInitialDirProperty = class(TStringProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
  end;

  //File search thread class
  TFileSearchThread = class(TThread)
    FInitialDir: String;
    FFileMask: String;
    FSearchSubDirs: Boolean;
    FOnProgress: TProgressEvent;
    FOnMatchFound: TMatchFoundEvent;
    procedure LocateSubDirs(ARootDir: String);
    procedure LocateMatchingFiles(ACurDir: String);
  public
    property FileMask: String read FFileMask write FFileMask;
    property InitialDir: String read FInitialDir write FInitialDir;
    property SearchSubDirectories: Boolean read FSearchSubDirs write FSearchSubDirs;
    property OnMatchFound: TMatchFoundEvent read FOnMatchFound write FOnMatchFound;
    property OnProgress: TProgressEvent read FOnProgress write FOnProgress;
    procedure Execute; override;
  end;

  //VCL component that exposes configuration of file search thread.
  TFileSearch = class(TComponent)
  private
    { Private declarations }
    FFileSearchThread: TFileSearchThread;
    function GetFileMask: String;
    procedure SetFileMask(AFileMask: String);
    function GetInitialDir: String;
    procedure SetInitialDir(ADir: String);
    function GetOnComplete: TNotifyEvent;
    procedure SetOnComplete(AEvent: TNotifyEvent);
    function GetOnMatchFound: TMatchFoundEvent;
    procedure SetOnMatchFound(AEvent: TMatchFoundEvent);
    function GetOnProgress: TProgressEvent;
    procedure SetOnProgress(AEvent: TProgressEvent);
    function GetSearchSubDirs: Boolean;
    procedure SetSearchSubDirs(AState: Boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute;
  published
    { Published declarations }
    property FileMask: String read GetFileMask write SetFileMask;
    property InitialDir: String read GetInitialDir write SetInitialDir;
    property OnComplete: TNotifyEvent read GetOnComplete write SetOnComplete;
    property OnMatchFound: TMatchFoundEvent read GetOnMatchFound write SetOnMatchFound;
    property OnProgress: TProgressEvent read GetOnProgress write SetOnProgress;
    property SearchSubDirectories: Boolean read GetSearchSubDirs write
      SetSearchSubDirs default False;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HWS', [TFileSearch]);
  RegisterPropertyEditor(TypeInfo(String), TFileSearch, 'InitialDir', TInitialDirProperty);
end;

{ TSelectDirectoryDialog }
constructor TSelectDirectoryDialog.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);
  Left := 200;
  Top := 128;
  BorderStyle := bsDialog;
  Caption := 'Select Directory';
  ClientHeight := 179;
  ClientWidth := 283;
  FPanel := TPanel.Create(Self);
  with FPanel do
    begin
      Parent := Self;
      Left := 0;
      Top := 130;
      Width := 281;
      Height := 20;
      BevelOuter := bvLowered;
      TabOrder := 4;
    end;
  FLabel1 := TLabel.Create(Self);
  with FLabel1 do
    begin
      Parent := FPanel;
      Left := 4;
      Top := 4;
      Width := 183;
      Height := 13;
      Caption := '';
    end;
  FDirectoryListBox := TDirectoryListBox.Create(Self);
  with FDirectoryListBox do
    begin
      Parent := Self;
      Left := 0;
      Top := 20;
      Width := 281;
      Height := 111;
      DirLabel := FLabel1;
      TabOrder := 1;
    end;
  FDriveComboBox := TDriveComboBox.Create(Self);
  with FDriveComboBox do
    begin
      Parent := Self;
      Left := 0;
      Top := 0;
      Width := 281;
      Height := 19;
      DirList := FDirectoryListBox;
      TabOrder := 0;
    end;
  FOKBtn := TBitBtn.Create(Self);
  with FOKBtn do
    begin
      Parent := Self;
      Left := 127;
      Top := 151;
      Width := 75;
      Height := 25;
      TabOrder := 2;
      Kind := bkOK;
    end;
  FCancelBtn := TBitBtn.Create(Self);
  with FCancelBtn do
    begin
      Parent := Self;
      Left := 207;
      Top := 151;
      Width := 75;
      Height := 25;
      TabOrder := 3;
      Kind := bkCancel;
    end;
end;

destructor TSelectDirectoryDialog.Destroy;
begin
  FLabel1.Free;
  FOKBtn.Free;
  FCancelBtn.Free;
  FPanel.Free;
  FDirectoryListBox.Free;
  FDriveComboBox.Free;
  inherited Destroy;
end;

function TSelectDirectoryDialog.Execute;
begin
  FDirectoryListBox.Directory := FInitialDir;
  if ShowModal = mrOK then
    begin
      FSelectedDir := FDirectoryListBox.Directory;
      Result := True;
    end
  else
    begin
      FSelectedDir := '';
      Result := False;
    end;
end;

{ TInitialDirProperty }
procedure TInitialDirProperty.Edit;
var
  dlgDirectory: TSelectDirectoryDialog;
begin
  dlgDirectory := TSelectDirectoryDialog.Create(Application);
  dlgDirectory.InitialDir := GetValue;
  try
    if dlgDirectory.Execute then
      SetValue(dlgDirectory.SelectedDir);
  finally
    dlgDirectory.Free;
  end;
end;

function TInitialDirProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog,paRevertable];
end;

{TFileSearchThread}

//Given a root directory, locate all sub directories below it. This function
//is recursive in nature, performing a depth-first search.
procedure TFileSearchThread.LocateSubDirs(ARootDir: String);
var
  SearchRec: TSearchRec;
  iRet: Integer;
begin
  if ARootDir[Length(ARootDir)] <> '\' then ARootDir := ARootDir + '\';
  iRet := FindFirst(ARootDir+'*.',faDirectory,SearchRec);
  while iRet = 0 do begin
    if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then begin
      if Assigned(FOnProgress) then FOnProgress(Self,ARootDir+SearchRec.Name,FileMask);
      LocateMatchingFiles(ARootDir+SearchRec.Name);
      LocateSubDirs(ARootDir+SearchRec.Name);
    end;
    iRet := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

//Given the current directory, locate files matching mask specified.
procedure TFileSearchThread.LocateMatchingFiles(ACurDir: String);
var
  SearchRec: TSearchRec;
  iRet: Integer;
begin
  if ACurDir[Length(ACurDir)] <> '\' then ACurDir := ACurDir + '\';
  iRet := FindFirst(ACurDir+FileMask,faAnyFile,SearchRec);
  while iRet = 0 do begin
    if Assigned(FOnMatchFound) then
      FOnMatchFound(Self,SearchRec.Time,SearchRec.Size,SearchRec.Attr,
        ACurDir+SearchRec.Name);
    iRet := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

//Thread executes until terminated or exhaustive search complete.
procedure TFileSearchThread.Execute;
begin
  if (InitialDir = '') or (FileMask = '') then Exit;
  while (not Suspended) and (not Terminated) do begin
    if SearchSubDirectories then
      LocateSubDirs(InitialDir)
    else
      LocateMatchingFiles(InitialDir);
    if Assigned(OnTerminate) then OnTerminate(Self);
    Suspend;
  end;
end;

{ TFileSearch }
constructor TFileSearch.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFileSearchThread := TFileSearchThread.Create(True);
  FFileSearchThread.FreeOnTerminate := True;
end;

destructor TFileSearch.Destroy;
begin
  FFileSearchThread.Terminate;
  while not FFileSearchThread.Terminated do
    Application.ProcessMessages;
  FFileSearchThread.Free;
  inherited Destroy;
end;

procedure TFileSearch.Execute;
begin
  FFileSearchThread.Resume;
end;

function TFileSearch.GetFileMask: String;
begin
  Result := FFileSearchThread.FileMask;
end;

procedure TFileSearch.SetFileMask(AFileMask: String);
begin
  FFileSearchThread.FileMask := AFileMask;
end;

function TFileSearch.GetInitialDir: String;
begin
  Result := FFileSearchThread.InitialDir;
end;

procedure TFileSearch.SetInitialDir(ADir: String);
begin
  FFileSearchThread.InitialDir := ADir;
end;

function TFileSearch.GetOnComplete: TNotifyEvent;
begin
  Result := FFileSearchThread.OnTerminate;
end;

procedure TFileSearch.SetOnComplete(AEvent: TNotifyEvent);
begin
  FFileSearchThread.OnTerminate := AEvent;
end;

function TFileSearch.GetOnMatchFound: TMatchFoundEvent;
begin
  Result := FFileSearchThread.OnMatchFound;
end;

procedure TFileSearch.SetOnMatchFound(AEvent: TMatchFoundEvent);
begin
  FFileSearchThread.OnMatchFound := AEvent;
end;

function TFileSearch.GetOnProgress: TProgressEvent;
begin
  Result := FFileSearchThread.OnProgress;
end;

procedure TFileSearch.SetOnProgress(AEvent: TProgressEvent);
begin
  FFileSearchThread.OnProgress := AEvent;
end;

function TFileSearch.GetSearchSubDirs: Boolean;
begin
  Result := FFileSearchThread.SearchSubDirectories;
end;

procedure TFileSearch.SetSearchSubDirs(AState: Boolean);
begin
  FFileSearchThread.SearchSubDirectories := AState;
end;

end.
