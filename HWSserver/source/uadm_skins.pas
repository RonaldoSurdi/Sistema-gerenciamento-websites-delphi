{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de módulos.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_skins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, JPEG, backup,
  ComboSpeedButton, Menus, XPMan, ImgList, Tradutor;


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
  Tadm_skins = class(TForm)
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
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    GroupBox3: TGroupBox;
    ToolBar3: TToolBar;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    ScrollBox2: TScrollBox;
    Panel4: TPanel;
    lbcb1: TLabeledEdit;
    lbcb4: TLabeledEdit;
    lbcb5: TLabeledEdit;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PopupMenu_atualiza: TPopupMenu;
    update_forcar: TMenuItem;
    update_path: TMenuItem;
    Lb_countreg: TLabel;
    XPManifest1: TXPManifest;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    Panel3: TPanel;
    swf_logo: TShockwaveFlash;
    lbcb6: TLabeledEdit;
    bt_mdl1: TSpeedButton;
    bt_mdl2: TSpeedButton;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox_detalhes: TGroupBox;
    re_area: TMemo;
    DBGrid3: TDBGrid;
    ToolBar4: TToolBar;
    bt_area1: TSpeedButton;
    bt_area2: TSpeedButton;
    bt_area3: TSpeedButton;
    bt_area4: TSpeedButton;
    bt_area5: TSpeedButton;
    bt_area6: TSpeedButton;
    Lb_countreg_area: TLabel;
    chk_detalhes: TCheckBox;
    GroupBox_modskin: TGroupBox;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    lbcb2: TLabeledEdit;
    lbcb3: TComboBox;
    lb_mod: TLabel;
    ComboSpeedButton1: TComboSpeedButton;
    update_select: TMenuItem;
    PopupMenu_menu: TPopupMenu;
    Adicionarmenu1: TMenuItem;
    Removeritem1: TMenuItem;
    Limpar1: TMenuItem;
    N1: TMenuItem;
    Moverparacima1: TMenuItem;
    Moverparabaixo1: TMenuItem;
    ImageList_menuweb: TImageList;
    Label1: TLabel;
    rb_mdl1: TRadioButton;
    rb_mdl2: TRadioButton;
    Label6: TLabel;
    lb_link: TLabel;
    GroupBox6: TGroupBox;
    ToolBar10: TToolBar;
    bt_prior3: TSpeedButton;
    bt_next3: TSpeedButton;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    bt_save3: TSpeedButton;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    pn_legenda: TPanel;
    Image1: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Image2: TImage;
    Lb_countreg4: TLabel;
    ToolBar8: TToolBar;
    bt_prior4: TSpeedButton;
    bt_next4: TSpeedButton;
    bt_new4: TSpeedButton;
    bt_del4: TSpeedButton;
    bt_save4: TSpeedButton;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    rb_item1: TRadioButton;
    rb_item2: TRadioButton;
    xmn_modulos: TComboBox;
    xmn_text: TEdit;
    xmn_hint: TEdit;
    DBGrid4: TDBGrid;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label2: TLabel;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp3: TMemo;
    chk_private: TCheckBox;
    ScrollBox3: TScrollBox;
    Panel8: TPanel;
    lbcd1: TLabeledEdit;
    lbcd2: TLabeledEdit;
    Label5: TLabel;
    lbcd4: TComboBox;
    xmn_sx_bt2: TSpeedButton;
    xmn_tpmn_bt2: TSpeedButton;
    lbcd6: TComboBox;
    Label13: TLabel;
    Lb_countreg3: TLabel;
    lbcd3: TLabeledEdit;
    lbcd5: TLabeledEdit;
    Splitter3: TSplitter;
    Editaritem1: TMenuItem;
    ToolBar5: TToolBar;
    bt_it1: TSpeedButton;
    bt_it2: TSpeedButton;
    bt_it3: TSpeedButton;
    bt_it4: TSpeedButton;
    bt_it5: TSpeedButton;
    PageControl_languagens: TPageControl;
    lngtb1: TTabSheet;
    xmn_montamenus1: TTreeView;
    lngtb2: TTabSheet;
    lngtb3: TTabSheet;
    lngtb4: TTabSheet;
    lngtb5: TTabSheet;
    lngtb6: TTabSheet;
    lngtb7: TTabSheet;
    lngtb8: TTabSheet;
    lngtb9: TTabSheet;
    lngtb10: TTabSheet;
    lngtb11: TTabSheet;
    lngtb12: TTabSheet;
    lngtb13: TTabSheet;
    lngtb14: TTabSheet;
    lngtb15: TTabSheet;
    lngtb16: TTabSheet;
    lngtb17: TTabSheet;
    lngtb18: TTabSheet;
    lngtb19: TTabSheet;
    lngtb20: TTabSheet;
    xmn_montamenus2: TTreeView;
    xmn_montamenus3: TTreeView;
    xmn_montamenus4: TTreeView;
    xmn_montamenus5: TTreeView;
    xmn_montamenus6: TTreeView;
    xmn_montamenus7: TTreeView;
    xmn_montamenus8: TTreeView;
    xmn_montamenus9: TTreeView;
    xmn_montamenus10: TTreeView;
    xmn_montamenus11: TTreeView;
    xmn_montamenus12: TTreeView;
    xmn_montamenus13: TTreeView;
    xmn_montamenus14: TTreeView;
    xmn_montamenus15: TTreeView;
    xmn_montamenus16: TTreeView;
    xmn_montamenus17: TTreeView;
    xmn_montamenus18: TTreeView;
    xmn_montamenus19: TTreeView;
    xmn_montamenus20: TTreeView;
    chk_traduzir: TCheckBox;
    chk_vincular: TCheckBox;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    lb_codent: TLabeledEdit;
    lb_descent: TComboBox;
    lb_descentlb: TLabel;
    bt_detail1: TSpeedButton;
    TabSheet6: TTabSheet;
    GroupBox8: TGroupBox;
    DBGrid5: TDBGrid;
    GroupBox9: TGroupBox;
    ToolBar6: TToolBar;
    bt_prior5: TSpeedButton;
    bt_next5: TSpeedButton;
    bt_new5: TSpeedButton;
    bt_del5: TSpeedButton;
    bt_save5: TSpeedButton;
    ScrollBox4: TScrollBox;
    Panel5: TPanel;
    bt_mdl3: TSpeedButton;
    bt_mdl4: TSpeedButton;
    Label16: TLabel;
    lbcs3: TLabeledEdit;
    lbcs1: TLabeledEdit;
    lbcs2: TLabeledEdit;
    lb_lbcp1: TLabel;
    Button1: TButton;
    ExportarImgDialog: TSaveDialog;
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
    procedure bt_mdl2Click(Sender: TObject);
    procedure update_forcarClick(Sender: TObject);
    procedure update_pathClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure bt_area6Click(Sender: TObject);
    procedure bt_area4Click(Sender: TObject);
    procedure bt_area3Click(Sender: TObject);
    procedure bt_area5Click(Sender: TObject);
    procedure bt_area1Click(Sender: TObject);
    procedure bt_area2Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk_detalhesClick(Sender: TObject);
    procedure bt_mdl1Click(Sender: TObject);
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure update_selectClick(Sender: TObject);
    procedure lbcb3Change(Sender: TObject);
    procedure lbcb2Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure rb_mdl1Click(Sender: TObject);
    procedure rb_mdl2Click(Sender: TObject);
    procedure rb_item1Click(Sender: TObject);
    procedure rb_item2Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_next3Click(Sender: TObject);
    procedure bt_prior3Click(Sender: TObject);
    procedure bt_new4Click(Sender: TObject);
    procedure bt_del4Click(Sender: TObject);
    procedure bt_it3Click(Sender: TObject);
    procedure bt_it1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Editaritem1Click(Sender: TObject);
    procedure Adicionarmenu1Click(Sender: TObject);
    procedure Removeritem1Click(Sender: TObject);
    procedure Moverparacima1Click(Sender: TObject);
    procedure Moverparabaixo1Click(Sender: TObject);
    procedure lbcd4Change(Sender: TObject);
    procedure lbcd6Change(Sender: TObject);
    procedure lbcd3Change(Sender: TObject);
    procedure lbcd5Change(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xmn_sx_bt2Click(Sender: TObject);
    procedure xmn_tpmn_bt2Click(Sender: TObject);
    procedure bt_it4Click(Sender: TObject);
    procedure xmn_montamenus1Change(Sender: TObject; Node: TTreeNode);
    procedure bt_it2Click(Sender: TObject);
    procedure bt_it5Click(Sender: TObject);
    procedure xmn_montamenus1Click(Sender: TObject);
    procedure xmn_modulosChange(Sender: TObject);
    procedure xmn_modulosExit(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure chk_vincularClick(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure PageControl_languagensChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure chk_privateClick(Sender: TObject);
    procedure lb_codentChange(Sender: TObject);
    procedure lb_descentChange(Sender: TObject);
    procedure bt_detail1Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_mdl3Click(Sender: TObject);
    procedure bt_mdl4Click(Sender: TObject);
    procedure bt_prior5Click(Sender: TObject);
    procedure bt_next5Click(Sender: TObject);
    procedure bt_new5Click(Sender: TObject);
    procedure bt_del5Click(Sender: TObject);
    procedure bt_save5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    cv,pathpacote,pathpacote5 : string;
    xlistcodmod,xlistcodmod2 : TStringList;
    xlogotmp,xmodtmp,xmodtmp5 : TMemoryStream;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    impmodule,impmodule5,xmodupdate,xmodupdate5,xupxmenumn: boolean;
    xnoteselect: TTreeNode;
    xnoteselect_index: Integer;
    menutmp: Tmenutmp;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure atualiza_grade4;
    procedure atualiza_grade5;
    procedure montalng_menus(axlbcd:string);
    procedure atualiza_xmenumnt;
    procedure addreg;
    procedure addreg2;
    procedure addreg3;
    procedure addreg4;
    procedure addreg5;
    procedure filtrar_reg;
    procedure getLogo;
    procedure marcarmodulo(xcodarea:integer);
    function atualiza_pacote(axcodpack,xsizefile: integer; pathdopacote: String; xforcar:boolean):Byte;
    function atualiza_pacote5(axcodpack,xsizefile: integer; pathdopacote: String; xforcar:boolean):Byte;
    procedure atualizamod(xcoddefault:Integer);
    procedure atualizacodmod;
    procedure montamenus(xcodmenu,xdescmenu:string);
    procedure montamodulos;
    procedure abretmplogo;
    procedure atualiza_nitens;
    procedure montamodsons(xcodsk:string);
    procedure montamodtpmn(xcodsk:string);
    procedure xmn_montamenusEditar;
    procedure xmn_montamenusDisable;
    procedure savemenu;
    function xmn_montamenus_str:Boolean;
    function preenchezeros(xcodnum,xquantzeros: Integer):string;
    function xmn_montamenus_treeview:Boolean;
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    function retorna_TTreeView(xidxcod:Integer):TTreeView;
    function update_itensmenus(xcod_men:Integer):Boolean;
    procedure IncMenu(xtype_inc:byte);
    procedure IncItemMenu(xidxmenu,x_codmod :Integer; xtype_inc,xtypemdl:byte; xtxtdesc,xtxthint: string);
    procedure setPrivate(xstatprivate:boolean);
    procedure detail_entidades(axvar_cod:TLabeledEdit);
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    xreceivetrad : String;
    xtimerresponse : Integer;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_skins: Tadm_skins;

implementation
uses udm, hwsfunctions, DateUtils, Math, uadm_edsound, uadm_edtpmn;

{$R *.dfm}

procedure Tadm_skins.FormClose(Sender: TObject; var Action: TCloseAction);
var xmnmenu: Integer;
begin
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.treeview[xmnmenu].Free;
       menutmp.data[xmnmenu].Free;
     end;
     xlistcodmod.Free;
     xlistcodmod2.Free;
     xlogotmp.Free;
     xmodtmp.Free;
     xmodtmp5.Free;
     dm.executa5.Close;
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
     Action:=cafree;
end;

procedure Tadm_skins.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_skins.FormCreate(Sender: TObject);
var axshowing: Boolean;
teste:String;
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
     impmodule5:=false;
     xupxmenumn:=false;
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap; 
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     DBGrid1.DataSource:=dm.source_sql3;
     DBGrid2.DataSource:=dm.source_sql6;
     DBGrid3.DataSource:=dm.source_sql4;
     DBGrid4.DataSource:=dm.source_sql8;
     DBGrid5.DataSource:=dm.source_sql5;
     xlogotmp:= TMemoryStream.Create;
     xmodtmp:= TMemoryStream.Create;
     xmodtmp5:= TMemoryStream.Create;
     xlistcodmod:= TStringList.Create;
     xlistcodmod2:= TStringList.Create;
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
     xnoteselect_index:=0;
     loadx.Progressloading.position:=20;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descrição';
     teste:=EnDecryptString(Serverconect.vrf31,37249);
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf41,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=30;
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='codigo';
     DBGrid3.Columns.Items[0].Title.Caption:='Código';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[1].FieldName:='descricao';
     DBGrid3.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_sql4 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf31,37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=false;
     end;
     loadx.Progressloading.position:=40;
     With dm.ds_sql7 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf42,37249)+' ORDER BY codigo';
        Open;
        Filter:='cod_sk='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=50;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='descricao';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_sql6 do begin
        CommandText:= 'SELECT codigo,cod_sk,cod_grp,cod_mds,descricao,img,pth,pth2 FROM '+EnDecryptString(Serverconect.vrf45,37249)+
                              ' ORDER BY descricao';
        Open;
        Filter:='cod_sk='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=55;
     DBGrid5.Columns.Add;
     DBGrid5.Columns.Items[0].FieldName:='codigo';
     DBGrid5.Columns.Items[0].Title.Caption:='Código';
     DBGrid5.Columns.Add;
     DBGrid5.Columns.Items[1].FieldName:='cod_mod';
     DBGrid5.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid5.Columns.Add;
     DBGrid5.Columns.Items[2].FieldName:='sz';
     DBGrid5.Columns.Items[2].Title.Caption:='Tamanho (kb)';
     With dm.ds_sql5 do begin
        CommandText:= 'SELECT codigo,cod_sk,cod_mod,pth,sz FROM '+EnDecryptString(Serverconect.vrf45,37249)+'_ax'+
                              ' ORDER BY cod_mod';
        Open;
        Filter:='cod_sk='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=60;
     //combo módulos
     With dm.ds_sql9 do begin
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+
                                ' ORDER BY descricao';
          Open;
          Filter:='';
          Filtered:=false;
     end;
     loadx.Progressloading.position:=70;
     With dm.ds_sql10 do begin
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf46,37249)+
                                ' ORDER BY descricao';
          Open;
          Filter:='';
          Filtered:=false;
     end;
     loadx.Progressloading.position:=80;
     //languagens
     With dm.executa3 do begin
          CommandText:= 'SELECT codigo,descricao,sigla,trd,pdr FROM '+EnDecryptString(Serverconect.vrf48,37249)+
                     ' ORDER BY pdr,codigo';
          Open;
          First;
          menutmp.count:=0;
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
     loadx.Progressloading.position:=90;
     //grade menus padrão
     DBGrid4.Columns.Add;
     DBGrid4.Columns.Items[0].FieldName:='codigo';
     DBGrid4.Columns.Items[0].Title.Caption:='Código';
     DBGrid4.Columns.Add;
     DBGrid4.Columns.Items[1].FieldName:='descricao';
     DBGrid4.Columns.Items[1].Title.Caption:='Descrição';
     loadx.Progressloading.position:=100;
     //entidades
     With dm.executa4 do begin
          CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf26,37249)+' ORDER BY razao_social';
          Open;
          First;
          lb_descent.Clear;
          While not Eof do begin
              lb_descent.Items.Add(fieldbyname('razao_social').AsString);
              Next;
          end;
     end;
     //atualiza
     atualiza_grade;
     montamodulos;
     if not axshowing then loadx.Free;
end;

procedure Tadm_skins.montamenus(xcodmenu,xdescmenu:string);
var xindmenu,xindexmenu: Integer;
begin
     With dm.ds_sql8 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf43,37249)+
                                ' WHERE cod_sk='+#39+xcodmenu+#39+
                                ' ORDER BY descricao';
          Open;
          Filter:='';
          Filtered:=false;
          atualiza_grade4;
     end;
