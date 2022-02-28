{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de módulos client.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_modulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, JPEG, backup,
  Menus, ComboSpeedButton, XPMan, Spin, Types;


type
  Tadm_modulos = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    bt_search: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp6: TMemo;
    lbcp3: TLabeledEdit;
    lbcp5: TLabeledEdit;
    lbcp4: TLabeledEdit;
    Panel3: TPanel;
    swf_logo: TShockwaveFlash;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    ToolBar3: TToolBar;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    CheckBox_cript: TCheckBox;
    CompressStream: TBackupFile;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    chk_init: TCheckBox;
    ComboSpeedButton1: TComboSpeedButton;
    PopupMenu_atualiza: TPopupMenu;
    update_forcar: TMenuItem;
    update_descricao: TMenuItem;
    update_path: TMenuItem;
    XPManifest1: TXPManifest;
    xpathpacote: TLabeledEdit;
    ScrollBox2: TScrollBox;
    Panel4: TPanel;
    Label1: TLabel;
    bt_filtroadd: TSpeedButton;
    bt_filtrodel: TSpeedButton;
    lbct1: TLabeledEdit;
    lbct2: TLabeledEdit;
    lbct3: TLabeledEdit;
    StringGrid_filtro: TStringGrid;
    ComboBox_filtro: TComboBox;
    SpinEdit_filtro: TSpinEdit;
    Splitter1: TSplitter;
    chk_cp2: TCheckBox;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    ComboBox_sys: TComboBox;
    Label6: TLabel;
    mod_title: TLabeledEdit;
    mod_parm: TLabeledEdit;
    bt_new2_all: TSpeedButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    xcodmdlpai: TLabeledEdit;
    Label7: TLabel;
    Bevel1: TBevel;
    Lb_countreg: TLabel;
    MdpPdefault: TSpeedButton;
    CheckBoxpbck1: TCheckBox;
    CheckBoxpbck2: TCheckBox;
    btfiltpf: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure bt_del2Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox_criptClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CompressStreamProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure update_forcarClick(Sender: TObject);
    procedure update_descricaoClick(Sender: TObject);
    procedure update_pathClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ComboBox_filtroChange(Sender: TObject);
    procedure ComboBox_filtroExit(Sender: TObject);
    procedure StringGrid_filtroSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure SpinEdit_filtroExit(Sender: TObject);
    procedure bt_filtroaddClick(Sender: TObject);
    procedure bt_filtrodelClick(Sender: TObject);
    procedure StringGrid_filtroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit_filtroKeyPress(Sender: TObject; var Key: Char);
    procedure bt_new2_allClick(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure xcodmdlpaiChange(Sender: TObject);
    procedure MdpPdefaultClick(Sender: TObject);
    procedure CheckBoxpbck1Click(Sender: TObject);
    procedure CheckBoxpbck2Click(Sender: TObject);
    procedure btfiltpfClick(Sender: TObject);
  private
    cv : string;
    xMdlPact,xMdlPact2,xMdlPact3:Boolean;
    xstrCol,xstrRow: Integer;
    xlogotmp,xmodtmp : TMemoryStream;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    impmodule,xmodupdate: boolean;
    function atualiza_pacote(axcodpack: integer; pathdopacote,soft_ver,soft_exe,soft_desc: string; xatualiza_ico,xatualiza_dados,xatualiza_cript: boolean):boolean;
    function atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream; xat_grava,xat_cript: boolean):boolean;
    procedure atualiza_grade;
    procedure atualiza_grade_AX(AxcodMount:String);
    procedure atualiza_grade2;
    procedure addreg;
    procedure addreg2;
    procedure filtrar_reg;
    procedure getLogo(axcodico:String);
    procedure abretmplogo;
    procedure montadbmdl;
    procedure xmounttables(xcodgrp: String);
    procedure selecttypMod(xtyp:Boolean);
    procedure SetAllMdlTbl(xcodgrp:String);
    function LimparMdlPai:Boolean;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    ordem_dbmdl: string;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_modulos: Tadm_modulos;

implementation
uses udm, hwsfunctions, DateUtils, Math;

{$R *.dfm}

procedure Tadm_modulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xlogotmp.Free;
     xmodtmp.Free;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql2.Filter:='';
     dm.ds_sql2.Filtered:=false;
     dm.ds_sql2.Close;
     Action:=cafree;
end;

procedure Tadm_modulos.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_modulos.FormCreate(Sender: TObject);
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      xMdlPact:=true;
      xMdlPact2:=true;
      xMdlPact3:=true;
     impmodule:=false;
     //Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     DBGrid1.DataSource:=dm.source_sql;
     DBGrid2.DataSource:=dm.source_sql2;
     xlogotmp:= TMemoryStream.Create;
     xmodtmp:= TMemoryStream.Create;
     ordem_dbmdl:='descricao';
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descrição');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Módulo Filho');
     cp_search[2]:= 'cp7';
     tp_search[2]:= 0;
     tm_search[2]:= 11;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=30;
     StringGrid_filtro.Cells[0,0]:='Descrição';
     StringGrid_filtro.Cells[1,0]:='Campo';
     StringGrid_filtro.Cells[2,0]:='Tipo';
     StringGrid_filtro.Cells[3,0]:='Size';
     StringGrid_filtro.DefaultRowHeight := ComboBox_filtro.Height;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp5';
     DBGrid1.Columns.Items[2].Title.Caption:='Parâmetros';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='mdl';
     DBGrid1.Columns.Items[3].Title.Caption:='Módulo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='lastver';
     DBGrid1.Columns.Items[4].Title.Caption:='Versão';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='xinit';
     DBGrid1.Columns.Items[5].Title.Caption:='Iniciar com o sistema';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[6].FieldName:='cp6';
     DBGrid1.Columns.Items[6].Title.Caption:='Módulo Pai';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[7].FieldName:='cp7';
     DBGrid1.Columns.Items[7].Title.Caption:='Cód. Mód.';
     DBGrid1.Columns.Items[2].Title.Color:=$00ADADAD;
     loadx.Progressloading.position:=90;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp3';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     loadx.Progressloading.position:=100;
     montadbmdl;
     if not axshowing then loadx.Free;
end;

procedure Tadm_modulos.DBGrid1CellClick(Column: TColumn);
begin
      if not impmodule then atualiza_grade
      else impmodule:=false;
end;

procedure Tadm_modulos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_modulos.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_modulos.atualiza_grade;
begin
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp3.Text:= fieldbyname('mdl').AsString;
            lbcp4.Text:= fieldbyname('lastver').AsString;
            lbcp6.Lines.Assign(fieldbyname('obs'));
            xpathpacote.Text:= EnDecryptString(fieldbyname('upsft').AsString,2341);
            CheckBox_cript.Checked:=StrToBool(fieldbyname('cpt').AsString);
            chk_init.Checked:=StrToBool(fieldbyname('xinit').AsString);
            chk_cp2.Checked:=StrToBool(fieldbyname('cp2').AsString);
            ComboBox_sys.ItemIndex:= fieldbyname('cp3').AsInteger;
            mod_title.Text:= fieldbyname('cp4').AsString;
            mod_parm.Text:= fieldbyname('cp5').AsString;
            xMdlPact2:=StrToBool(fieldbyname('cp6').AsString);
            xcodmdlpai.Text:= fieldbyname('cp7').AsString;
            xMdlPact:=true;
            xMdlPact3:=true;
            if xMdlPact2 then RadioButton4.Checked:= true
            else begin
                RadioButton5.Checked:=true;
                //atualiza_grade_AX(xcodmdlpai.Text);
            end;
            //selecttypMod(axboolMdl);
         end;
         xmounttables(lbcp1.Text);
         TabSheet2.TabVisible:=true;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
      getLogo(lbcp1.Text);
      atualiza_grade2;
end;

