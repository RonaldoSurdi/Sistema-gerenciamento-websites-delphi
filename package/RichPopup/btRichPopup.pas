//------------------------------------------------------------------------
// TBTRichPopUpMenu
// (DB-)Richedit formatting component
// Copyright 2000 Betasoft
//------------------------------------------------------------------------
unit btRichPopup;

interface

uses
  Classes,  // RegisterComponents
  Graphics, // TFont
  Dialogs, // TFontDialog
  menus, // TPopupmenu
  ComCtrls; // TCustomRichEdit;

const
  BTRichPopUpMenuVersion = '$Revision: 1.1 $';
  
type
{:Supported languages in TBTRichPopUpMenu}
TLanguage = (roEnglish, roGerman);
TBTRichPopUpMenuOption = (rpShowShortcuts);
{:Options for TBTRichPopUpMenu}
TBTRichPopUpMenuOptions = set of TBTRichPopUpMenuOption;

TBTRichPopUpMenu = class(TPopUpMenu)

  private
    { Private-Deklarationen }
     FRichEdit: TCustomRichEdit;
     FFontDialog: TFontDialog;
     FLanguage : TLanguage;
     FOptions  : TBTRichPopUpMenuOptions;

     SavedStyle : TFont;
     SavedParagraph: TParaAttributes;

     procedure Undo(Sender: TObject);
     procedure Cut(Sender: TObject);
     procedure Copy(Sender: TObject);
     procedure Paste(Sender: TObject);
     procedure DoClear(Sender: TObject);
     procedure SelectAll(Sender: TObject);

     procedure FormatChar(Sender: TObject);
     procedure Bold(Sender: TObject);
     procedure Underlined(Sender: TObject);
     procedure Italic(Sender: TObject);
     procedure Left(Sender: TObject);
     procedure Center(Sender: TObject);
     procedure Right(Sender: TObject);
     procedure Bullet(Sender: TObject);

  {:Additional OnPopUp-handler enables/disables the menu items. }
  procedure MyPopup(Sender: TObject);

  public
     miUndo,
     miCut, miCopy, miPaste, miClear,
     miSelectAll,
     miSepEdit,
     miFont,
     miSepFont,
     miLeft, miCenter, miRight,
     miSepAlign,
     miBold, miUnderlined, miItalic,
     miSepBUI,
     miBullet: TMenuItem;

    {:In this method, the BTRichPop menu items are created.}
    procedure Loaded; override;

     procedure Popup(X, Y: Integer); override;


     //:RichEdit component
     property RichEdit: TCustomRichEdit read FRichEdit write FRichEdit;


   published
     { Published-Deklarationen }

    {:If FontDialog is assigned, a new menu entry will appear.}
    property FontDialog: TFontdialog read FFontDialog write FFontDialog;

    {:Select roEnglish or roGerman.}
    property Language: TLanguage read FLanguage write FLanguage;

    {:Enable shortcuts. Only works if each RichEdit has its own RichPop!}
    // property PopupOptions: TBTRichPopUpMenuOptions read FOptions write FOptions;

  end;

procedure CharAttr(RichEdit: TCustomRichEdit;
                   const newStyle: TFontStyle);
procedure PrepEdit(RichEdit: TCustomRichEdit);

procedure Register;

implementation
uses dbctrls, db, clipbrd, windows, Messages;

procedure Register;
begin
  RegisterComponents('HWS', [TBTRichPopUpMenu]);
end;

procedure CharAttr;
begin
if Assigned(RichEdit) then
begin
    PrepEdit(RichEdit);
    with Richedit.SelAttributes do begin
        if not (newStyle in Richedit.SelAttributes.style)
        then Style := Style + [newStyle]
        else Style := Style - [newStyle];
    end;
end;
end;

