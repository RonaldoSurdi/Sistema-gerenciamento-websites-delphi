unit uform_cmt3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ToolWin, RxRichEd, XPMan, Menus, ImgList,
  Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  Tform_cmt3 = class(TForm)
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
    re_editor3: TRxRichEdit;
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
    bt_save3: TSpeedButton;
    Panel25: TPanel;
    cl_default: TCheckBox;
    cl_titulo: TEdit;
    Label29: TLabel;
    Label24: TLabel;
    xtypefile: TComboBoxEx;
    ImageList_inc: TImageList;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    ToolBar1: TToolBar;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    procedure re_editor3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cl_tituloExit(Sender: TObject);
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
  form_cmt3: Tform_cmt3;

implementation

uses RichEdit, udm2, hwsfunctions, umdl_filemanager, DBClient, uform_usr;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}


function Tform_cmt3.CurrText: TRxTextAttributes;
begin
  if re_editor3.SelLength > 0 then Result := re_editor3.SelAttributes
  else Result := re_editor3.DefAttributes;
end;

procedure Tform_cmt3.SetEditRect;
var
  R: TRect;
begin
  with re_editor3 do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tform_cmt3.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor3.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor3.SelStart);
  CharPos.X := (re_editor3.SelStart -
    SendMessage(re_editor3.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tform_cmt3.FontName_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName_coment.Items[FontName_coment.ItemIndex];
end;

procedure Tform_cmt3.FontSize_comentChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize_coment.Text);
end;

procedure Tform_cmt3.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor3 do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tform_cmt3.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor3.CutToClipboard;
end;

procedure Tform_cmt3.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor3.CopyToClipboard;
end;

procedure Tform_cmt3.Colar1Click(Sender: TObject);
begin
      //colar
     re_editor3.PasteFromClipboard;
end;

procedure Tform_cmt3.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton3.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tform_cmt3.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton3.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tform_cmt3.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton3.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tform_cmt3.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt3.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor3.Paragraph.Numbering := TRxNumbering(not BulletsButton3.Down);
end;

procedure Tform_cmt3.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         re_editor3.Color := ColorDialog1.Color;
     end;
end;

procedure Tform_cmt3.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor3.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tform_cmt3.re_editor3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: bt_save3.Click;
    end;
end;

procedure Tform_cmt3.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with re_editor3.Paragraph do
  try
    FUpdating := True;
    BoldButton3.Down := fsBold in re_editor3.SelAttributes.Style;
    ItalicButton3.Down := fsItalic in re_editor3.SelAttributes.Style;
    UnderlineButton3.Down := fsUnderline in re_editor3.SelAttributes.Style;
    BulletsButton3.Down := Boolean(Numbering);
    FontSize_coment.Text := IntToStr(re_editor3.SelAttributes.Size);
    FontName_coment.Text := re_editor3.SelAttributes.Name;
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

procedure Tform_cmt3.FormCreate(Sender: TObject);
begin
     SendMessage(re_editor3.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor3.Justify;
end;

procedure Tform_cmt3.bt_save3Click(Sender: TObject);
var axcod,axcod2,axcl_id,xidxlng,xid_default,ax_cl_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     //banco de imagens
     ax_cl_codinsert:=0;
     cl_titulo.Text:=FilterCharsHWS(cl_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
     if cl_titulo.Text='' then begin
        hwsf.BtMensagem('Й necessбrio digitar a descriзгo.');
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
     xidxlng:=mdl_filemanager.PageControl_languagens.TabIndex;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor3.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm2.RtfToHtml2('',false,re_editor3);
     if mdl_filemanager.cl_codCaption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= cl_titulo.Text;
        loadx.Progressloading.position:=30;
        if mdl_filemanager.RadioButton1.Checked then axInc_traduzir:=true
        else if mdl_filemanager.RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
           loadx.Progressloading2.Max:=mdl_filemanager.listaLng.count*3;
           loadx.lbloading.Caption:='Traduzindo '+mdl_filemanager.retorna_TTabSheet(xidxlng).Caption;
           loadx.lbloading.Repaint;
           for axcl_id:=0 to mdl_filemanager.listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               mdl_filemanager.listaAux.ab_descricao[axcl_id]:= '';
               if mdl_filemanager.listaLng.trd[axcl_id]='English' then xid_default:=axcl_id;
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
           for axcl_id:=0 to mdl_filemanager.listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               if (axcl_id<>xidxlng) AND (axcl_id<>xid_default) then begin
                  loadx.lbloading.Caption:='Traduzindo '+mdl_filemanager.retorna_TTabSheet(axcl_id).Caption;
                  loadx.lbloading.Repaint;
                  xtxt1:=mdl_filemanager.recebetraducao(mdl_filemanager.listaAux.ab_descricao[xid_default],mdl_filemanager.listaLng.trd[xid_default],mdl_filemanager.listaLng.trd[axcl_id]);
                  if copy(xtxt1,1,7)='Error: ' then xtxt1:=mdl_filemanager.listaAux.ab_descricao[xid_default];
                  if xtxt1 = '<|erro|>' then begin
                     loadx.Close;
                     hwsf.BtMensagem('Erro na conexгo');
                     exit;
                  end;
                  mdl_filemanager.listaAux.ab_descricao[axcl_id]:=xtxt1;
               end;
           end;
           loadx.lbloading.Caption:='Gravando dados, aguarde.';
           loadx.lbloading.Repaint;
        end else begin
           loadx.Progressloading2.Max:=mdl_filemanager.listaLng.count*2;
           for axcl_id:=0 to mdl_filemanager.listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               mdl_filemanager.listaAux.ab_descricao[axcl_id]:=xtxt1;
           end;
        end;
        mdl_filemanager.axcod_class:=0;
        loadx.Progressloading.position:=40;
        for axcl_id:=0 to mdl_filemanager.listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm2.GetCodMax(mdl_filemanager.LstTables.Table[0]+'_ax','codigo','');
            Application.ProcessMessages;
            if mdl_filemanager.axcod_class=0 then mdl_filemanager.axcod_class:=axcod;
            with dm2.executa do begin
                 CommandText:= 'INSERT INTO '+mdl_filemanager.LstTables.Table[0]+'_ax (codigo,cod_class,cod_web,cod_lng,cod_ls,cp1,cp2,cp3,xfl,xtp,nfl,ext,prt) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=mdl_filemanager.axcod_class;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=mdl_filemanager.listaLng.cod_lng[axcl_id];
                 Params[4].AsString:=BoolToStr(cl_default.Checked);
                 Params[5].AsString:=mdl_filemanager.listaAux.ab_descricao[axcl_id];
                 Params[6].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[7].LoadFromStream(xtxt3,ftblob);
                 Params[8].AsInteger:=xtypefile.ItemIndex;
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsString:=mdl_filemanager.axnfl3;
                 Params[11].AsString:=mdl_filemanager.axext3;
                 Params[12].AsInteger:=0;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
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
        with dm2.executa do begin
            CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+'_ax SET cp1=:p0,cp2=:p1,cp3=:p2,xfl=:p3,nfl=:p4,ext=:p5 '+
                       'WHERE codigo=:p6';
            loadx.Progressloading.position:=20;
            Params[0].AsString:=cl_titulo.Text;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsInteger:=xtypefile.ItemIndex;
            Params[4].AsString:=mdl_filemanager.axnfl3;
            Params[5].AsString:=mdl_filemanager.axext3;
            Params[6].AsInteger:=mdl_filemanager.ax_cl_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_cl_codinsert:= mdl_filemanager.ax_cl_cod;
            CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+'_ax SET cod_ls=:p0 '+
                       'WHERE cod_class=:p1';
            loadx.Progressloading.position:=40;
            Params[0].AsString:=BoolToStr(cl_default.Checked);
            Params[1].AsInteger:=mdl_filemanager.axcod_class;
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
     mdl_filemanager.xupdatelogo3:=false;
     mdl_filemanager.monta_tableclass(ax_cl_codinsert);
     Application.ProcessMessages;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tform_cmt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tform_cmt3.FormShow(Sender: TObject);
begin
      if mdl_filemanager.axformInit then
         atualizaReg;
end;

procedure Tform_cmt3.atualizaReg;
var axshowing,xuplng: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Menu';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Menu';
         loadx.lbloading.Repaint;
      end;
      if ((dm2.ds_sql6.RecordCount <= 0) or (mdl_filemanager.cl_codCaption='novo')) then begin
         addregNew;
      end else begin
         with dm2.ds_sql6 do begin
            cl_titulo.Text:=fieldbyname('cp1').AsString;
            xtypefile.ItemIndex:=mdl_filemanager.xtypefile_tmp;
            re_editor3.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('cp3')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor3.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            cl_default.Checked:=StrToBool(fieldbyname('cod_ls').AsString);
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tform_cmt3.addregNew;
begin
     cl_titulo.Text:='';
     xtypefile.ItemIndex:=0;
     re_editor3.Clear;
end;

procedure Tform_cmt3.bt_new3Click(Sender: TObject);
begin
     mdl_filemanager.bt_new3.Click;
end;

procedure Tform_cmt3.bt_del3Click(Sender: TObject);
begin
     mdl_filemanager.bt_del3.Click;
end;

procedure Tform_cmt3.SpeedButton5Click(Sender: TObject);
begin
     if (dm2.ds_sql6.RecordCount<1) then exit;
     dm2.ds_sql6.First;
     mdl_filemanager.atualiza_grade3;
end;

procedure Tform_cmt3.SpeedButton2Click(Sender: TObject);
begin
     if (dm2.ds_sql6.RecordCount<1) then exit;
     dm2.ds_sql6.Prior;
     mdl_filemanager.atualiza_grade3;
end;

procedure Tform_cmt3.SpeedButton4Click(Sender: TObject);
begin
     if (dm2.ds_sql6.RecordCount<1) then exit;
     dm2.ds_sql6.Next;
     mdl_filemanager.atualiza_grade3;
end;

procedure Tform_cmt3.SpeedButton3Click(Sender: TObject);
begin
     if (dm2.ds_sql6.RecordCount<1) then exit;
     dm2.ds_sql6.Last;
     mdl_filemanager.atualiza_grade3;
end;

procedure Tform_cmt3.cl_tituloExit(Sender: TObject);
begin
      cl_titulo.Text:=FilterCharsHWS(cl_titulo.Text,['A'..'Z','a'..'z','0'..'9','-','_','.','°','є','Є','@',' ','Б','Н','У','Ъ','Й','Д','П','Ц','Ь','Л','А','М','Т','Щ','И','Г','Х','В','О','Ф','Ы','К','б','н','у','ъ','й','д','п','ц','ь','л','а','м','т','щ','и','г','х','в','о','ф','ы','к','З','з']);
end;

end.