procedure Tadm_modulos.atualiza_grade_AX(AxcodMount:String);
var axboolMdl:Boolean;
begin
      with dm.ds_sql5 do begin
         if Active then Close;
         try
         if (StrtoInt(AxcodMount)>0) then begin
            CommandText:= 'SELECT codigo,descricao,mdl,lastver,obs,cpt,upsft,xinit,cp2,cp3,cp4,cp5,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
                          ' WHERE codigo='+#39+AxcodMount+#39;
            Open;
            if RecordCount > 0 then begin
               with dm.ds_sql5 do begin
                  lbcp3.Text:= fieldbyname('mdl').AsString;
                  lbcp4.Text:= fieldbyname('lastver').AsString;
                  xpathpacote.Text:= EnDecryptString(fieldbyname('upsft').AsString,2341);
                  CheckBox_cript.Checked:=StrToBool(fieldbyname('cpt').AsString);
                  chk_cp2.Checked:=StrToBool(fieldbyname('cp2').AsString);
                  ComboBox_sys.ItemIndex:= fieldbyname('cp3').AsInteger;
               end;
            end;
            Close;
         end;
         except end;
      end;
end;

procedure Tadm_modulos.atualiza_grade2;
var axstr_filtro: TStringList;
    axstr_filtro_stream: TMemoryStream;
    axstr_col,axstr_row,axstr_lin,axstr_rowcount: Integer;
begin
      if dm.ds_sql2.RecordCount <= 0 then begin
         addreg2;
      end else begin
         with dm.ds_sql2 do begin
            lbct1.Text:= fieldbyname('codigo').AsString;
            lbct2.Text:= fieldbyname('cp3').AsString;
            lbct3.Text:= fieldbyname('cp2').AsString;
            //stringgrind Filtro
            axstr_filtro:= TStringList.Create;
            axstr_filtro.Clear;
            axstr_filtro.Assign(fieldbyname('cp1'));
            axstr_filtro_stream:= TMemoryStream.Create;
            axstr_filtro.SaveToStream(axstr_filtro_stream);
            axstr_filtro_stream.Seek(0,soFromBeginning);
            axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
            axstr_filtro_stream.Seek(0,soFromBeginning);
            axstr_filtro.LoadFromStream(axstr_filtro_stream);
            if axstr_filtro.Count>0 then begin
               axstr_rowcount:=StrtoInt(axstr_filtro.Strings[0]);
               StringGrid_filtro.RowCount:=axstr_rowcount;
               axstr_lin:=1;
               for axstr_col:=0 to 3 do begin
                   for axstr_row:=1 to axstr_rowcount-1 do begin
                       if axstr_col=2 then begin
                          if axstr_filtro.Strings[axstr_lin]='0' then StringGrid_filtro.Cells[axstr_col,axstr_row]:='Número'
                          else StringGrid_filtro.Cells[axstr_col,axstr_row]:='Texto';
                       end else StringGrid_filtro.Cells[axstr_col,axstr_row]:=axstr_filtro.Strings[axstr_lin];
                       Inc(axstr_lin);
                   end;
               end;
            end else begin
               StringGrid_filtro.RowCount:=2;
               StringGrid_filtro.Cells[0,1]:='';
               StringGrid_filtro.Cells[1,1]:='';
               StringGrid_filtro.Cells[2,1]:='';
               StringGrid_filtro.Cells[3,1]:='';
            end;
            axstr_filtro.Free;
            axstr_filtro_stream.Free;
         end;
      end;
end;

procedure Tadm_modulos.getLogo(axcodico:String);
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(axcodico);
     Except
        axcodBlb:=0;
     End;
     xlogotmp.Clear;
     xmodtmp.Clear;
     With dm.executa do begin
        CommandText:='SELECT codigo,ico,img FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+' WHERE codigo='+#39+InttoStr(axcodBlb)+#39;
        Open;
        if not fields[1].IsNull then begin
           TBlobField(FieldByName('ico')).SaveToStream(xlogotmp);
        end;
        if fields[2].AsInteger = 0 then begin
           lbcp5.Text:='nenhum';
        end else begin
           lbcp5.Text:=FloatToStr(fields[2].AsInteger);
        end;
        xmodupdate:=false;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_modulos.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    if xmodupdate then begin
       xmodtmp.Seek(0,soFromBeginning);
       if xmodtmp.Size > 0 then lbcp5.Text:=FloatToStr(xmodtmp.Size)
       else lbcp5.Text:='nenhum';
    end;
    xlogotmp.Seek(0,soFromBeginning);
    if xlogotmp.Size <= 0 then begin
       swf_logo.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmplog.tmp';
    erro:= true;
    //Try
    //  Image_logo.Picture.Assign(nil);
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
   //Except End;
    try
        xlogotmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo.Visible:=true;
            swf_logo.LoadMovie(0,'lixo');
            swf_logo.LoadMovie(0,ax_filenm);
            //swf_logo.Movie:= ax_filenm;
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo.Visible:=false;
        xlogotmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tadm_modulos.addreg;
begin
     xmounttables('0');
     atualiza_grade2;
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.Text:= '';
     xpathpacote.Text:='';
     CheckBox_cript.Checked:=true;
     lbcp6.Clear;
     PageControl2.TabIndex:=0;
     TabSheet2.TabVisible:=false;
     chk_init.Checked:=false;
     chk_cp2.Checked:=false;
     getLogo('0');
end;

procedure Tadm_modulos.addreg2;
begin
     lbct1.Text:='novo';
     lbct2.Text:= '';
     lbct3.Text:= '';
     StringGrid_filtro.RowCount:=2;
     StringGrid_filtro.Cells[0,1]:='';
     StringGrid_filtro.Cells[1,1]:='';
     StringGrid_filtro.Cells[2,1]:='';
     StringGrid_filtro.Cells[3,1]:='';
end;

procedure Tadm_modulos.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_modulos.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_modulos.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_modulos.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_modulos.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_modulos.Left:= adm_modulos.Left-(mv_mouse.x-x);
      adm_modulos.Top:= adm_modulos.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_modulos.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_modulos.Left := adm_modulos.Left - (mv_mouse.x -x);
      adm_modulos.Top := adm_modulos.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_modulos.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

{procedure Tadm_modulos.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  if not loadx.Visible then
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;
end;}


procedure Tadm_modulos.bt_maximizaClick(Sender: TObject);
begin
    if adm_modulos.WindowState=wsMaximized then adm_modulos.WindowState:=wsNormal
    else adm_modulos.WindowState:=wsMaximized;
end;

procedure Tadm_modulos.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_modulos.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_modulos.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf24[0],37249),'codigo',lbcp1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Serverconect.vrf25[0],37249),'cod_grp',lbcp1.Text,false);
           dm.ds_sql.Close;
           dm.ds_sql3.Open;
           dm.ds_sql2.Close;
           dm.ds_sql2.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_modulos.bt_saveClick(Sender: TObject);
var axcod,size_mod,axcodmdlp: integer;
    xexecutaimg,xnewmdl: Boolean;
