{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de websites.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_websites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  ImgList, XPMan, Menus, jpeg, Tradutor;


type
  PmenuRec = ^TmenuRec;
  TmenuRec = record
    Fhint: string;
    Ftypemdl: byte;
    Fcodmdl: integer;
  End;
  Tmenutmp = record
    cod_lng : array[0..20] of Integer;
    sigla : array[0..20] of String;
    trd : array[0..20] of String;
    treeview : array[0..20] of TMemoryStream;
    data : array[0..20] of TStringList;
    count : integer;
  End;
  Tadm_websites = class(TForm)
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
    PageControl1: TPageControl;
    bt_maximiza: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    PageControl_principal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    ToolBar5: TToolBar;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_marcar: TSpeedButton;
    bt_desmarcar: TSpeedButton;
    bt_save2: TSpeedButton;
    ScrollBox3: TScrollBox;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    lbcp1: TLabeledEdit;
    lbcp8: TLabeledEdit;
    lbcp3: TComboBox;
    Panel3: TPanel;
    swf_logo: TShockwaveFlash;
    lbcp2: TLabeledEdit;
    lbcp5: TComboBox;
    lbcp4: TLabeledEdit;
    lbcp7: TComboBox;
    lbcp6: TLabeledEdit;
    ToolBar3: TToolBar;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    lbct1: TMemo;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    TabSheet3: TTabSheet;
    lbcp9: TLabeledEdit;
    lbcp10: TComboBox;
    Label6: TLabel;
    bt_detail1: TSpeedButton;
    bt_detail2: TSpeedButton;
    bt_detail4: TSpeedButton;
    bt_detail3: TSpeedButton;
    bt_view1: TSpeedButton;
    ImageList_menuweb: TImageList;
    PopupMenu_menu: TPopupMenu;
    Adicionarmdulo1: TMenuItem;
    Adicionarmenu1: TMenuItem;
    Removeritem1: TMenuItem;
    Alterartexto1: TMenuItem;
    EditarHint1: TMenuItem;
    Alterarcone1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Moverparacima1: TMenuItem;
    Moverparabaixo1: TMenuItem;
    XPManifest1: TXPManifest;
    Limpar1: TMenuItem;
    Image1: TImage;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    ToolBar4: TToolBar;
    bt_prior5: TSpeedButton;
    bt_next5: TSpeedButton;
    bt_marcar2: TSpeedButton;
    bt_desmarcar2: TSpeedButton;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    Label12: TLabel;
    Panel9: TPanel;
    Image2: TImage;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Splitter3: TSplitter;
    ToolBar10: TToolBar;
    bt_prior3: TSpeedButton;
    bt_next3: TSpeedButton;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    bt_save3: TSpeedButton;
    DBGrid4: TDBGrid;
    ScrollBox2: TScrollBox;
    Panel10: TPanel;
    Label11: TLabel;
    xmn_sx_bt2: TSpeedButton;
    xmn_tpmn_bt2: TSpeedButton;
    Label13: TLabel;
    lbcd1: TLabeledEdit;
    lbcd2: TLabeledEdit;
    lbcd4: TComboBox;
    lbcd6: TComboBox;
    lbcd3: TLabeledEdit;
    lbcd5: TLabeledEdit;
    GroupBox5: TGroupBox;
    pn_legenda: TPanel;
    Image5: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Image6: TImage;
    Lb_countreg4: TLabel;
    chk_traduzir: TCheckBox;
    chk_vincular: TCheckBox;
    ToolBar8: TToolBar;
    bt_prior4: TSpeedButton;
    bt_next4: TSpeedButton;
    bt_new4: TSpeedButton;
    bt_del4: TSpeedButton;
    bt_save4: TSpeedButton;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    rb_item1: TRadioButton;
    rb_item2: TRadioButton;
    xmn_modulos: TComboBox;
    xmn_text: TEdit;
    xmn_hint: TEdit;
    ToolBar6: TToolBar;
    bt_it1: TSpeedButton;
    bt_it2: TSpeedButton;
    bt_it3: TSpeedButton;
    bt_it4: TSpeedButton;
    bt_it5: TSpeedButton;
    bt_lngdefault: TSpeedButton;
    PageControl_languagens: TPageControl;
    lngtb1: TTabSheet;
    xmn_montamenus1: TTreeView;
    lngtb2: TTabSheet;
    xmn_montamenus2: TTreeView;
    lngtb3: TTabSheet;
    xmn_montamenus3: TTreeView;
    lngtb4: TTabSheet;
    xmn_montamenus4: TTreeView;
    lngtb5: TTabSheet;
    xmn_montamenus5: TTreeView;
    lngtb6: TTabSheet;
    xmn_montamenus6: TTreeView;
    lngtb7: TTabSheet;
    xmn_montamenus7: TTreeView;
    lngtb8: TTabSheet;
    xmn_montamenus8: TTreeView;
    lngtb9: TTabSheet;
    xmn_montamenus9: TTreeView;
    lngtb10: TTabSheet;
    xmn_montamenus10: TTreeView;
    lngtb11: TTabSheet;
    xmn_montamenus11: TTreeView;
    lngtb12: TTabSheet;
    xmn_montamenus12: TTreeView;
    lngtb13: TTabSheet;
    xmn_montamenus13: TTreeView;
    lngtb14: TTabSheet;
    xmn_montamenus14: TTreeView;
    lngtb15: TTabSheet;
    xmn_montamenus15: TTreeView;
    lngtb16: TTabSheet;
    xmn_montamenus16: TTreeView;
    lngtb17: TTabSheet;
    xmn_montamenus17: TTreeView;
    lngtb18: TTabSheet;
    xmn_montamenus18: TTreeView;
    lngtb19: TTabSheet;
    xmn_montamenus19: TTreeView;
    lngtb20: TTabSheet;
    xmn_montamenus20: TTreeView;
    Timer_traduz: TTimer;
    Tradutor1: TTradutor;
    CheckBox_menudefault: TCheckBox;
    PageControl_mdl: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid5: TDBGrid;
    Panel11: TPanel;
    Label18: TLabel;
    Panel12: TPanel;
    Image7: TImage;
    Lb_countreg3: TLabel;
    Panel7: TPanel;
    Label19: TLabel;
    Edit_search2: TEdit;
    bt_automdl: TSpeedButton;
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
    procedure lbcp3Change(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp5Change(Sender: TObject);
    procedure lbcp7Change(Sender: TObject);
    procedure lbcp2Change(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure lbcp6Change(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridmdlDblClick(Sender: TObject);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_marcarClick(Sender: TObject);
    procedure bt_desmarcarClick(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure DBGridmdlCellClick(Column: TColumn);
    procedure DBGridmdlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridmdlKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbct1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_detail1Click(Sender: TObject);
    procedure bt_detail2Click(Sender: TObject);
    procedure bt_detail3Click(Sender: TObject);
    procedure lbcp10Change(Sender: TObject);
    procedure lbcp9Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure bt_detail4Click(Sender: TObject);
    procedure bt_view1Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure bt_marcar2Click(Sender: TObject);
    procedure bt_desmarcar2Click(Sender: TObject);
    procedure bt_prior5Click(Sender: TObject);
    procedure bt_next5Click(Sender: TObject);
    procedure bt_lngdefaultClick(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbcd3Change(Sender: TObject);
    procedure lbcd4Change(Sender: TObject);
    procedure xmn_sx_bt2Click(Sender: TObject);
    procedure lbcd5Change(Sender: TObject);
    procedure lbcd6Change(Sender: TObject);
    procedure xmn_tpmn_bt2Click(Sender: TObject);
    procedure bt_prior3Click(Sender: TObject);
    procedure bt_next3Click(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure bt_del4Click(Sender: TObject);
    procedure bt_new4Click(Sender: TObject);
    procedure bt_next4Click(Sender: TObject);
    procedure bt_prior4Click(Sender: TObject);
    procedure bt_it1Click(Sender: TObject);
    procedure bt_it2Click(Sender: TObject);
    procedure bt_it3Click(Sender: TObject);
    procedure bt_it4Click(Sender: TObject);
    procedure bt_it5Click(Sender: TObject);
    procedure rb_item1Click(Sender: TObject);
    procedure rb_item2Click(Sender: TObject);
    procedure xmn_montamenus1Change(Sender: TObject; Node: TTreeNode);
    procedure xmn_montamenus1Click(Sender: TObject);
    procedure xmn_modulosChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure PageControl_languagensChange(Sender: TObject);
    procedure chk_vincularClick(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl_principalChange(Sender: TObject);
    procedure PageControl_mdlChange(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit_search2Change(Sender: TObject);
    procedure bt_automdlClick(Sender: TObject);
  private
    cv : string;
    xupxmenumn: Boolean;
    xlogotmp : TMemoryStream;
    menutmp: Tmenutmp;
    xlistcodmod,xlistcodmod2 : TStringList;
    xnoteselect: TTreeNode;
    xnoteselect_index: Integer;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure montaskins(xcodent:string);
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure atualiza_grade4;
    procedure skwebmenu(xstatbts:boolean);
    procedure addreg;
    procedure addreg3;
    procedure addreg4;
    procedure montalng_menus(axlbcd:string);
    procedure atualiza_xmenumnt;
    procedure filtrar_reg;
    procedure getLogo;
    procedure abretmplogo;
    procedure marcarmodulo(marcar: boolean; axcod,xtipo: integer);
    procedure montalng;
    procedure marcarlinguage(marcar: boolean; axcod: integer);
    procedure detail_entidades(axvar_cod:TLabeledEdit);
    procedure detail_ramoatv(axvar_cod:TLabeledEdit);
    procedure detail_skins(axvar_cod:TLabeledEdit);
    procedure montamodsons(xcodsk:string);
    procedure montamodtpmn(xcodsk:string);
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    function retorna_TTreeView(xidxcod:Integer):TTreeView;
    function xmn_montamenus_treeview:Boolean;
    procedure atualiza_nitens;
    procedure savemenu;
    procedure xmn_montamenusEditar;
    procedure xmn_montamenusDisable;
    procedure IncMenu(xtype_inc:byte);
    procedure IncItemMenu(xidxmenu,x_codmod :Integer; xtype_inc,xtypemdl:byte; xtxtdesc,xtxthint: string);
    function xmn_montamenus_str:Boolean;
    function preenchezeros(xcodnum,xquantzeros: Integer):string;
    procedure montamenus(xcodmenu,xdescmenu:string);
    procedure montamodulos;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    xreceivetrad : String;
    xtimerresponse : Integer;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    function update_itensmenus(xcod_men:Integer):Boolean;
    { Public declarations }
  end;

var
  adm_websites: Tadm_websites;

implementation
uses udm, hwsfunctions, DateUtils, uadm_edsound, uadm_edtpmn;

{$R *.dfm}

procedure Tadm_websites.FormClose(Sender: TObject; var Action: TCloseAction);
var xmnmenu: Integer;
begin
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.treeview[xmnmenu].Free;
       menutmp.data[xmnmenu].Free;
     end;
     xlogotmp.Free;
     xlistcodmod.Free;
     xlistcodmod2.Free;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql2.Filter:='';
     dm.ds_sql2.Filtered:=false;
     dm.ds_sql2.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     dm.ds_sql5.Filter:='';
     dm.ds_sql5.Filtered:=false;
     dm.ds_sql5.Close;
     dm.ds_sql6.Filter:='';
     dm.ds_sql6.Filtered:=false;
     dm.ds_sql6.Close;
     dm.ds_sql7.Filter:='';
     dm.ds_sql7.Filtered:=false;
     dm.ds_sql7.Close;
     dm.ds_sql8.Filter:='';
     dm.ds_sql8.Filtered:=false;
     dm.ds_sql8.Close;
     dm.ds_sql9.Filter:='';
     dm.ds_sql9.Filtered:=false;
     dm.ds_sql9.Close;
     dm.ds_sql10.Filter:='';
     dm.ds_sql10.Filtered:=false;
     dm.ds_sql10.Close;
     dm.ds_sql11.Filter:='';
     dm.ds_sql11.Filtered:=false;
     dm.ds_sql11.Close;
     dm.executa4.Close;
     dm.executa5.Close;
     dm.executa6.Close;
     Action:=cafree;
end;

procedure Tadm_websites.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_websites.FormCreate(Sender: TObject);
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
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     xlogotmp:= TMemoryStream.Create;
     xlistcodmod:= TStringList.Create;
     xlistcodmod2:= TStringList.Create;
     DBGrid1.DataSource:=dm.source_sql3;
     DBGrid2.DataSource:=dm.source_sql4;
     DBGrid3.DataSource:=dm.source_sql9;
     DBGrid4.DataSource:=dm.source_sql8;
     DBGrid5.DataSource:=dm.source_sql10;
     loadx.Progressloading.position:=20;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Website');
     cp_search[1]:= 'website';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Entidade detentora');
     cp_search[2]:= 'cod_ent';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('Entidade de registro');
     cp_search[3]:= 'cod_ent_reg';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.Items.Add('Ramo de atividade');
     cp_search[4]:= 'cod_ar';
     tp_search[4]:= 1;
     tm_search[4]:= 255;
     ComboBox_search.Items.Add('Skin');
     cp_search[5]:= 'cod_mdl';
     tp_search[5]:= 1;
     tm_search[5]:= 255;
     ComboBox_search.ItemIndex:=1;

     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='website';
     DBGrid1.Columns.Items[1].Title.Caption:='Website';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=30;
     //ENTIDADES
     With dm.executa4 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf26,37249)+' ORDER BY razao_social';
        Open;
        First;
        lbcp3.Clear;
        lbcp5.Clear;
        While not Eof do begin
            lbcp3.Items.Add(fieldbyname('razao_social').AsString);
            if fieldbyname('tp').AsInteger=3 then
               lbcp5.Items.Add(fieldbyname('razao_social').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=40;
     //RAMOS DE ATIVIDADE
     With dm.executa5 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf31,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcp7.Clear;
        While not Eof do begin
            lbcp7.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=50;
     //SKINS
     With dm.ds_sql2 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf41,37249)+' ORDER BY descricao';
        Open;
        Filter:='cod_ent='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=60;
     //mod princ
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='descricao';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_sql4 do begin
        CommandText:= 'SELECT codigo,descricao,obs FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
                              ' WHERE cp2='+#39+'0'+#39+
                              ' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=70;
     //mod aux
     DBGrid5.Columns.Add;
     DBGrid5.Columns.Items[0].FieldName:='codigo';
     DBGrid5.Columns.Items[0].Title.Caption:='Código';
     DBGrid5.Columns.Add;
     DBGrid5.Columns.Items[1].FieldName:='descricao';
     DBGrid5.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_sql10 do begin
          CommandText:= 'SELECT codigo,descricao,obs FROM '+EnDecryptString(Serverconect.vrf46,37249)+
                                ' ORDER BY descricao';
          Open;
          Filter:='';
          Filtered:=true;
     end;
     //modulos disponiveis para website
     With dm.ds_sql5 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf32[0],37249)+' ORDER BY codigo';
        Open;
        Filter:='cod_web='+#39+'0'+#39;
        Filtered:=true;
     end;
     With dm.ds_sql11 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf32[0],37249)+'_ax ORDER BY codigo';
        Open;
        Filter:='cod_web='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=80;
     //languagens
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='codigo';
     DBGrid3.Columns.Items[0].Title.Caption:='Código';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[1].FieldName:='sigla';
     DBGrid3.Columns.Items[1].Title.Caption:='Sigla';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[2].FieldName:='descricao';
     DBGrid3.Columns.Items[2].Title.Caption:='Descrição';
     With dm.ds_sql9 do begin
        CommandText:= 'SELECT codigo,descricao,sigla,trd,pdr FROM '+EnDecryptString(Serverconect.vrf48,37249)+' ORDER BY pdr,codigo';
        Open;
        Filter:='';
        Filtered:=false;
     end;
     With dm.ds_sql7 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf49,37249)+' ORDER BY cod_lng';
        Open;
        Filter:='cod_web='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=90;
     //grade menus padrão
     DBGrid4.Columns.Add;
     DBGrid4.Columns.Items[0].FieldName:='codigo';
     DBGrid4.Columns.Items[0].Title.Caption:='Código';
     DBGrid4.Columns.Add;
     DBGrid4.Columns.Items[1].FieldName:='descricao';
     DBGrid4.Columns.Items[1].Title.Caption:='Descrição';
     //atualiza dados
     montamodsons('0');
     loadx.Progressloading.position:=93;
     montamodtpmn('0');
     loadx.Progressloading.position:=96;
     montamenus('0','');
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_websites.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_websites.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_websites.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_websites.atualiza_grade;
var axshowing:Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            loadx.Progressloading.position:=20;
            if lbcp1.Text=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Free;
               exit;
            end;
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('cod_ent').AsString;
            lbcp4.Text:= fieldbyname('cod_ent_reg').AsString;
            loadx.Progressloading.position:=30;
            lbcp6.Text:= fieldbyname('cod_ar').AsString;
            lbcp8.Text:= fieldbyname('website').AsString;
            montaskins(lbcp2.Text);
            lbcp9.Text:= fieldbyname('cod_mdl').AsString;
            loadx.Progressloading.position:=40;
         end;
         dm.ds_sql5.Filter:='cod_web='+#39+lbcp1.Text+#39;
         dm.ds_sql11.Filter:='cod_web='+#39+lbcp1.Text+#39;
         dm.ds_sql7.Filter:='cod_web='+#39+lbcp1.Text+#39;
         loadx.Progressloading.position:=50;
         montamodsons(lbcp1.Text);
         loadx.Progressloading.position:=60;
         montamodtpmn(lbcp1.Text);
         loadx.Progressloading.position:=70;
         montamenus(lbcp1.Text,'');
         montalng;
         loadx.Progressloading.position:=80;
         TabSheet2.TabVisible:=true;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      loadx.Progressloading.position:=90;
      getLogo;
      loadx.Progressloading.position:=100;
      atualiza_grade2;
      if not axshowing then loadx.Free;
end;

procedure Tadm_websites.montaskins(xcodent:string);
begin
      if xcodent='' then exit;
      With dm.ds_sql2 do begin
           filter:='cod_ent='+#39+xcodent+#39+' OR xconf1='+#39+BoolToStr(False)+#39;
           First;
           lbcp10.Clear;
           While not Eof do begin
               lbcp10.Items.Add(fieldbyname('descricao').AsString);
               Next;
           end;
      end;
end;

procedure Tadm_websites.getLogo;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(lbcp1.Text);
     Except
        axcodBlb:=0;
     End;
     xlogotmp.Clear;
     With dm.executa7 do begin
        CommandText:='SELECT logo FROM '+EnDecryptString(Serverconect.vrf30,37249)+' WHERE cod_web='+#39+IntToStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('logo')).SaveToStream(xlogotmp);
        end;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_websites.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
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

procedure Tadm_websites.addreg;
begin
     dm.ds_sql5.Filter:='cod_web='+#39+'0'+#39;
     dm.ds_sql11.Filter:='cod_web='+#39+'0'+#39;
     dm.ds_sql7.Filter:='cod_web='+#39+'0'+#39;
     montamenus('0','');
     montaskins('0');
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.Text:= '';
     lbcp5.Text:= '';
     lbcp6.Text:= '';
     lbcp7.Text:= '';
     lbcp9.Text:= '';
     lbcp10.Text:= '';
     lbcp8.Text:= '';
     PageControl_principal.TabIndex:=0;
     TabSheet2.TabVisible:=false;
     getLogo;
end;

procedure Tadm_websites.addreg3;
var xmnmenu: Integer;
begin
     skwebmenu(true);
     lbcd1.Text:='novo';
     lbcd2.Text:= '';
     lbcd3.Text:= '0';
     lbcd4.ItemIndex:=-1;
     lbcd5.Text:= '0';
     lbcd6.ItemIndex:=-1;
     montalng_menus('0');
     //menutmp.count:=0;
end;

procedure Tadm_websites.addreg4;
begin
     xmn_text.ReadOnly:=false;
     xmn_hint.ReadOnly:=false;
     xmn_text.Color:=clWindow;
     xmn_hint.Color:=clWindow;
     bt_it1.Enabled:=false;
     bt_it2.Enabled:=false;
     bt_it3.Enabled:=false;
     xmn_text.Text:='';
     xmn_hint.Text:='';
     bt_it4.Enabled:=true;
     bt_it5.Enabled:=true;
end;

procedure Tadm_websites.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_websites.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_websites.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_websites.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_websites.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_websites.Left:= adm_websites.Left-(mv_mouse.x-x);
      adm_websites.Top:= adm_websites.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_websites.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_websites.Left := adm_websites.Left - (mv_mouse.x -x);
      adm_websites.Top := adm_websites.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_websites.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_websites.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;
end;


procedure Tadm_websites.bt_maximizaClick(Sender: TObject);
begin
    if adm_websites.WindowState=wsMaximized then adm_websites.WindowState:=wsNormal
    else adm_websites.WindowState:=wsMaximized;
end;

procedure Tadm_websites.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_websites.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_websites.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf29,37249),'codigo',lbcp1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Serverconect.vrf30,37249),'cod_web',lbcp1.Text,false);
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_websites.bt_saveClick(Sender: TObject);
var axcod,axcod2 : integer;
    xexecutaimg: Boolean;
begin
     {if not (dm.conecta_sql.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_sql.StartTransaction(TD);
     end;}
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf29,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf29,37249)+' (codigo,cod_ent,cod_ent_reg,cod_ar,cod_mdl,website) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
            Params[0].AsInteger:=axcod;
            try
                Params[1].AsInteger:=StrToInt(lbcp2.Text);
            except
                Params[1].AsInteger:=0;
            end;
            try
                Params[2].AsInteger:=StrToInt(lbcp4.Text);
            except
                Params[2].AsInteger:=0;
            end;
            try
                Params[3].AsInteger:=StrToInt(lbcp6.Text);
            except
                Params[3].AsInteger:=0;
            end;
            try
                Params[4].AsInteger:=StrToInt(lbcp9.Text);
            except
                Params[4].AsInteger:=0;
            end;
            Params[5].AsString:=lbcp8.Text;
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf29,37249)+' SET cod_ent=:p0,cod_ent_reg=:p1,cod_ar=:p2,cod_mdl=:p3,website=:p4 '+
                       'WHERE codigo=:p5';
            try
                Params[0].AsInteger:=StrToInt(lbcp2.Text);
            except
                Params[0].AsInteger:=0;
            end;
            try
                Params[1].AsInteger:=StrToInt(lbcp4.Text);
            except
                Params[1].AsInteger:=0;
            end;
            try
                Params[2].AsInteger:=StrToInt(lbcp6.Text);
            except
                Params[2].AsInteger:=0;
            end;
            try
                Params[3].AsInteger:=StrToInt(lbcp9.Text);
            except
                Params[3].AsInteger:=0;
            end;
            Params[4].AsString:=lbcp8.Text;
            Params[5].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          //dm.conecta_sql.RollBack(TD);
          exit;
     end;
     //gravar logo
     Application.ProcessMessages;
     xlogotmp.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     if lbcp1.Text = 'novo' then begin
        xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf30,37249),'INST','codigo','cod_web','logo','','','',IntToStr(axcod),xlogotmp,nil);
     end else begin
        xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf30,37249),'UPDT','cod_web','','logo','','','',IntToStr(axcod),xlogotmp,nil);
     end;
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados binários.');
        exit;
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     dm.ds_sql7.Close;
     dm.ds_sql7.Open;
     lbcp1.Text:=InttoStr(axcod);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_websites.lbcp3Change(Sender: TObject);