end;

procedure Tadm_skins.montamodulos;
begin
      xmn_modulos.Items.Clear;
      xlistcodmod2.Clear;
      with dm.ds_sql6 do begin
         if RecordCount>0 then begin
            First;
            While not Eof do begin
                xmn_modulos.Items.Add(fieldbyname('descricao').AsString);
                xlistcodmod2.Add(fieldbyname('codigo').AsString);
                Next;
            end;
         end;
      end;
end;

procedure Tadm_skins.atualizamod(xcoddefault:Integer);
begin
     if rb_mdl1.Checked then begin
        lb_link.Caption:='';
        With dm.ds_sql9 do begin
          First;
          xlistcodmod.Clear;
          xlistcodmod.Add('0');
          lbcb3.clear;
          lbcb3.Items.Add('selecione o módulo administrador');
          While not Eof do begin
              if not dm.ds_sql6.Locate('cod_grp',fieldbyname('codigo').AsString,[]) then begin
                 lbcb3.Items.Add(fieldbyname('descricao').AsString);
                 xlistcodmod.Add(fieldbyname('codigo').AsString);
              end;
              if xcoddefault>0 then
              if (xcoddefault=fieldbyname('codigo').AsInteger) then begin
                 lbcb3.Items.Add(fieldbyname('descricao').AsString);
                 xlistcodmod.Add(fieldbyname('codigo').AsString);
              end;
              Next;
          end;
        end;
     end else begin
        lb_link.Caption:='Deixe em branco para link padrão.';
        With dm.ds_sql10 do begin
          First;
          xlistcodmod.Clear;
          xlistcodmod.Add('0');
          lbcb3.clear;
          lbcb3.Items.Add('selecione o módulo auxiliar');
          While not Eof do begin
              if not dm.ds_sql6.Locate('cod_mds',fieldbyname('codigo').AsString,[]) then begin
                 lbcb3.Items.Add(fieldbyname('descricao').AsString);
                 xlistcodmod.Add(fieldbyname('codigo').AsString);
              end;
              if xcoddefault>0 then
              if (xcoddefault=fieldbyname('codigo').AsInteger) then begin
                 lbcb3.Items.Add(fieldbyname('descricao').AsString);
                 xlistcodmod.Add(fieldbyname('codigo').AsString);
              end;
              Next;
          end;
        end;
     end;
     if xcoddefault>0 then begin
        lbcb2.Text:=InttoStr(xcoddefault);
        atualizacodmod;
     end;
