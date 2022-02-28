{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de módulos.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_admmod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, JPEG, backup,
  Menus, ComboSpeedButton, XPMan, Spin;


type
  Tadm_admmod = class(TForm)
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
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
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
    ScrollBox2: TScrollBox;
    Panel4: TPanel;
    lbct1: TLabeledEdit;
    lbct2: TLabeledEdit;
    lbct3: TLabeledEdit;
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
    Splitter1: TSplitter;
    StringGrid_filtro: TStringGrid;
    Label1: TLabel;
    ComboBox_filtro: TComboBox;
    SpinEdit_filtro: TSpinEdit;
    bt_filtroadd: TSpeedButton;
    bt_filtrodel: TSpeedButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    ComboBox_sys: TComboBox;
    lbcp6: TMemo;
    chk_cp2: TCheckBox;
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
    procedure SpeedButton2Click(Sender: TObject);
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    cv : string;
    xstrCol,xstrRow: Integer;
    xlogotmp,xmodtmp : TMemoryStream;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    impmodule,xmodupdate: boolean;
    function atualiza_pacote(axcodpack: integer; pathdopacote,soft_ver,soft_exe,soft_desc: string; xatualiza_ico,xatualiza_dados,xatualiza_cript: boolean):boolean;
    function atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream; xat_grava,xat_cript: boolean):boolean;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure addreg;
    procedure addreg2;
    procedure filtrar_reg;
    procedure getLogo;
    procedure abretmplogo;
    procedure montadbmdl;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    ordem_dbmdl: string;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_admmod: Tadm_admmod;

implementation
uses udm, hwsfunctions, DateUtils, Math;

{$R *.dfm}

procedure Tadm_admmod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xlogotmp.Free;
     xmodtmp.Free;
     dm.ds_int.Filter:='';
     dm.ds_int.Filtered:=false;
     dm.ds_int.Close;
     dm.ds_int2.Filter:='';
     dm.ds_int2.Filtered:=false;
     dm.ds_int2.Close;
     Action:=cafree;
end;

procedure Tadm_admmod.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_admmod.FormCreate(Sender: TObject);
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
     impmodule:=false;
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     DBGrid1.DataSource:=dm.source_int;
     DBGrid2.DataSource:=dm.source_int2;
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
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=30;
     StringGrid_filtro.Cells[0,0]:='Descrição';
     StringGrid_filtro.Cells[1,0]:='Campo';
     StringGrid_filtro.Cells[2,0]:='Tipo';
     StringGrid_filtro.Cells[3,0]:='Size';
     StringGrid_filtro.DefaultRowHeight := ComboBox_filtro.Height;
     //dbgrid
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='mdl';
     DBGrid1.Columns.Items[2].Title.Caption:='Módulo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='lastver';
     DBGrid1.Columns.Items[3].Title.Caption:='Versão';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='xinit';
     DBGrid1.Columns.Items[4].Title.Caption:='Iniciar com o sistema';
     DBGrid1.Columns.Items[1].Title.Color:=$00ADADAD;
     montadbmdl;
     loadx.Progressloading.position:=90;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp3';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_int2 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf25[1],37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_admmod.DBGrid1CellClick(Column: TColumn);
begin
      if not impmodule then atualiza_grade
      else impmodule:=false;
end;

procedure Tadm_admmod.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_admmod.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_admmod.atualiza_grade;
begin
      if dm.ds_int.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_int do begin
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
         end;
         dm.ds_int2.Filter:='cod_grp='+#39+lbcp1.Text+#39;
         TabSheet2.TabVisible:=true;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_int.RecordCount);
      getLogo;
      atualiza_grade2;
end;

procedure Tadm_admmod.atualiza_grade2;
var axstr_filtro: TStringList;
    axstr_filtro_stream: TMemoryStream;
    axstr_col,axstr_row,axstr_lin,axstr_rowcount: Integer;
begin
      if dm.ds_int2.RecordCount <= 0 then begin
         addreg2;
      end else begin
         with dm.ds_int2 do begin
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

procedure Tadm_admmod.getLogo;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(lbcp1.Text);
     Except
        axcodBlb:=0;
     End;
     xlogotmp.Clear;
     xmodtmp.Clear;
     With dm.executa_int do begin
        CommandText:='SELECT ico,img FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+' WHERE codigo='+#39+InttoStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('ico')).SaveToStream(xlogotmp);
        end;
        if fields[1].AsInteger = 0 then begin
           lbcp5.Text:='nenhum';
        end else begin
           lbcp5.Text:=FloatToStr(fields[1].AsInteger);
        end;
        xmodupdate:=false;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_admmod.abretmplogo;
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