begin
     if dm.executa4.Locate('razao_social',lbcp3.Text,[]) then begin
        lbcp2.Text:=dm.executa4.fieldbyname('codigo').AsString;
     end else lbcp2.Text:='';
end;

procedure Tadm_websites.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_websites.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_websites.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_websites.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if (ComboBox_search.ItemIndex=2) or (ComboBox_search.ItemIndex=3) then begin
           if dm.executa4.Locate('razao_social',Edit_search.Text,[]) then begin
               axsearch:=dm.executa4.fieldbyname('codigo').AsString;
               dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else if ComboBox_search.ItemIndex=4 then begin
           if dm.executa5.Locate('descricao',Edit_search.Text,[]) then begin
               axsearch:=dm.executa5.fieldbyname('codigo').AsString;
               dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else if ComboBox_search.ItemIndex=5 then begin
           if dm.ds_sql2.Locate('descricao',Edit_search.Text,[]) then begin
               axsearch:=dm.ds_sql2.fieldbyname('codigo').AsString;
               dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else begin
           if tp_search[ComboBox_search.ItemIndex]=1 then
              dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
           else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        end;
     end;
end;

procedure Tadm_websites.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_websites.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_websites.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_websites.lbcp5Change(Sender: TObject);
begin
     if dm.executa4.Locate('razao_social',lbcp5.Text,[]) then begin
        if dm.executa4.fieldbyname('tp').AsInteger=3 then
           lbcp4.Text:=dm.executa4.fieldbyname('codigo').AsString
        else lbcp4.Text:='';
     end else lbcp4.Text:='';
