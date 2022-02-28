//------------------------------------------------------------------------
// TRxBTRichPopUpMenu
// (RxDB-)RxRichedit formatting component
// Copyright 2000 Betasoft
// changed: KoBraSoft
//------------------------------------------------------------------------
unit btRxRichPopup; //changed: KoBraSoft

interface

uses
  Classes,  // RegisterComponents
  Graphics, // TFont
  Dialogs, // TFontDialog
  menus, // TPopupmenu
  ComCtrls, // TCustomRichEdit;
  RxRiched, // TRxCustomRichEdit;  //added: KoBraSoft
  extdlgs;  // TOpenPictureDialog;  //added: KoBraSoft
const
  BTRxRichPopUpMenuVersion = '$Revision: 1.2 $';   //changed: KoBraSoft

type
{:Supported languages in TBTRichPopUpMenu}
TLanguage = (roEnglish, roGerman);
TBTRxRichPopUpMenuOption = (rpShowShortcuts);      //changed: KoBraSoft
{:Options for TBTRichPopUpMenu}
TBTRxRichPopUpMenuOptions = set of TBTRxRichPopUpMenuOption;  //changed: KoBraSoft

TBTRxRichPopUpMenu = class(TPopUpMenu)        //changed: KoBraSoft

  private
    { Private-Deklarationen }
     FRichEdit: TRxCustomRichEdit;            //changed: KoBraSoft
     FFontDialog: TFontDialog;
     FOpenPictureDialog: TOpenPictureDialog;  //added: KoBraSoft
     FLanguage : TLanguage;
     FOptions  : TBTRxRichPopUpMenuOptions;   //changed: KoBraSoft

     SavedStyle : TFont;
     SavedParagraph: TRxParaAttributes;      //changed: KoBraSoft

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
     procedure Picture(Sender: TObject);      //added: KoBraSoft
     procedure InsertObject(Sender: TObject); //added: KoBraSoft
     procedure Superscript(Sender: TObject);  //added: KoBraSoft
     procedure Normal(Sender: TObject);       //added: KoBraSoft
     procedure Subscript(Sender: TObject);    //added: KoBraSoft

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
     miSuperscript, miNormal, miSubscript,   //added: KoBraSoft
     miSepAlign,
     miBold, miUnderlined, miItalic,
     miSepBUI,
     miBullet,
     miPic,               //added: KoBraSoft
     miInObj: TMenuItem;  //added: KoBraSoft

    {:In this method, the BTRichPop menu items are created.}
    procedure Loaded; override;

     procedure Popup(X, Y: Integer); override;


     //:RichEdit component
     property RichEdit: TRxCustomRichEdit read FRichEdit write FRichEdit;  //changed: KoBraSoft


   published
     { Published-Deklarationen }

    {:If FontDialog is assigned, a new menu entry will appear.}
    property FontDialog: TFontdialog read FFontDialog write FFontDialog;

    {:If OpenPictureDialog is assigned, a new menu entry will appear.}     //added: KoBraSoft
    property OpenPictureDialog: TOpenPictureDialog read FOpenPictureDialog write FOpenPictureDialog; //added: KoBraSoft

    {:Select roEnglish or roGerman.}
    property Language: TLanguage read FLanguage write FLanguage;

    {:Enable shortcuts. Only works if each RichEdit has its own RichPop!}
    // property PopupOptions: TBTRichPopUpMenuOptions read FOptions write FOptions;

  end;

procedure CharAttr(RichEdit: TRxCustomRichEdit;   //changed: KoBraSoft
                   const newStyle: TFontStyle);
procedure PrepEdit(RichEdit: TRxCustomRichEdit);    //changed: KoBraSoft

procedure Register;

implementation
uses dbriched, dbctrls, db, clipbrd, windows, Messages, jpeg, RxGIF;   //changed: KoBraSoft