begin
     if (xMdlPact2 and RadioButton5.Checked) then begin
         if not hwsf.BtConfirma('AVISO: Este módulo é um módulo Pai, alterar mesmo assim?') then exit;
      end;
      try
         axcodmdlp:=StrToInt(xcodmdlpai.Text);
     except
         axcodmdlp:=0;
     end;
     if ((RadioButton5.Checked) and (axcodmdlp<=0)) then begin
         hwsf.BtMensagem('Digite o código do Módulo Pai.');
         xcodmdlpai.SetFocus;
         xcodmdlpai.SelectAll;
         exit;
     end;
     bt_save.Enabled:=false;
     xnewmdl:=(lbcp1.Text = 'novo');
     if (lbcp5.Text = 'nenhum') and (chk_init.Checked) then chk_init.Checked:=false;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Progressloading2.Visible:=true;
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     if ((lbcp5.Text='nenhum') or (lbcp5.Text='')) then size_mod:=0
     else size_mod:=StrtoInt(lbcp5.Text);
     loadx.Progressloading.position:=25;
     if xnewmdl then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf24[0],37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf24[0],37249)+' (codigo,descricao,mdl,lastver,obs,img,cpt,upsft,xinit,cp2,cp3,cp4,cp5,cp6,cp7) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            Params[3].AsString:=lbcp4.Text;
            Params[4].Assign(lbcp6.Lines);
            Params[5].AsInteger:=size_mod;
            Params[6].AsString:= BoolToStr(CheckBox_cript.Checked);
            Params[7].AsString:= EnDecryptString(xpathpacote.Text,2341);
            Params[8].AsString:= BoolToStr(chk_init.Checked);
            Params[9].AsString:= BoolToStr(chk_cp2.Checked);
            Params[10].AsInteger:= ComboBox_sys.ItemIndex;
            Params[11].AsString:= mod_title.Text;
            Params[12].AsString:= mod_parm.Text;
            Params[13].AsString:= BoolToStr(RadioButton4.Checked);
            Params[14].AsInteger:=axcodmdlp;
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[0],37249)+' SET descricao=:p0,mdl=:p1,lastver=:p2,obs=:p3,img=:p4,cpt=:p5,upsft=:p6,xinit=:p7,cp2=:p8,cp3=:p9,cp4=:p10,cp5=:p11,cp6=:p12,cp7=:p13 '+
                          'WHERE codigo=:p14';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            Params[2].AsString:=lbcp4.Text;
            Params[3].Assign(lbcp6.Lines);
            Params[4].AsInteger:=size_mod;
            Params[5].AsString:= BoolToStr(CheckBox_cript.Checked);
            Params[6].AsString:= EnDecryptString(xpathpacote.Text,2341);
            Params[7].AsString:= BoolToStr(chk_init.Checked);
            Params[8].AsString:= BoolToStr(chk_cp2.Checked);
            Params[9].AsInteger:= ComboBox_sys.ItemIndex;
            Params[10].AsString:= mod_title.Text;
            Params[11].AsString:= mod_parm.Text;
            Params[12].AsString:= BoolToStr(RadioButton4.Checked);
            Params[13].AsInteger:=axcodmdlp;
            Params[14].AsInteger:=axcod;
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          dm.executa.Execute;
     except
          loadx.Progressloading2.Visible:=false;
          loadx.Free;
          hwsf.BtMensagem('Ocorreu algum erro.');
          bt_save.Enabled:=true;
          exit;
     end;
     xlogotmp.Seek(0,soFromBeginning);
     if ((xlogotmp.Size<=0) and RadioButton5.Checked) then begin
        getLogo(xcodmdlpai.Text);
        xlogotmp.Seek(0,soFromBeginning);
     end;
     xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf24[0],37249),'UPDT','codigo','','ico','','','',IntToStr(axcod),xlogotmp,nil);
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados binários.');
        exit;
     end;
     loadx.Progressloading.position:=75;
     if xmodupdate and RadioButton4.Checked then begin
        if not atualiza_modbin(axcod,size_mod,lbcp3.Text,lbcp4.Text,xmodtmp,true,CheckBox_cript.Checked) then begin
           loadx.Progressloading2.Visible:=false;
           loadx.Free;
           hwsf.BtMensagem('Erro ao inserir dados binários.');
           bt_save.Enabled:=true;
           exit;
        end else if not xnewmdl and RadioButton5.Checked then begin
          with dm.executa do begin
            CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+'_ax '+
                          'WHERE cod_mod=:p0';
            Params[0].AsInteger:=axcod;
            try
                Execute;
            except
                loadx.Progressloading2.Visible:=false;
                loadx.Free;
                hwsf.BtMensagem('Erro Limpar dados binários.');
                bt_save.Enabled:=true;
                exit;
            end;
          end;
        end;
     end;
     loadx.Progressloading.position:=100;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     loadx.Progressloading2.Visible:=false;
     loadx.Free;
     bt_save.Enabled:=true;
     dm.ds_sql.Locate('codigo',axcod,[]);
     atualiza_grade;
     if xnewmdl and RadioButton5.Checked then SetAllMdlTbl(IntToStr(axcod));
end;

function Tadm_modulos.atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream; xat_grava,xat_cript: boolean):boolean;
var OutMS_mod: TMemoryStream;
    axcod2,index_mod,xchr,xpercax: integer;
    xperc: Real;
    xind,ax_mod: Longint;
    c_mod : byte;
    xexecutaimg: Boolean;
begin
     //deleta registro dos módulos binários
      Result:= True;
      with dm.executa do begin
            CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+'_ax '+
                       'WHERE cod_mod=:p0';
            Params[0].AsInteger:=axt_codigo;
            try
                Execute;
            except
                Result:= False;
                exit;
            end;
      end;
      //insert registro dos módulos binários
      if size_mod > 0 then begin
       xat_xmodtmp.Seek(0,soFromBeginning);
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_mod.Seek(0,soFromBeginning);
       index_mod:=0;
       ax_mod:=0;
       xpercax:=30;
       xperc:=70/size_mod;
       for xind:=0 to size_mod-1 do begin
          xpercax:=StrtoInt(formatfloat('0',xperc*xind))+30;
          if xpercax > 100 then xpercax:=100;
          if loadx.Progressloading2.Visible then
             loadx.Progressloading2.Position:=xpercax
          else loadx.Progressloading.Position:=xpercax;
          xat_xmodtmp.Read(c_mod, 1);
          OutMS_mod.Write(c_mod,1);

          if (ax_mod = 50000) or (xind=size_mod-1) then begin
            with dm.executa do begin
               axcod2:=dm.GetCodMax(EnDecryptString(Serverconect.vrf24[0],37249)+'_ax',1);
               xchr:=HexToInt(axt_mdl+Inttostr(axcod2)+axt_ver+Inttostr(axt_codigo));
               CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf24[0],37249)+'_ax (codigo,cod_mod,ordem)'+
                          'VALUES(:p0,:p1,:p2)';
               Params[0].AsInteger:=axcod2;
               Params[1].AsInteger:=axt_codigo;
               Params[2].AsInteger:=index_mod;
            end;
            try
               dm.executa.Execute;
            except
               Result:= False;
               exit;
            end;
            OutMS_mod.Seek(0,soFromBeginning);
            if xat_cript then OutMS_mod:=EnDecryptStream(OutMS_mod,xchr)
            else OutMS_mod:=OutMS_mod;
            OutMS_mod.Seek(0,soFromBeginning);
            xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf24[0],37249)+'_ax','UPDT','codigo','','img','','','',IntToStr(axcod2),OutMS_mod,nil);
            if not xexecutaimg then begin
               hwsf.BtMensagem('Erro ao gravar dados binários.');
               exit;
            end;
            Inc(index_mod);
            ax_mod:=0;
            OutMS_mod.Clear;
            OutMS_mod.Seek(0,soFromBeginning);
          end else begin
            Inc(ax_mod);
          end;
       end;
       OutMS_mod.Free;
       xat_xmodtmp.Clear;
       xat_xmodtmp.Seek(0,soFromBeginning);
      end;
end;

procedure Tadm_modulos.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tadm_modulos.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tadm_modulos.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_modulos.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tadm_modulos.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_modulos.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_modulos.Edit_searchKeyPress(Sender: TObject;
  var Key: Char);
begin
      if tp_search[ComboBox_search.ItemIndex]=0 then begin
         Case key of
           '0'..'9' :;
           #13, #8, #27:
         else
           Key := #0;
         end;
      end;
end;

procedure Tadm_modulos.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf25[0],37249),'codigo',lbct1.Text,true) then begin
           dm.ds_sql2.Close;
           dm.ds_sql2.Open;
           atualiza_grade2;
        end;
    end;
end;

procedure Tadm_modulos.bt_new2Click(Sender: TObject);
begin
    addreg2;
    lbct2.SetFocus;
end;