end;

procedure Tadm_websites.lbcp7Change(Sender: TObject);
begin
     if dm.executa5.Locate('descricao',lbcp7.Text,[]) then begin
        lbcp6.Text:=dm.executa5.fieldbyname('codigo').AsString;
     end else lbcp6.Text:='';
end;

procedure Tadm_websites.lbcp2Change(Sender: TObject);
begin
     if lbcp2.Text <> '' then
     if dm.executa4.Locate('codigo',lbcp2.Text,[]) then begin
        lbcp3.Text:=dm.executa4.fieldbyname('razao_social').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_websites.lbcp4Change(Sender: TObject);
begin
     if lbcp4.Text <> '' then
     if dm.executa4.Locate('codigo',lbcp4.Text,[]) then begin
        if dm.executa4.fieldbyname('tp').AsInteger=3 then
           lbcp5.Text:=dm.executa4.fieldbyname('razao_social').AsString
        else lbcp5.Text:='';
     end else lbcp5.Text:='';
end;

procedure Tadm_websites.lbcp6Change(Sender: TObject);
begin
     if lbcp6.Text <> '' then
     if dm.executa5.Locate('codigo',lbcp6.Text,[]) then begin
        lbcp7.Text:=dm.executa5.fieldbyname('descricao').AsString;
     end else lbcp7.Text:='';
end;

procedure Tadm_websites.bt_importClick(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        try
           xlogotmp.Clear;
           xlogotmp.LoadFromFile(OpenPictureDialog1.FileName);
        finally
          abretmplogo;
        end;
     end;
end;

procedure Tadm_websites.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

procedure Tadm_websites.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then begin
         Dbgrid2.Canvas.Font.Color:= $00C08000;
         Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
      end;
end;

procedure Tadm_websites.DBGridmdlDblClick(Sender: TObject);
begin
    Case PageControl_mdl.TabIndex of
         0: begin
            if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(false,dm.ds_sql5.FieldByName('codigo').AsInteger,0)
            else marcarmodulo(true,0,0);
         end;
         1: begin
            if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(false,dm.ds_sql5.FieldByName('codigo').AsInteger,1)
            else marcarmodulo(true,0,1);
         end;
    end;
end;

procedure Tadm_websites.marcarmodulo(marcar: boolean; axcod,xtipo: integer);
var axshowing,axlocate: Boolean;
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
     if marcar then begin
        With dm.executa do begin
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf32[0],37249),1);
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf32[0],37249)+' (codigo,cod_web,tipo,cod_grp,cod_grp2,obs,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            loadx.Progressloading.position:=30;
            Case xtipo of
                 0: begin
                    loadx.Progressloading.position:=40;
                    Params[2].AsInteger:=0;
                    Params[3].AsInteger:=dm.ds_sql4.FieldByName('codigo').AsInteger;
                    Params[4].AsInteger:=0;
                    loadx.Progressloading.position:=50;
                    Params[5].Assign(dm.ds_sql4.FieldByName('obs'));
                    loadx.Progressloading.position:=60;
                    axlocate:=dm.ds_sql11.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]);
                 end;
                 1: begin
                    loadx.Progressloading.position:=40;
                    Params[2].AsInteger:=1;
                    loadx.Progressloading.position:=50;
                    Params[3].AsInteger:=0;
                    Params[4].AsInteger:=dm.ds_sql10.FieldByName('codigo').AsInteger;
                    Params[5].Assign(dm.ds_sql10.FieldByName('obs'));
                    loadx.Progressloading.position:=60;
                    axlocate:=dm.ds_sql11.Locate('cod_grp2',dm.ds_sql4.FieldByName('codigo').AsInteger,[]);
                 end;
            End;
            Params[6].AsString:=BoolToStr(axlocate);
            loadx.Progressloading.position:=70;
            Try
               Execute;
               loadx.Progressloading.position:=80;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
            loadx.Progressloading.position:=100;
        end;
     end else begin
        loadx.Progressloading.position:=50;
        dm.deleta_reg(EnDecryptString(Serverconect.vrf32[0],37249),'codigo',InttoStr(axcod),false);
        loadx.Progressloading.position:=100;
     end;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     if not axshowing then loadx.Free;
     atualiza_grade2;
end;

procedure Tadm_websites.montalng;
var axfiltrolng: string;
    xmnmenu: Integer;
begin
      axfiltrolng:='';
      With dm.ds_sql7 do begin
          First;
          While not Eof do begin
              if axfiltrolng<>'' then axfiltrolng:=axfiltrolng+' OR ';
              axfiltrolng:=axfiltrolng+'codigo='+#39+fieldbyname('cod_lng').AsString+#39;
              Next;
          end;
      end;
      for xmnmenu:=1 to menutmp.count-1 do begin
          menutmp.cod_lng[xmnmenu]:=0;
          menutmp.sigla[xmnmenu]:='';
          menutmp.trd[xmnmenu]:='';
          menutmp.treeview[xmnmenu].Free;
          menutmp.data[xmnmenu].Free;
          retorna_TTabSheet(xmnmenu).TabVisible:=false;
          retorna_TTabSheet(xmnmenu).Caption:='';
      end;
      menutmp.count:=0;
      With dm.executa3 do begin
          if axfiltrolng='' then axfiltrolng:='codigo='+#39+'0'+#39;
          axfiltrolng:=' WHERE '+axfiltrolng;
          if Active then Close;
          CommandText:= 'SELECT codigo,descricao,sigla,trd,pdr FROM '+EnDecryptString(Serverconect.vrf48,37249)+
                     axfiltrolng+
                     ' ORDER BY pdr,codigo';
          Open;
          First;
          while not Eof do begin
              menutmp.cod_lng[menutmp.count]:= fieldbyname('codigo').AsInteger;
              menutmp.sigla[menutmp.count]:= fieldbyname('sigla').AsString;
              menutmp.trd[menutmp.count]:= fieldbyname('trd').AsString;
              menutmp.treeview[menutmp.count]:=TMemoryStream.Create;
              menutmp.treeview[menutmp.count].Clear;
              menutmp.data[menutmp.count]:=TStringList.Create;
              menutmp.data[menutmp.count].Clear;
              retorna_TTabSheet(menutmp.count).TabVisible:=true;
              retorna_TTabSheet(menutmp.count).Caption:=fieldbyname('descricao').AsString;
              Inc(menutmp.count);
              Next;
          end;
          Close;
      end;
      if menutmp.count=0 then TabSheet5.TabVisible:=false
      else TabSheet5.TabVisible:=true;
end;

procedure Tadm_websites.marcarlinguage(marcar: boolean; axcod: integer);
begin
     if marcar then begin
        With dm.executa do begin
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf49,37249),1);
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf49,37249)+' (codigo,cod_web,cod_lng,pdr) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            Params[2].AsInteger:=dm.ds_sql9.FieldByName('codigo').AsInteger;
            if dm.ds_sql7.RecordCount=0 then Params[3].AsString:= BoolToStr(true)
            else Params[3].AsString:= BoolToStr(false);
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
        end;
     end else begin
        dm.deleta_reg(EnDecryptString(Serverconect.vrf49,37249),'codigo',InttoStr(axcod),false);
     end;
     dm.ds_sql7.Close;
     dm.ds_sql7.Open;
     atualiza_grade3;
     montalng;