procedure Tadm_admmod.addreg;
begin
     dm.ds_int2.Filter:='cod_grp='+#39+'0'+#39;
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
     getLogo;
end;

procedure Tadm_admmod.addreg2;
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

procedure Tadm_admmod.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_admmod.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_admmod.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_admmod.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_admmod.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_admmod.Left:= adm_admmod.Left-(mv_mouse.x-x);
      adm_admmod.Top:= adm_admmod.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_admmod.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_admmod.Left := adm_admmod.Left - (mv_mouse.x -x);
      adm_admmod.Top := adm_admmod.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_admmod.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_admmod.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
 { if not loadx.Visible then
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;    }
end;


procedure Tadm_admmod.bt_maximizaClick(Sender: TObject);
begin
    if adm_admmod.WindowState=wsMaximized then adm_admmod.WindowState:=wsNormal
    else adm_admmod.WindowState:=wsMaximized;
end;

procedure Tadm_admmod.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_admmod.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_admmod.bt_delClick(Sender: TObject);
begin
    if (dm.ds_int.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg2(EnDecryptString(Serverconect.vrf24[1],37249),'codigo',lbcp1.Text,true) then begin
           dm.deleta_reg2(EnDecryptString(Serverconect.vrf25[1],37249),'cod_grp',lbcp1.Text,false);
           dm.ds_int.Close;
           dm.ds_int.Open;
           dm.ds_int2.Close;
           dm.ds_int2.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_admmod.bt_saveClick(Sender: TObject);
var axcod,size_mod: integer;
begin
     if (lbcp5.Text = 'nenhum') and (chk_init.Checked) then chk_init.Checked:=false;
     if not (dm.conecta_int.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_int.StartTransaction(TD);
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Progressloading2.Visible:=true;
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     //insert or modify do cadatro principal
     if lbcp5.Text='nenhum' then size_mod:=0
     else size_mod:=StrtoInt(lbcp5.Text);
     loadx.Progressloading.position:=25;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf24[1],37249),2);
        with dm.executabin_int do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf24[1],37249)+' (codigo,descricao,mdl,lastver,obs,ico,img,cpt,upsft,xinit,cp2,cp3) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            Params[3].AsString:=lbcp4.Text;
            Params[4].Assign(lbcp6.Lines);
            xlogotmp.Seek(0,soFromBeginning);
            Params[5].LoadFromStream(xlogotmp,ftblob);
            Params[6].AsInteger:=size_mod;
            Params[7].AsString:= BoolToStr(CheckBox_cript.Checked);
            Params[8].AsString:= EnDecryptString(xpathpacote.Text,2341);
            Params[9].AsString:= BoolToStr(chk_init.Checked);
            Params[10].AsString:= BoolToStr(chk_cp2.Checked);
            Params[11].AsInteger:= ComboBox_sys.ItemIndex;
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executabin_int do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[1],37249)+' SET descricao=:p0,mdl=:p1,lastver=:p2,obs=:p3,ico=:p4,img=:p5,cpt=:p6,upsft=:p7,xinit=:p8,cp2=:p9,cp3=:p10 '+
                       'WHERE codigo=:p11';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            Params[2].AsString:=lbcp4.Text;
            Params[3].Assign(lbcp6.Lines);
            xlogotmp.Seek(0,soFromBeginning);
            Params[4].LoadFromStream(xlogotmp,ftblob);
            Params[5].AsInteger:=size_mod;
            Params[6].AsString:= BoolToStr(CheckBox_cript.Checked);
            Params[7].AsString:= EnDecryptString(xpathpacote.Text,2341);
            Params[8].AsString:= BoolToStr(chk_init.Checked);
            Params[9].AsString:= BoolToStr(chk_cp2.Checked);
            Params[10].AsInteger:= ComboBox_sys.ItemIndex;
            Params[11].AsInteger:=axcod;
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          dm.executabin_int.ExecSQL;
     except
          dm.conecta_int.RollBack(TD);
          loadx.Progressloading2.Visible:=false;
          loadx.Free;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     loadx.Progressloading.position:=75;
     if xmodupdate then begin
        if not atualiza_modbin(axcod,size_mod,lbcp3.Text,lbcp4.Text,xmodtmp,true,CheckBox_cript.Checked) then begin
           loadx.Progressloading2.Visible:=false;
           loadx.Free;
           dm.conecta_int.RollBack(TD);
           hwsf.BtMensagem('Ocorreu algum erro.');
           exit;
        end;
     end;
     loadx.Progressloading.position:=100;
     dm.conecta_int.Commit(TD);
     dm.ds_int.Close;
     dm.ds_int.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_int.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     loadx.Progressloading2.Visible:=false;
     loadx.Free;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