end;

procedure Tadm_skins.DBGrid1CellClick(Column: TColumn);
begin
      if not impmodule then atualiza_grade
      else impmodule:=false;
end;

procedure Tadm_skins.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_skins.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_skins.atualiza_grade;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            loadx.Progressloading.position:=30;
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lb_lbcp1.Caption:=lbcp1.Text;
            loadx.Progressloading.position:=50;
            montamodsons(lbcp1.Text);
            loadx.Progressloading.position:=60;
            montamodtpmn(lbcp1.Text);
            loadx.Progressloading.position:=70;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp3.Lines.Assign(fieldbyname('obs'));
            loadx.Progressloading.position:=80;
            chk_private.Checked:=StrToBool(fieldbyname('xconf1').AsString);
            if chk_private.Checked then
               lb_codent.Text:=fieldbyname('cod_ent').AsString;
         end;
         dm.ds_sql7.Filter:='cod_sk='+#39+lbcp1.Text+#39;
         dm.ds_sql6.Filter:='cod_sk='+#39+lbcp1.Text+#39;
         dm.ds_sql5.Filter:='cod_sk='+#39+lbcp1.Text+#39;
         montamenus(lbcp1.Text,'');
         loadx.Progressloading.position:=90;
         TabSheet2.TabVisible:=true;
         TabSheet3.TabVisible:=true;
         TabSheet4.TabVisible:=true;
         TabSheet6.TabVisible:=true;
         loadx.Progressloading.position:=100;
         atualiza_grade2;
         atualiza_grade3;
         atualiza_grade5;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      if not axshowing then loadx.Free;
end;

procedure Tadm_skins.atualiza_grade2;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql6.RecordCount <= 0 then begin
         addreg2;
      end else begin
         loadx.Progressloading.position:=50;
         if xlistcodmod.Count=0 then atualizamod(0);
         with dm.ds_sql6 do begin
            lbcb1.Text:= fieldbyname('codigo').AsString;
            if fieldbyname('cod_grp').AsInteger>0 then begin
               rb_mdl1.Checked:=true;
               atualizamod(fieldbyname('cod_grp').AsInteger);
            end else begin
               rb_mdl2.Checked:=true;
               atualizamod(fieldbyname('cod_mds').AsInteger);
            end;
            loadx.Progressloading.position:=70;
            lbcb4.Text:= fieldbyname('descricao').AsString;
            lbcb5.Text:= fieldbyname('pth').AsString;
            lbcb6.Text:=fieldbyname('img').AsString;
            pathpacote:= EnDecryptString(fieldbyname('pth2').AsString,2341);
            //atualizacodmod;
        end;
      end;
      loadx.Progressloading.position:=80;
      getLogo;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
end;

procedure Tadm_skins.atualiza_grade5;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql5.RecordCount <= 0 then begin
         addreg5;
      end else begin
         loadx.Progressloading.position:=50;
         with dm.ds_sql5 do begin
            lbcs1.Text:= fieldbyname('codigo').AsString;
            loadx.Progressloading.position:=70;
            lbcs2.Text:= fieldbyname('cod_mod').AsString;
            lbcs3.Text:= fieldbyname('sz').AsString;
            pathpacote5:= EnDecryptString(fieldbyname('pth').AsString,2341);
            //atualizacodmod;
        end;
      end;
      loadx.Progressloading.position:=80;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
end;

procedure Tadm_skins.atualiza_grade3;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end;
      loadx.Progressloading.position:=10;
      dm.ds_sql4.Close;
      dm.ds_sql4.Open;
      loadx.Progressloading.position:=50;
      if chk_detalhes.Checked then begin
         if dm.ds_sql4.RecordCount > 0 then re_area.Lines.Assign(dm.ds_sql4.fieldbyname('obs'))
         else re_area.Clear;
      end;
      loadx.Progressloading.position:=100;
      Lb_countreg_area.Caption:=InttoStr(dm.ds_sql7.RecordCount)+'/'+InttoStr(dm.ds_sql4.RecordCount);
      if not axshowing then loadx.Free;
end;

procedure Tadm_skins.atualiza_grade4;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql8.RecordCount <= 0 then begin
         addreg3;
      end else begin
         with dm.ds_sql8 do begin
              lbcd1.Text:=fieldbyname('codigo').AsString;
              lbcd2.Text:=fieldbyname('descricao').AsString;
              loadx.Progressloading.position:=50;
              lbcd3.Text:=fieldbyname('cod_sx').AsString;
              lbcd5.Text:=fieldbyname('cod_tpmn').AsString;
              montalng_menus(lbcd1.Text);
              loadx.Progressloading.position:=70;
         end;
      end;
      loadx.Progressloading.position:=100;
      Lb_countreg3.Caption:=InttoStr(dm.ds_sql8.RecordCount);
      if not axshowing then loadx.Free;
end;

procedure Tadm_skins.montalng_menus(axlbcd:string);
var xmnmenu,axcod: Integer;
    xmninc: Bool;
begin
     With dm.executa5 do begin
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

procedure Tadm_skins.atualiza_xmenumnt;
begin
     //monta menu
     xmn_montamenus_treeview;
     atualiza_nitens;
     xmn_text.Text:='';
     xmn_hint.Text:='';
     rb_item1.Checked:=true;
     xmn_modulos.ItemIndex:=-1;
end;

procedure Tadm_skins.getLogo;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(lbcb1.Text);
     Except
        axcodBlb:=0;
     End;
     xlogotmp.Clear;
     xmodtmp.Clear;
     With dm.executa6 do begin
        CommandText:='SELECT icon FROM '+EnDecryptString(Serverconect.vrf45,37249)+' WHERE codigo='+#39+IntToStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('icon')).SaveToStream(xlogotmp);
        end;
        xmodupdate:=false;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_skins.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Clear;
     chk_private.Checked:=false;
     dm.ds_sql7.Filter:='cod_sk='+#39+'0'+#39;
     dm.ds_sql6.Filter:='cod_sk='+#39+'0'+#39;
     dm.ds_sql5.Filter:='cod_sk='+#39+'0'+#39;
     montamenus('0','');
     montamodsons('0');
     montamodtpmn('0');
     TabSheet2.TabVisible:=false;
     TabSheet3.TabVisible:=false;
     TabSheet4.TabVisible:=false;
     TabSheet6.TabVisible:=false;