end;

procedure Tadm_websites.bt_prior2Click(Sender: TObject);
begin
    Case PageControl_mdl.TabIndex of
         0: dm.ds_sql4.Prior;
         1: dm.ds_sql10.Prior;
    end;
    atualiza_grade2;
end;

procedure Tadm_websites.bt_next2Click(Sender: TObject);
begin
    Case PageControl_mdl.TabIndex of
         0: dm.ds_sql4.Next;
         1: dm.ds_sql10.Next;
    end;
    atualiza_grade2;
end;

procedure Tadm_websites.atualiza_grade2;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Módulos disponíveis';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Módulos disponíveis';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
    Case PageControl_mdl.TabIndex of
        0: begin
           if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then begin
              loadx.Progressloading.position:=50;
              lbct1.Lines.Assign(dm.ds_sql5.fieldbyname('obs'));
              bt_marcar.Enabled:=false;
              bt_desmarcar.Enabled:=true;
           end else begin
              loadx.Progressloading.position:=50;
              lbct1.Lines.Assign(dm.ds_sql4.fieldbyname('obs'));
              bt_marcar.Enabled:=true;
              bt_desmarcar.Enabled:=false;
           end;
           loadx.Progressloading.position:=70;
           DBGrid2.Repaint;
        end;
        1: begin
           if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then begin
              loadx.Progressloading.position:=50;
              lbct1.Lines.Assign(dm.ds_sql5.fieldbyname('obs'));
              bt_marcar.Enabled:=false;
              bt_desmarcar.Enabled:=true;
           end else begin
              loadx.Progressloading.position:=50;
              lbct1.Lines.Assign(dm.ds_sql10.fieldbyname('obs'));
              bt_marcar.Enabled:=true;
              bt_desmarcar.Enabled:=false;
           end;
           loadx.Progressloading.position:=70;
           DBGrid5.Repaint;
        end;
    end;
    loadx.Progressloading.position:=100;
    bt_save2.Enabled:=false;
    if not axshowing then loadx.Free;
end;

procedure Tadm_websites.atualiza_grade3;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Linguagens disponíveis';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Linguagens disponíveis';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
    if dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       loadx.Progressloading.position:=50;
       if StrToBool(dm.ds_sql7.fieldbyname('pdr').AsString) then bt_lngdefault.Enabled:=false
       else bt_lngdefault.Enabled:=true;
       bt_marcar2.Enabled:=false;
       bt_desmarcar2.Enabled:=true;
       loadx.Progressloading.position:=100;
    end else begin
       loadx.Progressloading.position:=50;
       bt_lngdefault.Enabled:=false;
       bt_marcar2.Enabled:=true;
       bt_desmarcar2.Enabled:=false;
       loadx.Progressloading.position:=100;
    end;
    DBGrid3.Repaint;
    if not axshowing then loadx.Free;
end;

procedure Tadm_websites.atualiza_grade4;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Menus do website';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Menus do website';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql8.RecordCount <= 0 then begin
         addreg3;
      end else begin
         with dm.ds_sql8 do begin
              loadx.Progressloading.position:=50;
              lbcd1.Text:=fieldbyname('codigo').AsString;
              montalng_menus(lbcd1.Text);
              lbcd2.Text:=fieldbyname('descricao').AsString;
              lbcd3.Text:=fieldbyname('cod_sx').AsString;
              if dm.ds_sql.Locate('codigo',lbcd3.Text,[]) then
                 lbcd4.Text:=dm.ds_sql.fieldbyname('descricao').AsString;
              lbcd5.Text:=fieldbyname('cod_tpmn').AsString;
              if dm.executa6.Locate('codigo',lbcd5.Text,[]) then
                 lbcd6.Text:=dm.executa6.fieldbyname('descricao').AsString;
              loadx.Progressloading.position:=80;
              if fieldbyname('cod_sk').AsInteger>0 then skwebmenu(false)
              else skwebmenu(true);
         end;
      end;
      loadx.Progressloading.position:=100;
      Lb_countreg3.Caption:=InttoStr(dm.ds_sql8.RecordCount);
      if not axshowing then loadx.Free;
end;

procedure Tadm_websites.skwebmenu(xstatbts:boolean);
begin
     bt_del3.Enabled:= xstatbts;
     bt_save3.Enabled:= xstatbts;
     bt_new4.Enabled:= xstatbts;
     bt_del4.Enabled:= xstatbts;
     bt_save4.Enabled:= xstatbts;
     ToolBar6.Visible:= xstatbts;
     if xstatbts then GroupBox7.Height:=113
     else GroupBox7.Height:=86;
end;

procedure Tadm_websites.bt_marcarClick(Sender: TObject);
begin
    Case PageControl_mdl.TabIndex of
         0: begin
            if not dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(true,0,0);
         end;
         1: begin
            if not dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(true,0,1);
         end;
    end;
end;

procedure Tadm_websites.bt_desmarcarClick(Sender: TObject);
begin
    Case PageControl_mdl.TabIndex of
         0: begin
            if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(false,dm.ds_sql5.FieldByName('codigo').AsInteger,0);
         end;
         1: begin
            if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then
               marcarmodulo(false,dm.ds_sql5.FieldByName('codigo').AsInteger,1);
         end;
    end;
end;

procedure Tadm_websites.bt_save2Click(Sender: TObject);
var xgravamdl: Integer;
begin
    xgravamdl:=0;
    Case PageControl_mdl.TabIndex of
         0: if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then xgravamdl:=dm.ds_sql5.FieldByName('codigo').AsInteger;
         1: if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then xgravamdl:=dm.ds_sql5.FieldByName('codigo').AsInteger;
    End;
    if xgravamdl>0 then begin
       With dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf32[0],37249)+' SET obs=:p0 '+
                       'WHERE codigo=:p1';
            Params[0].Assign(lbct1.Lines);
            Params[1].AsInteger:=xgravamdl;
            Try
                Execute;
            Except
                hwsf.BtMensagem('Ocorreu algum erro');
            End;
       end;
       dm.ds_sql5.Close;
       dm.ds_sql5.Open;
       atualiza_grade2;
    end;
end;

procedure Tadm_websites.DBGridmdlCellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tadm_websites.DBGridmdlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tadm_websites.DBGridmdlKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tadm_websites.lbct1KeyPress(Sender: TObject; var Key: Char);
begin
      Case PageControl_mdl.TabIndex of
         0: if dm.ds_sql5.Locate('cod_grp',dm.ds_sql4.FieldByName('codigo').AsInteger,[]) then bt_save2.Enabled:=true;
         1: if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then bt_save2.Enabled:=true;
      End;
end;

procedure Tadm_websites.detail_entidades(axvar_cod:TLabeledEdit);
var xdetalhesnow : TStringList;
begin
     if TLabeledEdit(axvar_cod).Text='' then begin
        hwsf.BtMensagem('É necessário selecionar a Entidade.');
        exit;
     end;
     With dm.executa4 do begin
          if Locate('codigo',TLabeledEdit(axvar_cod).Text,[]) then begin
             xdetalhesnow:=TStringList.Create;
             xdetalhesnow.Clear;
             xdetalhesnow.Add('DETALHES DA ENTIDADE:');
             xdetalhesnow.Add(' ');
             xdetalhesnow.Add('Código........: '+fieldbyname('codigo').AsString);
             xdetalhesnow.Add('Razão Social..: '+FieldbyName('razao_social').AsString);
             xdetalhesnow.Add('Fantasia......: '+FieldbyName('fantasia').AsString);
             xdetalhesnow.Add('Telefone 1....: '+FieldbyName('telefone1').AsString);
             xdetalhesnow.Add('Telefone 2....: '+FieldbyName('telefone2').AsString);
             xdetalhesnow.Add('Fax...........: '+FieldbyName('fax').AsString);
             xdetalhesnow.Add('Celular.......: '+FieldbyName('celular').AsString);
          end else begin
             hwsf.BtMensagem('Entidade selecionada inválida.');
             exit;
          end;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
end;

procedure Tadm_websites.bt_detail1Click(Sender: TObject);
begin
     detail_entidades(lbcp2);
end;

procedure Tadm_websites.bt_detail2Click(Sender: TObject);
begin
     detail_entidades(lbcp4);
end;

procedure Tadm_websites.detail_ramoatv(axvar_cod:TLabeledEdit);
var xdetalhesnow,xdetalhesobs : TStringList;
begin
     if TLabeledEdit(axvar_cod).Text='' then begin
        hwsf.BtMensagem('É necessário selecionar o ramo de atividade.');
        exit;
     end;
     With dm.executa5 do begin
          if Locate('codigo',TLabeledEdit(axvar_cod).Text,[]) then begin
             xdetalhesnow:=TStringList.Create;
             xdetalhesobs:=TStringList.Create;
             xdetalhesnow.Clear;
             xdetalhesobs.Clear;
             xdetalhesnow.Add('DETALHES DO RAMO DE ATIVIDADE:');
             xdetalhesnow.Add(' ');
             xdetalhesnow.Add('Código: '+fieldbyname('codigo').AsString);
             xdetalhesnow.Add('Descrição: '+FieldbyName('descricao').AsString);
             xdetalhesnow.Add(' ');
             xdetalhesobs.Assign(FieldbyName('obs'));
             if xdetalhesobs.Count > 0 then begin
                xdetalhesnow.Add('Observações: ');
                xdetalhesnow.AddStrings(xdetalhesobs);
             end;
          end else begin
             hwsf.BtMensagem('Entidade selecionada inválida.');
             exit;
          end;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
     xdetalhesobs.Free;
end;

procedure Tadm_websites.bt_detail3Click(Sender: TObject);
begin
      detail_ramoatv(lbcp6);
end;

procedure Tadm_websites.lbcp10Change(Sender: TObject);
begin
     if dm.ds_sql2.Locate('descricao',lbcp10.Text,[]) then begin
        lbcp9.Text:=dm.ds_sql2.fieldbyname('codigo').AsString;
     end else lbcp9.Text:='';
//     montamenus(lbcp1.Text,'');
//     montalng;
end;

procedure Tadm_websites.lbcp9Change(Sender: TObject);
begin
     if lbcp9.Text <> '' then
     if dm.ds_sql2.Locate('codigo',lbcp9.Text,[]) then begin
        lbcp10.Text:=dm.ds_sql2.fieldbyname('descricao').AsString;
     end else lbcp10.Text:='';
     montamenus(lbcp1.Text,'');
     montalng;
end;

