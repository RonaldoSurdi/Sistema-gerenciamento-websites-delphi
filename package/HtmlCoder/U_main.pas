unit U_main;

(* Delphi to HTML program *)
(* Author: T-odd Hutula *)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, ComCtrls, Clipbrd, Buttons;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    StatusBar: TStatusBar;
    Edit1: TMenuItem;
    Clear1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Panel2: TPanel;
    reHtml: TRichEdit;
    Splitter1: TSplitter;
    reCode: TRichEdit;
    PopupMenu2: TPopupMenu;
    Copy2: TMenuItem;
    Paste2: TMenuItem;
    ClearHTMLWindow1: TMenuItem;
    N1: TMenuItem;
    KeywordFile1: TMenuItem;
    Panel3: TPanel;
    btnFormat: TBitBtn;
    Panel4: TPanel;
    btnCopyHTML: TBitBtn;
    About1: TMenuItem;
    Info1: TMenuItem;
    dlgOpen: TOpenDialog;
    OpenFile1: TMenuItem;
    Options1: TMenuItem;
    IncludeSig: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure btnFormatClick(Sender: TObject);
    procedure Copy2Click(Sender: TObject);
    procedure Paste2Click(Sender: TObject);
    procedure ClearHTMLWindow1Click(Sender: TObject);
    procedure KeywordFile1Click(Sender: TObject);
    procedure btnCopyHTMLClick(Sender: TObject);
    procedure Info1Click(Sender: TObject);
    procedure OpenFile1Click(Sender: TObject);
    procedure IncludeSigClick(Sender: TObject);
  private
    { Private declarations }
    procedure HintHandler(Sender: TObject);
  public
    { Public declarations }
    slKeyword: TStringList;
    function CodeToHTML(Code: string): string;
    function CheckForKeyword(CodeWord: string): string;
    function AssignColorTags(CodeWord, RGBValue: string): string;
    function UP(Str: string): string;
  end;

const
  KEYWORD_FILE = 'KEYWORDS.TXT';

resourcestring
CreditLine1 = '<FONT COLOR="#3333FF"><FONT SIZE=+2>D</FONT></FONT><FONT COLOR="#FF0000">'+
              '<FONT SIZE=+1>e</FONT></FONT><FONT COLOR="#3333FF">l</FONT>'+
              '<FONT COLOR="#FF0000"><FONT SIZE=-1>p</FONT></FONT><FONT COLOR="#3333FF">'+
              'h</FONT><FONT COLOR="#FF0000"><FONT SIZE=+1>i</FONT></FONT>';

CreditLine2 = '<FONT COLOR="#3333FF"><FONT SIZE=+2>C</FONT></FONT><FONT COLOR="#FF0000">'+
              '<FONT SIZE=+1>o</FONT></FONT><FONT COLOR="#3333FF">d</FONT>'+
              '<FONT SIZE=-1><FONT COLOR="#FF0000">e</FONT>';

CreditLine3 = '<FONT COLOR="#3333FF">F</FONT></FONT><FONT COLOR="#FF0000">o</FONT><FONT COLOR="#3333FF">'+
              '<FONT SIZE=+1>r</FONT></FONT><FONT COLOR="#FF0000"><FONT SIZE=+2>'+
              'm</FONT></FONT><FONT COLOR="#3333FF"><FONT SIZE=+1>a</FONT></FONT>'+
              '<FONT COLOR="#FF0000">t</FONT><FONT COLOR="#3333FF"><FONT SIZE=-1>'+
              't</FONT></FONT><FONT COLOR="#FF0000">e</FONT><FONT COLOR="#3333FF"><FONT SIZE=+1>r</FONT></FONT>';

CreditLine4 = '<FONT SIZE=+2> </FONT>b</FONT><FONT COLOR="#FF0000">'+
              '<FONT SIZE=+1>y </FONT></FONT><FONT COLOR="#3333FF"><FONT SIZE=+2>'+
              'T</FONT></FONT><FONT SIZE=+1><FONT COLOR="#3366FF">-</FONT>'+
              '<FONT COLOR="#CC0000">o</FONT></FONT><FONT COLOR="#000099">d</FONT><FONT SIZE=-1><FONT COLOR="#FF0000">d</FONT>';

CreditLine5 = '<FONT COLOR="#3333FF">H</FONT></FONT><FONT COLOR="#FF0000">u</FONT><FONT COLOR="#3333FF">'+
              '<FONT SIZE=+1>t</FONT></FONT><FONT COLOR="#FF0000"><FONT SIZE=+2>'+
              'u</FONT></FONT><FONT COLOR="#3333FF"><FONT SIZE=+1>l</FONT></FONT>'+
              '<FONT COLOR="#FF0000">a</FONT><BR>';

var
  frmMain: TfrmMain;

implementation

uses U_keyword, U_about;

{$R *.DFM}

procedure TfrmMain.HintHandler(Sender: TObject);
begin
  StatusBar.Panels[0].Text := GetLongHint(Application.Hint);
end;

function TfrmMain.UP(Str: string): string;
begin
  Result := UpperCase(Str);
end;

function TfrmMain.AssignColorTags(CodeWord, RGBValue: string): string;
var
  S: string;
begin
  //don't assign tags if color is black
  if (StrToInt(RGBValue) > 0) then
    S := '<FONT COLOR="#'+IntToHex(StrToInt(RGBValue), 6)+'">'+CodeWord+'</FONT>'
  else
    S := CodeWord;
  Result := S;
end;

function TfrmMain.CheckForKeyword(CodeWord: string): string;
var
  BoldTag: string;
  I: integer;
  S, WordColor: string;
