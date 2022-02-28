unit U_keyword;

(* Delphi to HTML program *)
(* Author: T-odd Hutula *)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Menus, FileCtrl;

type
  TfrmKeyword = class(TForm)
    lbKeywords: TListBox;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    DeleteKeyword1: TMenuItem;
    N1: TMenuItem;
    AssignColor1: TMenuItem;
    dlgColor: TColorDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure DeleteKeyword1Click(Sender: TObject);
    procedure AssignColor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetReadOnlyState(FileName: string; State: Boolean);
    function KeywordExists(Keyword: string): Integer;
  end;

const
  KEYWORD_FILE = 'KEYWORDS.TXT';

var
  frmKeyword: TfrmKeyword;

implementation

{$R *.DFM}

procedure TfrmKeyword.SetReadOnlyState(FileName: string; State: Boolean);
begin
  if (State) then
    FileSetAttr(FileName, faArchive or faReadOnly)
  else
    FileSetAttr(FileName, faArchive and not faReadOnly);
end;

function TfrmKeyword.KeywordExists(Keyword: string): Integer;
var
  S: string;
  I: integer;
begin
  Result := -1;
  with lbKeywords do
  begin
    for I := 0 to Items.Count - 1 do
    begin
      S := Copy(Items[I], 1, Pos(' ', Items[I]) - 1);
      if (S = Keyword) then
      begin
        Result := I;
        Break;
      end;
    end;
  end;
end;

procedure TfrmKeyword.FormCreate(Sender: TObject);
var
  I: integer;
  SList: TStringList;
begin
  SList := nil;
  try
    SList := TStringList.Create;
    SList.Clear;
    if (FileExists(ExtractFilePath(Application.ExeName) + KEYWORD_FILE)) then
    begin
      SList.LoadFromFile(ExtractFilePath(Application.ExeName) + KEYWORD_FILE);
      for I := 0 to SList.Count - 1 do
        lbKeywords.Items.Add(SList.Strings[I]);
    end;
  finally
    SList.Free;
  end;
end;

procedure TfrmKeyword.btnOKClick(Sender: TObject);
var
  I: integer;
  F: TextFile;
  FName: string;
begin
  FName := ExtractFilePath(Application.ExeName) + KEYWORD_FILE;
  try
    SetReadOnlyState(FName, False);
    AssignFile(F, FName);
    Rewrite(F);
    for I := 0 to lbKeywords.Items.Count - 1 do
      Writeln(F, lbKeywords.Items[I]);
  finally
    CloseFile(F);
    SetReadOnlyState(FName, True);
  end;
end;

procedure TfrmKeyword.Add1Click(Sender: TObject);
var
  S: string;
  I: integer;
begin
  S := InputBox('Keywords', 'Enter new keyword:', '');
  S := Trim(S);
  if (S <> '') then
  begin
    I := KeywordExists(S);
    if (I < 0) then
      lbKeywords.Items.Add(S + ' ' + IntToStr(clBlack))
    else
    begin
      MessageDlg('Keyword already in list.', mtWarning, [mbOK], 0);
      lbKeywords.ItemIndex := I;
      lbKeywords.SetFocus;
    end;
  end;
end;

procedure TfrmKeyword.DeleteKeyword1Click(Sender: TObject);
var
  I: integer;
begin
  I := 0;
  if (lbKeywords.SelCount > 0) then
  repeat
    if (lbKeywords.Selected[I]) then
    begin
      lbKeywords.Items.Delete(I);
      Dec(I);
    end;
    Inc(I);
  until (lbKeywords.SelCount < 1);
end;

procedure TfrmKeyword.AssignColor1Click(Sender: TObject);
var
  S: string;
  I, iC: integer;
begin
  if (lbKeywords.SelCount < 2) then
  begin
    for I := 0 to lbKeywords.Items.Count - 1 do
    begin
      if (lbKeywords.Selected[I]) then
      begin
        iC := StrToInt(Copy(lbKeywords.Items[I], Pos(' ', lbKeywords.Items[I]) + 1,
                   Length(lbKeywords.Items[I])));
        dlgColor.Color := iC;
        if (dlgColor.Execute) then
        begin
          iC := dlgColor.Color;
          S := IntToStr(iC);
          lbKeyWords.Items[I] := Copy(lbKeywords.Items[I], 1,
                                      Pos(' ', lbKeywords.Items[I])) + S;
          Break;
        end;
      end;
    end;
  end
  else
  begin
    if (dlgColor.Execute) then
    begin
      iC := dlgColor.Color;
      S := IntToStr(iC);
      for I := 0 to lbKeywords.Items.Count - 1 do
      begin
        if (lbKeywords.Selected[I]) then
          lbKeyWords.Items[I] := Copy(lbKeywords.Items[I], 1,
                                      Pos(' ', lbKeywords.Items[I])) + S;
      end;
    end;
  end;
end;

end.