procedure Tadm_modulos.bt_save2Click(Sender: TObject);
var axcod : integer;
    axstr_filtro: TStringList;
    axstr_filtro_stream: TMemoryStream;
    axstr_col,axstr_row,axstr_rowcount: Integer;
    axstr_error:boolean;
begin
     bt_save2.Enabled:=false;
     axstr_filtro:= TStringList.Create;
     axstr_filtro.Clear;
     if (StringGrid_filtro.Cells[0,1]<>'') and
        (StringGrid_filtro.Cells[1,1]<>'') and
        (StringGrid_filtro.Cells[2,1]<>'') and
        (StringGrid_filtro.Cells[3,1]<>'') then begin
        //stringgrind Filtro
        axstr_rowcount:=StringGrid_filtro.RowCount;
        axstr_filtro.Add(IntToStr(axstr_rowcount));
        axstr_error:=false;
        for axstr_col:=0 to 3 do begin
            for axstr_row:=1 to axstr_rowcount-1 do begin
                if StringGrid_filtro.Cells[axstr_col,axstr_row]='' then begin
                    axstr_error:=true;
                    break;
                end else begin
                    if axstr_col=2 then begin
                       if StringGrid_filtro.Cells[axstr_col,axstr_row]='Número' then axstr_filtro.Add('0')
                       else axstr_filtro.Add('1');
                    end else axstr_filtro.Add(StringGrid_filtro.Cells[axstr_col,axstr_row]);
                end;
            end;
            if axstr_error then break;
        end;
        if axstr_error then begin
           axstr_filtro.Free;
           hwsf.BtMensagem('É necessário preencher todos os campos para edição de filtro.');
           StringGrid_filtro.SetFocus;
           bt_save2.Enabled:=true;
           exit;
        end;
        axstr_filtro_stream:= TMemoryStream.Create;
        axstr_filtro.SaveToStream(axstr_filtro_stream);
        axstr_filtro_stream.Seek(0,soFromBeginning);
        axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
        axstr_filtro_stream.Seek(0,soFromBeginning);
        axstr_filtro.LoadFromStream(axstr_filtro_stream);
        axstr_filtro_stream.Free;
     end;
     if lbct1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf25[0],37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf25[0],37249)+' (codigo,cod_grp,cp3,cp2,cp1) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=strtoint(lbcp1.Text);
            Params[2].AsString:=lbct2.Text;
            Params[3].AsString:=lbct3.Text;
            Params[4].Assign(axstr_filtro);
        end;
     end else begin
        axcod:=StrtoInt(lbct1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf25[0],37249)+' SET cp3=:p0,cp2=:p1,cp1=:p2 '+
                       'WHERE codigo=:p6';
            Params[0].AsString:=lbct2.Text;
            Params[1].AsString:=lbct3.Text;
            Params[2].Assign(axstr_filtro);
            Params[3].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.'); 
          bt_save2.Enabled:=true;
          exit;
     end;
     dm.ds_sql2.Close;
     dm.ds_sql2.Open;
     lbct1.Text:=InttoStr(axcod);
     bt_save2.Enabled:=true;
end;

procedure Tadm_modulos.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2; 
end;

procedure Tadm_modulos.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_modulos.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_modulos.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql2.Prior;
    atualiza_grade2;
end;

procedure Tadm_modulos.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql2.Next;
    atualiza_grade2;
end;

procedure Tadm_modulos.bt_importClick(Sender: TObject);
var xfilext: String;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    codAbrirtmp: TPicture;
    codGraphic: TBitmap;
    codStream: TMemoryStream;
    xab_w,xab_h,xab_dpi,xab_cp,
    xab_h_tmp,xab_w_tmp: Integer;
    xerror,xab_ajt,xab_pr: Boolean;
    xcalc1: Real;
    axshowing: Boolean;
begin
     if OpenPictureDialog1.Execute then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagem';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagem';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=10;
         xab_w:=25;
         xab_h:=25;
         xab_dpi:=100;
         xab_cp:=30;
         xab_ajt:=true;
         xab_pr:=true;
         loadx.Progressloading.position:=20;
         codStream:= TMemoryStream.Create;
         codBitmap:=TBitmap.Create;
         codGraphic:=TBitmap.Create;
         codJpeg:=TJPEGImage.Create;
         codAbrirtmp:= TPicture.Create;
         xerror:=false;
         xfilext:=ExtractFileExt(OpenPictureDialog1.FileName);
         if (xfilext='.bmp') then begin
            try
               codGraphic.LoadFromFile(OpenPictureDialog1.FileName);
            except
               xerror:=true;
            end;
         end else if (xfilext='.jpg') or (xfilext='.jpeg') then begin
            try
               codJpeg.LoadFromFile(OpenPictureDialog1.FileName);
               With codGraphic do begin
                    Width := codJpeg.Width;
                    Height := codJpeg.Height;
                    Canvas.Draw(0,0,codJpeg);
               end;
            except
               xerror:=true;
            end;
         end else if (xfilext='.ico') then begin
            try
               codAbrirtmp.LoadFromFile(OpenPictureDialog1.FileName);
               With codGraphic do begin
                    Width := codAbrirtmp.Width;
                    Height := codAbrirtmp.Height;
                    Canvas.Draw(0,0,codAbrirtmp.Icon);
               end;
            except
               xerror:=true;
            end;
         end else xerror:=true;
         if xerror then begin
            codBitmap.Free;
            codGraphic.Free;
            codStream.Free;
            codJpeg.Free;
            codAbrirtmp.Free;
            if not axshowing then loadx.Close;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         loadx.Progressloading.position:=30;
         With codBitmap do begin
              if not xab_ajt then begin
                 //não ajustar ao tamanho
                 //imagem ficara proporcional
                 if xab_h > xab_w then begin
                    xcalc1 := (((xab_h*100)/codGraphic.Height)/100);
                 end else begin
                    xcalc1 := (((xab_w*100)/codGraphic.Width)/100);
                 end;
                 xab_h:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                 xab_w:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
              end else begin
                 //ajustar ao tamanho
                 if xab_pr then begin
                    //se imagem proporcional
                    xcalc1:= (((codGraphic.Height*100)/xab_h)/100);
                    xab_h_tmp:=StrToInt(formatfloat('0',(xab_h*xcalc1)));
                    xab_w_tmp:=StrToInt(formatfloat('0',(xab_w*xcalc1)));
                    codGraphic.Height:=xab_h_tmp;
                    codGraphic.Width:=xab_w_tmp;
                 end;
              end;
              loadx.Progressloading.position:=40;
              Width := xab_w;
              Height := xab_h;
              loadx.Progressloading.position:=50;
              Canvas.StretchDraw(Rect(0, 0, xab_w, xab_h),codGraphic);
              loadx.Progressloading.position:=60;
         end;
         With codJpeg do begin
              Assign(codBitmap);
              loadx.Progressloading.position:=70;
              CompressionQuality:=xab_cp;
              Compress;
              loadx.Progressloading.position:=80;
              SaveToStream(xlogotmp);
              xlogotmp.Seek(0,soFromBeginning);
              loadx.Progressloading.position:=90;
         end;
         loadx.Progressloading.position:=100;
         codBitmap.Free;
         codGraphic.Free;
         codStream.Free;
         codJpeg.Free;
         codAbrirtmp.Free;
         if not axshowing then loadx.Close;
         if hwsf.BtConfirma('Gravar dados?') then begin
            bt_save.Click;
         end;
         abretmplogo;
      end;
end;

procedure Tadm_modulos.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

function Tadm_modulos.LimparMdlPai:Boolean;
begin
     Try
       xmodupdate:=true;
       xmodtmp.Clear;
       xpathpacote.Text:='';
       lbcp3.Text:='';
       lbcp4.Text:='';
       lbcp5.Text:='';
       //abretmplogo;
       Result:=True;
     Except
       Result:=false;
     End;
end;

procedure Tadm_modulos.SpeedButton1Click(Sender: TObject);
var bconf : boolean;
    MyIMGico : TJPEGImage;
    StrLst : TStringList;