procedure PrepEdit;
var
SelStartMemo, SelEndMemo: integer;
begin
{$IFNDEF VER90}
if RichEdit is TDBRichEdit then
   with TDBRichEdit(RichEdit)
   do if DataSource.DataSet.State <> dsEdit
        then
        begin
            SelStartMemo := SelStart;
            SelEndMemo := SelLength;
            DataSource.DataSet.Edit;
            SelStart := SelStartMemo;
            SelLength := SelEndMemo;
        end;
{$ENDIF}
end;

//---------------------------------------------------------
//  TBTRichPopUpMenu
//---------------------------------------------------------
procedure TBTRichPopUpMenu.Loaded;
var mi : TMenuItem;
cCaptionUndo,
cCaptionCut,
cCaptionCopy,
cCaptionPaste,
cCaptionDelete,
cCaptionSelectAll,
cCaptionFont,
cCaptionBold,
cCaptionUnderlined,
cCaptionItalic,
cCaptionAlignLeft,
cCaptionAlignCentered,
cCaptionAlignRight,
cCaptionBullet: string;

begin
inherited Loaded;

if not (csDesigning in Componentstate) then begin

    case Language of
    roEnglish:
    begin
        cCaptionUndo := 'Undo';
        cCaptionCut := 'Cut';
        cCaptionCopy := 'Copy';
        cCaptionPaste := 'Paste';
        cCaptionDelete := 'Delete';
        cCaptionSelectAll := 'Select all';
        cCaptionFont := 'Font...';
        cCaptionBold := 'Bold';
        cCaptionUnderlined := 'Underlined';
        cCaptionItalic := 'Italic';
        cCaptionAlignLeft := 'Align left';
        cCaptionAlignCentered := 'Centered';
        cCaptionAlignRight := 'Align Right';
        cCaptionBullet := 'Bullet';
    end;
    roGerman :
    begin
        cCaptionUndo := 'Rückgängig';
        cCaptionCut := 'Ausschneiden';
        cCaptionCopy := 'Kopieren';
        cCaptionPaste := 'Einfügen';
        cCaptionDelete := 'Löschen';
        cCaptionSelectAll := 'Alles markieren';
        cCaptionFont := 'Schriftart...';
        cCaptionBold := 'Fett';
        cCaptionUnderlined := 'Unterstrichen';
        cCaptionItalic := 'Kursiv';
        cCaptionAlignLeft := 'Linksbündig';
        cCaptionAlignCentered := 'Zentriert';
        cCaptionAlignRight := 'Rechtsbündig';
        cCaptionBullet := 'Aufzählung';
    end;
    end; // case

    SavedStyle := TFont.Create;
    SavedParagraph := TParaAttributes.Create(Richedit);

    miUndo := TMenuItem.Create(self);
    with miUndo do begin
        Caption := cCaptionUndo;
        OnClick := Undo;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('Z'), [ssCtrl]);
    end;
    items.Add(miUndo);

    mi := TMenuItem.Create(self);
    with mi do begin
    Caption := '-';
    end;
    items.Add(mi);

    miCut := TMenuItem.Create(self);
    with miCut do begin
        Caption := cCaptionCut;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('X'), [ssCtrl]);
        OnClick := Cut;
    end;
    items.Add(miCut);

    miCopy := TMenuItem.Create(self);
    with miCopy do begin
        Caption := cCaptionCopy;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('C'), [ssCtrl]);
        OnClick := Copy;
    end;
    items.Add(miCopy);

    miPaste := TMenuItem.Create(self);
    with miPaste do begin
        Caption := cCaptionPaste;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('V'), [ssCtrl]);
        OnClick := Paste;
    end;
    items.Add(miPaste);

    miClear := TMenuItem.Create(self);
    with miClear do begin
        Caption := cCaptionDelete;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word(VK_DELETE), []);
        OnClick := DoClear;
    end;
    items.Add(miClear);

    miSelectAll := TMenuItem.Create(self);
    with miSelectAll do begin
        Caption := cCaptionSelectAll;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('A'), [ssCtrl]);
        OnClick := SelectAll;
    end;
    items.Add(miSelectAll);

    miSepEdit := TMenuItem.Create(self);
    miSepEdit.Caption := '-';
    items.Add(miSepEdit);

    if not Assigned(FontDialog) then begin
      FontDialog := TFontDialog.Create(self);
    end;

    if Assigned(FontDialog) then begin
        miFont := TMenuItem.Create(self);
        with miFont do begin
            Caption := cCaptionFont;
            OnClick := FormatChar;
        end;
        items.Add(miFont);

        miSepFont := TMenuItem.Create(self);
        miSepFont.Caption := '-';
        items.Add(miSepFont);

    end;

    miBold := TMenuItem.Create(self);
    with miBold do begin
        Caption := cCaptionBold;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('B'), [ssCtrl]);
        OnClick := Bold;
    end;
    items.Add(miBold);

    miUnderlined := TMenuItem.Create(self);
    with miUnderlined do begin
        Caption := cCaptionUnderlined;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('U'), [ssCtrl]);
        OnClick := Underlined;
    end;
    items.Add(miUnderlined);

    miItalic := TMenuItem.Create(self);
    with miItalic do begin
        Caption := cCaptionItalic;
        if rpShowShortcuts in FOptions
           then ShortCut := menus.ShortCut(Word('I'), [ssCtrl]);
        OnClick := Italic;
    end;
    items.Add(miItalic);

    miSepBUI := TMenuItem.Create(self);
    miSepBUI.Caption := '-';
    items.Add(miSepBUI);

    miLeft := TMenuItem.Create(self);
    with miLeft do begin
        Caption := cCaptionAlignLeft;
        OnClick := Left;
        RadioItem := true;
        Checked := true;
        GroupIndex := 1;
    end;
    items.Add(miLeft);

    miCenter := TMenuItem.Create(self);
    with miCenter do begin
        Caption := cCaptionAlignCentered;
        OnClick := Center;
        RadioItem := true;
        GroupIndex := 1;
    end;
    items.Add(miCenter);

    miRight := TMenuItem.Create(self);
    with miRight do begin
        Caption := cCaptionAlignRight;
        OnClick := Right;
        RadioItem := true;
        GroupIndex := 1;
    end;
    items.Add(miRight);

    miSepAlign := TMenuItem.Create(self);
    miSepAlign.Caption := '-';
    items.Add(miSepAlign);

    miBullet := TMenuItem.Create(self);
    with miBullet do begin
        Caption := cCaptionBullet;
        OnClick := Bullet;
    end;
    items.Add(miBullet);