end;

procedure Tadm_skins.addreg2;
begin
     atualizamod(0);
     lbcb1.Text:='novo';
     lbcb2.Text:= '0';
     lbcb3.ItemIndex:=0;
     lbcb4.Text:= '';
     lbcb5.Text:= '';
     lbcb6.Text:= '0';
     xmodupdate:=false;
     pathpacote:='';
     getLogo;
end;

procedure Tadm_skins.addreg5;
begin
     lbcs1.Text:='novo';
     lbcs2.Text:= '0';
     lbcs3.Text:= '0';
     xmodupdate5:=false;
     pathpacote5:='';
end;

procedure Tadm_skins.addreg3;
var xmnmenu: Integer;
begin
     lbcd1.Text:='novo';
     lbcd2.Text:= '';
     lbcd3.Text:= '0';
     lbcd4.ItemIndex:=-1;
     lbcd5.Text:= '0';
     lbcd6.ItemIndex:=-1;
     montalng_menus('0');
     //menutmp.count:=0;
end;

procedure Tadm_skins.addreg4;
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

procedure Tadm_skins.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_skins.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_skins.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_skins.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_skins.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_skins.Left:= adm_skins.Left-(mv_mouse.x-x);
      adm_skins.Top:= adm_skins.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_skins.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_skins.Left := adm_skins.Left - (mv_mouse.x -x);
      adm_skins.Top := adm_skins.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_skins.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_skins.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_skins.bt_maximizaClick(Sender: TObject);
begin
    if adm_skins.WindowState=wsMaximized then adm_skins.WindowState:=wsNormal
    else adm_skins.WindowState:=wsMaximized;
end;

procedure Tadm_skins.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_skins.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_skins.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf41,37249),'codigo',lbcp1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Serverconect.vrf42,37249),'cod_sk',lbcp1.Text,false);
           dm.deleta_reg(EnDecryptString(Serverconect.vrf43,37249),'cod_sk',lbcp1.Text,false);
           dm.deleta_reg(EnDecryptString(Serverconect.vrf44,37249),'cod_sk',lbcp1.Text,false);
           dm.deleta_reg(EnDecryptString(Serverconect.vrf45,37249),'cod_sk',lbcp1.Text,false);
           dm.deleta_reg(EnDecryptString(Serverconect.vrf47,37249),'cod_sk',lbcp1.Text,false);
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           dm.ds_sql7.Close;
           dm.ds_sql7.Open;
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           dm.ds_sql6.Close;
           dm.ds_sql6.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_skins.bt_saveClick(Sender: TObject);
var axcod,size_mod: integer;
begin
     if chk_private.Checked then begin
        if (lb_codent.Text='') or (lb_descent.Text='') then begin
           hwsf.BtMensagem('Para tornar o módulo exclusivo é necessário selecionar uma entidade válida');
           lb_descent.SetFocus;
           lb_descent.SelectAll;
           exit;
        end;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     //insert or modify do cadatro principal
     loadx.Progressloading.position:=25;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf41,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf41,37249)+' (codigo,descricao,obs,cod_ent,xconf1) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].Assign(lbcp3.Lines);
            if chk_private.Checked then Params[3].AsInteger:=StrtoInt(lb_codent.Text)
            else Params[3].AsInteger:=0;
            Params[4].AsString:= BoolToStr(chk_private.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf41,37249)+' SET descricao=:p0,obs=:p1,cod_ent=:p2,xconf1=:p3 '+
                       'WHERE codigo=:p4';
            Params[0].AsString:=lbcp2.Text;
            Params[1].Assign(lbcp3.Lines);
            if chk_private.Checked then Params[2].AsInteger:=StrtoInt(lb_codent.Text)
            else Params[2].AsInteger:=0;
            Params[3].AsString:= BoolToStr(chk_private.Checked);
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
     loadx.Progressloading.position:=100;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     lb_lbcp1.Caption:=lbcp1.Text;
     dm.ds_sql7.Filter:='cod_sk='+#39+lbcp1.Text+#39;
     dm.ds_sql6.Filter:='cod_sk='+#39+lbcp1.Text+#39;
     dm.ds_sql5.Filter:='cod_sk='+#39+lbcp1.Text+#39;
     TabSheet2.TabVisible:=true;
     TabSheet3.TabVisible:=true;
     TabSheet4.TabVisible:=true;
     TabSheet6.TabVisible:=true;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     loadx.Free;
     atualiza_grade2;
     atualiza_grade3;
     atualiza_grade5;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_skins.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_skins.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_skins.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_skins.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tadm_skins.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_skins.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_skins.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_skins.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcb1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf45,37249),'codigo',lbcb1.Text,true) then begin
           dm.ds_sql6.Close;
           dm.ds_sql6.Open;
           atualiza_grade2;
           atualizamod(0);
        end;
    end;
end;

procedure Tadm_skins.bt_new2Click(Sender: TObject);
begin
    addreg2;
    lbcb2.SetFocus;
end;

procedure Tadm_skins.bt_save2Click(Sender: TObject);
var axcod,xindmod,xcodmod : integer;
    xexecutaimg: Boolean;
begin
     if lbcb4.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição');
        lbcb4.SetFocus;
        exit;
     end;
     if lbcb2.Text<>'' then begin
        xcodmod:=0;
        for xindmod:=1 to xlistcodmod.Count-1 do begin
            if xlistcodmod.Strings[xindmod] = lbcb2.Text then begin
               xcodmod:=xindmod;
               break;
            end;
        end;
     end else xcodmod:=0;
     if xcodmod=0 then begin
        hwsf.BtMensagem('É necessário selecionar o módulo');
        lbcb3.SetFocus;
        exit;
     end;
     if rb_mdl1.Checked then
     if lbcb5.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o link para o módulo na web');
        lbcb5.SetFocus;
        exit;
     end;
     if rb_mdl1.Checked then
     if ((lbcb1.Text = 'novo') and (not xmodupdate)) or
        (lbcb6.Text='0') then begin
        hwsf.BtMensagem('É necessário importar o módulo');
        bt_mdl1.Click;
        exit;
     end;
     if (StrToInt(lbcb6.Text)>700000) or
        ((rb_mdl2.Checked) and (StrToInt(lbcb6.Text)>0) and (StrToInt(lbcb6.Text)>700000)) then begin
        hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
        exit;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     if lbcb1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf45,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf45,37249)+' (codigo,cod_sk,cod_grp,cod_mds,descricao,pth,pth2,img) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=strtoint(lbcp1.Text);
            if rb_mdl1.Checked then begin
               Params[2].AsInteger:=strtoint(lbcb2.Text);
               Params[3].AsInteger:=0;
            end else begin
               Params[2].AsInteger:=0;
               Params[3].AsInteger:=strtoint(lbcb2.Text);
            end;
            Params[4].AsString:=lbcb4.Text;
            Params[5].AsString:=lbcb5.Text;
            Params[6].AsString:=EnDecryptString(pathpacote,2341);
            Params[7].AsInteger:=StrtoInt(lbcb6.Text);
        end;
     end else begin
        axcod:=StrtoInt(lbcb1.Text);
        with dm.executa do begin
            if not xmodupdate then begin
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+' SET  cod_grp=:p0,cod_mds=:p1,descricao=:p2,pth=:p3 '+
                          'WHERE codigo=:p4';
               Params[4].AsInteger:=axcod;
            end else begin
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+' SET  cod_grp=:p0,cod_mds=:p1,descricao=:p2,pth=:p3,pth2=:p4,img=:p5 '+
                          'WHERE codigo=:p6';
               Params[4].AsString:=EnDecryptString(pathpacote,2341);
               Params[5].AsInteger:=StrtoInt(lbcb6.Text);
               Params[6].AsInteger:=axcod;
            end;
            if rb_mdl1.Checked then begin
               Params[0].AsInteger:=strtoint(lbcb2.Text);
               Params[1].AsInteger:=0;
            end else begin
               Params[0].AsInteger:=0;
               Params[1].AsInteger:=strtoint(lbcb2.Text);
            end;
            Params[2].AsString:=lbcb4.Text;
            Params[3].AsString:=lbcb5.Text;
        end;
     end;
     try
          loadx.Progressloading.position:=50;
          dm.executa.Execute;
     except
          loadx.Free;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xmodupdate then begin
       xlogotmp.Seek(0,soFromBeginning);
       xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf45,37249),'UPDT','codigo','','icon','','','',IntToStr(axcod),xlogotmp,nil);
       if not xexecutaimg then begin
          hwsf.BtMensagem('Erro ao gravar dados binários.');
          exit;
       end;
       xmodtmp.Seek(0,soFromBeginning);
       xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf45,37249),'UPDT','codigo','','cnt','','','',IntToStr(axcod),xmodtmp,nil);
       if not xexecutaimg then begin
          hwsf.BtMensagem('Erro ao gravar dados binários.');
          exit;
       end;
     end;
     loadx.Progressloading.position:=100;
     xmodupdate:=false;
     lbcb1.Text:=InttoStr(axcod);
     loadx.Free;
     dm.ds_sql6.Close;
     dm.ds_sql6.Open;
     atualizamod(0);
     montamodulos;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_skins.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tadm_skins.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_skins.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tadm_skins.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql6.Prior;
    atualiza_grade2;
