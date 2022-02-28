unit uform_cmt2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ToolWin, RxRichEd, XPMan, Menus, ImgList,
  Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  Tform_cmt2 = class(TForm)
    StatusBar1: TStatusBar;
    ColorDialog1: TColorDialog;
    ToolbarImages: TImageList;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Importar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    N3: TMenuItem;
    Cor1: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    Cordefundo1: TMenuItem;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    re_editor2: TRxRichEdit;
    CoolBar3: TCoolBar;
    ToolBar20: TToolBar;
    FontName_coment: TComboBox;
    ToolButton4: TToolButton;
    FontSize_coment: TEdit;
    UpDown_coment: TUpDown;
    ToolBar21: TToolBar;
    BoldButton3: TToolButton;
    ItalicButton3: TToolButton;
    UnderlineButton3: TToolButton;
    ToolBar22: TToolBar;
    LeftAlign3: TToolButton;
    CenterAlign3: TToolButton;
    RightAlign3: TToolButton;
    JustifyAlign3: TToolButton;
    BulletsButton3: TToolButton;
    ToolBar23: TToolBar;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolBar24: TToolBar;
    fontColor3: TToolButton;
    eddesfazer3: TToolButton;
    colorfnd3: TToolButton;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    bt_save2: TSpeedButton;
    Panelitens: TPanel;
    ms_titulo: TEdit;
    Label8: TLabel;
    bt_del1: TSpeedButton;
    ToolBar1: TToolBar;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FontName_comentChange(Sender: TObject);
    procedure FontSize_comentChange(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure Cordefundo1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure re_editor2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_del1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ms_tituloExit(Sender: TObject);
  private
    FUpdating: Boolean;
    procedure addregNew;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Private declarations }
  public
    procedure atualizaReg;
    { Public declarations }
  end;

var
  form_cmt2: Tform_cmt2;

implementation

uses RichEdit, udm2, hwsfunctions, umdl_filemanager;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}


function Tform_cmt2.CurrText: TRxTextAttributes;
begin
  if re_editor2.SelLength > 0 then Result := re_editor2.SelAttributes
  else Result := re_editor2.DefAttributes;
end;

procedure Tform_cmt2.SetEditRect;
var
  R: TRect;