begin
  BoldTag := CodeWord;
  for I := 0 to slKeyword.Count - 1 do
  begin
    S := Copy(slKeyword.Strings[I], 1, Pos(' ', slKeyword.Strings[I]) - 1);
    WordColor := Copy(slKeyword.Strings[I], Pos(' ', slKeyword.Strings[I]) + 1,
                      Length(slKeyword.Strings[I]));
    if (UP(S) = UP(CodeWord)) then
    begin
      BoldTag := '<B>'+AssignColorTags(CodeWord, WordColor)+'</B>';
      Break;
    end
    else
    begin
      if (UP(S)+';' = UP(CodeWord)) then
      begin
        BoldTag := '<B>'+AssignColorTags(Copy(CodeWord, 1, Length(CodeWord) - 1),
                                         WordColor)+'</B>'+';';
        Break;
      end
      else
      begin
        if (UP(S)+'.' = UP(CodeWord)) then
        begin
          BoldTag := '<B>'+AssignColorTags(Copy(CodeWord, 1, Length(CodeWord) - 1),
                                           WordColor)+'</B>'+'.';
          Break;
        end;
      end;
    end;
  end;
  Result := BoldTag
end;

function TfrmMain.CodeToHTML(Code: string): string;
var
  X, SpCnt: integer;
  S, C, Space: string;
  HtmlLine, MakeLine: string;
begin
  SpCnt := 0;
  HtmlLine := '';
  S := Code;
  for X := 1 to Length(S) do
  begin
    if (S[X] = ' ') then
      Inc(SpCnt)
    else
      Break;
  end;
  Space := '';
  for X := 1 to SpCnt do
    Space := Space + '&nbsp;';
  HtmlLine := Trim(HtmlLine + Space);
  S := Trim(S);
  C := '';
  MakeLine := '';
  for X := 1 to Length(S) do
  begin
    if (X = Length(S)) then
    begin
      C := C + S[X];
      MakeLine := Trim(MakeLine + ' ' + CheckForKeyword(C));
    end
    else
    begin
      if (S[X] <> ' ') then
        C := C + S[X]
      else
      begin
        MakeLine := Trim(MakeLine + ' ' + CheckForKeyword(C));
        C := '';
      end;
    end;
  end;
  Result := HtmlLine + MakeLine + '<BR>';
end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := '';
  slKeyword := TstringList.Create;
  slKeyword.Clear;
  if (FileExists(ExtractFilePath(Application.ExeName) + KEYWORD_FILE)) then
    slKeyword.LoadFromFile(ExtractFilePath(Application.ExeName) + KEYWORD_FILE);
  Application.OnHint := HintHandler;
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
begin
  reCode.Lines.Clear;
end;

procedure TfrmMain.Copy1Click(Sender: TObject);
begin
  reCode.CopyToClipboard;
end;

procedure TfrmMain.Paste1Click(Sender: TObject);
begin
  if Clipboard.HasFormat(CF_TEXT) then
    reCode.Lines.Add(Clipboard.AsText);
end;

procedure TfrmMain.btnFormatClick(Sender: TObject);
var
  I: integer;
begin
  try
    Screen.Cursor := crHourglass;
    reHtml.Lines.Clear;
    reHtml.Lines.Add('<PRE><BR>');
    for I := 0 to reCode.Lines.Count - 1 do
    begin
      reHtml.Lines.Add(CodeToHTML(reCode.Lines[I]));
    end;
    if (IncludeSig.Checked) then
    begin
      reHtml.Lines.Add(CreditLine1);
      reHtml.Lines.Add(CreditLine2);
      reHtml.Lines.Add(CreditLine3);
      reHtml.Lines.Add(CreditLine4);
      reHtml.Lines.Add(CreditLine5);
    end;
    reHtml.Lines.Add('</PRE>');
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.Copy2Click(Sender: TObject);
begin
  reHtml.CopyToClipboard;
end;

procedure TfrmMain.Paste2Click(Sender: TObject);
begin
  if Clipboard.HasFormat(CF_TEXT) then
    reHtml.Lines.Add(Clipboard.AsText);
end;

procedure TfrmMain.ClearHTMLWindow1Click(Sender: TObject);
begin
  reHtml.Lines.Clear;
end;

procedure TfrmMain.KeywordFile1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmKeyword, frmKeyword);
    Application.ProcessMessages;
    if (frmKeyword.ShowModal = mrOK) then
    begin
      slKeyword.Clear;
      slKeyword.LoadFromFile(ExtractFilePath(Application.ExeName) + KEYWORD_FILE);
    end;
  finally
    frmKeyword.Free;
  end;
end;

procedure TfrmMain.btnCopyHTMLClick(Sender: TObject);
begin
  btnCopyHTML.SetFocus;
  with reHtml do
  begin
    SelectAll;
    Application.ProcessMessages;
    CopyToClipboard;
    SelLength := 0;
  end;
  MessageDlg('HTML window contents copied to clipboard.', mtInformation,
             [mbOK], 0);
end;

procedure TfrmMain.Info1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TAboutBox, AboutBox);
    Application.ProcessMessages;
    AboutBox.ShowModal;
  finally
    AboutBox.Free;
  end;
end;

procedure TfrmMain.OpenFile1Click(Sender: TObject);
var
  S: string;
begin
  GetDir(0, S);
  with dlgOpen do
  begin
    InitialDir := S;
    if (Execute) then
    begin
      reCode.Lines.Clear;
      reCode.Lines.LoadFromFile(FileName);
    end;
  end;
end;

procedure TfrmMain.IncludeSigClick(Sender: TObject);
begin
  IncludeSig.Checked := not (IncludeSig.Checked);
end;

end.