begin
     if xpathpacote.Text<>'' then OpenDialog1.FileName:=xpathpacote.Text;
     if OpenDialog1.Execute then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Importando arquivo';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        try
           StrLst := TStringList.Create;
           StrLst.Clear;
           xmodupdate:=true;
           impmodule:=true;
           xmodtmp.Clear;
           xpathpacote.Text:= OpenDialog1.FileName;
           StrLst.Add(xpathpacote.Text);
           CompressStream.BackupToStream(StrLst,xmodtmp);
           bconf:=false;
           if LowerCase(Copy(xpathpacote.Text,Length(xpathpacote.Text)-2,3)) = 'exe' then begin
              StrLst.Clear;
              StrLst:= FileVerInfo(xpathpacote.Text);
              if StrLst.Count > 0 then begin
                 lbcp2.Text:=StrLst.Strings[2]; //descrição do software
                 lbcp3.Text:=StrLst.Strings[3]; // Nome do exe
                 lbcp4.Text:=StrLst.Strings[4]; // Versão
              end;
              bconf:=true;
              xlogotmp.Seek(0,soFromBeginning);
              if xlogotmp.Size > 0 then begin
                 if not hwsf.BtConfirma('Atualizar ícone do módulo?') then bconf:=false;
              end;
           end else if LowerCase(Copy(xpathpacote.Text,Length(xpathpacote.Text)-2,3)) = 'bpl' then begin
              StrLst.Clear;
              StrLst:= FileVerInfo(xpathpacote.Text);
              if StrLst.Count > 0 then begin
                 lbcp2.Text:=StrLst.Strings[2]; //descrição do software
                 lbcp3.Text:=LowerCase(StrLst.Strings[3])+'.bpl'; // Nome do exe
                 lbcp4.Text:=StrLst.Strings[4]; // Versão
              end;
           end;
           if bconf then begin
                 xlogotmp.Clear;
                 MyIMGico := TJPEGImage.Create;
                 MyIMGico.Assign(hwsf.HiconToBitmapexe(xpathpacote.Text));
                 with MyIMGico do begin
                   CompressionQuality := 30;
                   Compress;
                 end;
                 MyIMGico.JpegNeeded;
                 MyIMGico.SaveToStream(xlogotmp);
                 MyIMGico.free;
           end;
        finally
          StrLst.Free;
          abretmplogo;
        end;
        loadx.Close;
     end;
end;

function Tadm_modulos.atualiza_pacote(axcodpack: integer; pathdopacote,soft_ver,soft_exe,soft_desc: string; xatualiza_ico,xatualiza_dados,xatualiza_cript: boolean):boolean;
var MyIMGico : TJPEGImage;
    StrLst : TStringList;
    xmodtmp_ax,xlogotmp_ax : TMemoryStream;
    size_mod: integer;
    xexecutaimg: Boolean;
begin
     //atualização de pacotes
     try
           StrLst := TStringList.Create;
           StrLst.Clear;
           xmodtmp_ax := TMemoryStream.Create;
           xlogotmp_ax := TMemoryStream.Create;
           StrLst.Add(pathdopacote);
           CompressStream.BackupToStream(StrLst,xmodtmp_ax);
           soft_exe:=ExtractFileName(pathdopacote);
           StrLst.Clear;
           StrLst:= FileVerInfo(pathdopacote);
           if (StrLst.Count > 0) and (xatualiza_dados) then begin
              if soft_desc = '' then
                 soft_desc:=StrLst.Strings[2]; //descrição do software
              //soft_exe:=StrLst.Strings[3]; // Nome do exe
              soft_ver:=StrLst.Strings[4]; // Versão
           end;
           xlogotmp_ax.Clear;
           xlogotmp_ax.Seek(0,soFromBeginning);
           if LowerCase(Copy(pathdopacote,Length(pathdopacote)-2,3)) = 'exe' then begin
              if xatualiza_ico then begin
                 MyIMGico := TJPEGImage.Create;
                 MyIMGico.Assign(hwsf.HiconToBitmapexe(pathdopacote));
                 with MyIMGico do begin
                      CompressionQuality := 30;
                      Compress;
                 end;
                 MyIMGico.JpegNeeded;
                 MyIMGico.SaveToStream(xlogotmp_ax);
                 MyIMGico.free;
              end;
           end;
     finally
          StrLst.Free;
     end;
     //Salva dados do arquivo
     size_mod:=xmodtmp_ax.Size;

     with dm.executa do begin
        try
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[0],37249)+' SET descricao=:p0,mdl=:p1,lastver=:p2,img=:p3,cpt=:p4,upsft=:p5 '+
                        'WHERE codigo=:p6';
          Params[0].AsString:=soft_desc;
          Params[1].AsString:=soft_exe;
          Params[2].AsString:=soft_ver;
          Params[3].AsInteger:=size_mod;
          Params[4].AsString:= BoolToStr(xatualiza_cript);
          Params[5].AsString:=EnDecryptString(pathdopacote,2341);
          Params[6].AsInteger:=axcodpack;
          Execute;
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[0],37249)+' SET mdl=:p0,lastver=:p1,img=:p2,cpt=:p3,upsft=:p4 '+
                        'WHERE cp6=:p5 AND cp7=:p6';
          Params[0].AsString:=soft_exe;
          Params[1].AsString:=soft_ver;
          Params[2].AsInteger:=size_mod;
          Params[3].AsString:= BoolToStr(xatualiza_cript);
          Params[4].AsString:=EnDecryptString(pathdopacote,2341);
          Params[5].AsString:= BoolToStr(false);
          Params[6].AsInteger:=axcodpack;
          Execute;
        except
          xmodtmp_ax.Free;
          xlogotmp_ax.Free;
          Result:=False;
          exit;
       end;
     end;
     xlogotmp_ax.Seek(0,soFromBeginning);
     if (xlogotmp_ax.Size > 0) then begin
        xlogotmp_ax.Seek(0,soFromBeginning);
        xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf24[0],37249),'UPDT','codigo','','img','','','',IntToStr(axcodpack),xlogotmp_ax,nil);
        if not xexecutaimg then begin
           hwsf.BtMensagem('Erro ao gravar dados binários.');
           exit;
        end;
        try
            if dm.ds_int5.Active then dm.ds_int5.Close;
            dm.ds_int5.CommandText:= 'SELECT codigo,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
                                     ' WHERE cp6='+#39+BoolToStr(false)+#39+' AND cp7='+#39+IntToStr(axcodpack)+#39+
                                     ' ORDER BY codigo';
            dm.ds_int5.Open;
            dm.ds_int5.First;
            While not dm.ds_int5.Eof do begin
                 xlogotmp_ax.Seek(0,soFromBeginning);
                 xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf24[0],37249),'UPDT','codigo','','img','','','',dm.ds_int5.fieldbyname('codigo').AsString,xlogotmp_ax,nil);
                 dm.ds_int5.Next;
            end;
            dm.ds_int5.Close;
        except

        end;
     end;
     if not atualiza_modbin(axcodpack,size_mod,soft_exe,soft_ver,xmodtmp_ax,true,xatualiza_cript) then begin
        Result:=False;
        xmodtmp_ax.Free;
        xlogotmp_ax.Free;
        exit;
     end;
     xmodtmp_ax.Free;
     xlogotmp_ax.Free;
     Result:=true;
end;

procedure Tadm_modulos.CheckBox_criptClick(Sender: TObject);
begin
     if CheckBox_cript.Checked then begin
        //lbcp3.ReadOnly:=true;
        //lbcp4.ReadOnly:=true;
        //lbcp3.Color:=$00F5F5F5;
        //lbcp4.Color:=$00F5F5F5;
     end else begin
        //lbcp3.ReadOnly:=false;
        //lbcp4.ReadOnly:=false;
        //lbcp3.Color:=clWindow;
        //lbcp4.Color:=clWindow;
     end;
end;