begin
  with re_editor2 do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tform_cmt2.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor2.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor2.SelStart);
  CharPos.X := (re_editor2.SelStart -
    SendMessage(re_editor2.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tform_cmt2.FontName_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName_coment.Items[FontName_coment.ItemIndex];
end;

procedure Tform_cmt2.FontSize_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize_coment.Text);
end;

procedure Tform_cmt2.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor2 do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tform_cmt2.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor2.CutToClipboard;
end;

procedure Tform_cmt2.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor2.CopyToClipboard;
end;

procedure Tform_cmt2.Colar1Click(Sender: TObject);
begin
      //colar
     re_editor2.PasteFromClipboard;
end;

procedure Tform_cmt2.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton3.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tform_cmt2.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton3.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tform_cmt2.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton3.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tform_cmt2.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt2.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor2.Paragraph.Numbering := TRxNumbering(not BulletsButton3.Down);
end;

procedure Tform_cmt2.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         re_editor2.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt2.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor2.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tform_cmt2.re_editor2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: bt_save2.Click;
    end;
end;

procedure Tform_cmt2.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with re_editor2.Paragraph do
  try
    FUpdating := True;
    BoldButton3.Down := fsBold in re_editor2.SelAttributes.Style;
    ItalicButton3.Down := fsItalic in re_editor2.SelAttributes.Style;
    UnderlineButton3.Down := fsUnderline in re_editor2.SelAttributes.Style;
    BulletsButton3.Down := Boolean(Numbering);
    FontSize_coment.Text := IntToStr(re_editor2.SelAttributes.Size);
    FontName_coment.Text := re_editor2.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign3.Down := True;
      1: RightAlign3.Down := True;
      2: CenterAlign3.Down := True;
      3: JustifyAlign3.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure Tform_cmt2.FormCreate(Sender: TObject);
begin
     SendMessage(re_editor2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor2.Justify;
end;

procedure Tform_cmt2.bt_save2Click(Sender: TObject);
var axcod,axcod2,axgal_id,xidxlng,xid_default,axcodinsert : integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
    //xlogoCls: TMemoryStream;
begin
     axcodinsert:=0;
     ms_titulo.Text:=FilterCharsHWS(ms_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
     if ms_titulo.Text='' then begin
        hwsf.BtMensagem('Й necessбrio digitar a descriзгo.');
        ms_titulo.SetFocus;
        exit;
     end;
     axshowing:= loadx.Showing;
     xidxlng:=mdl_filemanager.PageControl_languagens.TabIndex;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     Application.ProcessMessages;
     loadx.Progressloading.position:=10;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor2.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm2.RtfToHtml2('',false,re_editor2);
     axcodinsert:=mdl_filemanager.ax_ms_cod;
     with dm2.executa do begin
         CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET descricao=:p0,textft=:p1,blb=:p2 '+
                    'WHERE codigo=:p3';
         Params[0].AsString:=ms_titulo.Text;
         loadx.Progressloading.position:=20;
         Params[1].Assign(xtxt2);
         xtxt3.Seek(0,soFromBeginning);
         Params[2].LoadFromStream(xtxt3,ftblob);
         Params[3].AsInteger:=axcodinsert;
         loadx.Progressloading.position:=30;
     end;
     try
            loadx.Progressloading.position:=40;
            dm2.executa.Execute;
            loadx.Progressloading.position:=50;
     except
         try loadx.Close; except end;
         hwsf.BtMensagem('Ocorreu algum erro.');
         exit;
     end;
     xtxt2.Free;
     xtxt3.Free;
     Application.ProcessMessages;
     mdl_filemanager.monta_table2(False,True, axcodinsert);
     Application.ProcessMessages;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tform_cmt2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tform_cmt2.FormShow(Sender: TObject);
begin
      if mdl_filemanager.axformInit then atualizaReg;
end;

procedure Tform_cmt2.atualizaReg;
var axshowing: Boolean;
    st_stream : TMemoryStream;
    xfilesize: Real;
begin
     //banco de imagens
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista de Arquivos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista de Arquivos';
         loadx.lbloading.Repaint;
      end;
      if ((dm2.ds_sql3.RecordCount <= 0) or (mdl_filemanager.ms_codCaption='novo')) then begin
         addregNew;
      end else begin
         with dm2.ds_sql3 do begin
            ms_titulo.Text:=fieldbyname('descricao').AsString;
            xfilesize:=mdl_filemanager.xamplsz2/1024;
            re_editor2.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor2.Lines.LoadFromStream(st_stream);
            st_stream.Free;
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tform_cmt2.addregNew;
begin
      ms_titulo.Text:='';
      re_editor2.Clear;
end;

procedure Tform_cmt2.bt_del1Click(Sender: TObject);
begin
     mdl_filemanager.bt_del2.OnClick(self);
end;

procedure Tform_cmt2.SpeedButton5Click(Sender: TObject);
begin
     if (dm2.ds_sql3.RecordCount<1) then exit;
     dm2.ds_sql3.First;
     mdl_filemanager.atualiza_grade2;
end;

procedure Tform_cmt2.SpeedButton2Click(Sender: TObject);
begin
     if (dm2.ds_sql3.RecordCount<1) then exit;
     dm2.ds_sql3.Prior;
     mdl_filemanager.atualiza_grade2;
end;

procedure Tform_cmt2.SpeedButton4Click(Sender: TObject);
begin
     if (dm2.ds_sql3.RecordCount<1) then exit;
     dm2.ds_sql3.Next;
     mdl_filemanager.atualiza_grade2;
end;

procedure Tform_cmt2.SpeedButton3Click(Sender: TObject);
begin
     if (dm2.ds_sql3.RecordCount<1) then exit;
     dm2.ds_sql3.Last;
     mdl_filemanager.atualiza_grade2;
end;

procedure Tform_cmt2.SpeedButton1Click(Sender: TObject);
begin
     mdl_filemanager.ImportArqSet(false);
end;

procedure Tform_cmt2.ms_tituloExit(Sender: TObject);
begin
      ms_titulo.Text:=FilterCharsHWS(ms_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
end;

end.