end;

procedure Tadm_skins.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql6.Next;
    atualiza_grade2;
end;

procedure Tadm_skins.bt_importClick(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        try
           xlogotmp.Clear;
           xlogotmp.LoadFromFile(OpenPictureDialog1.FileName);
           xmodupdate:=true;
        finally
           abretmplogo;
        end;
     end;
end;

procedure Tadm_skins.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       xmodupdate:=true;
       abretmplogo;
     Except End;
end;

procedure Tadm_skins.bt_mdl2Click(Sender: TObject);
begin
     if not FileExists(pathpacote) then begin
        if OpenDialog1.Execute then pathpacote:=OpenDialog1.FileName
        else pathpacote:='';
     end;
     if pathpacote <> '' then
     Case atualiza_pacote(StrToInt(lbcb1.Text),0,pathpacote,true) of
        0: begin
           hwsf.BtMensagem('Módulo atualizado com sucesso.');
           dm.ds_sql6.Close;
           dm.ds_sql6.Open;
           atualiza_grade2;
        end;
        1: hwsf.BtMensagem('Erro ao gravar os dados.');
        2: hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
     End;
end;

procedure Tadm_skins.update_forcarClick(Sender: TObject);
begin
      if update_forcar.Checked then update_forcar.Checked:=false
      else update_forcar.Checked:=true;
end;

procedure Tadm_skins.update_pathClick(Sender: TObject);
begin
      if update_path.Checked then update_path.Checked:=false
      else update_path.Checked:=true;
end;

procedure Tadm_skins.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    With DBGrid3 do begin
         if dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then begin
            Canvas.Brush.Color:= clGreen;
            Canvas.FillRect(Rect);
            Canvas.Font.Color:= clWhite;
         end;
         DefaultDrawDataCell(Rect, columns[datacol].field, State);
    End;
end;

procedure Tadm_skins.DBGrid3DblClick(Sender: TObject);
begin
      //marcar desmarcar módulo
      if not dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then begin
         marcarmodulo(dm.ds_sql4.fieldbyname('codigo').AsInteger);
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         dm.ds_sql7.Close;
         dm.ds_sql7.Open;
         atualiza_grade3;
      end else begin
         if dm.ds_sql4.RecordCount>0 then
         if dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then
         if dm.deleta_reg(EnDecryptString(Serverconect.vrf42,37249),'codigo',dm.ds_sql7.fieldbyname('codigo').AsString,false) then begin
            dm.ds_sql4.Close;
            dm.ds_sql4.Open;
            dm.ds_sql7.Close;
            dm.ds_sql7.Open;
            atualiza_grade3;
         end;
      end;
end;

procedure Tadm_skins.marcarmodulo(xcodarea:integer);
var axcod: Integer;
begin
      Try
           axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf42,37249),1);
           with dm.executa do begin
                CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf42,37249)+' (codigo,cod_sk,cod_ar) '+
                           'VALUES(:p0,:p1,:p2)';
                Params[0].AsInteger:=axcod;
                Params[1].AsInteger:=StrtoInt(lbcp1.Text);
                Params[2].AsInteger:=xcodarea;
                Execute;
           end;
      Except
      End;
      dm.ds_sql4.Close;
      dm.ds_sql4.Open;
      dm.ds_sql7.Close;
      dm.ds_sql7.Open;
end;

procedure Tadm_skins.bt_area6Click(Sender: TObject);
begin
      if dm.ds_sql4.RecordCount>0 then
      if dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then
      if dm.deleta_reg(EnDecryptString(Serverconect.vrf42,37249),'codigo',dm.ds_sql7.fieldbyname('codigo').AsString,false) then begin
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         dm.ds_sql7.Close;
         dm.ds_sql7.Open;
         atualiza_grade3;
      end;
end;

procedure Tadm_skins.bt_area4Click(Sender: TObject);
begin
      if dm.ds_sql4.RecordCount>0 then
      if hwsf.BtConfirma('Tem certeza que desejas desmarcar todos os itens?') then
      if dm.deleta_reg(EnDecryptString(Serverconect.vrf42,37249),'cod_sk',lbcp1.Text,false) then begin
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         dm.ds_sql7.Close;
         dm.ds_sql7.Open;
         atualiza_grade3;
      end;
end;

procedure Tadm_skins.bt_area3Click(Sender: TObject);
begin
    With dm.ds_sql4 do begin
         First;
         While not Eof do begin
             if not dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then
                marcarmodulo(fieldbyname('codigo').AsInteger);
             Next;
         end;
    end;
    dm.ds_sql4.Close;
    dm.ds_sql4.Open;
    dm.ds_sql7.Close;
    dm.ds_sql7.Open;
    atualiza_grade3;
end;

procedure Tadm_skins.bt_area5Click(Sender: TObject);
begin
      if not dm.ds_sql7.Locate('cod_ar',dm.ds_sql4.fieldbyname('codigo').AsString,[]) then begin
         marcarmodulo(dm.ds_sql4.fieldbyname('codigo').AsInteger);
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         dm.ds_sql7.Close;
         dm.ds_sql7.Open;
         atualiza_grade3;
      end;
end;

procedure Tadm_skins.bt_area1Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade3;
end;

procedure Tadm_skins.bt_area2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade3;
end;

procedure Tadm_skins.DBGrid3CellClick(Column: TColumn);
begin
      atualiza_grade3;
end;

procedure Tadm_skins.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_skins.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_skins.chk_detalhesClick(Sender: TObject);
begin
      if chk_detalhes.Checked then begin
         GroupBox_detalhes.Visible:=true;
         atualiza_grade3;
      end else GroupBox_detalhes.Visible:=false;
end;

procedure Tadm_skins.bt_mdl1Click(Sender: TObject);
var bconf : boolean;
begin
     if OpenDialog1.Execute then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Importando arquivo';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        try
           xmodtmp.LoadFromFile(OpenDialog1.FileName);
           xmodtmp.Seek(0,soFromBeginning);
           if xmodtmp.Size>700000 then begin
              xmodtmp.Clear;
              hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
           end else begin
              pathpacote:= OpenDialog1.FileName;
              xmodupdate:=true;
              impmodule:=true;
              lbcb6.Text:=InttoStr(xmodtmp.Size);
           end;
        finally
           loadx.Close;
        end;
        lbcb5.SetFocus;
     end;
end;

function Tadm_skins.atualiza_pacote(axcodpack,xsizefile: integer; pathdopacote: String; xforcar:boolean):Byte;
var MyIMGico : TJPEGImage;
    xmodtmp_ax : TMemoryStream;
    xexecutaimg: Boolean;
