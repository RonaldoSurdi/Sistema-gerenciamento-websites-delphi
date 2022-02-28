{###############################################################################
Programa: HWSwebServer
Módulo: Configurações do sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uconfig;                               

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, yupack, Buttons, StdCtrls, ExtCtrls, Messages, Grids, ComCtrls,
  ToolWin, XPMan, Registry;

type
  TControlcnfg = record
    vrf00: Integer;     //codigo
    vrf01: Boolean;     //iniciar com o windows
    vrf02: Boolean;     //conectar automaticamento no login
    vrf16: String[100]; //usuario login sistema
    vrf17: String[100]; //senha login sistema
    vrf38: Boolean;     //atualizações automáticas
    vrf39: Boolean;     //bloquear ao minimizar
    vrf40: Integer;     //bloquear após x segundos 0 is null
    vrf54: String[100];     //HD Number
    vrf94: String[100];     //ip fixo para conexão
    vrf95: String[100];     //cod para local
  End;
  TServerconectControl = record
    vrf00: Integer;     //codigo
    vrf03: Boolean;     //Utilizar criptografia de mensagens
    vrf04: Boolean;     //Utilizar chave publica
    vrf05: Boolean;     //Utilizar chave simetrica
    vrf06: String[100]; //usário chave simetrica
    vrf07: String[100]; //senha chave simetrica
    vrf08: String[250];    //chave publica
    vrf18: Boolean;     //utilizar login na inicialização do sistema
    vrf19: String[100]; //tabela usuários
    vrf20: String[100]; //tabela tabelas [0]
    vrf21: String[100]; //tabela tabelas.campos [0]
    vrf22: String[100]; //tabela logs
    vrf23: String[100]; //tabela contador
    vrf24: String[100]; //tabela módulos
    vrf25: String[100]; //tabela módulos tabelas
    vrf26: String[100]; //tabela entidades
    vrf27: String[100]; //tabela cidades
    vrf28: String[100]; //tabela estados
    vrf29: String[100]; //tabela websites
    vrf30: String[100]; //tabela logomarcas
    vrf31: String[100]; //tabela área de atuação
    vrf32: String[100]; //tabela módulos autorizados para website/entidade
    vrf33: String[100]; //tabela módulos autorizados para o cliente
    vrf34: String[100]; //tabela colaboradores
    vrf35: String[100]; //tabela setores colaboradores
    vrf36: String[100]; //tabela funções colaboradores
    vrf37: String[100]; //tabela menus
    vrf41: String[100];     //skins
    vrf42: String[100];     //skins - areas de atuacao
    vrf43: String[100];     //skins - personalização para websites - menus
    vrf44: String[100];     //skins - personalização para websites - formatação menu
    vrf45: String[100];     //skins - módulos web referentes aos módulos do skin web
    vrf46: String[100];     //skins - módulos web auxiliares sem administrador
    vrf47: String[100];     //skins - módulos web sons para menus
    vrf48: String[100];     //Languagens
    vrf49: String[100];     //Languagens websites
    vrf50: String[100];     //Languagens menus
    vrf51: String[100];     //Contatdor de acessos on-line Websites
    vrf52: String[100];     //Usuários on-line Websites
    vrf53: String[100];     //Cadastro moedas
  End;
  THelpSysControl = record
    vrf00: Integer;     //codigo
    vrf01: String[100]; //tabela menu
    vrf02: String[100]; //tabela itens
    vrf03: String[100]; //tabela imagens
    vrf04: String[100]; //tabela binary img
  End;
  FileServerconectControl = file of TServerconectControl;
  FileHelpSysControl = file of THelpSysControl;
  Tfconfig = class(TForm)
    pn_status: TPanel;
    Image4: TImage;
    Label12: TLabel;
    pn_tit: TPanel;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    YuSoftLabel5: TYuSoftLabel;
    gbxCabecalho: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    TabSheet4: TTabSheet;
    CheckBox5: TCheckBox;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    biSystemMenu: TImage;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PgCtrl_Conection: TPageControl;
    TabSheet7: TTabSheet;
    group_servera: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    cb_A_save: TCheckBox;
    TabSheet8: TTabSheet;
    group_serverb: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    ComboBox3: TComboBox;
    cb_B_save: TCheckBox;
    Label7: TLabel;
    Edit9: TEdit;
    Edit12: TEdit;
    Label11: TLabel;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    Label13: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Editcontador: TEdit;
    Edit30: TEdit;
    Label20: TLabel;
    Label19: TLabel;
    Edit29: TEdit;
    Edit28: TEdit;
    Label18: TLabel;
    Label17: TLabel;
    Edit14: TEdit;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    bt_default: TSpeedButton;
    bt_gravar: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    TabSheet12: TTabSheet;
    ScrollBox1: TScrollBox;
    Label32: TLabel;
    Edit25: TEdit;
    Edit26: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    Edit27: TEdit;
    Edit31: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Edit32: TEdit;
    Edit33: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Edit34: TEdit;
    Edit35: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Edit36: TEdit;
    Edit37: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Edit38: TEdit;
    Edit39: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Edit40: TEdit;
    Label45: TLabel;
    Edit41: TEdit;
    Label46: TLabel;
    Edit42: TEdit;
    Edit43: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    Edit44: TEdit;
    Edit45: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    Edit46: TEdit;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    Edit47: TEdit;
    UpDown1: TUpDown;
    Label51: TLabel;
    Label52: TLabel;
    ScrollBox2: TScrollBox;
    Edit48: TEdit;
    Edit24: TEdit;
    Edit23: TEdit;
    Edit22: TEdit;
    Edit21: TEdit;
    Edit20: TEdit;
    Edit15: TEdit;
    Edit13: TEdit;
    Label16: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Edit49: TEdit;
    Edit50: TEdit;
    Label55: TLabel;
    Edit51: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Edit53: TEdit;
    Edit52: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    Edit54: TEdit;
    XPManifest1: TXPManifest;
    Label60: TLabel;
    Edit55: TEdit;
    Label61: TLabel;
    Edit56: TEdit;
    Label62: TLabel;
    Edit57: TEdit;
    Label63: TLabel;
    Edit58: TEdit;
    Label64: TLabel;
    Edit59: TEdit;
    TabSheet13: TTabSheet;
    PageControl4: TPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    ScrollBox3: TScrollBox;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit60: TEdit;
    Label69: TLabel;
    Label70: TLabel;
    Edit61: TEdit;
    Edit62: TEdit;
    Label71: TLabel;
    Label72: TLabel;
    Edit63: TEdit;
    Edit68: TEdit;
    Label73: TLabel;
    Label74: TLabel;
    Edit69: TEdit;
    Label75: TLabel;
    Edit70: TEdit;
    RichEdit1: TRichEdit;
    TabSheet16: TTabSheet;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox3: TGroupBox;
    Edit71: TEdit;
    Edit72: TEdit;
    Label76: TLabel;
    Label77: TLabel;
    GroupBox4: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Edit73: TEdit;
    Edit74: TEdit;
    ToolBar2: TToolBar;
    bt_exportar: TSpeedButton;
    ToolBar3: TToolBar;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_defaultClick(Sender: TObject);
    procedure bt_exportarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Edit47Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
  private
    axchvpb:string[255];
    procedure carregaconfig;
    function Savewinsysreg:boolean;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  fconfig: Tfconfig;
  Controlcnfg: TControlcnfg;
  ServerconectControl: TServerconectControl;
  regServerconectControl: FileServerconectControl;
  HelpSysControl: THelpSysControl;
  regHelpSysControl: FileHelpSysControl;


implementation
uses udm, hwsfunctions, SqlExpr, DB, DBClient;
{$R *.dfm}

procedure Tfconfig.carregaconfig;
begin
      With Servercnfg do begin
          CheckBox1.Checked:=vrf01;     //iniciar com o windows
          CheckBox2.Checked:=vrf02;     //conectar automaticamento no login
          Edit7.Text:=EnDecryptString(vrf16,37249); //usuario login sistema
          Edit8.Text:=EnDecryptString(vrf17,37249); //senha login sistema
          CheckBox3.Checked:=vrf38;
          CheckBox4.Checked:=vrf39;
          UpDown1.Position:=vrf40;
      end;
      With Serverconect do begin
          CheckBox6.Checked:=vrf03;     //Utilizar criptografia de mensagens
          CheckBox8.Checked:=vrf04;     //Utilizar chave publica
          CheckBox9.Checked:=vrf05;     //Utilizar chave simetrica
          Edit5.Text:=EnDecryptString(vrf06,37249); //usário chave simetrica
          Edit6.Text:=EnDecryptString(vrf07,37249); //senha chave simetrica
          axchvpb:=EnDecryptString(vrf08,37249); //chave publica
          //conectClient
          ComboBox1.ItemIndex:=vrf09[0];        //tipo conexão
          Edit1.Text:=EnDecryptString(vrf10[0],37249); //servidor
          Edit2.Text:=EnDecryptString(vrf11[0],37249); //database
          Edit3.Text:=EnDecryptString(vrf12[0],37249); //usuario
          if vrf14[0] then Edit4.Text:=EnDecryptString(vrf13[0],37249)
          else Edit4.Text:= 'killalllammers'; //senha
          cb_A_save.Checked:=vrf14[0];     //Salvar senha
          Edit9.Text:=EnDecryptString(vrf15[0],12527); //path Library database
          Edit14.Text:=EnDecryptString(vrf19[0],37249); //tabela usuários
          Edit28.Text:=EnDecryptString(vrf22[0],37249); //tabela logs
          //conectServer
          ComboBox3.ItemIndex:=vrf09[1];        //tipo conexão
          Edit16.Text:=EnDecryptString(vrf10[1],37249); //servidor
          Edit17.Text:=EnDecryptString(vrf11[1],37249); //database
          Edit18.Text:=EnDecryptString(vrf12[1],37249); //usuario
          if vrf14[1] then Edit19.Text:=EnDecryptString(vrf13[1],37249)
          else Edit19.Text:= 'killalllammers'; //senha
          cb_B_save.Checked:=vrf14[1];     //Salvar senha
          Edit12.Text:=EnDecryptString(vrf15[1],12527); //path Library database
          Edit10.Text:=EnDecryptString(vrf19[1],37249); //tabela usuários
          Edit11.Text:=EnDecryptString(vrf22[1],37249); //tabela logs
          //outros
          CheckBox5.Checked:=vrf18;     //utilizar login na inicialização do sistema
          Edit29.Text:=EnDecryptString(vrf20,37249); //tabela tabelas [0]
          Edit30.Text:=EnDecryptString(vrf21,37249); //tabela tabelas.campos [0]
          Editcontador.Text:=EnDecryptString(vrf23,37249); //tabela tabelas.campos [0]
          Edit25.Text:=EnDecryptString(vrf24[0],37249); //tabela módulos
          Edit43.Text:=EnDecryptString(vrf24[1],37249); //tabela módulos
          Edit26.Text:=EnDecryptString(vrf25[0],37249); //tabela módulos tabelas
          Edit42.Text:=EnDecryptString(vrf25[1],37249); //tabela módulos tabelas
          Edit27.Text:=EnDecryptString(vrf26,37249); //tabela entidades
          Edit33.Text:=EnDecryptString(vrf27,37249); //tabela cidades
          Edit34.Text:=EnDecryptString(vrf28,37249); //tabela estados
          Edit31.Text:=EnDecryptString(vrf29,37249); //tabela web
          Edit37.Text:=EnDecryptString(vrf30,37249); //tabela logos
          Edit32.Text:=EnDecryptString(vrf31,37249); //tabela area atuação
          Edit36.Text:=EnDecryptString(vrf32[0],37249); //tabela modulos autorizados website
          Edit46.Text:=EnDecryptString(vrf32[1],37249); //tabela modulos autorizados website
          Edit35.Text:=EnDecryptString(vrf33[0],37249); //tabela modulos autorizados client
          Edit44.Text:=EnDecryptString(vrf33[1],37249); //tabela modulos autorizados client
          Edit40.Text:=EnDecryptString(vrf34,37249); //tabela colaboradores
          Edit39.Text:=EnDecryptString(vrf35,37249); //tabela setores
          Edit38.Text:=EnDecryptString(vrf36,37249); //tabela funções
          Edit41.Text:=EnDecryptString(vrf37[0],37249); //tabela funções cli
          Edit45.Text:=EnDecryptString(vrf37[1],37249); //tabela funções adm
          Edit50.Text:=EnDecryptString(vrf41,37249); //skins
          Edit51.Text:=EnDecryptString(vrf42,37249); //skins
          Edit52.Text:=EnDecryptString(vrf43,37249); //skins
          Edit53.Text:=EnDecryptString(vrf44,37249); //skins
          Edit54.Text:=EnDecryptString(vrf45,37249); //skins
          Edit55.Text:=EnDecryptString(vrf46,37249); //skins
          Edit56.Text:=EnDecryptString(vrf47,37249); //skins
          Edit57.Text:=EnDecryptString(vrf48,37249); //skins
          Edit58.Text:=EnDecryptString(vrf49,37249); //skins
          Edit59.Text:=EnDecryptString(vrf50,37249); //skins
          Edit68.Text:=EnDecryptString(vrf51,37249); //skins
          Edit69.Text:=EnDecryptString(vrf52,37249); //skins
          Edit70.Text:=EnDecryptString(vrf53,37249); //skins
      end;
      With Helpdesk do begin
          Edit13.Text:=EnDecryptString(vrf01,37249);
          Edit15.Text:=EnDecryptString(vrf02,37249);
          Edit20.Text:=EnDecryptString(vrf03,37249);
          Edit21.Text:=EnDecryptString(vrf04,37249);
          Edit22.Text:=EnDecryptString(vrf05,37249);
          Edit23.Text:=EnDecryptString(vrf06,37249);
          Edit24.Text:=EnDecryptString(vrf07,37249);
          Edit48.Text:=EnDecryptString(vrf08,37249);
          Edit49.Text:=EnDecryptString(vrf09,37249);
      end;
      With HelpSys do begin
          Edit67.Text:=EnDecryptString(vrf01[0],37249);
          Edit66.Text:=EnDecryptString(vrf02[0],37249);
          Edit65.Text:=EnDecryptString(vrf03[0],37249);
          Edit64.Text:=EnDecryptString(vrf04[0],37249);
          Edit60.Text:=EnDecryptString(vrf01[1],37249);
          Edit61.Text:=EnDecryptString(vrf02[1],37249);
          Edit62.Text:=EnDecryptString(vrf03[1],37249);
          Edit63.Text:=EnDecryptString(vrf04[1],37249);
      end;
end;

procedure Tfconfig.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

procedure Tfconfig.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(fconfig.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tfconfig.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      fconfig.Left:= fconfig.Left-(mv_mouse.x-x);
      fconfig.Top:= fconfig.Top - (mv_mouse.y-y);
  end;
end;

procedure Tfconfig.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      fconfig.Left := fconfig.Left - (mv_mouse.x -x);
      fconfig.Top := fconfig.Top - (mv_mouse.y - y);
  end;
end;

procedure Tfconfig.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(fconfig.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tfconfig.FormCreate(Sender: TObject);
var xcombobox : TStringList;
    axshowing: Boolean;
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
      //TabSheet2.TabVisible:=false;
      //TabSheet3.TabVisible:=false;
      //TabSheet16.TabVisible:=false;
      loadx.Progressloading.position:=10;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      Image4.Picture.Bitmap:= GetImg(1);
      //DoubleBuffered:=True;
      //Brush.Style := BsClear;
      xcombobox:= TStringList.Create;
      xcombobox.Clear;
      loadx.Progressloading.position:=50;
      xcombobox.Add('DB2Connection');
      xcombobox.Add('IBConnection');
      xcombobox.Add('InformixConnection');
      xcombobox.Add('MSSQLConnection');
      xcombobox.Add('MySQLConnection');
      xcombobox.Add('OracleConnection');
      ComboBox1.Items:=xcombobox;
      ComboBox3.Items:=xcombobox;
      xcombobox.Free;
      carregaconfig;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
end;

procedure Tfconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure Tfconfig.bt_defaultClick(Sender: TObject);
begin
    //dm.setconfigdefault;
    carregaconfig;
end;

procedure Tfconfig.bt_exportarClick(Sender: TObject);
var xfilestr : TMemoryStream;
    axidstr : Integer;
    Reg: TRegistry;
    xnamedat: string;
    xexecutaimg: Boolean;
begin
    //conectando com servidor
    With Serverconect do begin
       if not dm.conecta_bases(0,vrf09[0],EnDecryptString(vrf10[0],37249),
                               EnDecryptString(vrf11[0],37249),EnDecryptString(vrf12[0],37249),
                               EnDecryptString(vrf13[0],37249),EnDecryptString(vrf15[0],12527)) then begin
          hwsf.BtMensagem('Erro ao tentar conectar com base Client.');
          exit;
       end;
    end;
    //HWScontrol
    with ServerconectControl do begin
       vrf00:= Serverconect.vrf00;
       vrf03:= Serverconect.vrf03;
       vrf04:= Serverconect.vrf04;
       vrf05:= Serverconect.vrf05;
       vrf06:= Serverconect.vrf06;
       vrf07:= Serverconect.vrf07;
       vrf08:= Serverconect.vrf08;
       vrf18:= Serverconect.vrf18;
       vrf19:= Serverconect.vrf19[0];
       vrf20:= Serverconect.vrf20;
       vrf21:= Serverconect.vrf21;
       vrf22:= Serverconect.vrf22[0];
       vrf23:= Serverconect.vrf23;
       vrf24:= Serverconect.vrf24[0];
       vrf25:= Serverconect.vrf25[0];
       vrf26:= Serverconect.vrf26;
       vrf27:= Serverconect.vrf27;
       vrf28:= Serverconect.vrf28;
       vrf29:= Serverconect.vrf29;
       vrf30:= Serverconect.vrf30;
       vrf31:= Serverconect.vrf31;
       vrf32:= Serverconect.vrf32[0];
       vrf33:= Serverconect.vrf33[0];
       vrf34:= Serverconect.vrf34;
       vrf35:= Serverconect.vrf35;
       vrf36:= Serverconect.vrf36;
       vrf37:= Serverconect.vrf37[0];
       vrf41:= Serverconect.vrf41;
       vrf42:= Serverconect.vrf42;
       vrf43:= Serverconect.vrf43;
       vrf44:= Serverconect.vrf44;
       vrf45:= Serverconect.vrf45;                                       
       vrf46:= Serverconect.vrf46;
       vrf47:= Serverconect.vrf47;
       vrf48:= Serverconect.vrf48;
       vrf49:= Serverconect.vrf49;
       vrf50:= Serverconect.vrf50;
       vrf51:= Serverconect.vrf51;
       vrf52:= Serverconect.vrf52;
       vrf53:= Serverconect.vrf53;
    end;
    xnamedat:='HWScontrol001.hws';
    AssignFile(regServerconectControl,xnamedat);
    Rewrite(regServerconectControl);
    Seek(regServerconectControl,0);
    write(regServerconectControl,ServerconectControl);
    CloseFile(regServerconectControl);
    //SUPORTE TÉCNICO
    xnamedat:='HWScontrol002.hws';
    AssignFile(regHelpdesk,xnamedat);
    Rewrite(regHelpdesk);
    Seek(regHelpdesk,0);
    write(regHelpdesk,Helpdesk);
    CloseFile(regHelpdesk);
    //AJUDAS
    xnamedat:='HWScontrol003.hws';
    AssignFile(regHelpSys,xnamedat);
    Rewrite(regHelpSys);
    Seek(regHelpSys,0);
    write(regHelpSys,HelpSys);
    CloseFile(regHelpSys);
    //HWSWEBSERVER
    xnamedat:='HWScontrol004.hws';
    AssignFile(regServerconect,xnamedat);
    Rewrite(regServerconect);
    Seek(regServerconect,0);
    write(regServerconect,Serverconect);
    CloseFile(regServerconect);
    //AJUDAS HWSCONTROL
    With HelpSysControl do begin
      vrf00:= HelpSys.vrf00;
      vrf01:= HelpSys.vrf01[0];
      vrf02:= HelpSys.vrf02[0];
      vrf03:= HelpSys.vrf03[0];
      vrf04:= HelpSys.vrf04[0];
    end;
    xnamedat:='HWScontrol005.hws';
    AssignFile(regHelpSysControl,xnamedat);
    Rewrite(regHelpSysControl);
    Seek(regHelpSysControl,0);
    write(regHelpSysControl,HelpSysControl);
    CloseFile(regHelpSysControl);

    //exportando para bases
    xfilestr:= TMemoryStream.Create;
    Try
       if dm.ds_sql.Active then dm.ds_sql.Close;
       dm.ds_sql.CommandText:= 'SELECT codigo,cp1 FROM m0_fky961 ORDER BY codigo';
       dm.ds_sql.Open;
       for axidstr:=1 to 5 do begin
          xfilestr.Clear;
          xfilestr.Seek(0,soFromBeginning);
          xfilestr.LoadFromFile('HWScontrol00'+IntToStr(axidstr)+'.hws');
          xnamedat:='HWScontrol00'+IntToStr(axidstr)+'.hws';
          xfilestr.Seek(0,soFromBeginning);
          xfilestr:=EnDecryptStream(xfilestr,16857);
          xfilestr.Seek(0,soFromBeginning);
          if not dm.ds_sql.Locate('codigo',axidstr,[]) then begin
             xexecutaimg:=dm.PostBinaryStream('m0_fky961','INST','codigo','','cp1','','','',IntToStr(axidstr),xfilestr,nil);
          end else begin
             xexecutaimg:=dm.PostBinaryStream('m0_fky961','UPDT','codigo','','cp1','','','',IntToStr(axidstr),xfilestr,nil);
          end;
       end;
       dm.ds_sql.Close;
    Except
      hwsf.BtMensagem('Ocorreu algum erro na exportação dos dados.');
      dm.desconecta_bases(0);
      exit;
    End;
    dm.desconecta_bases(0);
    With Controlcnfg do begin
       vrf00:= 0;     //codigo
       vrf01:= False;     //iniciar com o windows
       vrf02:= False;     //conectar automaticamento no login
       vrf16:= EnDecryptString(Edit71.Text,31729); //usuario login sistema
       vrf17:= EnDecryptString(Edit72.Text,31729); //senha login sistema
       vrf38:= false;     //atualizações automáticas
       vrf39:= false;     //bloquear ao minimizar
       vrf40:= 0;     //bloquear após x segundos 0 is null
       vrf54:= EnDecryptString('tb',37249);     //HD Number
       if RadioButton7.Checked then vrf94:= EnDecryptString('tb',37249)
       else vrf94:= EnDecryptString(Edit73.Text,25189); //ip fixo para conexão
       vrf95:= EnDecryptString(Edit74.Text,21289); //cod para local
    end;
    //HWSCONTROL
    Reg:=Tregistry.create;
    with Reg do begin
       Try
          Try
            rootkey:=HKEY_LOCAL_MACHINE;
            if not KeyExists('Software\HWS\HWScontrol') then begin
                //cria chave defaul no registro
                OpenKey('Software\HWS\WebControl',true);
                WriteBinaryData('WebControlCnfg', Controlcnfg, SizeOf(Controlcnfg));
                WriteDateTime('Acesso',Now);
                WriteDateTime('Instalação',Now);
                WriteString('Path',Application.ExeName);
                WriteDateTime('Upgrade',Now);
                CloseKey;
            end else begin
                OpenKey('Software\HWS\WebControl',true);
                WriteBinaryData('WebControlCnfg', Controlcnfg, SizeOf(Controlcnfg));
                WriteDateTime('Upgrade',Now);
                CloseKey;
            end;
         Except
            CloseKey;
            hwsf.BtMensagem('Erro ao gravar registro HWScontrol.');
            exit;
         End;
       finally
         Reg.Free;
       End;
    end;
    hwsf.BtMensagem('Configurações exportadas com sucesso.');
end;

procedure Tfconfig.bt_gravarClick(Sender: TObject);
begin
       if not hwsf.BtConfirma('Confirma atualização dos dados?') then exit;
       With Servercnfg do begin
          vrf01:=CheckBox1.Checked;     //iniciar com o windows
          vrf02:=CheckBox2.Checked;     //conectar automaticamento no login
          vrf16:=EnDecryptString(Edit7.Text,37249); //usuario login sistema
          vrf17:=EnDecryptString(Edit8.Text,37249); //senha login sistema
          vrf38:=CheckBox3.Checked;
          vrf39:=CheckBox4.Checked;
          vrf40:=StrtoInt(Edit47.Text);
       end;
       With Serverconect do begin
          vrf03:=CheckBox6.Checked;     //Utilizar criptografia de mensagens
          vrf04:=CheckBox8.Checked;     //Utilizar chave publica
          vrf05:=CheckBox9.Checked;     //Utilizar chave simetrica
          vrf06:=EnDecryptString(Edit5.Text,37249); //usário chave simetrica
          vrf07:=EnDecryptString(Edit6.Text,37249); //senha chave simetrica
          vrf08:=EnDecryptString(axchvpb,37249); //chave publica
          //conectClient
          vrf09[0]:=ComboBox1.ItemIndex;        //tipo conexão
          vrf10[0]:=EnDecryptString(Edit1.Text,37249); //servidor
          vrf11[0]:=EnDecryptString(Edit2.Text,37249); //database
          vrf12[0]:=EnDecryptString(Edit3.Text,37249); //usuario
          vrf13[0]:=EnDecryptString(Edit4.Text,37249); //senha
          vrf14[0]:=cb_A_save.Checked;     //Salvar senha
          vrf15[0]:=EnDecryptString(Edit9.Text,12527); //path Library database
          vrf19[0]:=EnDecryptString(Edit14.Text,37249); //tabela usuários
          vrf22[0]:=EnDecryptString(Edit28.Text,37249); //tabela logs
          //conectServer
          vrf09[1]:=ComboBox3.ItemIndex;        //tipo conexão
          vrf10[1]:=EnDecryptString(Edit16.Text,37249); //servidor
          vrf11[1]:=EnDecryptString(Edit17.Text,37249); //database
          vrf12[1]:=EnDecryptString(Edit18.Text,37249); //usuario
          vrf13[1]:=EnDecryptString(Edit19.Text,37249); //senha
          vrf14[1]:=cb_B_save.Checked;     //Salvar senha
          vrf15[1]:=EnDecryptString(Edit12.Text,12527); //path Library database
          vrf18:=CheckBox5.Checked;     //utilizar login na inicialização do sistema
          vrf19[1]:=EnDecryptString(Edit10.Text,37249); //tabela usuários
          vrf22[1]:=EnDecryptString(Edit11.Text,37249); //tabela logs
          //outros
          vrf20:=EnDecryptString(Edit29.Text,37249); //tabela tabelas [0]
          vrf21:=EnDecryptString(Edit30.Text,37249); //tabela tabelas.campos [0]
          vrf23:=EnDecryptString(Editcontador.Text,37249); //tabela tabelas.campos [0]
          vrf24[0]:=EnDecryptString(Edit25.Text,37249); //tabela módulos
          vrf24[1]:=EnDecryptString(Edit43.Text,37249); //tabela módulos
          vrf25[0]:=EnDecryptString(Edit26.Text,37249); //tabela módulos tabelas
          vrf25[1]:=EnDecryptString(Edit42.Text,37249); //tabela módulos tabelas
          vrf26:=EnDecryptString(Edit27.Text,37249); //tabela entidades
          vrf27:=EnDecryptString(Edit33.Text,37249); //tabela cidades
          vrf28:=EnDecryptString(Edit34.Text,37249); //tabela estados
          vrf29:=EnDecryptString(Edit31.Text,37249); //tabela web
          vrf30:=EnDecryptString(Edit37.Text,37249); //tabela logos
          vrf31:=EnDecryptString(Edit32.Text,37249); //tabela area atuação
          vrf32[0]:=EnDecryptString(Edit36.Text,37249); //tabela modulos autorizados website
          vrf32[1]:=EnDecryptString(Edit46.Text,37249); //tabela modulos autorizados website
          vrf33[0]:=EnDecryptString(Edit35.Text,37249); //tabela modulos autorizados client
          vrf33[1]:=EnDecryptString(Edit44.Text,37249); //tabela modulos autorizados client
          vrf34:=EnDecryptString(Edit40.Text,37249); //tabela modulos autorizados client
          vrf35:=EnDecryptString(Edit39.Text,37249); //tabela modulos autorizados client
          vrf36:=EnDecryptString(Edit38.Text,37249); //tabela modulos autorizados client
          vrf37[0]:=EnDecryptString(Edit41.Text,37249); //tabela modulos autorizados client
          vrf37[1]:=EnDecryptString(Edit45.Text,37249); //tabela modulos autorizados client
          vrf41:=EnDecryptString(Edit50.Text,37249); //tabela modulos autorizados client;
          vrf42:=EnDecryptString(Edit51.Text,37249); //tabela modulos autorizados client;
          vrf43:=EnDecryptString(Edit52.Text,37249); //tabela modulos autorizados client;
          vrf44:=EnDecryptString(Edit53.Text,37249); //tabela modulos autorizados client;
          vrf45:=EnDecryptString(Edit54.Text,37249); //tabela modulos autorizados client;
          vrf46:=EnDecryptString(Edit55.Text,37249); //tabela modulos autorizados client;
          vrf47:=EnDecryptString(Edit56.Text,37249); //tabela modulos autorizados client;
          vrf48:=EnDecryptString(Edit57.Text,37249); //tabela modulos autorizados client;
          vrf49:=EnDecryptString(Edit58.Text,37249); //tabela modulos autorizados client;
          vrf50:=EnDecryptString(Edit59.Text,37249); //tabela modulos autorizados client;
          vrf51:=EnDecryptString(Edit68.Text,37249); //tabela modulos autorizados client;
          vrf52:=EnDecryptString(Edit69.Text,37249); //tabela modulos autorizados client;
          vrf53:=EnDecryptString(Edit70.Text,37249); //tabela modulos autorizados client;
       end;
       With Helpdesk do begin
          vrf01:=EnDecryptString(Edit13.Text,37249);
          vrf02:=EnDecryptString(Edit15.Text,37249);
          vrf03:=EnDecryptString(Edit20.Text,37249);
          vrf04:=EnDecryptString(Edit21.Text,37249);
          vrf05:=EnDecryptString(Edit22.Text,37249);
          vrf06:=EnDecryptString(Edit23.Text,37249);
          vrf07:=EnDecryptString(Edit24.Text,37249);
          vrf08:=EnDecryptString(Edit48.Text,37249);
          vrf09:=EnDecryptString(Edit49.Text,37249);
       end;
       With HelpSys do begin
          vrf01[0]:=EnDecryptString(Edit67.Text,37249);
          vrf02[0]:=EnDecryptString(Edit66.Text,37249);
          vrf03[0]:=EnDecryptString(Edit65.Text,37249);
          vrf04[0]:=EnDecryptString(Edit64.Text,37249);
          vrf01[1]:=EnDecryptString(Edit60.Text,37249);
          vrf02[1]:=EnDecryptString(Edit61.Text,37249);
          vrf03[1]:=EnDecryptString(Edit62.Text,37249);
          vrf04[1]:=EnDecryptString(Edit63.Text,37249);
       end;
       if Savewinsysreg then hwsf.BtMensagem('Configurações atualizadas com êxito.')
       else hwsf.BtMensagem('Ocorreu algum erro na atualização dos dados.');
       //Close;
end;

procedure Tfconfig.SpeedButton8Click(Sender: TObject);
begin
     if not dm.conecta_bases(0,ComboBox1.ItemIndex,Edit1.Text,Edit2.Text,Edit3.Text,Edit4.Text,Edit9.Text) then begin
        hwsf.BtMensagem('Erro ao tentar conectar base.');
     end else begin
        dm.desconecta_bases(0);
        hwsf.BtMensagem('Base conectada com sucesso.');
     end;
end;

procedure Tfconfig.SpeedButton9Click(Sender: TObject);
begin
     if not dm.conecta_bases(1,ComboBox3.ItemIndex,Edit16.Text,Edit17.Text,Edit18.Text,Edit19.Text,Edit12.Text) then begin
        hwsf.BtMensagem('Erro ao tentar conectar base Server.');
     end else begin
        dm.desconecta_bases(1);
        hwsf.BtMensagem('Base conectada com sucesso.');
     end;
end;

procedure Tfconfig.Edit47Change(Sender: TObject);
begin
      if Edit47.Text='0' then CheckBox7.Checked:=false
      else CheckBox7.Checked:=true;
end;

procedure Tfconfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  dgtdados : Tdgtdados;
begin
      {if (ssCtrl in Shift) and
         (chr(Key) in ['H', 'h']) then begin
         if not TabSheet2.TabVisible then begin
            dgtdados:=hwsf.BtDigitarSenha('Autenticação');
            if dgtdados.confat then begin
               if (dgtdados.usr = 'roots879') and
                  (dgtdados.pass = 'raid45412563') then begin
                  TabSheet2.TabVisible:= true;
                  TabSheet3.TabVisible:= true;
                  TabSheet16.TabVisible:=true;
               end;
            end;
         end else begin
            TabSheet2.TabVisible:= False;
            TabSheet3.TabVisible:= False;
            TabSheet16.TabVisible:=False;
            ToolBar1.Visible:=true;
            ToolBar2.Visible:=false;
         end;
      end;  }
end;

procedure Tfconfig.PageControl1Change(Sender: TObject);
var axidtb: Integer;
begin
      if TabSheet16.TabVisible then begin
         if PageControl1.TabIndex=4 then begin
            ToolBar1.Visible:=false;
            ToolBar2.Visible:=true;
         end else begin
            ToolBar1.Visible:=true;
            ToolBar2.Visible:=false;
         end;
      end;
end;

function Tfconfig.Savewinsysreg:boolean;
var Reg: TRegistry;
begin
    Result:=false;
    Reg:=Tregistry.create;
    try
        //CONFIGURAÇÕES
        with Reg do begin
            rootkey:=HKEY_LOCAL_MACHINE;
            //cria chave defaul no registro
            Try
               OpenKey('Software\HWS\WebServer',true);
               WriteBinaryData('WebServerCnfg', Servercnfg, SizeOf(Servercnfg));
               WriteDateTime('Upgrade',Now);
               WriteString('Path',Application.ExeName);
               CloseKey;
            Except
               CloseKey;
               Application.Terminate;
               exit;
            End;
            //Verifica se selecionado inicializar com win então cria chave
            if Servercnfg.vrf01 then begin
             Try
                rootkey:=HKEY_LOCAL_MACHINE;
                Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                writestring('WebServer', pchar(application.exename));
                CloseKey;
             Except
                CloseKey;
                Reg.Free;
                exit;
             End;
            end else begin
             //apaga chave do registro
             Try
                rootkey:=HKEY_LOCAL_MACHINE;
                Openkey('Software\MICROSOFT\WINDOWS\CURRENTVERSION\RUN',False);
                DeleteValue('WebServer');
                CloseKey;
             Except
                CloseKey;
                Reg.Free;
                exit;
             End;
            end;
        end;
    finally
     Reg.Free;
    End;
    Result:=true;
end;

end.