procedure Register;
begin
  RegisterComponents('HWS', [TBTRxRichPopUpMenu]);      //changed: KoBraSoft
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
if RichEdit is TRXDBRichEdit then     //changed: KoBraSoft
   with TRXDBRichEdit(RichEdit)       //changed: KoBraSoft
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
//  TRxBTRichPopUpMenu                      //changed: KoBraSoft
//---------------------------------------------------------
procedure TBTRxRichPopUpMenu.Loaded;        //changed: KoBraSoft
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
cCaptionSuperscript,       //added: KoBraSoft
cCaptionNormal,            //added: KoBraSoft
cCaptionSubsript,          //added: KoBraSoft
cCaptionBullet,
cCaptionPic,               //added: KoBraSoft
cCaptionInObj: string;     //added: KoBraSoft

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
        cCaptionSuperscript := 'Superscript';    //added: KoBraSoft
        cCaptionNormal := 'Normal';              //added: KoBraSoft
        cCaptionSubsript := 'Subscript';         //added: KoBraSoft
        cCaptionBullet := 'Bullet';
        cCaptionPic := 'Picture';                //added: KoBraSoft
        cCaptionInObj := 'Insert Object';        //added: KoBraSoft
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
        cCaptionSuperscript := 'Hochgestellt';   //added: KoBraSoft
        cCaptionNormal := 'Normal';              //added: KoBraSoft
        cCaptionSubsript := 'Tiefgestellt';      //added: KoBraSoft
        cCaptionBullet := 'Aufzählung';
        cCaptionPic := 'Bild einfügen';          //added: KoBraSoft
        cCaptionInObj := 'Objekt einfügen';      //added: KoBraSoft
    end;
    end; // case

    SavedStyle := TFont.Create;
    SavedParagraph := TRxParaAttributes.Create(Richedit);  //changed: KoBraSoft

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

    miSepBUI := TMenuItem.Create(self);             //added: KoBraSoft
    miSepBUI.Caption := '-';                        //added: KoBraSoft
    items.Add(miSepBUI);                            //added: KoBraSoft

    miSuperscript := TMenuItem.Create(self);        //added: KoBraSoft
    with miSuperscript do begin                     //added: KoBraSoft
        Caption := cCaptionSuperscript;             //added: KoBraSoft
        OnClick := Superscript;                     //added: KoBraSoft
        RadioItem := true;                          //added: KoBraSoft
        GroupIndex := 2;                            //added: KoBraSoft
    end;                                            //added: KoBraSoft
    items.Add(miSuperscript);                       //added: KoBraSoft

    miNormal := TMenuItem.Create(self);             //added: KoBraSoft
    with miNormal do begin                          //added: KoBraSoft
        Caption := cCaptionNormal;                  //added: KoBraSoft
        OnClick := Normal;                          //added: KoBraSoft
        RadioItem := true;                          //added: KoBraSoft
        Checked := true;                            //added: KoBraSoft
        GroupIndex := 2;                            //added: KoBraSoft
    end;                                            //added: KoBraSoft
    items.Add(miNormal);                            //added: KoBraSoft

    miSubscript := TMenuItem.Create(self);          //added: KoBraSoft
    with miSubscript do begin                       //added: KoBraSoft
        Caption := cCaptionSubsript;                //added: KoBraSoft
        OnClick := Subscript;                       //added: KoBraSoft
        RadioItem := true;                          //added: KoBraSoft
        GroupIndex := 2;                            //added: KoBraSoft
    end;                                            //added: KoBraSoft
    items.Add(miSubscript);                         //added: KoBraSoft

    miSepAlign := TMenuItem.Create(self);
    miSepAlign.Caption := '-';
    items.Add(miSepAlign);

    miBullet := TMenuItem.Create(self);
    with miBullet do begin
        Caption := cCaptionBullet;
        OnClick := Bullet;
    end;
    items.Add(miBullet);

    miSepAlign := TMenuItem.Create(self);           //added: KoBraSoft
    miSepAlign.Caption := '-';                      //added: KoBraSoft
    items.Add(miSepAlign);                          //added: KoBraSoft

    if not Assigned(OpenPictureDialog) then begin   //added: KoBraSoft
      OpenPictureDialog := TOpenPictureDialog.Create(self);  //added: KoBraSoft
    end;                                            //added: KoBraSoft

    if Assigned(OpenPictureDialog) then begin       //added: KoBraSoft
      miPic := TMenuItem.Create(self);              //added: KoBraSoft
      with miPic do begin                           //added: KoBraSoft
        Caption := cCaptionPic;                     //added: KoBraSoft
        OnClick := Picture;                         //added: KoBraSoft
      end;                                          //added: KoBraSoft
      items.Add(miPic);                             //added: KoBraSoft
    end;                                            //added: KoBraSoft

        miInObj := TMenuItem.Create(self);          //added: KoBraSoft
    with miInObj do begin                           //added: KoBraSoft
        Caption := cCaptionInObj;                   //added: KoBraSoft
        OnClick := InsertObject;                    //added: KoBraSoft
    end;                                            //added: KoBraSoft
    items.Add(miInObj);                             //added: KoBraSoft