procedure Tadm_websites.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_websites.bt_detail4Click(Sender: TObject);
begin
      detail_skins(lbcp9);
end;

procedure Tadm_websites.detail_skins(axvar_cod:TLabeledEdit);
var xdetalhesnow,xdetalhesobs : TStringList;
begin
     if TLabeledEdit(axvar_cod).Text='' then begin
        hwsf.BtMensagem('É necessário selecionar o Skin para o Website.');
        exit;
     end;
     With dm.ds_sql2 do begin
          if Locate('codigo',TLabeledEdit(axvar_cod).Text,[]) then begin
             xdetalhesnow:=TStringList.Create;
             xdetalhesobs:=TStringList.Create;
             xdetalhesnow.Clear;
             xdetalhesobs.Clear;
             xdetalhesnow.Add('DETALHES DO SKIN:');
             xdetalhesnow.Add(' ');
             xdetalhesnow.Add('Código: '+fieldbyname('codigo').AsString);
             xdetalhesnow.Add('Descrição: '+FieldbyName('descricao').AsString);
             xdetalhesnow.Add(' ');
             xdetalhesobs.Assign(FieldbyName('obs'));
             if xdetalhesobs.Count > 0 then begin
                xdetalhesnow.Add('Observações: ');
                xdetalhesnow.AddStrings(xdetalhesobs);
             end;
          end else begin
             hwsf.BtMensagem('Entidade selecionada inválida.');
             exit;
          end;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
     xdetalhesobs.Free;
end;

procedure Tadm_websites.bt_view1Click(Sender: TObject);
begin
      if lbcp9.Text='' then exit;
      if dm.ds_sql2.Locate('codigo',lbcp9.Text,[]) then begin
         JumpTo('www.hws.com.br/hwswebsys/modelos/modeloskin'+lbcp9.Text+'.php@§?¢äÄ');
      end;
end;

procedure Tadm_websites.DBGrid3CellClick(Column: TColumn);
begin
      atualiza_grade3;
end;

procedure Tadm_websites.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_websites.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_websites.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       Dbgrid3.Canvas.Font.Color:= $00C08000;
       if StrToBool(dm.ds_sql7.fieldbyname('pdr').AsString) then
          Dbgrid3.Canvas.Font.Style:= Dbgrid3.Canvas.Font.Style + [fsBold];
       Dbgrid3.DefaultDrawDataCell(Rect, dbgrid3.columns[datacol].field, State);
    end;
end;

procedure Tadm_websites.DBGrid3DblClick(Sender: TObject);
begin
    if dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       marcarlinguage(false,dm.ds_sql7.FieldByName('codigo').AsInteger);
    end else begin
       marcarlinguage(true,0);
    end;
end;

procedure Tadm_websites.bt_marcar2Click(Sender: TObject);
begin
    if not dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       marcarlinguage(true,0);
    end;
end;

procedure Tadm_websites.bt_desmarcar2Click(Sender: TObject);
begin
    if dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       marcarlinguage(false,dm.ds_sql7.FieldByName('codigo').AsInteger);
    end;
end;

procedure Tadm_websites.bt_prior5Click(Sender: TObject);
begin
    dm.ds_sql9.Prior;
    atualiza_grade3;
end;

procedure Tadm_websites.bt_next5Click(Sender: TObject);
begin
    dm.ds_sql9.Next;
    atualiza_grade3;
end;

procedure Tadm_websites.bt_lngdefaultClick(Sender: TObject);
begin
    if dm.ds_sql7.Locate('cod_lng',dm.ds_sql9.FieldByName('codigo').AsInteger,[]) then begin
       With dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf49,37249)+' SET pdr=:p0 '+
                       'WHERE cod_web=:p1';
            Params[0].AsString:= BoolToStr(False);
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf49,37249)+' SET pdr=:p0 '+
                       'WHERE codigo=:p1';
            Params[0].AsString:= BoolToStr(True);
            Params[1].AsInteger:=dm.ds_sql7.FieldByName('codigo').AsInteger;
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
        end;
        dm.ds_sql7.Close;
        dm.ds_sql7.Open;
        atualiza_grade3;
    end;
end;

procedure Tadm_websites.DBGrid4CellClick(Column: TColumn);
begin
     atualiza_grade4;
end;

procedure Tadm_websites.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tadm_websites.DBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tadm_websites.lbcd3Change(Sender: TObject);
begin
     if lbcd3.Text <> '' then begin
       if dm.ds_sql.Locate('codigo',lbcd3.Text,[]) then begin
          lbcd4.Text:=dm.ds_sql.fieldbyname('descricao').AsString;
       end else lbcd4.Text:='';
     end;
end;

procedure Tadm_websites.lbcd4Change(Sender: TObject);
begin
     if dm.ds_sql.Locate('descricao',lbcd4.Text,[]) then begin
        lbcd3.Text:=dm.ds_sql.fieldbyname('codigo').AsString;
     end else lbcd3.Text:='0';
end;

procedure Tadm_websites.xmn_sx_bt2Click(Sender: TObject);
var axsx_desc,axsx_cod:string;
begin
     Application.CreateForm(Tadm_edsound, adm_edsound);
     if ((lbcd3.Text<>'') and (lbcd3.Text<>'0')) and (lbcd4.Text<>'') then begin
         axsx_desc:=lbcd4.Text;
         axsx_cod:=lbcd3.Text;
         adm_edsound.xcodigo:=StrToInt(axsx_cod);
     end;
     adm_edsound.xcod_web:=StrToInt(lbcp1.Text);
     adm_edsound.xeditavel:=true;
     adm_edsound.ShowModal;
     montamodsons(lbcp1.Text);
     lbcd4.Text:=axsx_desc;
     lbcd3.Text:=axsx_cod;
end;

procedure Tadm_websites.lbcd5Change(Sender: TObject);
begin
     if lbcd5.Text <> '' then begin
       if dm.executa6.Locate('codigo',lbcd5.Text,[]) then begin
          lbcd6.Text:=dm.executa6.fieldbyname('descricao').AsString;
       end else lbcd6.Text:='';
     end;
end;

procedure Tadm_websites.lbcd6Change(Sender: TObject);
begin
     if dm.executa6.Locate('descricao',lbcd6.Text,[]) then begin
        lbcd5.Text:=dm.executa6.fieldbyname('codigo').AsString;
     end else lbcd5.Text:='0';
end;

procedure Tadm_websites.xmn_tpmn_bt2Click(Sender: TObject);
var axsx_desc,axsx_cod:string;
begin
     Application.CreateForm(Tadm_edtpmn, adm_edtpmn);
     if ((lbcd5.Text<>'') and (lbcd5.Text<>'0')) and (lbcd6.Text<>'') then begin
         axsx_desc:=lbcd6.Text;
         axsx_cod:=lbcd5.Text;
         adm_edtpmn.xcodigo:=StrToInt(axsx_cod);
     end;
     adm_edtpmn.xcod_web:=StrToInt(lbcp1.Text);
     adm_edtpmn.xeditavel:=true;
     adm_edtpmn.ShowModal;
     montamodtpmn(lbcp1.Text);
     lbcd6.Text:=axsx_desc;
     lbcd5.Text:=axsx_cod;
end;

procedure Tadm_websites.montamodsons(xcodsk:string);
begin
     //combo sons
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf47,37249)+
                                ' WHERE cod_web='+#39+xcodsk+#39+' OR xconf1='+#39+'-1'+#39+
                                ' ORDER BY descricao';
          Open;
          lbcd4.Clear;
          First;
          While not Eof do begin
             lbcd4.Items.Add(fieldbyname('descricao').AsString);
             Next;
          end;
          Filter:='';
          Filtered:=false;
     end;
end;

procedure Tadm_websites.montamodtpmn(xcodsk:string);
begin
    //combo formatar texto menus
     With dm.executa6 do begin
          if Active then close;
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf44,37249)+
                     ' WHERE cod_web='+#39+xcodsk+#39+' OR xconf1='+#39+'-1'+#39+
                     ' ORDER BY descricao';
          Open;
          lbcd6.Clear;
          First;
          While not Eof do begin
             lbcd6.Items.Add(fieldbyname('descricao').AsString);
             Next;
          end;
     end;
end;

procedure Tadm_websites.montalng_menus(axlbcd:string);
var xmnmenu,axcod: Integer;
    xmninc: Bool;
begin
     With dm.executa8 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf50,37249)+
                     ' WHERE cod_men='+#39+axlbcd+#39+
                     ' ORDER BY codigo';
          Open;
          First;
          if StrtoInt(axlbcd)>0 then begin
            xmninc:=false;
            for xmnmenu:=0 to menutmp.count-1 do begin
              retorna_TTreeView(xmnmenu).Items.Clear;
              if Locate('cod_lng',menutmp.cod_lng[xmnmenu],[]) then begin
                 menutmp.treeview[xmnmenu].Clear;
                 menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                 TBlobField(FieldByName('tvw')).SaveToStream(menutmp.treeview[xmnmenu]);
                 menutmp.data[xmnmenu].Assign(fieldbyname('obs'));
              end else begin
                 xmninc:=true;
                 axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf50,37249),1);
                 with dm.executa do begin
                    CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf50,37249)+' (codigo,cod_men,cod_lng,obs,tvw) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4)';
                    Params[0].AsInteger:=axcod;
                    Params[1].AsInteger:=StrtoInt(axlbcd);
                    Params[2].AsInteger:=menutmp.cod_lng[xmnmenu];
                    //TTreeView('xmn_montamenus'+IntToStr(xmnmenu+1)).SaveToStream(menutmp.treeview[menutmp.count]);
                    //xmn_montamenus_str(xmnmenu);
                    menutmp.data[xmnmenu].Clear;
                    Params[3].Assign(menutmp.data[xmnmenu]);
                    menutmp.data[xmnmenu].Clear;
                    menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                    Params[4].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
                    dm.executa.Execute;
                 end;
              end;
            end;
            if xmninc then begin
               Close;
               Open;
            end;
          end else begin
            for xmnmenu:=0 to menutmp.count-1 do begin
                retorna_TTreeView(xmnmenu).Items.Clear;
                menutmp.treeview[xmnmenu].Clear;
                menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                TBlobField(FieldByName('tvw')).SaveToStream(menutmp.treeview[xmnmenu]);
                menutmp.data[xmnmenu].Assign(fieldbyname('obs'));
            end;
          end;
     end;
     atualiza_xmenumnt;
end;

procedure Tadm_websites.atualiza_xmenumnt;
begin
     //monta menu
     xmn_montamenus_treeview;
     atualiza_nitens;
     xmn_text.Text:='';
     xmn_hint.Text:='';
     rb_item1.Checked:=true;
     xmn_modulos.ItemIndex:=-1;
end;

