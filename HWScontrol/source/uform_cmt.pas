unit uform_cmt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ToolWin, RxRichEd, XPMan, Menus, ImgList,
  Buttons, ExtCtrls;

type
  Tform_cmt = class(TForm)
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
    re_editor_coment: TRxRichEdit;
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
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
    Panel25: TPanel;
    Panel28: TPanel;
    Label29: TLabel;
    cl_cod: TLabel;
    Label24: TLabel;
    cl_titulo: TEdit;
    cl_default: TCheckBox;
    xtypefile: TComboBoxEx;
    Panel29: TPanel;
    ToolBar25: TToolBar;
    bt_save3: TSpeedButton;
    ProgressBar1: TProgressBar;
    ComboBoxEx1: TComboBoxEx;
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
    procedure re_editor_comentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure xtypefileChange(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
  private
    FUpdating: Boolean;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cmt: Tform_cmt;

implementation

uses RichEdit;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}


function Tform_cmt.CurrText: TRxTextAttributes;
begin
  if re_editor_coment.SelLength > 0 then Result := re_editor_coment.SelAttributes
  else Result := re_editor_coment.DefAttributes;
end;

procedure Tform_cmt.SetEditRect;
var
  R: TRect;
begin
  with re_editor_coment do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tform_cmt.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor_coment.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor_coment.SelStart);
  CharPos.X := (re_editor_coment.SelStart -
    SendMessage(re_editor_coment.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tform_cmt.FontName_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName_coment.Items[FontName_coment.ItemIndex];
end;

procedure Tform_cmt.FontSize_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize_coment.Text);
end;

procedure Tform_cmt.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor_coment do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tform_cmt.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor_coment.CutToClipboard;
end;

procedure Tform_cmt.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor_coment.CopyToClipboard;
end;

procedure Tform_cmt.Colar1Click(Sender: TObject);
begin
      //colar
     re_editor_coment.PasteFromClipboard;
end;

procedure Tform_cmt.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton3.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tform_cmt.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton3.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tform_cmt.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton3.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tform_cmt.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor_coment.Paragraph.Numbering := TRxNumbering(not BulletsButton3.Down);
end;

procedure Tform_cmt.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         re_editor_coment.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor_coment.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tform_cmt.re_editor_comentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: bt_save1.Click;
    end;
end;

procedure Tform_cmt.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with re_editor_coment.Paragraph do
  try
    FUpdating := True;
    BoldButton3.Down := fsBold in re_editor_coment.SelAttributes.Style;
    ItalicButton3.Down := fsItalic in re_editor_coment.SelAttributes.Style;
    UnderlineButton3.Down := fsUnderline in re_editor_coment.SelAttributes.Style;
    BulletsButton3.Down := Boolean(Numbering);
    FontSize_coment.Text := IntToStr(re_editor_coment.SelAttributes.Size);
    FontName_coment.Text := re_editor_coment.SelAttributes.Name;
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

procedure Tform_cmt.FormCreate(Sender: TObject);
begin
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor1.Justify;
end;

procedure Tform_cmt.xtypefileChange(Sender: TObject);
begin
        if ((xtypefile_tmp<>xtypefile.ItemIndex) and (dm.ds_sql.RecordCount > 0)) then begin
           if not hwsf.BtConfirma('ALERTA: Tem certeza que desejas mudar o Tipo de Arquivo?') then
              xtypefile.ItemIndex:=xtypefile_tmp
           else xtypefile_tmp:=xtypefile.ItemIndex;
        end;
        if (xtypefile.ItemIndex<>xtypefile_tmp) then begin
          Case xtypefile.ItemIndex of
              0: axtypefile:='Todos os Arquivos (*.*)|*.*|Fotos (*.jpg)|*.jpg|Imagens Transparentes (*.png)|*.png|Áudio (*.mp3)|*.mp3|Video (*.avi)|*.avi;|Flash (*.swf)|*.swf|Flash Video (*.flv)|*.flv';
              1: axtypefile:='Documentos (*.doc,*.txt,*.rtf)|*.doc;*.txt;*.rtf';
              2: axtypefile:='Arquivos de Áudio (*.mp3,*.wav,*.wma)|*.mp3;*.wav;*.wma';
              3: axtypefile:='Imagens (*.jpg;*.jpeg)|*.jpg;*.jpeg|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)';
              4: axtypefile:='Compactados (*.zip,*.rar)|*.zip;*.rar';
              5: axtypefile:='Vídeo (*.avi,*.mpeg)|*.avi;*.mpeg';
              6: axtypefile:='Flash (*.swf,*.flv)|Flash (*.swf)|*.swf|Flash Video (*.flv)|*.flv';
              7: axtypefile:='Executáveis (*.exe)|*.exe';
           End;
        end;
end;

procedure Tform_cmt.bt_save1Click(Sender: TObject);
var axcod,axcod2,axcl_id,xidxlng,xid_default,ax_cl_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     //banco de imagens
     ax_cl_codinsert:=0;
     if cl_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        cl_titulo.SetFocus;
        exit;
     end;
     axshowing:= loadx.Showing;
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
     xidxlng:=PageControl_languagens.TabIndex;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor3.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm.RtfToHtml2('',false,re_editor3);
     if cl_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= cl_titulo.Text;
        loadx.Progressloading.position:=30;
        if RadioButton1.Checked then axInc_traduzir:=true
        else if RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
           loadx.Progressloading2.Max:=listaLng.count*3;
           loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxlng).Caption;
           loadx.lbloading.Repaint;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               listaAux.ab_descricao[axcl_id]:= '';
               if listaLng.trd[axcl_id]='English' then xid_default:=axcl_id;
           end;
           if (xid_default=xidxlng) then begin
              listaAux.ab_descricao[xid_default]:=xtxt1;
           end else begin
              listaAux.ab_descricao[xidxlng]:=xtxt1;
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
              loadx.lbloading.Repaint;
              xtxt1:=recebetraducao(xtxt1,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
              if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
              if xtxt1 = '<|erro|>' then begin
                 loadx.Close;
                 hwsf.BtMensagem('Erro na conexão');
                 exit;
              end;
              listaAux.ab_descricao[xid_default]:=xtxt1;
           end;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               if (axcl_id<>xidxlng) AND (axcl_id<>xid_default) then begin
                  loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(axcl_id).Caption;
                  loadx.lbloading.Repaint;
                  xtxt1:=recebetraducao(listaAux.ab_descricao[xid_default],listaLng.trd[xid_default],listaLng.trd[axcl_id]);
                  if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
                  if xtxt1 = '<|erro|>' then begin
                     loadx.Close;
                     hwsf.BtMensagem('Erro na conexão');
                     exit;
                  end;
                  listaAux.ab_descricao[axcl_id]:=xtxt1;
               end;
           end;
           loadx.lbloading.Caption:='Gravando dados, aguarde.';
           loadx.lbloading.Repaint;
        end else begin
           loadx.Progressloading2.Max:=listaLng.count*2;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               listaAux.ab_descricao[axcl_id]:=xtxt1;
           end;
        end;
        axcod_class:=0;
        loadx.Progressloading.position:=40;
        for axcl_id:=0 to listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm.GetCodMax(LstTables.Table[0]+'_ax','codigo','');
            Application.ProcessMessages;
            if axcod_class=0 then axcod_class:=axcod;
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+'_ax (codigo,cod_class,cod_web,cod_lng,cod_ls,cp1,cp2,cp3,xfl,xtp,nfl,ext) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_class;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axcl_id];
                 Params[4].AsString:=BoolToStr(cl_default.Checked);
                 Params[5].AsString:=listaAux.ab_descricao[axcl_id];
                 Params[6].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[7].LoadFromStream(xtxt3,ftblob);
                 Params[8].AsInteger:=xtypefile.ItemIndex;
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsString:=axnfl3;
                 Params[11].AsString:=axext3;
                 try
                     Execute;
                 except
                     if not axshowing then loadx.Close;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
             end;
        end;
        ax_cl_codinsert:= axcod;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET cp1=:p0,cp2=:p1,cp3=:p2,xfl=:p3,nfl=:p4,ext=:p5 '+
                       'WHERE codigo=:p6';
            loadx.Progressloading.position:=20;
            Params[0].AsString:=cl_titulo.Text;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsInteger:=xtypefile.ItemIndex;
            Params[4].AsString:=axnfl3;
            Params[5].AsString:=axext3;
            Params[6].AsInteger:=ax_cl_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                if not axshowing then loadx.Close;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_cl_codinsert:= ax_cl_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET cod_ls=:p0 '+
                       'WHERE cod_class=:p1';
            loadx.Progressloading.position:=40;
            Params[0].AsString:=BoolToStr(cl_default.Checked);
            Params[1].AsInteger:=axcod_class;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                if not axshowing then loadx.Close;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
     end;
     xtxt2.Free;
     xtxt3.Free;
     xupdatelogo3:=false;
     monta_tableclass;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql.Locate('codigo',ax_cl_codinsert,[]);
     atualiza_grade3;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     if not axshowing then loadx.Close;
end;

end.