function Tadm_admmod.atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream; xat_grava,xat_cript: boolean):boolean;
var OutMS_mod: TMemoryStream;
    axcod2,index_mod,xchr,xpercax: integer;
    xperc: Real;
    xind,ax_mod: Longint;
    c_mod : byte;
begin
     //deleta registro dos módulos binários
      Result:= True;
      with dm.executa_int do begin
            CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax '+
                       'WHERE cod_mod=:p0';
            Params[0].AsInteger:=axt_codigo;
      end;
      try
          dm.executa_int.Execute;
      except
          Result:= False;
          exit;
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

          if (ax_mod = 500000) or (xind=size_mod-1) then begin
            with dm.executabin_int do begin
               axcod2:=dm.GetCodMax(EnDecryptString(Serverconect.vrf24[1],37249)+'_ax',2);
               xchr:=HexToInt(axt_mdl+Inttostr(axcod2)+axt_ver+Inttostr(axt_codigo));
               CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax (codigo,cod_mod,ordem,img)'+
                          'VALUES(:p0,:p1,:p2,:p3)';
               Params[0].AsInteger:=axcod2;
               Params[1].AsInteger:=axt_codigo;
               Params[2].AsInteger:=index_mod;
               OutMS_mod.Seek(0,soFromBeginning);
               if xat_cript then Params[3].LoadFromStream(EnDecryptStream(OutMS_mod,xchr),ftblob)
               else Params[3].LoadFromStream(OutMS_mod,ftblob);
            end;
            try
               dm.executabin_int.ExecSQL;
            except
               Result:= False;
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

procedure Tadm_admmod.bt_nextClick(Sender: TObject);
begin
    dm.ds_int.Next;
    atualiza_grade;
end;

procedure Tadm_admmod.bt_priorClick(Sender: TObject);
begin
    dm.ds_int.Prior;
    atualiza_grade;
end;

procedure Tadm_admmod.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_admmod.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_int.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_int.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_int.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tadm_admmod.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_admmod.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_admmod.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_admmod.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_int.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg2(EnDecryptString(Serverconect.vrf25[1],37249),'codigo',lbct1.Text,true) then begin
           dm.ds_int2.Close;
           dm.ds_int2.Open;
           atualiza_grade2;
        end;
    end;
end;

procedure Tadm_admmod.bt_new2Click(Sender: TObject);
begin
    addreg2;
    lbct2.SetFocus;
end;

procedure Tadm_admmod.bt_save2Click(Sender: TObject);
var axcod : integer;
    axstr_filtro: TStringList;
    axstr_filtro_stream: TMemoryStream;
    axstr_col,axstr_row,axstr_rowcount: Integer;
    axstr_error:boolean;
begin
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
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf25[1],37249),2);
        with dm.executa_int do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf25[1],37249)+' (codigo,cod_grp,cp3,cp2,cp1) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=strtoint(lbcp1.Text);
            Params[2].AsString:=lbct2.Text;
            Params[3].AsString:=lbct3.Text;
            Params[4].Assign(axstr_filtro);
        end;
     end else begin
        axcod:=StrtoInt(lbct1.Text);
        with dm.executa_int do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf25[1],37249)+' SET cp3=:p0,cp2=:p1,cp1=:p2 '+
                       'WHERE codigo=:p6';
            Params[0].AsString:=lbct2.Text;
            Params[1].AsString:=lbct3.Text;
            Params[2].Assign(axstr_filtro);
            Params[3].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa_int.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_int2.Close;
     dm.ds_int2.Open;
     lbct1.Text:=InttoStr(axcod);
     axstr_filtro.Free;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_admmod.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2; 
end;

procedure Tadm_admmod.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_admmod.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_admmod.bt_prior2Click(Sender: TObject);
begin
    dm.ds_int2.Prior;
    atualiza_grade2;
end;