procedure Tadm_modulos.SpeedButton3Click(Sender: TObject);
begin
     if not FileExists(xpathpacote.Text) then begin
        if OpenDialog1.Execute then xpathpacote.Text:=OpenDialog1.FileName
        else xpathpacote.Text:='';
     end;
     if xpathpacote.Text <> '' then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Atualizando pacote';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        if atualiza_pacote(StrToInt(lbcp1.Text),xpathpacote.Text,lbcp4.Text,lbcp3.Text,lbcp2.Text,true,true,CheckBox_cript.Checked) then begin
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           atualiza_grade;
           loadx.close;
           hwsf.BtMensagem('Módulo atualizado com sucesso.');
        end else begin
           loadx.close;
           hwsf.BtMensagem('Erro ao gravar os dados.');
        end;
     end;
end;

procedure Tadm_modulos.CompressStreamProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
var xPercent : Integer;
begin
     xPercent:=StrtoInt(Formatfloat('0',(Percent*30)/100));
     if loadx.Progressloading2.Visible then
        loadx.Progressloading2.position:=xPercent
     else loadx.Progressloading.position:=xPercent;
end;

procedure Tadm_modulos.SpeedButton5Click(Sender: TObject);
var xdetpacot,xStrLst : TStringList;
begin
    xdetpacot := TStringList.Create;
    xStrLst := TStringList.Create;
    xdetpacot.Clear;
    xdetpacot.Add('DETALHES DO MÓDULO:');
    xdetpacot.Add('');
    xdetpacot.Add('Código: '+lbcp1.Text);
    xdetpacot.Add('Descrição: '+lbcp2.Text);
    xdetpacot.Add('Módulo: '+lbcp3.Text);
    xdetpacot.Add('Versão: '+lbcp4.Text);
    if xpathpacote.Text <> '' then begin
       if CheckBox_cript.Checked then xdetpacot.Add('Criptografado')
       else xdetpacot.Add('Não criptografado');
       xdetpacot.Add('');
       xdetpacot.Add('Path para Update: '+xpathpacote.Text);
       if LowerCase(Copy(xpathpacote.Text,Length(xpathpacote.Text)-2,3)) = 'exe' then begin
          xStrLst.Clear;
          xStrLst:= FileVerInfo(xpathpacote.Text);
          if (xStrLst.Count > 0) then begin
              xdetpacot.Add('Detalhes');
              xdetpacot.Add('Descrição.: '+ xStrLst.Strings[2]); //descrição do software
              xdetpacot.Add('Executável: '+ xStrLst.Strings[3]); // Nome do exe
              xdetpacot.Add('Versão....: '+ xStrLst.Strings[4]); // Versão
          end;
       end;
    end;
    hwsf.BtAviso(xdetpacot);
    xdetpacot.Free;
    xStrLst.Free;
end;

procedure Tadm_modulos.ComboSpeedButton1Click(Sender: TObject);
var x_error : TStringList;
    x_nomearq,x_descarq : String;
    xprogress,xarq_on,xarq_off,xarq_ok,xarq_ind : integer;
    x_atualiza : byte;
    StrLst : TStringList;
    xaddmdPai : Boolean;
begin
     xprogress:=0;
     xarq_on:=0;
     xarq_off:=0;
     xarq_ok:=0;
     xarq_ind:=0;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Atualizando módulos';
     loadx.Progressloading2.Visible:=true;
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     x_error:=TStringList.Create;
     x_error.Clear;
     x_error.Add('Relatório de atualizações - '+FormatFloat('00000',Serverconect.vrf00)+' - '+DateTimeToStr(Now));
     x_error.Add('____________________________________________________________');
     x_error.Add('');
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt,upsft,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        loadx.Progressloading.Max:=RecordCount;
        First;
        While not Eof do begin
          Inc(xprogress);
          loadx.Progressloading.position:=xprogress;
          xaddmdPai:=StrToBool(fieldbyname('cp6').AsString);
          if (xaddmdPai) then begin
            x_nomearq:=EnDecryptString(fieldbyname('upsft').AsString,2341);
            //if x_nomearq='db'
            x_atualiza:=0;
            if x_nomearq<>'' then begin
               if not FileExists(x_nomearq) then begin
                  if update_path.Checked then begin
                     if OpenDialog1.Execute then x_nomearq:= OpenDialog1.FileName
                     else x_atualiza:=1;
                  end else x_atualiza:=1;
               end;
               if x_atualiza=0 then begin
                  StrLst := TStringList.Create;
                  StrLst:= FileVerInfo(x_nomearq);
                  if StrLst.Count>0 then begin
                     x_descarq:=StrLst.Strings[2];
                     if not update_forcar.Checked then begin
                         // Versão
                         if StrLst.Strings[4]=fieldbyname('lastver').AsString then x_atualiza:=2;
                      end;
                  end else x_atualiza:=2;
                  StrLst.Free;
                  if x_atualiza=0 then 
                  if not update_descricao.Checked then x_descarq:=fieldbyname('descricao').AsString;
               end;
               Case x_atualiza of
                0: begin
                  loadx.lbloading.Caption:=fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString;
                  loadx.Repaint;
                  if atualiza_pacote(fieldbyname('codigo').AsInteger,x_nomearq,fieldbyname('lastver').AsString,fieldbyname('mdl').AsString,x_descarq,true,true,StrToBool(fieldbyname('cpt').AsString)) then begin
                     x_error.Add('Válido: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString+']  atualizado com sucesso.');
                     Inc(xarq_on);
                  end else  begin
                     x_error.Add('ERRO: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString+'] - erro ao gravar os dados.');
                     Inc(xarq_off);
                  end;
                  x_error.Add(x_nomearq);
                 end;
                1: begin
                  x_error.Add('ERRO: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString+']  não localizado.');
                  x_error.Add(EnDecryptString(fieldbyname('upsft').AsString,2341));
                  Inc(xarq_off);
                end;
                2: begin
                  x_error.Add('Ignorado: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString+']  está atualizado.');
                  x_error.Add(EnDecryptString(fieldbyname('upsft').AsString,2341));
                  Inc(xarq_ok);
                end;
               End;
            end else begin
               x_error.Add('Índice: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('mdl').AsString+']  não configurado.');
               x_error.Add(EnDecryptString(fieldbyname('upsft').AsString,2341));
               Inc(xarq_ind);
            end;
          end else begin
             x_error.Add('Módulo Filho: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+']  --> Cód. Mod. Pai: '+fieldbyname('cp7').AsString);
          end;
          Next;
        end;
        Close;
     end;
     x_error.Add('');
     x_error.Add('____________________________________________________________');
     x_error.Add('Atualizações válidas...: '+FormatFloat('000',xarq_on));
     x_error.Add('Atualizações inválidas.: '+FormatFloat('000',xarq_off));
     if xarq_ok > 0  then
     x_error.Add('Arquivos já atualizados: '+FormatFloat('000',xarq_ok));
     x_error.Add('Arquivos sem anexo.....: '+FormatFloat('000',xarq_ind));
     x_error.Add('Total..................: '+FormatFloat('000',(xarq_on+xarq_off+xarq_ok+xarq_ind)));
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     atualiza_grade;
     loadx.Progressloading2.Visible:=false;
     loadx.Free;
     hwsf.BtAviso(x_error);
     x_error.Free;
end;

procedure Tadm_modulos.update_forcarClick(Sender: TObject);
begin
      if update_forcar.Checked then update_forcar.Checked:=false
      else update_forcar.Checked:=true;
end;

procedure Tadm_modulos.update_descricaoClick(Sender: TObject);
begin
      if update_descricao.Checked then update_descricao.Checked:=false
      else update_descricao.Checked:=true;
end;

procedure Tadm_modulos.update_pathClick(Sender: TObject);
begin
      if update_path.Checked then update_path.Checked:=false
      else update_path.Checked:=true;
end;