end;

end;

procedure TBTRichPopUpMenu.Popup;
begin
if Assigned(OnPopUp) then OnPopUp(Self);
MyPopup(Self);
inherited Popup(X, Y);
end;

procedure TBTRichPopUpMenu.MyPopup;
var
{$IFNDEF VER90}
SelStartMemo, SelEndMemo: integer;
{$ENDIF}

canEdit: boolean;
begin

canEdit := true;

{$IFNDEF VER90}
if PopupComponent is TDBRichEdit
   then RichEdit := TDBRichEdit(PopupComponent)
   else RichEdit := TRichEdit(PopupComponent);

if RichEdit is TDBRichEdit then
   with TDBRichEdit(RichEdit)
   do
   begin
        canEdit := ReadOnly = false;
        if canEdit and (DataSource.DataSet.State <> dsEdit)
        then
        begin
            SelStartMemo := SelStart;
            SelEndMemo := SelLength;
            DataSource.DataSet.Edit;
            SelStart := SelStartMemo;
            SelLength := SelEndMemo;
        end;

        miBold.enabled := not Plaintext and canEdit;
        miUnderlined.enabled := not Plaintext and canEdit;
        miItalic.enabled := not Plaintext and canEdit;
        miLeft.enabled := not Plaintext and canEdit;
        miCenter.enabled := not Plaintext and canEdit;
        miRight.enabled := not Plaintext and canEdit;
        miBullet.enabled := not Plaintext and canEdit;

        if Assigned(miFont) then
           miFont.enabled := not Plaintext and canEdit;

        miSepEdit.visible := canEdit;

        miBold.Visible := canEdit;
        miUnderlined.Visible := canEdit;
        miItalic.Visible := canEdit;
        miSepBUI.visible := canEdit;

        if Assigned(miFont) then
           miSepFont.visible := canEdit;

        miLeft.Visible := canEdit;
        miCenter.Visible := canEdit;
        miRight.Visible := canEdit;
        miSepAlign.visible := canEdit;

        miBullet.Visible := canEdit;

   end;