function Tadm_websites.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
begin
      Case xidxcod of
          0: Result:=lngtb1;
          1: Result:=lngtb2;
          2: Result:=lngtb3;
          3: Result:=lngtb4;
          4: Result:=lngtb5;
          5: Result:=lngtb6;
          6: Result:=lngtb7;
          7: Result:=lngtb8;
          8: Result:=lngtb9;
          9: Result:=lngtb10;
          10: Result:=lngtb11;
          11: Result:=lngtb12;
          12: Result:=lngtb13;
          13: Result:=lngtb14;
          14: Result:=lngtb15;
          15: Result:=lngtb16;
          16: Result:=lngtb17;
          17: Result:=lngtb18;
          18: Result:=lngtb19;
          19: Result:=lngtb20;
      End;
end;

function Tadm_websites.retorna_TTreeView(xidxcod:Integer):TTreeView;
begin
      Case xidxcod of
          0: Result:=xmn_montamenus1;
          1: Result:=xmn_montamenus2;
          2: Result:=xmn_montamenus3;
          3: Result:=xmn_montamenus4;
          4: Result:=xmn_montamenus5;
          5: Result:=xmn_montamenus6;
          6: Result:=xmn_montamenus7;
          7: Result:=xmn_montamenus8;
          8: Result:=xmn_montamenus9;
          9: Result:=xmn_montamenus10;
          10: Result:=xmn_montamenus11;
          11: Result:=xmn_montamenus12;
          12: Result:=xmn_montamenus13;
          13: Result:=xmn_montamenus14;
          14: Result:=xmn_montamenus15;
          15: Result:=xmn_montamenus16;
          16: Result:=xmn_montamenus17;
          17: Result:=xmn_montamenus18;
          18: Result:=xmn_montamenus19;
          19: Result:=xmn_montamenus20;
      End;
end;

function Tadm_websites.xmn_montamenus_treeview:Boolean;
var xformn: Integer;
    xmnmenu: Integer;
    MenuRecPtr: PmenuRec;
begin
     xupxmenumn:=true;
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
       retorna_TTreeView(xmnmenu).LoadFromStream(menutmp.treeview[xmnmenu]);
       for xformn:=0 to retorna_TTreeView(xmnmenu).Items.Count-1 do begin
           New(MenuRecPtr);
           MenuRecPtr^.Fhint:= copy(menutmp.data[xmnmenu].Strings[xformn],13,Length(menutmp.data[xmnmenu].Strings[xformn]));
           MenuRecPtr^.Ftypemdl:= StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],1,1));
           MenuRecPtr^.Fcodmdl:= StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],2,11));
           retorna_TTreeView(xmnmenu).Items.Item[xformn].Data:=MenuRecPtr;
           Case StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],1,1)) of
              1: begin
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].ImageIndex:=0;
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].SelectedIndex:=1;
              end;
              2: begin
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].ImageIndex:=2;
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].SelectedIndex:=3;
              end;
           end;
       end;
       retorna_TTreeView(xmnmenu).Repaint;
     end;
     xupxmenumn:=false;
     Result:=True;
end;

procedure Tadm_websites.atualiza_nitens;
begin
     Lb_countreg4.Caption:=IntToStr(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count);
end;

procedure Tadm_websites.bt_prior3Click(Sender: TObject);
begin
    dm.ds_sql8.Prior;
    atualiza_grade4;
end;

procedure Tadm_websites.bt_next3Click(Sender: TObject);
begin
    dm.ds_sql8.Next;
    atualiza_grade4;
end;

procedure Tadm_websites.bt_new3Click(Sender: TObject);
begin
    if not bt_del3.Enabled then
       if hwsf.BtConfirma('Utilizar mesma estrutura do modelo selecionado?') then begin
          montamodulos;
          skwebmenu(true);
          lbcd1.Text:='novo';
          lbcd2.Text:='';
       end else begin
          addreg3;
       end
    else addreg3;
    lbcd2.SetFocus;
end;

procedure Tadm_websites.bt_del3Click(Sender: TObject);
begin
    if (dm.ds_sql8.RecordCount>0) and (lbcd1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf43,37249),'codigo',lbcd1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Serverconect.vrf50,37249),'cod_men',lbcd1.Text,false);
           dm.ds_sql8.Close;
           dm.ds_sql8.Open;
           atualiza_grade4;
        end;
    end;
end;

procedure Tadm_websites.bt_save3Click(Sender: TObject);
begin
      savemenu;
end;

procedure Tadm_websites.bt_save4Click(Sender: TObject);
begin
      savemenu;
end;

procedure Tadm_websites.bt_del4Click(Sender: TObject);
var xmnmenu: Integer;
begin
     if hwsf.BtConfirma('Limpar todos os itens do menu?') then begin
        if chk_vincular.Checked then begin
           for xmnmenu:=0 to menutmp.count-1 do begin
               retorna_TTreeView(xmnmenu).Items.Clear;
               menutmp.treeview[xmnmenu].Clear;
               menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
               menutmp.data[xmnmenu].Clear;
           end;
        end else begin
           retorna_TTreeView(PageControl_languagens.TabIndex).Items.Clear;
           menutmp.treeview[PageControl_languagens.TabIndex].Clear;
           menutmp.treeview[PageControl_languagens.TabIndex].Seek(0,soFromBeginning);
           menutmp.data[PageControl_languagens.TabIndex].Clear;
        end;
        //menutmp.count:=0;
        atualiza_nitens;
        xmn_text.Text:='';
        xmn_hint.Text:='';
        rb_item1.Checked:=true;
        xmn_modulos.ItemIndex:=-1;
     end;
end;

procedure Tadm_websites.bt_new4Click(Sender: TObject);
begin
     if hwsf.BtConfirma('Restaurar menu?') then begin
        atualiza_grade4;
     end;
end;

procedure Tadm_websites.bt_next4Click(Sender: TObject);
begin
    dm.ds_sql8.Next;
    atualiza_grade4;
end;

procedure Tadm_websites.bt_prior4Click(Sender: TObject);
begin
    dm.ds_sql8.Prior;
    atualiza_grade4;
end;

procedure Tadm_websites.bt_it1Click(Sender: TObject);
begin
     addreg4;
     xmn_text.SetFocus;
end;

procedure Tadm_websites.bt_it2Click(Sender: TObject);
begin
     retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text:=xmn_text.Text;
     xmn_montamenusDisable;
end;

procedure Tadm_websites.bt_it3Click(Sender: TObject);
var error_vinc: boolean;
    xmnmenu,xmnmenucout,ax_xnoteselect_index: Integer;
begin
     if chk_vincular.Checked then begin
        error_vinc:=false;
        xmnmenucout:=0;
        for xmnmenu:=0 to menutmp.count-1 do begin
            if xmnmenu=0 then
               xmnmenucout:=retorna_TTreeView(xmnmenu).Items.Count
            else begin
               if xmnmenucout<>retorna_TTreeView(xmnmenu).Items.Count then
                  error_vinc:=true;
            end;
        end;
        if error_vinc then begin
           hwsf.BtMensagem('Menus não estão sincronizados, você deve ajustar manualmente o deselecionar "Vincular".');
           exit;
        end;
        ax_xnoteselect_index:=xnoteselect_index;
        for xmnmenu:=0 to menutmp.count-1 do begin
            xnoteselect_index:=ax_xnoteselect_index;
            xnoteselect:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xnoteselect_index]);
            retorna_TTreeView(xmnmenu).Select(xnoteselect);
            retorna_TTreeView(xmnmenu).Selected.Delete;
        end;
     end else begin
        retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Delete;
     end;
     atualiza_nitens;
     xmn_text.Text:='';
     xmn_hint.Text:='';
     xmn_montamenusDisable;
end;

procedure Tadm_websites.bt_it4Click(Sender: TObject);
begin
      IncMenu(0);
end;

procedure Tadm_websites.bt_it5Click(Sender: TObject);
begin
      IncMenu(1);
end;

procedure Tadm_websites.rb_item1Click(Sender: TObject);
begin
      xmn_modulos.Color:=$00F5F5F5;
      xmn_modulos.ItemIndex:=-1;
end;

procedure Tadm_websites.rb_item2Click(Sender: TObject);
begin
      xmn_modulos.Color:=clWindow;
end;

procedure Tadm_websites.xmn_montamenus1Change(Sender: TObject;
  Node: TTreeNode);
begin
      xnoteselect:= Node;
      xnoteselect_index:= Node.AbsoluteIndex;
      xmn_montamenusEditar;
end;

procedure Tadm_websites.xmn_montamenus1Click(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_websites.xmn_modulosChange(Sender: TObject);
begin
     if rb_item1.Checked then xmn_modulos.ItemIndex:=-1;
end;

procedure Tadm_websites.savemenu;
var axcod_sx,axcodtpmn,axcod: integer;
begin
     if lbcd2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição do menu');
        PageControl_principal.TabIndex:=3;
        lbcd2.SetFocus;
        exit;
     end;
     if (lbcd3.Text='') or (lbcd4.Text='') then axcod_sx:=0
     else axcod_sx:=StrtoInt(lbcd3.Text);
     if (lbcd5.Text='') or (lbcd6.Text='') then axcodtpmn:=0
     else axcodtpmn:=StrtoInt(lbcd5.Text);
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=10;
     if CheckBox_menudefault.Checked then begin
        if dm.ds_sql8.Locate('xconf','-1',[]) then begin
           with dm.executa do begin
                axcod:=dm.ds_sql8.fieldbyname('codigo').AsInteger;
                CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf43,37249)+' SET xconf=:p0 '+
                           'WHERE codigo=:p1';
                Params[0].AsString:=BoolToStr(False);
                Params[1].AsInteger:=axcod;
                try
                    dm.executa.Execute;
                except
                    loadx.Free;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
           end;
        end;
     end else begin
        if not dm.ds_sql8.Locate('xconf','-1',[]) then
           CheckBox_menudefault.Checked:=true; 
     end;
     //insert or modify do cadatro principal
     loadx.Progressloading.position:=25;
     if lbcd1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf43,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf43,37249)+' (codigo,cod_sk,cod_web,cod_sx,cod_tpmn,descricao,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=0;
            Params[2].AsInteger:=StrtoInt(lbcp1.Text);
            Params[3].AsInteger:=axcod_sx;
            Params[4].AsInteger:=axcodtpmn;
            Params[5].AsString:=lbcd2.Text;
            Params[6].AsString:=BoolToStr(CheckBox_menudefault.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcd1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf43,37249)+' SET cod_sx=:p0,cod_tpmn=:p1,descricao=:p2,xconf=:p3 '+
                       'WHERE codigo=:p4';
            Params[0].AsInteger:=axcod_sx;
            Params[1].AsInteger:=axcodtpmn;
            Params[2].AsString:=lbcd2.Text;
            Params[3].AsString:=BoolToStr(CheckBox_menudefault.Checked);
            Params[4].AsInteger:=axcod;
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          dm.executa.Execute;
     except
          loadx.Free;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql8.Close;
     dm.ds_sql8.Open;
     if not update_itensmenus(axcod) then begin
        hwsf.BtMensagem('Ocorreu algum erro.');
     end;
     loadx.Progressloading.position:=100;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql8.RecordCount);
     lbcd1.Text:=InttoStr(axcod);
     loadx.Free;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_websites.xmn_montamenusEditar;