procedure Tadm_modulos.DBGrid1TitleClick(Column: TColumn);
var xinddbs: integer;
begin
      ordem_dbmdl:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
      application.processmessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure
      for xinddbs:=0 to DBGrid1.Columns.Count-1 do begin
          DBGrid1.Columns.Items[xinddbs].Title.Color:=$00E5E5E5;
      end;
      DBGrid1.Columns.Items[Column.Index].Title.Color:=$00ADADAD;
      montadbmdl;
end;

procedure Tadm_modulos.montadbmdl;
var axfiltromdl,axwherecp2:string;
begin
     With dm.ds_sql do begin
        if Active then begin
           axfiltromdl:=Filter;
           Close;
        end else axfiltromdl:='';
        if RadioButton1.Checked then axwherecp2:=''
        else axwherecp2:=' WHERE '+'cp2='+#39+BoolToStr(RadioButton2.Checked)+#39;
        if ((not CheckBoxpbck1.Checked) or (not CheckBoxpbck2.Checked)) then begin
           if axwherecp2<>'' then axwherecp2:=axwherecp2+' AND '
           else axwherecp2:=' WHERE ';
           axwherecp2:=axwherecp2+'cp6='+#39+BoolToStr(CheckBoxpbck1.Checked)+#39;
        end;
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,obs,cpt,upsft,xinit,cp2,cp3,cp4,cp5,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
        axwherecp2+' ORDER BY '+ordem_dbmdl;
        Open;
        Filter:=axfiltromdl;
        Filtered:=true;
        atualiza_grade;
     end;
end;

procedure Tadm_modulos.ComboBox_filtroChange(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := ComboBox_filtro.Items[ComboBox_filtro.ItemIndex];
      ComboBox_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_modulos.ComboBox_filtroExit(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := ComboBox_filtro.Items[ComboBox_filtro.ItemIndex];
      ComboBox_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_modulos.StringGrid_filtroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var R: TRect; 
    xvalue: Integer;
begin
      if ((ACol = 2) AND (ARow <> 0)) then begin
         xstrCol:=ACol;
         xstrRow:=ARow;
         R := StringGrid_filtro.CellRect(ACol, ARow);
         R.Left := R.Left + StringGrid_filtro.Left;
         R.Right := R.Right + StringGrid_filtro.Left;
         R.Top := R.Top + StringGrid_filtro.Top;
         R.Bottom := R.Bottom + StringGrid_filtro.Top;
         ComboBox_filtro.Left := R.Left + 1;
         ComboBox_filtro.Top := R.Top + 1;
         ComboBox_filtro.Width := (R.Right + 1) - R.Left;
         ComboBox_filtro.Height := (R.Bottom + 1) - R.Top;
         if StringGrid_filtro.Cells[ACol, ARow]='Número' then
            ComboBox_filtro.ItemIndex:=0
         else ComboBox_filtro.ItemIndex:=1;
         ComboBox_filtro.Visible := True;
         ComboBox_filtro.SetFocus;
      end;
      if ((ACol = 3) AND (ARow <> 0)) then begin
         xstrCol:=ACol;
         xstrRow:=ARow;
         R := StringGrid_filtro.CellRect(ACol, ARow);
         R.Left := R.Left + StringGrid_filtro.Left;
         R.Right := R.Right + StringGrid_filtro.Left;
         R.Top := R.Top + StringGrid_filtro.Top;
         R.Bottom := R.Bottom + StringGrid_filtro.Top;
         SpinEdit_filtro.Left := R.Left + 1;
         SpinEdit_filtro.Top := R.Top + 1;
         SpinEdit_filtro.Width := (R.Right + 1) - R.Left;
         SpinEdit_filtro.Height := (R.Bottom + 1) - R.Top;
         Try
            xvalue:=StrtoInt(StringGrid_filtro.Cells[ACol, ARow]);
         Except
            xvalue:=1;
         End;
         SpinEdit_filtro.Value:=xvalue;
         SpinEdit_filtro.Visible := True;
         SpinEdit_filtro.SetFocus;
      end;
      CanSelect := True;
end;

procedure Tadm_modulos.SpinEdit_filtroExit(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := InttoStr(SpinEdit_filtro.Value);
      SpinEdit_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_modulos.bt_filtroaddClick(Sender: TObject);
begin
      StringGrid_filtro.RowCount:=StringGrid_filtro.RowCount+1;
end;

procedure Tadm_modulos.bt_filtrodelClick(Sender: TObject);
var axstr_id: Integer;
begin
      if StringGrid_filtro.RowCount=2 then begin
         StringGrid_filtro.Cells[0,1]:='';
         StringGrid_filtro.Cells[1,1]:='';
         StringGrid_filtro.Cells[2,1]:='';
         StringGrid_filtro.Cells[3,1]:='';
      end else begin
         for axstr_id:=StringGrid_filtro.Row to StringGrid_filtro.RowCount-1 do begin
             if axstr_id<(StringGrid_filtro.RowCount-1) then begin
                StringGrid_filtro.Cells[0,axstr_id]:=StringGrid_filtro.Cells[0,axstr_id+1];
                StringGrid_filtro.Cells[1,axstr_id]:=StringGrid_filtro.Cells[1,axstr_id+1];
                StringGrid_filtro.Cells[2,axstr_id]:=StringGrid_filtro.Cells[2,axstr_id+1];
                StringGrid_filtro.Cells[3,axstr_id]:=StringGrid_filtro.Cells[3,axstr_id+1];
             end;
         end;
         StringGrid_filtro.Cells[0,StringGrid_filtro.RowCount-1]:='';
         StringGrid_filtro.Cells[1,StringGrid_filtro.RowCount-1]:='';
         StringGrid_filtro.Cells[2,StringGrid_filtro.RowCount-1]:='';
         StringGrid_filtro.Cells[3,StringGrid_filtro.RowCount-1]:='';
         StringGrid_filtro.RowCount:=StringGrid_filtro.RowCount-1;
      end;
end;

procedure Tadm_modulos.StringGrid_filtroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (key=VK_DOWN) and (StringGrid_filtro.Row=StringGrid_filtro.RowCount-1) then
         StringGrid_filtro.RowCount:=StringGrid_filtro.RowCount+1;
      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
         bt_filtrodel.Click;
end;

procedure Tadm_modulos.SpinEdit_filtroKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key=#13 then StringGrid_filtro.SetFocus;
end;

procedure Tadm_modulos.bt_new2_allClick(Sender: TObject);
var axcodgrp:String;
begin
      axcodgrp:= hwsf.BtDesc('Digite o código do módulo');
      if (axcodgrp = '') then begin
         hwsf.BtMensagem('Digite o código do módulo.');
         exit;
      end else SetAllMdlTbl(axcodgrp);
end;

procedure Tadm_modulos.SetAllMdlTbl(xcodgrp:String);
var axcod: Integer;
begin
      With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf25[0],37249)+
                      ' WHERE cod_grp='+#39+xcodgrp+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        if (RecordCount <= 0) then begin
           hwsf.BtMensagem('Código inválido.');
           Close;
           exit;
        end;
        First;
        While not Eof do begin
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf25[0],37249),1);
            dm.executa.CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf25[0],37249)+' (codigo,cod_grp,cp3,cp2,cp1) '+
                                     'VALUES(:p0,:p1,:p2,:p3,:p4)';
            dm.executa.Params[0].AsInteger:=axcod;
            dm.executa.Params[1].AsInteger:=strtoint(lbcp1.Text);
            dm.executa.Params[2].AsString:=fieldbyname('cp3').AsString;
            dm.executa.Params[3].AsString:=fieldbyname('cp2').AsString;
            dm.executa.Params[4].Assign(fieldbyname('cp1'));
            dm.executa.Execute;
            Next;
        end;
        Close;
        xmounttables(lbcp1.Text);
     end;
end;

procedure Tadm_modulos.xmounttables(xcodgrp: String);
begin
      With dm.ds_sql2 do begin
        if Active then Close;
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf25[0],37249)+
                      ' WHERE cod_grp='+#39+xcodgrp+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
end;