begin
     //atualização de pacotes
     try
           xmodtmp_ax := TMemoryStream.Create;
           xmodtmp_ax.LoadFromFile(pathdopacote);
     finally
     end;
     //modify do cadatro principal
     xmodtmp.Seek(0,soFromBeginning);
     if xmodtmp_ax.Size>700000 then begin
         xmodtmp_ax.Free;
         Result:=2;
         exit;
     end;
     if (not xforcar) and (xsizefile=xmodtmp_ax.Size) then begin
         xmodtmp_ax.Free;
         Result:=3;
         exit;
     end;
     with dm.executa do begin
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+' SET img=:p0,pth2=:p1 '+
                     'WHERE codigo=:p2';
          Params[0].AsInteger:=xmodtmp_ax.Size;
          Params[1].AsString:=EnDecryptString(pathdopacote,2341);
          Params[2].AsInteger:=axcodpack;
          try
              Execute;
          except
              xmodtmp_ax.Free;
              Result:=1;
              exit;
          end;
     end;
     xmodtmp_ax.Seek(0,soFromBeginning);
     xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Serverconect.vrf45,37249),'UPDT','codigo','','icon','','','',IntToStr(axcodpack),xmodtmp_ax,nil);
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados binários.');
        exit;
     end;
     xmodtmp_ax.Free;
     Result:=0;
end;

function Tadm_skins.atualiza_pacote5(axcodpack,xsizefile: integer; pathdopacote: String; xforcar:boolean):Byte;
var MyIMGico : TJPEGImage;
    xmodtmp_ax : TMemoryStream;
    xexecutaimg: Boolean;
begin
     //atualização de pacotes
     try
         xmodtmp_ax := TMemoryStream.Create;
         xmodtmp_ax.LoadFromFile(pathdopacote);
     finally
     end;
     //modify do cadatro principal
     xmodtmp5.Seek(0,soFromBeginning);
     if xmodtmp_ax.Size>700000 then begin
         xmodtmp_ax.Free;
         Result:=2;
         exit;
     end;
     if (not xforcar) and (xsizefile=xmodtmp_ax.Size) then begin
         xmodtmp_ax.Free;
         Result:=3;
         exit;
     end;
     with dm.executa do begin
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+'_ax SET pth=:p0 '+
                     'WHERE codigo=:p1';
          Params[0].AsString:=EnDecryptString(pathdopacote,2341);
          Params[1].AsInteger:=axcodpack;
          try
              Execute;
          except
              xmodtmp_ax.Free;
              Result:=1;
              exit;
          end;
     end;
     Application.ProcessMessages;
     xexecutaimg:=true;
     xmodtmp_ax.Seek(0,soFromBeginning);
     xexecutaimg:=dm.PostBinaryStreamPH(EnDecryptString(Serverconect.vrf45,37249)+'_ax','UPDT','cod_mod','','blb','','sz','',lbcs2.Text,xmodtmp_ax,nil);
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados binários.');
        Result:=1;
        exit;
     end;
     xmodtmp_ax.Free;
     Result:=0;
end;

procedure Tadm_skins.ComboSpeedButton1Click(Sender: TObject);
var x_error : TStringList;
    x_nomearq : String;
    xprogress,xarq_on,xarq_off,xarq_ok : integer;
    x_atualiza : byte;
begin
     xprogress:=0;
     xarq_on:=0;
     xarq_off:=0;
     xarq_ok:=0;
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
     With dm.ds_sql11 do begin
        if update_select.Checked then
           CommandText:= 'SELECT codigo,cod_sk,cod_grp,descricao,img,pth2 FROM '+EnDecryptString(Serverconect.vrf45,37249)+
                                 ' WHERE cod_sk='+#39+lbcp1.Text+#39+
                                 ' ORDER BY descricao'
        else
           CommandText:= 'SELECT codigo,cod_sk,cod_grp,descricao,img,pth2 FROM '+EnDecryptString(Serverconect.vrf45,37249)+
                                 ' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=false;
        loadx.Progressloading.Max:=RecordCount;
        First;
        While not Eof do begin
               Inc(xprogress);
               loadx.Progressloading.position:=xprogress;
               x_nomearq:=EnDecryptString(fieldbyname('pth2').AsString,2341);
               x_atualiza:=0;
               if not FileExists(x_nomearq) then begin
                  if update_path.Checked then begin
                     if OpenDialog1.Execute then x_nomearq:= OpenDialog1.FileName
                     else x_atualiza:=1;
                  end else x_atualiza:=1;
               end;
               Case x_atualiza of
                0: begin
                   loadx.lbloading.Caption:=fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString;
                   loadx.Repaint;
                   Case atualiza_pacote(fieldbyname('codigo').AsInteger,fieldbyname('img').AsInteger,x_nomearq,update_forcar.Checked) of
                      0: begin
                         x_error.Add('Válido: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+']  atualizado com sucesso.');
                         Inc(xarq_on);
                      end;
                      1: begin
                         x_error.Add('ERRO: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+'] - erro ao gravar os dados.');
                         x_error.Add(EnDecryptString(fieldbyname('pth2').AsString,2341));
                         Inc(xarq_off);
                      end;
                      2: begin
                         x_error.Add('ERRO: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+'] - tamanho do arquivo inválido [Limite=700kb]');
                         x_error.Add(EnDecryptString(fieldbyname('pth2').AsString,2341));
                         Inc(xarq_off);
                      end;
                      3: begin
                         x_error.Add('Ignorado: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+'] - está atualizado.');
                         x_error.Add(EnDecryptString(fieldbyname('pth2').AsString,2341));
                         Inc(xarq_ok);
                      end;
                   End;
                   x_error.Add(x_nomearq);
                end;
                1: begin
                  x_error.Add('ERRO: módulo ['+fieldbyname('codigo').AsString+' - '+fieldbyname('descricao').AsString+']  não localizado.');
                  x_error.Add(EnDecryptString(fieldbyname('pth2').AsString,2341));
                  Inc(xarq_off);
                end;
               End;
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
     x_error.Add('Total..................: '+FormatFloat('000',(xarq_on+xarq_off+xarq_ok)));
     dm.ds_sql6.Close;
     dm.ds_sql6.Open;
     atualiza_grade2;
     loadx.Progressloading2.Visible:=false;
     loadx.Free;
     hwsf.BtAviso(x_error);
     x_error.Free;
end;

procedure Tadm_skins.update_selectClick(Sender: TObject);
begin
      if update_select.Checked then update_select.Checked:=false
      else update_select.Checked:=true;
end;

procedure Tadm_skins.lbcb3Change(Sender: TObject);
begin
     if lbcb3.ItemIndex>0 then
        lbcb2.Text:=xlistcodmod.Strings[lbcb3.ItemIndex]
     else lbcb2.Text:='0';
end;

procedure Tadm_skins.lbcb2Change(Sender: TObject);
begin
     atualizacodmod;
end;

procedure Tadm_skins.atualizacodmod;
var xindmod,xcodmod:  Integer;
begin
     if lbcb2.Text<>'' then begin
        xcodmod:=0;
        for xindmod:=1 to xlistcodmod.Count-1 do begin
            if xlistcodmod.Strings[xindmod] = lbcb2.Text then begin
               xcodmod:=xindmod;
               break;
            end;
        end;
        lbcb3.ItemIndex:=xcodmod
     end else lbcb3.ItemIndex:=0;
end;

procedure Tadm_skins.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_skins.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp.Seek(0,soFromBeginning);
    if xlogotmp.Size <= 0 then begin
       swf_logo.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpbt.tmp';
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

procedure Tadm_skins.rb_mdl1Click(Sender: TObject);
begin
      atualizamod(0);
      lbcb2.Text:='0';
      lbcb3.ItemIndex:=0;
end;

procedure Tadm_skins.rb_mdl2Click(Sender: TObject);
begin
      atualizamod(0);
      lbcb2.Text:='0';
      lbcb3.ItemIndex:=0;
end;

procedure Tadm_skins.rb_item1Click(Sender: TObject);
begin
      xmn_modulos.Color:=$00F5F5F5;
      xmn_modulos.ItemIndex:=-1;
end;

procedure Tadm_skins.rb_item2Click(Sender: TObject);
begin
      xmn_modulos.Color:=clWindow;
end;

procedure Tadm_skins.bt_del3Click(Sender: TObject);
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

procedure Tadm_skins.bt_new3Click(Sender: TObject);
begin
    addreg3;
    lbcd2.SetFocus;
end;

procedure Tadm_skins.bt_next3Click(Sender: TObject);
begin
    dm.ds_sql8.Next;
    atualiza_grade4;
end;

procedure Tadm_skins.bt_prior3Click(Sender: TObject);
begin
    dm.ds_sql8.Prior;
    atualiza_grade4;
end;

procedure Tadm_skins.atualiza_nitens;
begin
     Lb_countreg4.Caption:=IntToStr(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count);
end;