{$ELSE}

if not Assigned(RichEdit)
   then RichEdit := TRichEdit(PopupComponent);

{$ENDIF}


miUndo.enabled  := (Richedit.Perform(EM_CANUNDO, 0, 0)>0) and canEdit;
miCut.enabled   := (RichEdit.SelLength>0) and canEdit;
miCopy.enabled  :=  RichEdit.SelLength>0;
miClear.enabled := (RichEdit.SelLength>0) and canEdit;
miPaste.enabled := ClipBoard.HasFormat(CF_TEXT) and canEdit;
miSelectAll.enabled := Length(RichEdit.text)>RichEdit.SelLength;

with RichEdit.SelAttributes do begin
     miBold.checked        := fsBold in Style;
     miUnderlined.checked  := fsUnderline in Style;
     miItalic.checked      := fsItalic in Style;
end;

with RichEdit.Paragraph do begin
    miLeft.Checked      := Alignment = taLeftJustify;
    miCenter.Checked    := Alignment = taCenter;
    miRight.Checked     := Alignment = taRightJustify;
    miBullet.Checked    := Numbering <> nsNone;
end;

end;

procedure TBTRichPopUpMenu.Undo;
begin
Richedit.Perform(WM_UNDO, 0, 0);
end;

procedure TBTRichPopUpMenu.Cut;
begin
RichEdit.Perform(WM_CUT, 0, 0);
end;

procedure TBTRichPopUpMenu.Copy;
begin
Richedit.Perform(WM_COPY, 0, 0);
end;

procedure TBTRichPopUpMenu.Paste;
begin
Richedit.Perform(WM_PASTE, 0, 0);
end;

procedure TBTRichPopUpMenu.DoClear;
begin
Richedit.Perform(WM_CLEAR, 0, 0);
end;

procedure TBTRichPopUpMenu.SelectAll;
begin
Richedit.SelectAll;
end;

procedure TBTRichPopUpMenu.Bold;
begin
CharAttr(RichEdit, fsBold);
end;

procedure TBTRichPopUpMenu.Underlined;
begin
CharAttr(RichEdit, fsUnderline);
end;

procedure TBTRichPopUpMenu.Italic;
begin
CharAttr(RichEdit, fsItalic);
end;

procedure TBTRichPopUpMenu.FormatChar;
begin
if Assigned(FontDialog) then
with FontDialog do begin
    Font := TFont(Richedit.SelAttributes);
    if execute then RichEdit.SelAttributes := TTextAttributes(Font);
end;
end;

procedure TBTRichPopUpMenu.Bullet;
begin
with Richedit.Paragraph do
     if Numbering = nsNone
     then Numbering := nsBullet
     else Numbering := nsNone
end;

procedure TBTRichPopUpMenu.Left;
begin
Richedit.Paragraph.Alignment := taLeftJustify;
miLeft.Checked := true;
end;

procedure TBTRichPopUpMenu.Center;
begin
Richedit.Paragraph.Alignment := taCenter;
miCenter.Checked := true;
end;

procedure TBTRichPopUpMenu.Right;
begin
Richedit.Paragraph.Alignment := taRightJustify;
miRight.Checked := true;
end;

{$IFDEF DEMO}
initialization
//if FindWindow('TAppBuilder', nil)=0 then
ShowMessage('BetaTools Component Collection © 1997, 1998 BetaSoft');
{$ENDIF}

end.