procedure Tadm_modulos.selecttypMod(xtyp:Boolean);
begin
      xpathpacote.Enabled:=xtyp;
      SpeedButton1.Enabled:=xtyp;
      SpeedButton2.Enabled:=xtyp;
      SpeedButton3.Enabled:=xtyp;
      SpeedButton5.Enabled:=xtyp;
      chk_cp2.Enabled:=xtyp;
      CheckBox_cript.Enabled:=xtyp;
      ComboBox_sys.Enabled:=xtyp;
      Label6.Enabled:=xtyp;
      MdpPdefault.Enabled:=xtyp;
      xcodmdlpai.Enabled:=(not xtyp);
      if (xtyp) then begin
         xcodmdlpai.Text:='0';
      end;
      {else begin
         LimparMdlPai;
      end;}
      if ((not xMdlPact) and (xMdlPact2 = xtyp)) then begin
         if hwsf.BtConfirma('Reatribuir configurações Padrão?') then atualiza_grade;
         xMdlPact:=true;
      end;
end;

procedure Tadm_modulos.RadioButton4Click(Sender: TObject);
begin
      selecttypMod(RadioButton4.Checked);
      xMdlPact:=false;
end;

procedure Tadm_modulos.SpeedButton2Click(Sender: TObject);
begin
      LimparMdlPai;
end;

procedure Tadm_modulos.xcodmdlpaiChange(Sender: TObject);
begin
      if ((xcodmdlpai.Text <> '') and (xcodmdlpai.Text <> '0') and (not xMdlPact3)) then
          atualiza_grade_AX(xcodmdlpai.Text);
      xMdlPact3:=false;
end;

procedure Tadm_modulos.MdpPdefaultClick(Sender: TObject);
var xlistcod1,xlistcod2,x_error: TStringList;
    xlistid1,axcodid,size_modid,axcodmdlpid: Integer;
    xexecutaimgid,xatribicon,xerroupd: Boolean;
    axtexcpatcc,axcodmaster: String;
begin
      axcodmaster:=lbcp1.Text;
      if not hwsf.BtConfirma('AVISO: Tem certeza que desejas atribuir Referências Globais para o Módulo selecionado?'+#13+'['+axcodmaster+' / '+lbcp2.Text+']') then exit;
      if lbcp3.Text = '' then begin
         hwsf.BtMensagem('É necessário selecionar um módulo.');
         exit;
      end;
      xlistcod1:= TStringList.Create;
      xlistcod2:= TStringList.Create;
      xlistcod1.Clear;
      xlistcod2.Clear;
      with dm.ds_sql5 do begin
           if dm.ds_sql5.Active then Close;
           CommandText:= 'SELECT codigo,descricao,mdl,lastver,obs,cpt,upsft,xinit,cp2,cp3,cp4,cp5,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
                         ' WHERE mdl='+#39+lbcp3.Text+#39+' AND codigo<>'+#39+axcodmaster+#39+
                         ' ORDER BY codigo';
           Open;
           First;
           While not Eof do begin
              xlistcod1.Add(fieldbyname('codigo').AsString);
              xlistcod2.Add(fieldbyname('descricao').AsString);
              Next;
           end;
           Close;
      end;
           if ((lbcp5.Text='nenhum') or (lbcp5.Text='')) then size_modid:=0
           else size_modid:=StrtoInt(lbcp5.Text);
           if xlistcod1.Count = 0 then begin
              hwsf.BtMensagem('Nenhum Módulo Localizado.');
              xlistcod1.Free;
              exit;
           end;
           xatribicon:=hwsf.BtConfirma('Atribuir icones para todos os Módulos?');
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Aplicando configurações';
           loadx.Progressloading2.Visible:=true;
           loadx.Show;
           loadx.Update;
           loadx.Progressloading.position:=0;
           loadx.Progressloading.Max:=xlistcod1.Count;
           x_error:=TStringList.Create;
           x_error.Clear;
           x_error.Add('Relatório de atualizações - Referências Globais para o Módulo  ['+axcodmaster+' / '+lbcp2.Text+']'+' - '+DateTimeToStr(Now));
           x_error.Add('____________________________________________________________');
           x_error.Add('');
           for xlistid1:=0 to xlistcod1.Count-1 do begin
               Application.ProcessMessages;
               loadx.Progressloading.position:=xlistid1;
               axtexcpatcc:='['+IntToStr(xlistid1+1)+'/'+IntToStr(xlistcod1.Count)+'] '+xlistcod1.Strings[xlistid1]+' / '+xlistcod2.Strings[xlistid1];
               loadx.Repaint;
               axcodid:=StrtoInt(xlistcod1.Strings[xlistid1]);
               xerroupd:=false;
               x_error.Add('Atualizando '+xlistcod1.Strings[xlistid1]+xlistcod2.Strings[xlistid1]);
               if xatribicon then begin
                 loadx.lbloading.Caption:=axtexcpatcc+' Ícone';
                 loadx.Repaint;
                 xlogotmp.Seek(0,soFromBeginning);
                 xexecutaimgid:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf24[0],37249),'UPDT','codigo','','ico','','','',IntToStr(axcodid),xlogotmp,nil);
                 if not xexecutaimgid then begin
                    x_error.Add('    -->Erro ao atualiza Ícone');
                    xerroupd:=true;
                 end;
              end;
              loadx.lbloading.Caption:=axtexcpatcc+' Limpando';
              with dm.executa do begin
                CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+'_ax '+
                          'WHERE cod_mod=:p0';
                Params[0].AsInteger:=axcodid;
                try
                    Execute;
                except
                    x_error.Add('    -->Erro ao Limpar dados Binários');
                    xerroupd:=true;
                end;
              end;
              loadx.lbloading.Caption:=axtexcpatcc+' Gravando';
              with dm.executa do begin
                  CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[0],37249)+' SET mdl=:p0,lastver=:p1,img=:p2,cpt=:p3,upsft=:p4,cp2=:p5,cp3=:p6,cp6=:p7,cp7=:p8 '+
                                'WHERE codigo=:p9';
                  Params[0].AsString:=lbcp3.Text;
                  Params[1].AsString:=lbcp4.Text;
                  Params[2].AsInteger:=size_modid;
                  Params[3].AsString:= BoolToStr(CheckBox_cript.Checked);
                  Params[4].AsString:= EnDecryptString(xpathpacote.Text,2341);
                  Params[5].AsString:= BoolToStr(chk_cp2.Checked);
                  Params[6].AsInteger:= ComboBox_sys.ItemIndex;
                  Params[7].AsString:= BoolToStr(false);
                  Params[8].AsInteger:=StrToInt(axcodmaster);
                  Params[9].AsInteger:=axcodid;
              end;
              try
                   dm.executa.Execute;
              except
                   x_error.Add('    -->Erro ao Gravar dados');
                   xerroupd:=true;
              end;
              loadx.lbloading.Caption:=axtexcpatcc+' OK';
              if xerroupd then x_error.Add('    -->ERRO.')
              else x_error.Add('    -->ATUALIZADO.');
           end;
           x_error.Add(' ');
           x_error.Add(' ');
           x_error.Add('____________________________________________________________');
           x_error.Add('Concluído... '+DateTimeToStr(Now));
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           xlistcod1.Free;
           loadx.Free;
           dm.ds_sql.Locate('codigo',axcodmaster,[]);
           atualiza_grade;
           hwsf.BtAviso(x_error);
           x_error.Free;
end;

procedure Tadm_modulos.CheckBoxpbck1Click(Sender: TObject);
begin
      if not CheckBoxpbck1.Checked then CheckBoxpbck2.Checked:=true;
      montadbmdl;
end;

procedure Tadm_modulos.CheckBoxpbck2Click(Sender: TObject);
begin
      if not CheckBoxpbck2.Checked then CheckBoxpbck1.Checked:=true;
      montadbmdl;
end;

procedure Tadm_modulos.btfiltpfClick(Sender: TObject);
begin
      montadbmdl;
end;

end.