procedure Tadm_admmod.bt_next2Click(Sender: TObject);
begin
    dm.ds_int2.Next;
    atualiza_grade2;
end;

procedure Tadm_admmod.bt_importClick(Sender: TObject);
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

procedure Tadm_admmod.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

procedure Tadm_admmod.SpeedButton2Click(Sender: TObject);
begin
     Try
       xmodupdate:=true;
       xmodtmp.Clear;
       xpathpacote.Text:='';
       lbcp3.Text:='';
       lbcp4.Text:='';
       abretmplogo;
     Except End;
end;

procedure Tadm_admmod.SpeedButton1Click(Sender: TObject);
var bconf : boolean;
    MyIMGico : TJPEGImage;
    StrLst : TStringList;
begin
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
           end;
        finally
          StrLst.Free;
          abretmplogo;
        end;
        loadx.Close;
     end;
end;

function Tadm_admmod.atualiza_pacote(axcodpack: integer; pathdopacote,soft_ver,soft_exe,soft_desc: string; xatualiza_ico,xatualiza_dados,xatualiza_cript: boolean):boolean;
var MyIMGico : TJPEGImage;
    StrLst : TStringList;
    xmodtmp_ax,xlogotmp_ax : TMemoryStream;
    size_mod: integer;
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
           xlogotmp_ax.Seek(0,soFromBeginning);
           if LowerCase(Copy(pathdopacote,Length(pathdopacote)-2,3)) = 'exe' then begin
              if xatualiza_ico then begin
                 xlogotmp_ax.Clear;
                 xlogotmp_ax.Seek(0,soFromBeginning);
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
     if not (dm.conecta_int.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_int.StartTransaction(TD);
     end;
     //insert or modify do cadatro principal
     size_mod:=xmodtmp_ax.Size;

     with dm.executabin_int do begin
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[1],37249)+' SET descricao=:p0,mdl=:p1,lastver=:p2,ico=:p3,img=:p4,cpt=:p5,upsft=:p6 '+
                     'WHERE codigo=:p7';
          Params[0].AsString:=soft_desc;
          Params[1].AsString:=soft_exe;
          Params[2].AsString:=soft_ver;
          xlogotmp_ax.Seek(0,soFromBeginning);
          Params[3].LoadFromStream(xlogotmp_ax,ftblob);
          Params[4].AsInteger:=size_mod;
          Params[5].AsString:= BoolToStr(xatualiza_cript);
          Params[6].AsString:=EnDecryptString(pathdopacote,2341);
          Params[7].AsInteger:=axcodpack;
     end;
     try
          dm.executabin_int.ExecSQL;
     except
          dm.conecta_int.RollBack(TD);
          xmodtmp_ax.Free;
          xlogotmp_ax.Free;
          Result:=False;
          exit;
     end;
     if not atualiza_modbin(axcodpack,size_mod,soft_exe,soft_ver,xmodtmp_ax,true,xatualiza_cript) then begin
           Result:=False;
           dm.conecta_int.RollBack(TD);
           xmodtmp_ax.Free;
           xlogotmp_ax.Free;
           exit;
     end;
     dm.conecta_int.Commit(TD);
     xmodtmp_ax.Free;
     xlogotmp_ax.Free;
     Result:=true;
end;

procedure Tadm_admmod.CheckBox_criptClick(Sender: TObject);
begin
     if CheckBox_cript.Checked then begin
        lbcp3.ReadOnly:=true;
        lbcp4.ReadOnly:=true;
        lbcp3.Color:=$00F5F5F5;
        lbcp4.Color:=$00F5F5F5;
     end else begin
        lbcp3.ReadOnly:=false;
        lbcp4.ReadOnly:=false;
        lbcp3.Color:=clWindow;
        lbcp4.Color:=clWindow;
     end;
end;

procedure Tadm_admmod.SpeedButton3Click(Sender: TObject);
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
           dm.ds_int.Close;
           dm.ds_int.Open;
           atualiza_grade;
           loadx.close;
           hwsf.BtMensagem('Módulo atualizado com sucesso.');
        end else begin
           loadx.close;
           hwsf.BtMensagem('Erro ao gravar os dados.');
        end;
     end;
end;

procedure Tadm_admmod.CompressStreamProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
var xPercent : Integer;
begin
     xPercent:=StrtoInt(Formatfloat('0',(Percent*30)/100));
     if loadx.Progressloading2.Visible then
        loadx.Progressloading2.position:=xPercent
     else loadx.Progressloading.position:=xPercent;
