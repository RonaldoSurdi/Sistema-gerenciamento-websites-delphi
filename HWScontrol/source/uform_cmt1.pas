unit uform_cmt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ToolWin, RxRichEd, XPMan, Menus, ImgList,
  Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  Tform_cmt1 = class(TForm)
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
    re_editor1: TRxRichEdit;
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
    bt_save1: TSpeedButton;
    Panel19: TPanel;
    Label3: TLabel;
    ab_titulo: TEdit;
    ab_default: TCheckBox;
    bt_del1: TSpeedButton;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    bt_new1: TSpeedButton;
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
    procedure re_editor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_del1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure bt_new1Click(Sender: TObject);
    procedure ab_tituloExit(Sender: TObject);
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
  form_cmt1: Tform_cmt1;

implementation

uses RichEdit, udm2, hwsfunctions, umdl_filemanager;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}


function Tform_cmt1.CurrText: TRxTextAttributes;
begin
  if re_editor1.SelLength > 0 then Result := re_editor1.SelAttributes
  else Result := re_editor1.DefAttributes;
end;

procedure Tform_cmt1.SetEditRect;
var
  R: TRect;
begin
  with re_editor1 do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tform_cmt1.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor1.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor1.SelStart);
  CharPos.X := (re_editor1.SelStart -
    SendMessage(re_editor1.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tform_cmt1.FontName_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName_coment.Items[FontName_coment.ItemIndex];
end;

procedure Tform_cmt1.FontSize_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize_coment.Text);
end;

procedure Tform_cmt1.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor1 do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tform_cmt1.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor1.CutToClipboard;
end;

procedure Tform_cmt1.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor1.CopyToClipboard;
end;

procedure Tform_cmt1.Colar1Click(Sender: TObject);
begin
      //colar
     re_editor1.PasteFromClipboard;
end;

procedure Tform_cmt1.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton3.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tform_cmt1.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton3.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tform_cmt1.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton3.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tform_cmt1.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt1.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor1.Paragraph.Numbering := TRxNumbering(not BulletsButton3.Down);
end;

procedure Tform_cmt1.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         re_editor1.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt1.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor1.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tform_cmt1.re_editor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: bt_save1.Click;
    end;
end;

procedure Tform_cmt1.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with re_editor1.Paragraph do
  try
    FUpdating := True;
    BoldButton3.Down := fsBold in re_editor1.SelAttributes.Style;
    ItalicButton3.Down := fsItalic in re_editor1.SelAttributes.Style;
    UnderlineButton3.Down := fsUnderline in re_editor1.SelAttributes.Style;
    BulletsButton3.Down := Boolean(Numbering);
    FontSize_coment.Text := IntToStr(re_editor1.SelAttributes.Size);
    FontName_coment.Text := re_editor1.SelAttributes.Name;
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

procedure Tform_cmt1.FormCreate(Sender: TObject);
begin
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor1.Justify;
end;

procedure Tform_cmt1.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,cod_model,xidxlng,xid_default,axcodgrp,ax_ab_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     //banco de imagens
     ax_ab_codinsert:=0;
     try
        axcodgrp:= strtoint(mdl_filemanager.cl_codCaption);
     except
        axcodgrp:= 0;
     end;
     ab_titulo.Text:=FilterCharsHWS(ab_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
     if axcodgrp = 0 then begin
        hwsf.BtMensagem('Й necessбrio gravar os dados do Нtem do Menu.');
        ab_titulo.SetFocus;
        exit;
     end;
     if ab_titulo.Text='' then begin
        hwsf.BtMensagem('Й necessбrio digitar a descriзгo.');
        ab_titulo.SetFocus;
        exit;
     end;
     cod_model:=0;
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
     xidxlng:=mdl_filemanager.PageControl_languagens.TabIndex;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor1.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm2.RtfToHtml2('',false,re_editor1);
     if mdl_filemanager.ab_codCaption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= ab_titulo.Text;
        loadx.Progressloading.position:=30;
        if mdl_filemanager.RadioButton1.Checked then axInc_traduzir:=true
        else if mdl_filemanager.RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
              loadx.Progressloading2.Max:=mdl_filemanager.listaLng.count*3;
              loadx.lbloading.Caption:='Traduzindo '+mdl_filemanager.retorna_TTabSheet(xidxlng).Caption;
              loadx.lbloading.Repaint;
              for axgal_id:=0 to mdl_filemanager.listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  mdl_filemanager.listaAux.ab_descricao[axgal_id]:= '';
                  if mdl_filemanager.listaLng.trd[axgal_id]='English' then xid_default:=axgal_id;
              end;
              if (xid_default=xidxlng) then begin
                 mdl_filemanager.listaAux.ab_descricao[xid_default]:=xtxt1;
              end else begin
                 mdl_filemanager.listaAux.ab_descricao[xidxlng]:=xtxt1;
                 loadx.lbloading.Caption:='Traduzindo '+mdl_filemanager.retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=mdl_filemanager.recebetraducao(xtxt1,mdl_filemanager.listaLng.trd[xidxlng],mdl_filemanager.listaLng.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:=mdl_filemanager.listaAux.ab_descricao[xid_default];
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexгo');
                    exit;
                 end;
                 mdl_filemanager.listaAux.ab_descricao[xid_default]:=xtxt1;
              end;
              for axgal_id:=0 to mdl_filemanager.listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  if (axgal_id<>xidxlng) AND (axgal_id<>xid_default) then begin
                     loadx.lbloading.Caption:='Traduzindo '+mdl_filemanager.retorna_TTabSheet(axgal_id).Caption;
                     loadx.lbloading.Repaint;
                     xtxt1:=mdl_filemanager.recebetraducao(mdl_filemanager.listaAux.ab_descricao[xid_default],mdl_filemanager.listaLng.trd[xid_default],mdl_filemanager.listaLng.trd[axgal_id]);
                     if copy(xtxt1,1,7)='Error: ' then xtxt1:=mdl_filemanager.listaAux.ab_descricao[xid_default];
                     if xtxt1 = '<|erro|>' then begin
                        loadx.Close;
                        hwsf.BtMensagem('Erro na conexгo');
                        exit;
                     end;
                     mdl_filemanager.listaAux.ab_descricao[axgal_id]:=xtxt1;
                  end;
              end;
              loadx.lbloading.Caption:='Gravando dados, aguarde.';
              loadx.lbloading.Repaint;
        end else begin
              loadx.Progressloading2.Max:=mdl_filemanager.listaLng.count*2;
              for axgal_id:=0 to mdl_filemanager.listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  mdl_filemanager.listaAux.ab_descricao[axgal_id]:=xtxt1;
              end;
        end;
        mdl_filemanager.axcod_gal:=0;
        loadx.Progressloading.position:=40;
        for axgal_id:=0 to mdl_filemanager.listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm2.GetCodMax(mdl_filemanager.LstTables.Table[0],'codigo','');
            Application.ProcessMessages;
            if mdl_filemanager.axcod_gal=0 then mdl_filemanager.axcod_gal:=axcod;
            with dm2.executa do begin
                 CommandText:= 'INSERT INTO '+mdl_filemanager.LstTables.Table[0]+' (codigo,cod_gal,cod_web,cod_lng,cod_psn,cod_ls,descricao,textft,blb,xtp,cod_usrw,cod_class,nfl,ext,prt) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=mdl_filemanager.axcod_gal;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=mdl_filemanager.listaLng.cod_lng[axgal_id];
                 Params[4].AsInteger:=cod_model;
                 Params[5].AsString:=BoolToStr(ab_default.Checked);
                 Params[6].AsString:=mdl_filemanager.listaAux.ab_descricao[axgal_id];
                 Params[7].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[8].LoadFromStream(xtxt3,ftblob);
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsInteger:=mdl_filemanager.axcod_ent;
                 Params[11].AsInteger:=axcodgrp;
                 Params[12].AsString:=mdl_filemanager.axnfl1;
                 Params[13].AsString:=mdl_filemanager.axext1;
                 Params[14].AsInteger:=0;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
             end;
        end;
        ax_ab_codinsert:= axcod;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm2.executa do begin
            CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+' SET descricao=:p0,textft=:p1,blb=:p2,nfl=:p3,ext=:p4 '+
                       'WHERE codigo=:p5';
            loadx.Progressloading.position:=20;
            Params[0].AsString:=ab_titulo.Text;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsString:=mdl_filemanager.axnfl1;
            Params[4].AsString:=mdl_filemanager.axext1;
            Params[5].AsInteger:=mdl_filemanager.ax_ab_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_ab_codinsert:= mdl_filemanager.ax_ab_cod;
            CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+' SET cod_psn=:p0,cod_ls=:p1,cod_class=:p2 '+
                       'WHERE cod_gal=:p3';
            loadx.Progressloading.position:=40;
            Params[0].AsInteger:=0;
            Params[1].AsString:=BoolToStr(ab_default.Checked);
            Params[2].AsInteger:=axcodgrp;
            Params[3].AsInteger:=mdl_filemanager.axcod_gal;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
     end;
     xtxt2.Free;
     xtxt3.Free;
     mdl_filemanager.monta_table1(ax_ab_codinsert);
     Application.ProcessMessages;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tform_cmt1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tform_cmt1.FormShow(Sender: TObject);
begin
      if mdl_filemanager.axformInit then atualizaReg;
end;

procedure Tform_cmt1.atualizaReg;
var axshowing: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Pastas';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Pastas';
         loadx.lbloading.Repaint;
      end;
      if ((dm2.ds_sql.RecordCount <= 0) or (mdl_filemanager.ab_codCaption='novo')) then begin
         addregNew;
      end else begin
         with dm2.ds_sql do begin
            ab_titulo.Text:=fieldbyname('descricao').AsString;
            re_editor1.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor1.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            ab_default.Checked:=StrToBool(fieldbyname('cod_ls').AsString);
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tform_cmt1.addregNew;
begin
    ab_titulo.Text:='';
    ab_default.Checked:=true;
    re_editor1.Clear;
end;

procedure Tform_cmt1.bt_del1Click(Sender: TObject);
begin
     mdl_filemanager.bt_del1.Click;
end;

procedure Tform_cmt1.SpeedButton5Click(Sender: TObject);
begin
     if (dm2.ds_sql.RecordCount<1) then exit;
     dm2.ds_sql.First;
     mdl_filemanager.atualiza_grade;
end;

procedure Tform_cmt1.SpeedButton2Click(Sender: TObject);
begin
     if (dm2.ds_sql.RecordCount<1) then exit;
     dm2.ds_sql.Prior;
     mdl_filemanager.atualiza_grade;
end;

procedure Tform_cmt1.SpeedButton4Click(Sender: TObject);
begin
     if (dm2.ds_sql.RecordCount<1) then exit;
     dm2.ds_sql.Next;
     mdl_filemanager.atualiza_grade;
end;

procedure Tform_cmt1.SpeedButton3Click(Sender: TObject);
begin
     if (dm2.ds_sql.RecordCount<1) then exit;
     dm2.ds_sql.Last;   
     mdl_filemanager.atualiza_grade;
end;

procedure Tform_cmt1.bt_new1Click(Sender: TObject);
begin
      mdl_filemanager.bt_new1.Click;
end;

procedure Tform_cmt1.ab_tituloExit(Sender: TObject);
begin
      ab_titulo.Text:=FilterCharsHWS(ab_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
end;

end.