procedure Tadm_skins.bt_new4Click(Sender: TObject);
begin
     if hwsf.BtConfirma('Restaurar menu?') then begin
        atualiza_grade4;
     end;
end;

procedure Tadm_skins.bt_del4Click(Sender: TObject);
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

procedure Tadm_skins.bt_it3Click(Sender: TObject);
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

procedure Tadm_skins.bt_it1Click(Sender: TObject);
begin
     addreg4;
     xmn_text.SetFocus;
end;

procedure Tadm_skins.Limpar1Click(Sender: TObject);
begin
    bt_del4.Click;
end;

procedure Tadm_skins.Editaritem1Click(Sender: TObject);
begin
      xmn_text.SetFocus;
      xmn_text.SelectAll;
end;

procedure Tadm_skins.Adicionarmenu1Click(Sender: TObject);
begin
      bt_it1.Click;
end;

procedure Tadm_skins.Removeritem1Click(Sender: TObject);
begin
      bt_it3.Click;
end;

procedure Tadm_skins.Moverparacima1Click(Sender: TObject);
begin
     retorna_TTreeView(PageControl_languagens.TabIndex).Selected.getFirstChild;
end;

procedure Tadm_skins.Moverparabaixo1Click(Sender: TObject);
begin
     retorna_TTreeView(PageControl_languagens.TabIndex).Selected.GetNext;
end;

procedure Tadm_skins.lbcd4Change(Sender: TObject);
begin
     if dm.ds_sql.Locate('descricao',lbcd4.Text,[]) then begin
        lbcd3.Text:=dm.ds_sql.fieldbyname('codigo').AsString;
     end else lbcd3.Text:='0';
end;

procedure Tadm_skins.lbcd6Change(Sender: TObject);
begin
     if dm.ds_sql2.Locate('descricao',lbcd6.Text,[]) then begin
        lbcd5.Text:=dm.ds_sql2.fieldbyname('codigo').AsString;
     end else lbcd5.Text:='0';
end;

procedure Tadm_skins.lbcd3Change(Sender: TObject);
begin
     if lbcd3.Text <> '' then begin
       if dm.ds_sql.Locate('codigo',lbcd3.Text,[]) then begin
          lbcd4.Text:=dm.ds_sql.fieldbyname('descricao').AsString;
       end else lbcd4.Text:='';
     end;
end;

procedure Tadm_skins.lbcd5Change(Sender: TObject);
begin
     if lbcd5.Text <> '' then begin
       if dm.ds_sql2.Locate('codigo',lbcd5.Text,[]) then begin
          lbcd6.Text:=dm.ds_sql2.fieldbyname('descricao').AsString;
       end else lbcd6.Text:='';
     end;
end;

procedure Tadm_skins.DBGrid4CellClick(Column: TColumn);
begin
     atualiza_grade4;
end;

procedure Tadm_skins.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tadm_skins.DBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tadm_skins.xmn_sx_bt2Click(Sender: TObject);
var axsx_desc,axsx_cod:string;
begin
     Application.CreateForm(Tadm_edsound, adm_edsound);
     if ((lbcd3.Text<>'') and (lbcd3.Text<>'0')) and (lbcd4.Text<>'') then begin
         axsx_desc:=lbcd4.Text;
         axsx_cod:=lbcd3.Text;
         adm_edsound.xcodigo:=StrToInt(axsx_cod);
     end;
     adm_edsound.xcod_sk:=StrToInt(lbcp1.Text);
     adm_edsound.xeditavel:=true;
     adm_edsound.ShowModal;
     montamodsons(lbcp1.Text);
     lbcd4.Text:=axsx_desc;
     lbcd3.Text:=axsx_cod;
end;

procedure Tadm_skins.montamodsons(xcodsk:string);
begin
     //combo sons
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf47,37249)+
                                ' WHERE cod_web='+#39+'0'+#39+' AND ((xconf1='+#39+'-1'+#39+') OR (cod_sk='+#39+xcodsk+#39+'))'+
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

procedure Tadm_skins.montamodtpmn(xcodsk:string);
begin
    //combo formatar texto menus
     With dm.ds_sql2 do begin
          if Active then close;
          CommandText:= 'SELECT codigo,descricao FROM '+EnDecryptString(Serverconect.vrf44,37249)+
                                ' WHERE cod_web='+#39+'0'+#39+' AND ((xconf1='+#39+'-1'+#39+') OR (cod_sk='+#39+xcodsk+#39+'))'+
                                ' ORDER BY descricao';
          Open;
          lbcd6.Clear;
          First;
          While not Eof do begin
             lbcd6.Items.Add(fieldbyname('descricao').AsString);
             Next;
          end;
          Filter:='';
          Filtered:=false;
     end;
end;

procedure Tadm_skins.xmn_tpmn_bt2Click(Sender: TObject);
var axsx_desc,axsx_cod:string;
begin
     Application.CreateForm(Tadm_edtpmn, adm_edtpmn);
     if ((lbcd5.Text<>'') and (lbcd5.Text<>'0')) and (lbcd6.Text<>'') then begin
         axsx_desc:=lbcd6.Text;
         axsx_cod:=lbcd5.Text;
         adm_edtpmn.xcodigo:=StrToInt(axsx_cod);
     end;
     adm_edtpmn.xcod_sk:=StrToInt(lbcp1.Text);
     adm_edtpmn.xeditavel:=true;
     adm_edtpmn.ShowModal;
     montamodtpmn(lbcp1.Text);
     lbcd6.Text:=axsx_desc;
     lbcd5.Text:=axsx_cod;
end;

procedure Tadm_skins.bt_it4Click(Sender: TObject);
begin
      IncMenu(0);
end;

procedure Tadm_skins.IncMenu(xtype_inc:byte);
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

procedure Tadm_skins.IncItemMenu(xidxmenu,x_codmod :Integer; xtype_inc,xtypemdl:byte; xtxtdesc,xtxthint: string);
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

procedure Tadm_skins.bt_it5Click(Sender: TObject);
begin
      IncMenu(1);
end;

procedure Tadm_skins.xmn_montamenus1Change(Sender: TObject;
  Node: TTreeNode);
begin
      xnoteselect:= Node;
      xnoteselect_index:= Node.AbsoluteIndex;
      xmn_montamenusEditar;
end;

procedure Tadm_skins.bt_it2Click(Sender: TObject);
begin
     retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text:=xmn_text.Text;
     xmn_montamenusDisable;
end;

procedure Tadm_skins.xmn_montamenus1Click(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_skins.xmn_montamenusEditar;
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

procedure Tadm_skins.xmn_montamenusDisable;
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

procedure Tadm_skins.xmn_modulosChange(Sender: TObject);
begin
     if rb_item1.Checked then xmn_modulos.ItemIndex:=-1; 
end;

procedure Tadm_skins.xmn_modulosExit(Sender: TObject);
begin
     if rb_item1.Checked then xmn_modulos.ItemIndex:=-1;
end;

procedure Tadm_skins.savemenu;
var axcod_sx,axcodtpmn,axcod: integer;
begin
     if lbcd2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição do menu');
        PageControl2.TabIndex:=3;
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
     loadx.Progressloading.position:=0;
     //insert or modify do cadatro principal
     loadx.Progressloading.position:=25;
     if lbcd1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf43,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf43,37249)+' (codigo,cod_sk,cod_web,cod_sx,cod_tpmn,descricao) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            Params[2].AsInteger:=0;
            Params[3].AsInteger:=axcod_sx;
            Params[4].AsInteger:=axcodtpmn;
            Params[5].AsString:=lbcd2.Text;
        end;
     end else begin
        axcod:=StrtoInt(lbcd1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf43,37249)+' SET cod_sx=:p0,cod_tpmn=:p1,descricao=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsInteger:=axcod_sx;
            Params[1].AsInteger:=axcodtpmn;
            Params[2].AsString:=lbcd2.Text;
            Params[3].AsInteger:=axcod;
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
     lb_lbcp1.Caption:=lbcp1.Text;
     loadx.Free;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_skins.bt_save3Click(Sender: TObject);
begin
      savemenu;
end;

procedure Tadm_skins.bt_save4Click(Sender: TObject);
begin
      savemenu;
end;

function Tadm_skins.xmn_montamenus_str:Boolean;
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

function Tadm_skins.preenchezeros(xcodnum,xquantzeros: Integer):string;
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