end;

procedure Tadm_admmod.SpeedButton5Click(Sender: TObject);
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

procedure Tadm_admmod.ComboSpeedButton1Click(Sender: TObject);
var x_error : TStringList;
    x_nomearq,x_descarq : String;
    xprogress,xarq_on,xarq_off,xarq_ok,xarq_ind : integer;
    x_atualiza : byte;
    StrLst : TStringList;
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
     With dm.ds_int3 do begin
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt,upsft FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        loadx.Progressloading.Max:=RecordCount;
        First;
        While not Eof do begin
            Inc(xprogress);
            loadx.Progressloading.position:=xprogress;
            x_nomearq:=EnDecryptString(fieldbyname('upsft').AsString,2341);
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
                  x_descarq:=StrLst.Strings[2];
                  if not update_forcar.Checked then begin
                     // Versão
                     if StrLst.Strings[4]=fieldbyname('lastver').AsString then x_atualiza:=2;
                  end;
                  StrLst.Free;
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
     dm.ds_int.Close;
     dm.ds_int.Open;
     atualiza_grade;
     loadx.Progressloading2.Visible:=false;
     loadx.Free;
     hwsf.BtAviso(x_error);
     x_error.Free;
end;

procedure Tadm_admmod.update_forcarClick(Sender: TObject);
begin
      if update_forcar.Checked then update_forcar.Checked:=false
      else update_forcar.Checked:=true;
end;

procedure Tadm_admmod.update_descricaoClick(Sender: TObject);
begin
      if update_descricao.Checked then update_descricao.Checked:=false
      else update_descricao.Checked:=true;
end;

procedure Tadm_admmod.update_pathClick(Sender: TObject);
begin
      if update_path.Checked then update_path.Checked:=false
      else update_path.Checked:=true;
end;

procedure Tadm_admmod.DBGrid1TitleClick(Column: TColumn);
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

procedure Tadm_admmod.montadbmdl;
var axfiltromdl,axwherecp2:string;
begin
     With dm.ds_int do begin
        if Active then begin
           axfiltromdl:=Filter;
           Close;
        end else axfiltromdl:='';
        if RadioButton1.Checked then axwherecp2:=''
        else axwherecp2:=' WHERE '+'cp2='+#39+BoolToStr(RadioButton2.Checked)+#39;
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,obs,cpt,upsft,xinit,cp2,cp3 FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+
        axwherecp2+' ORDER BY '+ordem_dbmdl;
        Open;
        Filter:=axfiltromdl;
        Filtered:=true;
     end;
end;

procedure Tadm_admmod.ComboBox_filtroChange(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := ComboBox_filtro.Items[ComboBox_filtro.ItemIndex];
      ComboBox_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_admmod.ComboBox_filtroExit(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := ComboBox_filtro.Items[ComboBox_filtro.ItemIndex];
      ComboBox_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_admmod.StringGrid_filtroSelectCell(Sender: TObject; ACol,
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

procedure Tadm_admmod.SpinEdit_filtroExit(Sender: TObject);
begin
      StringGrid_filtro.Cells[xstrCol,xstrRow] := InttoStr(SpinEdit_filtro.Value);
      SpinEdit_filtro.Visible := False;
      StringGrid_filtro.SetFocus;
end;

procedure Tadm_admmod.bt_filtroaddClick(Sender: TObject);
begin
      StringGrid_filtro.RowCount:=StringGrid_filtro.RowCount+1;
end;

procedure Tadm_admmod.bt_filtrodelClick(Sender: TObject);
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

procedure Tadm_admmod.StringGrid_filtroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (key=VK_DOWN) and (StringGrid_filtro.Row=StringGrid_filtro.RowCount-1) then
         StringGrid_filtro.RowCount:=StringGrid_filtro.RowCount+1;
      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
         bt_filtrodel.Click;
end;

procedure Tadm_admmod.SpinEdit_filtroKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key=#13 then StringGrid_filtro.SetFocus;
end;

procedure Tadm_admmod.RadioButton1Click(Sender: TObject);
begin
      montadbmdl;
end;

procedure Tadm_admmod.RadioButton2Click(Sender: TObject);
begin
      montadbmdl;
end;

procedure Tadm_admmod.RadioButton3Click(Sender: TObject);
begin
      montadbmdl;
end;

end.