var xmnmenu: Integer; 
    xerror: Bool;
begin
     if xupxmenumn then exit;
     if retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count>0 then begin
         try
             xmn_text.Text:=retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text;
             xmn_hint.Text:=PmenuRec(retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Data)^.Fhint;
             Case PmenuRec(retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Data)^.Ftypemdl of
                1: begin
                   rb_item1.Checked:=true;
                   xmn_modulos.Text:= '';
                end;
                2: begin
                   rb_item2.Checked:=true;
                   if dm.ds_sql6.Locate('codigo',PmenuRec(retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Data)^.Fcodmdl,[]) then
                      xmn_modulos.Text:= dm.ds_sql6.fieldbyname('descricao').AsString;
                end;
             end;
             xerror:=false;
         Except
           xerror:=true;
           xmn_text.Text:='';
           xmn_hint.Text:='';
         End;
         if not xerror then begin
            xmn_text.ReadOnly:=false;
            xmn_hint.ReadOnly:=false;
            xmn_text.Color:=clWindow;
            xmn_hint.Color:=clWindow;
            bt_it1.Enabled:=true;
            bt_it2.Enabled:=true;
            bt_it3.Enabled:=true;
            bt_it4.Enabled:=false;
            bt_it5.Enabled:=false;
         end;
      end;
end;

procedure Tadm_websites.xmn_montamenusDisable;
begin
     bt_it1.Enabled:=true;
     bt_it2.Enabled:=false;
     bt_it3.Enabled:=false;
     bt_it4.Enabled:=false;
     bt_it5.Enabled:=false;
     xmn_text.ReadOnly:=true;
     xmn_hint.ReadOnly:=true;
     xmn_text.Color:=$00F5F5F5;
     xmn_hint.Color:=$00F5F5F5;
end;

procedure Tadm_websites.IncMenu(xtype_inc:byte);
var xidxmenu,xind_trad,xid_default,xtypemdl,x_codmod: Integer;
    ax_traduzirall1: array[0..20] of String;
    ax_traduzirall2: array[0..20] of String;
    xtxt_dfl1,xtxt_dfl2,xtxt1,xtxt2: String;
    ax_xnoteselect_index: Integer;
    xerrorselect: Bool;
begin
        xidxmenu:=PageControl_languagens.TabIndex;
        Case xtype_inc of
          1: begin
             if retorna_TTreeView(xidxmenu).Items.Count=0 then begin
                hwsf.BtMensagem('Nenhum item incluído.');
                xmn_text.SetFocus;
                exit;
             end;
             xerrorselect:=false;
             try
                 if not retorna_TTreeView(xidxmenu).Selected.Selected then
                    xerrorselect:=true;
             Except
                 xerrorselect:=true;
             End;
             if xerrorselect then begin
                hwsf.BtMensagem('É necessário selecionar um item menu para adicionar um subitem.');
                xmn_text.SetFocus;
                exit;
             end;
             if retorna_TTreeView(xidxmenu).Selected.ImageIndex<>0 then begin
                hwsf.BtMensagem('É necessário selecionar um item menu.');
                xmn_text.SetFocus;
                exit;
             end;
          end;
        End;
        if xmn_text.Text='' then begin
           hwsf.BtMensagem('Digite o texto do módulo.');
           xmn_text.SetFocus;
           exit;
        end;
        if (rb_item2.Checked) and (xmn_modulos.ItemIndex<0) then begin
           hwsf.BtMensagem('Selecione o módulo a ser incluído.');
           xmn_modulos.SetFocus;
           exit;
        end;
        if rb_item1.Checked then begin
           xtypemdl:=1;
           x_codmod:=0;
        end else begin
           xtypemdl:=2;
           if dm.ds_sql6.Locate('descricao',xmn_modulos.Text,[]) then
              x_codmod:=dm.ds_sql6.fieldbyname('codigo').AsInteger;
        end;
        Panel1.Enabled:=false;
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        xtxt_dfl1:=xmn_text.Text;
        xtxt_dfl2:=xmn_hint.Text;
        ax_xnoteselect_index:= xnoteselect_index;
        if chk_vincular.Checked then begin
           xtxt1:=xtxt_dfl1;
           xtxt2:=xtxt_dfl2;
           if chk_traduzir.Checked then begin
              loadx.Progressloading.Max:=menutmp.count*2;
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxmenu).Caption;
              loadx.lbloading.Repaint;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  ax_traduzirall1[xind_trad]:= '';
                  ax_traduzirall2[xind_trad]:= '';
                  if menutmp.trd[xind_trad]='English' then xid_default:=xind_trad;
              end;
              if (xid_default=xidxmenu) then begin
                  ax_traduzirall1[xid_default]:=xtxt1;
                  ax_traduzirall2[xid_default]:=xtxt2;
              end else begin
                 ax_traduzirall1[xidxmenu]:=xtxt1;
                 ax_traduzirall2[xidxmenu]:=xtxt2;
                 loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=recebetraducao(xtxt1,menutmp.trd[xidxmenu],menutmp.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:='';
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Free;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 xtxt2:=recebetraducao(xtxt2,menutmp.trd[xidxmenu],menutmp.trd[xid_default]);
                 if copy(xtxt2,1,7)='Error: ' then xtxt2:='';
                 if xtxt2 = '<|erro|>' then begin
                    loadx.Free;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 ax_traduzirall1[xid_default]:=xtxt1;
                 ax_traduzirall2[xid_default]:=xtxt2;
              end;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  if (xind_trad<>xidxmenu) AND (xind_trad<>xid_default) then begin
                     loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xind_trad).Caption;
                     loadx.lbloading.Repaint;
                     xtxt1:=recebetraducao(ax_traduzirall1[xid_default],menutmp.trd[xid_default],menutmp.trd[xind_trad]);
                     if copy(xtxt1,1,7)='Error: ' then xtxt1:='';
                     if xtxt1 = '<|erro|>' then begin
                        loadx.Free;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     xtxt2:=recebetraducao(ax_traduzirall2[xid_default],menutmp.trd[xid_default],menutmp.trd[xind_trad]);
                     if copy(xtxt2,1,7)='Error: ' then xtxt2:='';
                     if xtxt2 = '<|erro|>' then begin
                        loadx.Free;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     ax_traduzirall1[xind_trad]:=xtxt1;
                     ax_traduzirall2[xind_trad]:=xtxt2;
                  end;
              end;
              loadx.lbloading.Caption:='Inserindo itens';
              loadx.lbloading.Repaint;
              for xind_trad:=0 to menutmp.count-1 do begin
                  xnoteselect_index:=ax_xnoteselect_index;
                  IncItemMenu(xind_trad,x_codmod,xtype_inc,xtypemdl,ax_traduzirall1[xind_trad],ax_traduzirall2[xind_trad]);
              end;
              loadx.Progressloading.Position:=loadx.Progressloading.Max-1;
           end else begin
              loadx.Progressloading.Max:=menutmp.count;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  xnoteselect_index:=ax_xnoteselect_index;
                  IncItemMenu(xind_trad,x_codmod,xtype_inc,xtypemdl,xtxt1,xtxt2);
              end;
              loadx.Progressloading.Position:=loadx.Progressloading.Max-1;
           end;
        end else begin
            loadx.Progressloading.position:=50;
            xnoteselect_index:=ax_xnoteselect_index;
            IncItemMenu(xidxmenu,x_codmod,xtype_inc,xtypemdl,xtxt_dfl1,xtxt_dfl2);
            loadx.Progressloading.position:=100;
        end;
        atualiza_nitens;
        xmn_text.Text:=xtxt_dfl1;
        xmn_hint.Text:=xtxt_dfl2;
        loadx.Free;
        Panel1.Enabled:=true;
        bt_it1.Click;
end;

procedure Tadm_websites.IncItemMenu(xidxmenu,x_codmod :Integer; xtype_inc,xtypemdl:byte; xtxtdesc,xtxthint: string);
var xnode:TTreeNode;
    MenuRecPtr: PmenuRec;
begin
        New(MenuRecPtr);
        MenuRecPtr^.Fhint:= xtxthint;
        MenuRecPtr^.Ftypemdl:= xtypemdl;
        MenuRecPtr^.Fcodmdl:= x_codmod;
        Case xtype_inc of
            0: begin
               xnode:=TTreeNode.Create(retorna_TTreeView(xidxmenu).Items);
               xnoteselect:=retorna_TTreeView(xidxmenu).Items.AddObject(xnode,xtxtdesc,MenuRecPtr);
            end;
            1: begin
               xnode:=TTreeNode(retorna_TTreeView(xidxmenu).Items.Item[xnoteselect_index]);
               xnoteselect:=retorna_TTreeView(xidxmenu).Items.AddChildObject(xnode,xtxtdesc,MenuRecPtr);
            end;
        End;
        retorna_TTreeView(xidxmenu).Select(xnoteselect);
        Case xtypemdl of
             1: begin
                retorna_TTreeView(xidxmenu).Selected.ImageIndex:=0;
                retorna_TTreeView(xidxmenu).Selected.SelectedIndex:=1;
             end;
             2: begin
                retorna_TTreeView(xidxmenu).Selected.ImageIndex:=2;
                retorna_TTreeView(xidxmenu).Selected.SelectedIndex:=3;
             end;
        End;
        retorna_TTreeView(xidxmenu).Repaint;
end;

function Tadm_websites.update_itensmenus(xcod_men:Integer):Boolean;
var xmnmenu,axcod: Integer;
    xerror: Bool;
begin
      xerror:=true;
      xmn_montamenus_str;
      for xmnmenu:=0 to menutmp.count-1 do begin
          if dm.executa8.Locate('cod_lng',menutmp.cod_lng[xmnmenu],[]) then begin
             axcod:=dm.executa8.fieldbyname('codigo').AsInteger;
             with dm.executa do begin
                  CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf50,37249)+' SET cod_men=:p0,cod_lng=:p1,obs=:p2,tvw=:p3 '+
                             ' WHERE codigo=:p4';
                  Params[0].AsInteger:=xcod_men;
                  Params[1].AsInteger:=menutmp.cod_lng[xmnmenu];
                  Params[2].Assign(menutmp.data[xmnmenu]);
                  menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                  Params[3].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
                  Params[4].AsInteger:=axcod;
             end;
          end else begin
             axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf50,37249),1);
             with dm.executa do begin
                  CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf50,37249)+' (codigo,cod_men,cod_lng,obs,tvw) '+
                             'VALUES(:p0,:p1,:p2,:p3,:p4)';
                  Params[0].AsInteger:=axcod;
                  Params[1].AsInteger:=xcod_men;
                  Params[2].AsInteger:=menutmp.cod_lng[xmnmenu];
                  Params[3].Assign(menutmp.data[xmnmenu]);
                  menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                  Params[4].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
             end;
          end;
          try
              dm.executa.Execute;
          Except
              xerror:=false;
          End;
      end;
      Result:=xerror;