function Tadm_skins.xmn_montamenus_treeview:Boolean;
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

function Tadm_skins.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

function Tadm_skins.retorna_TTreeView(xidxcod:Integer):TTreeView;
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

function Tadm_skins.update_itensmenus(xcod_men:Integer):Boolean;
var xmnmenu,axcod: Integer;
    xerror: Bool;
begin
      xerror:=true;
      xmn_montamenus_str;
      for xmnmenu:=0 to menutmp.count-1 do begin
          if dm.executa5.Locate('cod_lng',menutmp.cod_lng[xmnmenu],[]) then begin
             axcod:=dm.executa5.fieldbyname('codigo').AsInteger;
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

procedure Tadm_skins.chk_vincularClick(Sender: TObject);
begin
      if chk_vincular.Checked then begin
         chk_traduzir.Checked:=true;
         chk_traduzir.Enabled:=true;
      end else begin
         chk_traduzir.Checked:=false;
         chk_traduzir.Enabled:=false;
      end;
end;

function Tadm_skins.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tadm_skins.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

procedure Tadm_skins.PageControl_languagensChange(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_skins.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tadm_skins.chk_privateClick(Sender: TObject);
begin
      setPrivate(chk_private.Checked);
end;

procedure Tadm_skins.setPrivate(xstatprivate:boolean);
begin
      if not xstatprivate then begin
         lb_codent.Enabled:=True;
         lb_descent.Enabled:=True;
         lb_codent.Text:='';
         lb_descent.ItemIndex:=-1;
      end;
      lb_codent.Enabled:=xstatprivate;
      lb_descent.Enabled:=xstatprivate;
      lb_descentlb.Enabled:=xstatprivate;
      bt_detail1.Enabled:=xstatprivate;
end;

procedure Tadm_skins.lb_codentChange(Sender: TObject);
begin
     if lb_codent.Text <> '' then
     if dm.executa4.Locate('codigo',lb_codent.Text,[]) then begin
        lb_descent.Text:=dm.executa4.fieldbyname('razao_social').AsString;
     end else lb_descent.Text:='';
end;

procedure Tadm_skins.lb_descentChange(Sender: TObject);
begin
     if dm.executa4.Locate('razao_social',lb_descent.Text,[]) then begin
        lb_codent.Text:=dm.executa4.fieldbyname('codigo').AsString;
     end else lb_codent.Text:='';
end;

procedure Tadm_skins.bt_detail1Click(Sender: TObject);
begin
     detail_entidades(lb_codent);
end;

procedure Tadm_skins.detail_entidades(axvar_cod:TLabeledEdit);
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

procedure Tadm_skins.DBGrid5CellClick(Column: TColumn);
begin
     atualiza_grade5;
end;

procedure Tadm_skins.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade5;
end;

procedure Tadm_skins.DBGrid5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade5;
end;

procedure Tadm_skins.bt_mdl3Click(Sender: TObject);
var bconf : boolean;
begin
     if OpenDialog1.Execute then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Importando arquivo';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        try
           xmodtmp5.LoadFromFile(OpenDialog1.FileName);
           xmodtmp5.Seek(0,soFromBeginning);
           if xmodtmp5.Size>700000 then begin
              xmodtmp5.Clear;
              hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
           end else begin
              pathpacote5:= OpenDialog1.FileName;
              xmodupdate5:=true;
              impmodule5:=true;
              lbcs3.Text:=InttoStr(xmodtmp5.Size);
           end;
        finally
           loadx.Close;
        end;
        lbcs3.SetFocus;
     end;
end;

procedure Tadm_skins.bt_mdl4Click(Sender: TObject);
begin
     if not FileExists(pathpacote5) then begin
        if OpenDialog1.Execute then pathpacote5:=OpenDialog1.FileName
        else pathpacote:='';
     end;
     if pathpacote5 <> '' then
     Case atualiza_pacote5(StrToInt(lbcs1.Text),0,pathpacote5,true) of
        0: begin
           hwsf.BtMensagem('Módulo atualizado com sucesso.');
           dm.ds_sql6.Close;
           dm.ds_sql6.Open;
           atualiza_grade2;
        end;
        1: hwsf.BtMensagem('Erro ao gravar os dados.');
        2: hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
     End;
end;

procedure Tadm_skins.bt_prior5Click(Sender: TObject);
begin
    dm.ds_sql5.Prior;
    atualiza_grade5;
end;

procedure Tadm_skins.bt_next5Click(Sender: TObject);
begin
    dm.ds_sql5.Next;
    atualiza_grade5;
end;

procedure Tadm_skins.bt_new5Click(Sender: TObject);
begin
    addreg5;
    lbcs2.SetFocus;
end;

procedure Tadm_skins.bt_del5Click(Sender: TObject);
begin
    if (dm.ds_sql5.RecordCount>0) and (lbcs1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf45,37249)+'_ax','codigo',lbcs1.Text,true) then begin
           dm.RemoveBinaryStreamPH(EnDecryptString(Serverconect.vrf45,37249)+'_ax','codigo','blb','',lbcs1.Text);
           dm.ds_sql5.Close;
           dm.ds_sql5.Open;
           atualiza_grade5;
        end;
    end;
end;

procedure Tadm_skins.bt_save5Click(Sender: TObject);
var axcod,xindmod,xcodmod : integer;
    xexecutaimg: Boolean;
begin
     if (lbcs2.Text='') or (lbcs2.Text='0') then begin
        hwsf.BtMensagem('É necessário digitar o código do módulo');
        lbcs2.SetFocus;
        exit;
     end;
     if ((lbcs1.Text = 'novo') and (not xmodupdate5)) or
        (lbcs3.Text='0') then begin
        hwsf.BtMensagem('É necessário importar o módulo');
        bt_mdl3.Click;
        exit;
     end;
     if (StrToInt(lbcs3.Text)>700000) then begin
        hwsf.BtMensagem('Tamanho do arquivo inválido [Limite=700kb]');
        exit;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     if lbcs1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf45,37249)+'_ax',1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf45,37249)+'_ax (codigo,cod_sk,cod_mod,pth) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=strtoint(lbcp1.Text);
            Params[2].AsInteger:=strtoint(lbcs2.Text);
            Params[3].AsString:=EnDecryptString(pathpacote5,2341);
        end;
     end else begin
        axcod:=StrtoInt(lbcs1.Text);
        with dm.executa do begin
            if not xmodupdate5 then begin
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+'_ax SET  cod_mod=:p0 '+
                          'WHERE codigo=:p1';
               Params[1].AsInteger:=axcod;
            end else begin
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf45,37249)+'_ax SET  cod_mod=:p0,pth=:p1 '+
                          'WHERE codigo=:p2';
               Params[1].AsString:=EnDecryptString(pathpacote5,2341);
               Params[2].AsInteger:=axcod;
            end;
            Params[0].AsInteger:=strtoint(lbcs2.Text);
        end;
     end;
     try
          loadx.Progressloading.position:=50;
          dm.executa.Execute;
     except
          loadx.Free;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xmodupdate5 then begin
       xmodtmp5.Seek(0,soFromBeginning);
       xexecutaimg:=dm.PostBinaryStreamPH(EnDecryptString(Serverconect.vrf45,37249)+'_ax','UPDT','cod_mod','','blb','','sz','',lbcs2.Text,xmodtmp5,nil);
       if not xexecutaimg then begin
          hwsf.BtMensagem('Erro ao gravar dados binários.');
          exit;
       end;
     end;
     loadx.Progressloading.position:=100;
     xmodupdate5:=false;
     lbcs1.Text:=InttoStr(axcod);
     loadx.Free;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_skins.Button1Click(Sender: TObject);
var xfiljpg : String;
    xImagem_tmp : TMemoryStream;
begin
      if ExportarImgDialog.Execute then begin
         xfiljpg := ExportarImgDialog.FileName;
         xImagem_tmp := TMemoryStream.Create;
         xImagem_tmp.Clear;
         xImagem_tmp.Position:=0;
         xImagem_tmp := dm.GetBinaryStreamPH(EnDecryptString(Serverconect.vrf45,37249)+'_ax','cod_mod','blb',lbcs2.Text);
         xImagem_tmp.Seek(0,soFromBeginning);
         xImagem_tmp.SaveToFile(xfiljpg);
         xImagem_tmp.Free;
      end;
end;

end.