end;

end;

procedure TBTRxRichPopUpMenu.Popup;                    //changed: KoBraSoft
begin
if Assigned(OnPopUp) then OnPopUp(Self);
MyPopup(Self);
inherited Popup(X, Y);
end;

procedure TBTRXRichPopUpMenu.MyPopup;                 //changed: KoBraSoft
var
{$IFNDEF VER90}
SelStartMemo, SelEndMemo: integer;
{$ENDIF}

canEdit: boolean;
begin

canEdit := true;

{$IFNDEF VER90}
if PopupComponent is TRXDBRichEdit                //changed: KoBraSoft
   then RichEdit := TRxDBRichEdit(PopupComponent) //changed: KoBraSoft
   else RichEdit := TRxRichEdit(PopupComponent);  //changed: KoBraSoft

if RichEdit is TRXDBRichEdit then                 //changed: KoBraSoft
   with TRXDBRichEdit(RichEdit)                   //changed: KoBraSoft
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
        miSuperscript.enabled := not Plaintext and canEdit;      //added: KoBraSoft
        miNormal.enabled := not Plaintext and canEdit;           //added: KoBraSoft
        miSubscript.enabled := not Plaintext and canEdit;        //added: KoBraSoft
        miBullet.enabled := not Plaintext and canEdit;
        if Assigned(miPic) then                                  //added: KoBraSoft
          miPic.enabled := not Plaintext and canEdit;            //added: KoBraSoft
        miInObj.enabled := not Plaintext and canEdit;            //added: KoBraSoft

        if Assigned(miFont) then
           miFont.enabled := not Plaintext and canEdit;

        miSepEdit.visible := canEdit;

        miBold.Visible := canEdit;
        miUnderlined.Visible := canEdit;
        miItalic.Visible := canEdit;
        miSepBUI.visible := canEdit;
        if Assigned(miPic) then                                  //added: KoBraSoft
          miPic.visible := canEdit;                              //added: KoBraSoft
        miInObj.visible := canEdit;                              //added: KoBraSoft

        if Assigned(miFont) then
           miSepFont.visible := canEdit;

        miLeft.Visible := canEdit;
        miCenter.Visible := canEdit;
        miRight.Visible := canEdit;
        miSuperscript.Visible := canEdit;                        //added: KoBraSoft
        miNormal.Visible := canEdit;                             //added: KoBraSoft
        miSubscript.Visible := canEdit;                          //added: KoBraSoft
        miSepAlign.visible := canEdit;

        miBullet.Visible := canEdit;

   end;

{$ELSE}

if not Assigned(RichEdit)
   then RichEdit := TRxRichEdit(PopupComponent);   //changed: KoBraSoft

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
    miLeft.Checked      := Alignment = paLeftJustify;    //changed: KoBraSoft
    miCenter.Checked    := Alignment = paCenter;         //changed: KoBraSoft
    miRight.Checked     := Alignment = paRightJustify;   //changed: KoBraSoft
    miBullet.Checked    := Numbering <> nsNone;
end;

end;

procedure TBTRxRichPopUpMenu.Undo;              //changed: KoBraSoft
begin
Richedit.Perform(WM_UNDO, 0, 0);
end;

procedure TBTRxRichPopUpMenu.Cut;               //changed: KoBraSoft
begin
RichEdit.Perform(WM_CUT, 0, 0);
end;

procedure TBTRxRichPopUpMenu.Copy;              //changed: KoBraSoft
begin
Richedit.Perform(WM_COPY, 0, 0);
end;

procedure TBTRxRichPopUpMenu.Paste;             //changed: KoBraSoft
begin
Richedit.Perform(WM_PASTE, 0, 0);
end;