end;

procedure Tadm_websites.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tadm_websites.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tadm_websites.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
var xrecebido: Bool;
begin
      xrecebido:=false;
      xreceivetrad:='';
      Tradutor1.Texto:=xtrad_text;
      Tradutor1.TraduzirDe:=xtrad_de;
      Tradutor1.TraduzirPara:=xtrad_para;
      Tradutor1.Traduzir;
      xtimerresponse:=0;
      Timer_traduz.Enabled:=true;
      Repeat
           Application.ProcessMessages;
           if xreceivetrad<>'' then
              xrecebido:=true;
           if xtimerresponse>=60 then begin
              if not hwsf.BtConfirma('Falha na conexão, tentar novamente?') then begin
                 Result:='<|erro|>';
                 exit;
              end else begin
                 Tradutor1.Texto:=xtrad_text;
                 Tradutor1.TraduzirDe:=xtrad_de;
                 Tradutor1.TraduzirPara:=xtrad_para;
                 Tradutor1.Traduzir;
                 xtimerresponse:=0;
              end;
           end;
      Until xrecebido;
      Timer_traduz.Enabled:=false;
      if xreceivetrad='Error: Too many requests.  Please try again later.' then begin
         xreceivetrad:=xtrad_text;
         hwsf.BtMensagem('Erro na comunicação, aguarde alguns minutos e tente novamente.');
      end;
      Result:=xreceivetrad;
end;

function Tadm_websites.xmn_montamenus_str:Boolean;
var xformn: Integer;
    xmnmenu: Integer;
begin
     xupxmenumn:=true;
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.data[xmnmenu].Clear;
       menutmp.treeview[xmnmenu].Clear;
       menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
       retorna_TTreeView(xmnmenu).SaveToStream(menutmp.treeview[xmnmenu]);
       for xformn:=0 to retorna_TTreeView(xmnmenu).Items.Count-1 do begin
           menutmp.data[xmnmenu].Add(IntToStr(PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Ftypemdl)+
                                      preenchezeros(PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Fcodmdl,11)+
                                      PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Fhint);
       end;
     end;
     xupxmenumn:=false;
     Result:=True;
end;

function Tadm_websites.preenchezeros(xcodnum,xquantzeros: Integer):string;
var ax_xcodnum: string;
    ax_forzeros: Integer;
begin
     ax_xcodnum:=IntToStr(xcodnum);
     if Length(ax_xcodnum)<xquantzeros then
     for ax_forzeros:=1 to (xquantzeros-Length(ax_xcodnum)) do begin
         ax_xcodnum:='0'+ax_xcodnum;
     end;
     Result:=ax_xcodnum;
end;

procedure Tadm_websites.PageControl_languagensChange(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_websites.chk_vincularClick(Sender: TObject);
begin
      if chk_vincular.Checked then begin
         chk_traduzir.Checked:=true;
         chk_traduzir.Enabled:=true;
      end else begin
         chk_traduzir.Checked:=false;
         chk_traduzir.Enabled:=false;
      end;
end;

procedure Tadm_websites.montamenus(xcodmenu,xdescmenu:string);
var xindmenu,xindexmenu,
    axcodBlb,axcodBlb2: Integer;
begin
     try
        axcodBlb:=StrtoInt(xcodmenu);
     Except
        axcodBlb:=0;
     End;
     try
        axcodBlb2:=StrtoInt(lbcp9.Text);
     Except
        axcodBlb2:=0;
     End;
     With dm.ds_sql8 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf43,37249)+
                                ' WHERE cod_web='+#39+IntToStr(axcodBlb)+#39+' OR cod_sk='+#39+IntToStr(axcodBlb2)+#39+
                                ' ORDER BY descricao';
          Open;
          Filter:='';
          Filtered:=false;
          atualiza_grade4;
     end;
end;

procedure Tadm_websites.montamodulos;
var axlocatemdl,axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando lista de módulos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando lista de módulos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
    xmn_modulos.Items.Clear;
    xlistcodmod2.Clear;
    With dm.ds_sql6 do begin
        if Active then close;
        if lbcp9.Text='' then lbcp9.Text:='0';
        loadx.Progressloading.position:=30;        
        CommandText:= 'SELECT codigo,cod_sk,cod_grp,cod_mds,descricao FROM '+EnDecryptString(Serverconect.vrf45,37249)+
                              ' WHERE cod_sk='+#39+lbcp9.Text+#39+
                              ' ORDER BY descricao';
        CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf32[0],37249)+' (codigo,cod_web,tipo,cod_grp,cod_grp2,obs,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
        loadx.Progressloading.position:=60;
        Open;
        loadx.Progressloading.position:=80;
        if RecordCount>0 then begin
           First;
           While not Eof do begin
               axlocatemdl:=false;
               if dm.ds_sql5.Locate('cod_grp',FieldByName('cod_grp').AsInteger,[]) then
                  axlocatemdl:=true;
               if not axlocatemdl then
               if dm.ds_sql5.Locate('cod_grp2',FieldByName('cod_mds').AsInteger,[]) then
                  axlocatemdl:=true;
               if axlocatemdl then begin
                  xmn_modulos.Items.Add(fieldbyname('descricao').AsString);
                  xlistcodmod2.Add(fieldbyname('codigo').AsString);
               end;
               Next;
           end;
        end;
        loadx.Progressloading.position:=100;
    end;
    if not axshowing then loadx.Free;
end;

procedure Tadm_websites.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if dm.ds_sql5.Locate('cod_grp2',dm.ds_sql10.FieldByName('codigo').AsInteger,[]) then begin
         Dbgrid5.Canvas.Font.Color:= $00C08000;
         Dbgrid5.DefaultDrawDataCell(Rect, dbgrid5.columns[datacol].field, State);
      end;
end;

procedure Tadm_websites.PageControl_principalChange(Sender: TObject);
begin
      Case PageControl_principal.TabIndex of
         4: montamodulos;
      end;
end;

procedure Tadm_websites.PageControl_mdlChange(Sender: TObject);
begin
      atualiza_grade2;
end;

procedure Tadm_websites.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if dm.ds_sql8.FieldByName('cod_sk').AsInteger>0 then begin
         Dbgrid4.Canvas.Font.Color:= $00C08000;
         Dbgrid4.DefaultDrawDataCell(Rect, dbgrid4.columns[datacol].field, State);
      end;
end;

procedure Tadm_websites.Edit_search2Change(Sender: TObject);
begin
      if (Edit_search2.Text = '') then dm.ds_sql4.filter:= ''
      else dm.ds_sql4.filter:= 'descricao LIKE '+QuotedStr(Edit_search2.Text+'%');
end;

procedure Tadm_websites.bt_automdlClick(Sender: TObject);
var xcodgrp: String;
    axcod: Integer;
    axshowing,axlocate: Boolean;
begin
      //copy mdls
      if not hwsf.BtConfirma('Reatribuir módulos para website '+lbcp8.Text) then
          exit;
      xcodgrp:= hwsf.BtDesc('Digite o código do website');
      if (xcodgrp = '') then begin
         hwsf.BtMensagem('Digite o código do website.');
         exit;
      end;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Copiando lista de módulos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Copiando lista de módulos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      With dm.executa do begin
            loadx.lbloading.Caption:='Removendo registros antigos';
            loadx.lbloading.Repaint;
            CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf32[0],37249)+
                          ' WHERE cod_web='+#39+lbcp1.Text+#39;
            loadx.Progressloading.position:=25;
            Try
               Execute;
            Except
               if not axshowing then loadx.Free;
               hwsf.BtMensagem('Ocorreu algum erro ao remover registros');
               dm.executa2.Close;
               exit;
            End;
            loadx.Progressloading.position:=50;
      end;
      loadx.lbloading.Caption:='Localizando registros';
      loadx.lbloading.Repaint;
      dm.executa2.CommandText:='SELECT codigo,cod_web,tipo,cod_grp,cod_grp2,obs,xconf FROM '+EnDecryptString(Serverconect.vrf32[0],37249)+
                        ' WHERE cod_web='+#39+xcodgrp+#39+
                        ' ORDER BY codigo';
      loadx.Progressloading.position:=75;
      dm.executa2.Open;
      loadx.Progressloading.position:=100;
      if (dm.executa2.RecordCount <= 0) then begin
          if not axshowing then loadx.Free;
          hwsf.BtMensagem('Código inválido.');
          dm.executa2.Close;
          exit;
      end;
      loadx.Progressloading.position:=0;
      loadx.Progressloading.Max:=dm.executa2.RecordCount;
      dm.executa2.First;
      While not dm.executa2.Eof do begin
         With dm.executa do begin
            loadx.Progressloading.position:=loadx.Progressloading.position+1;
            loadx.lbloading.Caption:='Adicionando registro '+IntToStr(loadx.Progressloading.position)+' de '+IntToStr(loadx.Progressloading.Max);
            loadx.lbloading.Repaint;
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf32[0],37249),1);
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf32[0],37249)+' (codigo,cod_web,tipo,cod_grp,cod_grp2,obs,xconf) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            Params[2].AsInteger:=dm.executa2.fieldbyname('tipo').AsInteger;
            Params[3].AsInteger:=dm.executa2.fieldbyname('cod_grp').AsInteger;
            Params[4].AsInteger:=dm.executa2.fieldbyname('cod_grp2').AsInteger;
            Params[5].Assign(dm.executa2.fieldbyname('obs'));
            Params[6].AsString:=dm.executa2.fieldbyname('xconf').AsString;
            Try
               Execute;
            Except
               loadx.Progressloading.position:=0;
               loadx.Progressloading.Max:=100;
               if not axshowing then loadx.Free;
               hwsf.BtMensagem('Ocorreu algum erro ao inserir registros');
               dm.executa2.Close;
               exit;
            End;
         end;
         dm.executa2.Next;
      end;
      loadx.lbloading.Caption:='Finalizando';
      loadx.lbloading.Repaint;
      loadx.Progressloading.position:=0;
      loadx.Progressloading.Max:=100;
      dm.executa2.Close;
      dm.ds_sql5.Close;
      dm.ds_sql5.Open;
      if not axshowing then loadx.Free;
      atualiza_grade2;
end;

end.