procedure TBTRxRichPopUpMenu.DoClear;           //changed: KoBraSoft
begin
Richedit.Perform(WM_CLEAR, 0, 0);
end;

procedure TBTRxRichPopUpMenu.SelectAll;         //changed: KoBraSoft
begin
Richedit.SelectAll;
end;

procedure TBTRxRichPopUpMenu.Bold;              //changed: KoBraSoft
begin
CharAttr(RichEdit, fsBold);
end;

procedure TBTRxRichPopUpMenu.Underlined;        //changed: KoBraSoft
begin
CharAttr(RichEdit, fsUnderline);
end;

procedure TBTRxRichPopUpMenu.Italic;            //changed: KoBraSoft
begin
CharAttr(RichEdit, fsItalic);
end;

procedure TBTRxRichPopUpMenu.FormatChar;        //changed: KoBraSoft
begin
if Assigned(FontDialog) then
with FontDialog do begin
    Font := TFont(Richedit.SelAttributes);
    if execute then RichEdit.SelAttributes := TRxTextAttributes(Font); //changed: KoBraSoft
end;
end;

procedure TBTRxRichPopUpMenu.Bullet;            //changed: KoBraSoft
begin
with Richedit.Paragraph do
     if Numbering = nsNone
     then Numbering := nsBullet
     else Numbering := nsNone
end;

procedure TBTRxRichPopUpMenu.Picture;            //added: KoBraSoft
var                                              //added: KoBraSoft
  Pict: TPicture;                                //added: KoBraSoft
begin                                            //added: KoBraSoft
if Assigned(OpenPictureDialog) then              //added: KoBraSoft
  with FOpenPictureDialog do begin               //added: KoBraSoft
    if Execute then begin                        //added: KoBraSoft
      Pict := TPicture.Create;                   //added: KoBraSoft
      try                                        //added: KoBraSoft
        Pict.LoadFromFile(FileName);             //added: KoBraSoft
        Clipboard.Assign(Pict);                  //added: KoBraSoft
        Richedit.PasteFromClipboard;             //added: KoBraSoft
      finally                                    //added: KoBraSoft
        Pict.Free;                               //added: KoBraSoft
      end;                                       //added: KoBraSoft
    end;                                         //added: KoBraSoft
  end;                                           //added: KoBraSoft
end;                                             //added: KoBraSoft

procedure TBTRxRichPopUpMenu.InsertObject;       //added: KoBraSoft
begin                                            //added: KoBraSoft
  Richedit.InsertObjectDialog;                   //added: KoBraSoft
end;                                             //added: KoBraSoft

procedure TBTRxRichPopUpMenu.Left;              //changed: KoBraSoft
begin
Richedit.Paragraph.Alignment := paLeftJustify;  //changed: KoBraSoft
miLeft.Checked := true;
end;

procedure TBTRxRichPopUpMenu.Center;            //changed: KoBraSoft
begin
Richedit.Paragraph.Alignment := paCenter;       //changed: KoBraSoft
miCenter.Checked := true;
end;

procedure TBTRxRichPopUpMenu.Right;             //changed: KoBraSoft
begin
Richedit.Paragraph.Alignment := paRightJustify; //changed: KoBraSoft
miRight.Checked := true;
end;

procedure TBTRxRichPopUpMenu.Superscript;        //added: KoBraSoft
begin                                            //added: KoBraSoft
  Richedit.SelAttributes.SubscriptStyle := ssSuperscript;      //added: KoBraSoft
end;                                             //added: KoBraSoft

procedure TBTRxRichPopUpMenu.Normal;             //added: KoBraSoft
begin                                            //added: KoBraSoft
  Richedit.SelAttributes.SubscriptStyle := ssNone;             //added: KoBraSoft
end;                                             //added: KoBraSoft

procedure TBTRxRichPopUpMenu.Subscript;          //added: KoBraSoft
begin                                            //added: KoBraSoft
  Richedit.SelAttributes.SubscriptStyle := ssSubscript;        //added: KoBraSoft
end;                                             //added: KoBraSoft

{$IFDEF DEMO}
initialization
//if FindWindow('TAppBuilder', nil)=0 then
//ShowMessage('BetaTools Component Collection © 1997, 1998 BetaSoft');
{$ENDIF}

end.


