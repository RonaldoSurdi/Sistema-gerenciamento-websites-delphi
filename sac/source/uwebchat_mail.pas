unit uwebchat_mail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RxRichEd, Buttons, ToolWin, ExtCtrls,
  XPMan, ImgList, MMSystem, Menus, OleCtrls, SHDocVw, mshtml, ActiveX,
  AppEvnts, CheckLst, RXCtrls, ComboSpeedButton, Grids, DBGrids, ExtDlgs;

const
  IDM_MARCADOR = 2184;
  IDM_MARCADOR_LISTA = 2185;
  IDM_OUTDENT = 2187;
  IDM_INDENT = 2186;
  IDM_ALINHARESQ = 59;
  IDM_CENTRALIZAR = 57;
  IDM_ALINHADIR = 60;
  IDM_JUSTIFICAR = 50;
  IDM_IMAGEM = 2168;
  IDM_LINHAHORIZ = 2150;
  IDM_RECORTAR = 16;
  IDM_COPIAR = 15;
  IDM_COLAR = 26;
  IDM_HYPERLINK = 2124;
  IDM_DESFAZER = 43;
  IDM_REDO = 29;
  //IDM_SOUND = 146;
  //
  IDM_BACKCOLOR = 51;
  IDM_COPYBACKGROUND = 2265;
  IDM_SAVEBACKGROUND = 2263;
  IDM_SETASBACKGROUND = 2264;
  //
  CGID_WebBrowser: TGUID = '{ED016940-BD5B-11cf-BA4E-00C04FD70816}';
  // The available commands
  HTMLID_FIND = 1;
  HTMLID_VIEWSOURCE = 2;
  HTMLID_OPTIONS = 3;

type
  Twebchat_mail = class(TForm)
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    Timer_clearbar: TTimer;
    Timer_Sendup: TTimer;
    XPManifest1: TXPManifest;
    FindDialog1: TFindDialog;
    Timer_usr: TTimer;
    OpenDialog1: TOpenDialog;
    cdColor: TColorDialog;
    ApplicationEvents1: TApplicationEvents;
    PopupMenu_priority: TPopupMenu;
    PrioridadeAlta1: TMenuItem;
    PrioridadeNormal1: TMenuItem;
    PrioridadeBaixa1: TMenuItem;
    ImageList_mail: TImageList;
    PopupMenuNav: TPopupMenu;
    Editar1: TMenuItem;
    Origem1: TMenuItem;
    Visualizar1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Splitter5: TSplitter;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox6: TGroupBox;
    GroupBox2: TGroupBox;
    WebBrowser2: TWebBrowser;
    Splitter3: TSplitter;
    Timer1: TTimer;
    PageControl3: TPageControl;
    TabSheet10: TTabSheet;
    GroupBox_msg: TGroupBox;
    CoolBar2: TCoolBar;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    combofont: TComboBox;
    ComboSize: TComboBox;
    ToolBar3: TToolBar;
    btnCut: TSpeedButton;
    btnCopy: TSpeedButton;
    btnPaste: TSpeedButton;
    ToolBar4: TToolBar;
    btnAlignLeft: TSpeedButton;
    btnCenter: TSpeedButton;
    btnAlignRight: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ToolBar5: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolBar6: TToolBar;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ToolBar7: TToolBar;
    SpeedButton7: TSpeedButton;
    SpeedButton37: TSpeedButton;
    btnNumList: TSpeedButton;
    btnBullet: TSpeedButton;
    btnDecreaseIndent: TSpeedButton;
    btnIncreaseIndent: TSpeedButton;
    ToolBar8: TToolBar;
    SpeedButton5: TSpeedButton;
    btnHR: TSpeedButton;
    SpeedButton6: TSpeedButton;
    CoolBar1: TCoolBar;
    ToolBar12: TToolBar;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    ToolBar9: TToolBar;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    ToolBar14: TToolBar;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    ToolBar11: TToolBar;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    ToolBar10: TToolBar;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    ToolBar16: TToolBar;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    ToolBar17: TToolBar;
    SpeedButton43: TSpeedButton;
    SpeedButton13: TSpeedButton;
    ToolBar2: TToolBar;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    PageControltx: TPageControl;
    TabSheet1: TTabSheet;
    WebBrowser1: TWebBrowser;
    TabSheet2: TTabSheet;
    RxRichEdit_send: TRxRichEdit;
    TabSheet3: TTabSheet;
    WebBrowserView: TWebBrowser;
    CoolBar3: TCoolBar;
    ToolBar1: TToolBar;
    Panelenv: TPanel;
    Label8: TLabel;
    Label_tot1: TLabel;
    BitBtn_send: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    PopupMenu_fundo: TPopupMenu;
    repetirimagem1: TMenuItem;
    Fixarfundo1: TMenuItem;
    Limpar1: TMenuItem;
    Timer_btsend: TTimer;
    Memo1: TMemo;
    Label4: TLabel;
    N2: TMenuItem;
    ComboSpeedButton2: TComboSpeedButton;
    RepetirX1: TMenuItem;
    RepetirY1: TMenuItem;
    N1: TMenuItem;
    NoRepetir1: TMenuItem;
    Inserir1: TMenuItem;
    N3: TMenuItem;
    ComboSpeedButton3: TComboSpeedButton;
    PopupMenu_cordefundo: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    CorLinkvisitado1: TMenuItem;
    CorLinkativo1: TMenuItem;
    SpeedButton50: TSpeedButton;
    ComboSpeedButton1: TComboSpeedButton;
    PopupMenu_som: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    TabSheet12: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Splitter1: TSplitter;
    Panel2: TPanel;
    CheckBox_op3: TCheckBox;
    CheckBox_op2: TCheckBox;
    CheckBox_op1: TCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    CheckBox_op5select: TCheckListBox;
    Memo2: TMemo;
    Panel5: TPanel;
    ToolBar18: TToolBar;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    Bevel1: TBevel;
    Label5: TLabel;
    TreeView_msg: TTreeView;
    ImageList_msg: TImageList;
    ToolBar13: TToolBar;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    ToolBar19: TToolBar;
    CheckBox3: TCheckBox;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    RadioButton4: TRadioButton;
    ComboBox1: TComboBox;
    RadioButton5: TRadioButton;
    Label6: TLabel;
    ComboBox2: TComboBox;
    RadioButton6: TRadioButton;
    ComboBox3: TComboBox;
    Label7: TLabel;
    RadioButton7: TRadioButton;
    ComboBox4: TComboBox;
    RadioButton8: TRadioButton;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox_op4: TCheckBox;
    Panel_Assunto: TPanel;
    Label3: TLabel;
    xAssunto: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Prioritymsg: TComboSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ToolBar15: TToolBar;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer_clearbarTimer(Sender: TObject);
    procedure BitBtn_sendClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnNumListClick(Sender: TObject);
    procedure btnIncreaseIndentClick(Sender: TObject);
    procedure btnDecreaseIndentClick(Sender: TObject);
    procedure btnBulletClick(Sender: TObject);
    procedure btnAlignLeftClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnAlignRightClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnHRClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCutClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure combofontChange(Sender: TObject);
    procedure ComboSizeChange(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure PageControltxChange(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Panel_AssuntoResize(Sender: TObject);
    procedure RxRichEdit_sendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure PrioridadeAlta1Click(Sender: TObject);
    procedure PrioridadeNormal1Click(Sender: TObject);
    procedure PrioridadeBaixa1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Timer_btsendTimer(Sender: TObject);
    procedure CoolBar3Resize(Sender: TObject);
    procedure ComboSpeedButton2Click(Sender: TObject);
    procedure NoRepetir1Click(Sender: TObject);
    procedure repetirimagem1Click(Sender: TObject);
    procedure RepetirX1Click(Sender: TObject);
    procedure RepetirY1Click(Sender: TObject);
    procedure Fixarfundo1Click(Sender: TObject);
    procedure ComboSpeedButton3Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure CorLinkvisitado1Click(Sender: TObject);
    procedure CorLinkativo1Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure PrioritymsgClick(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure TreeView_msgChange(Sender: TObject; Node: TTreeNode);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    xtabelaUsr: String;
    xtypeUSRsend: Integer;
    xusrAnonymous: Boolean;
    xcodIniSec: Integer;
    xiniTfrm,xrich1enter: Boolean;
    xobsSec: TStringList;
    corTxEnviado, corTxRecebido: TColor;
    PageControltxLast: Integer;
    CheckBox_op5Cods: TStringList;
    axcp7NumDestSelect: Integer;
    function ChatSec(xini:Boolean):Boolean;
    function retornaTdt:String;
    procedure BlockFrm(xblk:Boolean);
    function SendMessageHWS:Boolean;
    function BtLink(Mensa:string; var axlnk: String;var axoplnk: Boolean):Boolean;
    function alertaHWS: Boolean;
    function ReproduzirAvisoNewMsg(xrepAv1,xrepAv2:Boolean):Boolean;
    function seltLoadx(xtitlemsg: String):Boolean;
    procedure InternalSaveBodyHTMLToStream(const Stream: TStream);
    procedure InternalSaveBodyHTMLToStringList(const StringList: TStringList);
    procedure InternalSaveBodyTextToStream(const Stream: TStream);
    procedure InternalSaveDocumentToStream(const Stream: TStream);
    procedure InternalLoadDocumentFromStream(const Stream: TStream);
    procedure setxHtml(xabaED:Integer);
    procedure montaTablConf(xtype,xcodselect:Integer);
    procedure AtualizaConf();
    procedure AtualizaGrid_msg;
    procedure AtualizaTab_msg;
    procedure EnabletimerCnf;
    function calcDest(xidPage:Integer):Boolean;
    procedure resetWebBrowse;
    procedure mdfBTsend(xstatbt:Integer);
    function MudaStatusMsg(xmsgMensa: Boolean; xidstatmsg,xCodMsgID: Integer):Boolean;
    procedure SetRepetirImagem(xreptid:Integer);
    procedure montaClassNews;
    function xresultTotDst:Boolean;
    procedure selectDest(xselectDst:Boolean);
    function ReturnOp5:Boolean;
    procedure dateAgendEnv(actvedit:Boolean);
  public
    procedure SendMsgStatusbar(xmens:String; autoocultBarTx: Boolean);
    { Public declarations }
  end;


var
  webchat_mail: Twebchat_mail;
  xsndpath: String;
  HTMLDocumento:IHTMLDocument2;


implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uBt_link;

{$R *.dfm}

function GetIEHandle(WebBrowser: TWebbrowser; ClassName: string): HWND;
var hwndChild, hwndTmp: HWND;
    oleCtrl: TOleControl;
    szClass: array [0..255] of char;
begin
    oleCtrl :=WebBrowser;
    hwndTmp := oleCtrl.Handle;
    while (true) do begin
      hwndChild := GetWindow(hwndTmp, GW_CHILD);
      GetClassName(hwndChild, szClass, SizeOf(szClass));
      if (string(szClass)=ClassName) then begin
        Result :=hwndChild;
        Exit;
      end;
      hwndTmp := hwndChild;
    end;
    Result := 0;
end;

function InvokeCMDfnc(WB: TWebbrowser; InvokeIE: Boolean; Value1, Value2: Integer; var vaIn, vaOut: OleVariant): Boolean;
var
  CmdTarget: IOleCommandTarget;
  PtrGUID: PGUID;
begin
  New(PtrGUID);
  if InvokeIE then
    PtrGUID^ := CGID_WebBrowser
  else
    PtrGuid := PGUID(nil);
  if WB.Document <> nil then
  try
    WB.Document.QueryInterface(IOleCommandTarget, CmdTarget);
    if CmdTarget <> nil then
    try
      CmdTarget.Exec(PtrGuid, Value1, Value2, vaIn, vaOut);
    finally
      CmdTarget._Release;
    end;
  except end;
  Dispose(PtrGUID);
end;

function InvokeCMD(WB: TWebbrowser; nCmdID: DWORD): Boolean;
var
  vaIn, vaOut: OleVariant;
begin
  Result := InvokeCMDfnc(WB, true, nCmdID, unassigned, vaIn, vaOut);
end;

procedure Twebchat_mail.FormClose(Sender: TObject;
  var Action: TCloseAction);
var axerrorID: Integer;
begin
      if hwsf.BtConfirma('Fechar sistema de e-mail?') then begin
         xobsSec.Add(retornaTdt+' - Finalizando Envio de e-mail: '+CoolBar2.Bands.Items[1].Text);
         axerrorID:=dm3.SetCountSec3(dm3.LstTables.Table[21],IntToStr(xcodIniSec),'3',dm3.axcod_web,dm3.axcod_Usr,'Sistema Envio de e-mail Finalizado: '+CoolBar2.Bands.Items[1].Text,xobsSec,'0');
         try
            if dm3.ds_sql3.Active then dm3.ds_sql3.Close;
            //if dm3.ds_sql11.Active then dm3.ds_sql11.Close;
         except
         end;
         Action:=caFree;
      end else Action:=caNone;
end;

function Twebchat_mail.ChatSec(xini:Boolean):Boolean;
begin
      xcodIniSec:=dm3.SetCountSec3(dm3.LstTables.Table[21],'0','0',dm3.axcod_web,dm3.axcod_Usr,'Iniciando Sistema Envio de e-mail: '+CoolBar2.Bands.Items[1].Text,xobsSec,'0');
end;

procedure Twebchat_mail.resetWebBrowse;
var xStreamMR: TMemoryStream;
    xStringMR: TStringList;
begin
      try
          xStreamMR:= TMemoryStream.Create;
          xStringMR:= TStringList.Create;
          xStreamMR.Clear;
          xStreamMR.Position:=0;
          xStringMR.Clear;
          xStringMR.Add('<HTML><BODY text=#000000 vLink=#0000FF aLink=#0000FF link=#0000FF bgColor=#FFFFFF '+
          'leftMargin=10 topMargin=0>');
          //if CheckBox2.Checked then
          xStringMR.Add('<P><A href="http://'+dm3.axhttp_web+'" target=_blank><IMG height=224 src="http://'+dm3.axhttp_web+'/banner.jpg" width=550 border=0></A></P>');
          xStringMR.Add('</BODY></HTML>');
          xStringMR.SaveToStream(xStreamMR);
          xStreamMR.Position:=0;
          (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStreamMR,soReference));
      finally
          xStreamMR.Free;
          xStringMR.Free;
      end;
end;

procedure Twebchat_mail.mdfBTsend(xstatbt:Integer);
begin
      Case xstatbt of
           0: if BitBtn_send.Caption<>'Editar Texto' then begin
              if not BitBtn_send.Enabled then begin
                Timer_btsend.Enabled:=false;
                BitBtn_send.Enabled:=true;
              end;
              ImageList_mail.GetBitmap(5,BitBtn_send.Glyph);
              BitBtn_send.Caption:='Editar Texto';
           end;
           1: if BitBtn_send.Caption<>'Enviar Mensagem' then begin
              Timer_btsend.Enabled:=true;
              ImageList_mail.GetBitmap(6,BitBtn_send.Glyph);
              BitBtn_send.Caption:='Edite sua mensagem';
              BitBtn_send.Enabled:=false;
           end;
      end;
end;

procedure Twebchat_mail.FormCreate(Sender: TObject);
begin
     SendMessage(RxRichEdit_send.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     //RxRichEdit1.Justify;
     xcodIniSec:=0;
     try
        xtypeUSRsend:= StrToInt(ParamStr(7));
     except
     end;
     PageControltxLast:=-1;
     xiniTfrm:=true;
     xrich1enter:=false;
     corTxEnviado:=clGreen;
     corTxRecebido:=clBlack;
     CheckBox_op5Cods:= TStringList.Create;
     CheckBox_op5Cods.Clear;
     WebBrowser1.Navigate('about:blank');
     WebBrowserView.Navigate('about:blank');
     WebBrowser2.Navigate('about:blank');
     (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
     resetWebBrowse;

     dm3.duplicidadeChecked:= true;

     mdfBTsend(0);

     Case xtypeUSRsend of
        0: xtabelaUsr:=dm3.LstTables.Table[5];
        1: xtabelaUsr:=dm3.LstTables.Table[12];
     End;

     DBGrid1.DataSource:=dm3.source_sql3;
     DateTimePicker1.DateTime:=now;
     DateTimePicker2.Time:=now+StrToTime('00:00:00');
     //BlockFrm(true);
     //combofont.Items:=screen.Fonts;
     montaClassNews;
     montaTablConf(1,0);
end;

procedure Twebchat_mail.FormShow(Sender: TObject);
var hThreadID : THandle;
    ThreadID : DWord;
begin
    if xiniTfrm then begin
       xiniTfrm:=false;
       xobsSec:= TStringList.Create;
       xobsSec.Clear;
       xobsSec.Add('Iniciando...');
       ChatSec(true);
    end;
end;

function Twebchat_mail.retornaTdt:String;
begin
     Result:=FormatDateTime('yyyymmddhhnnss',Now);
end;

procedure Twebchat_mail.Timer_clearbarTimer(Sender: TObject);
begin
     Timer_clearbar.Enabled:=false;
     StatusBar1.Panels.Items[0].Text:='';
end;

procedure Twebchat_mail.SendMsgStatusbar(xmens:String; autoocultBarTx: Boolean);
begin
     StatusBar1.Panels.Items[0].Text:=xmens;
     Timer_clearbar.Enabled:=autoocultBarTx;
end;

procedure Twebchat_mail.BlockFrm(xblk:Boolean);
var xblk2:Boolean;
begin
    {GroupBoxUsr.Enabled:=xblk;
    GroupBox_msg.Enabled:=xblk;
    Prioritymsg.Enabled:=xblk;}
    BitBtn_send.Enabled:=xblk;
    PageControl1.Enabled:=xblk;
end;

procedure Twebchat_mail.BitBtn_sendClick(Sender: TObject);
begin
     if (BitBtn_send.Caption='Editar Texto') then calcDest(1)
     else if SendMessageHWS then begin
        xAssunto.Text:='';
        resetWebBrowse;
        PageControl1.TabIndex:=0;
        //TreeView_msg.Selected.SelectedIndex:=0;
        TreeView_msg.Items.Item[0].Selected;
        if RadioButton2.Checked then montaTablConf(1,0)
        else montaTablConf(0,0);
        CheckBox3.Checked:=true;
        EnabletimerCnf;
        loadx.Close;
        hwsf.BtMensagem('Mensagem Enviada para o Servidor, em alguns segundos estará disponível em sua Caixa de Saída...');
     end else begin
        loadx.Close;
        hwsf.BtMensagem('Ocorreu Erro ao enviar Mensagem!');
     end;
end;

function Twebchat_mail.SendMessageHWS:Boolean;
var axcp1,axcp3: String;
    axcp2TypeMsg,
    xfr_USRlst: Integer;
    axcp4: TMemoryStream;
    axcp5,axcp5ADDfile,axcp5TMfilePOS: TStringList;
    axcp5ADDstream: TMemoryStream;
    axcp5TMP,axcp5TMPout,axcp5TMPresult: WideString;
    axcp5TMPon,axcp5TMPimg,axcp5TMPimg2: Boolean;
    axcp5TMPerror,axcp5TMfilename,axcp5TMext: String;
    axcp5TMfilePOSini,axcp5id,axcp5Tot,axcp5Inc: Integer;
    axdtenv: String;
    axtp_usra,axResulCodMsg:Integer;
    //HTMLDocument: IHTMLDocument2;
    //PersistStream: IPersistStream;
    //IPersStream:  IStream;
    axusrselcAll,axdtAgend,axbannSite: Boolean;
    axdtenvAgend: TDateTime;
    axPriorityMsg: Integer;
    axmsgcodstr: String;
    xfileexec: Boolean;
    xerrorfilet: Integer;
    xerrortxt: String;
    axusrlist: TStringList;
    SEND_xslctop5Slc: Boolean;
    SEND_xslctop5Id: Integer;
    
    function FilterNameFile(xfileNameIN:String):String;
    var actid: Integer;
        xfileNameOut,xfileNameOut_ext: String;
    begin
        xfileNameOut:=LowerCase(xfileNameIN);
        xfileNameOut:=StringReplace(xfileNameOut,' ','_',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,';','',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,'-','_',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,' ','',[rfReplaceAll]);
        for actid := 1 to Length(xfileNameOut) do
            case xfileNameOut[actid] of
            'á': xfileNameOut[actid] := 'a';
            'é': xfileNameOut[actid] := 'e';
            'í': xfileNameOut[actid] := 'i';
            'ó': xfileNameOut[actid] := 'o';
            'ú': xfileNameOut[actid] := 'u';
            'à': xfileNameOut[actid] := 'a';
            'è': xfileNameOut[actid] := 'e';
            'ì': xfileNameOut[actid] := 'i';
            'ò': xfileNameOut[actid] := 'o';
            'ù': xfileNameOut[actid] := 'u';
            'â': xfileNameOut[actid] := 'a';
            'ê': xfileNameOut[actid] := 'e';
            'î': xfileNameOut[actid] := 'i';
            'ô': xfileNameOut[actid] := 'o';
            'û': xfileNameOut[actid] := 'u';
            'ä': xfileNameOut[actid] := 'a';
            'ë': xfileNameOut[actid] := 'e';
            'ï': xfileNameOut[actid] := 'i';
            'ö': xfileNameOut[actid] := 'o';
            'ü': xfileNameOut[actid] := 'u';
            'ã': xfileNameOut[actid] := 'a';
            'õ': xfileNameOut[actid] := 'o';
            'ñ': xfileNameOut[actid] := 'n';
            'ç': xfileNameOut[actid] := 'c';
        end;
        xfileNameOut_ext:=copy(xfileNameOut,(Length(xfileNameOut)-3),4);
        xfileNameOut:=copy(xfileNameOut,1,(Length(xfileNameOut)-4));
        xfileNameOut_ext:=FilterCharsHWS(xfileNameOut_ext,['a'..'z', '0'..'9']);
        xfileNameOut:=FilterCharsHWS(xfileNameOut,['a'..'z', '0'..'9']);
        Result:=xfileNameOut+'.'+xfileNameOut_ext;
    end;
begin
    if (axcp7NumDestSelect<=0) then begin
         SendMsgStatusbar('Selecione o(s) Destinatário(s)...',true);
         calcDest(0);
         hwsf.BtMensagem('Nenhum Destinatário Selecionado.');
         exit;
     end;
     seltLoadx('Verificando dados');
     if not BitBtn_send.Enabled then exit;
     if PageControltx.TabIndex=1 then begin
        setxHtml(0);
     end;
     Result:=false;
     BlockFrm(false);
     SendMsgStatusbar('Verificando dados...',false);
     Application.ProcessMessages;
{STR01
0 table1 MSG
1 table2 REMT
2 cod_ent INT          Cód. Website   
3 cod_usra INT         Cód. Remetente   
4 tp_usra INT          Tipo Usuário (0-Atendente,1-usr)
5 cod_sec INT          Cód. conferencia   
*6 cp1 VARCHAR(100)     Off=Assunto
*7 cp2 INT              Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
*8 cp3 VARCHAR(255)     Link
*9 cp7 INT              Num. destinatários
10 xtp VARCHAR(255)     Tipo de mdl

STR04
*cp4 LONGBLOB         Mensagem Rich
STR03
*cp5 LONGTEXT         Mensagem

*STR02
0 cod_usrb INT         Cód Destinatário
1 tp_usrb INT          Tipo de usuário (0-Atendente,1-usr)
2 cp12 INT             Status usuário qdo enviado
3 xtp VARCHAR(255)     tipo mdl

RESULT STR 1
RESULT COD_MSG}
//(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp4:TMemoryStream; xcp5,xusrlist:TStringList; var xdtenv: String):Integer;
     // 0-Atendente,1-usr
     axtp_usra:=0;
     //Assunto
     axcp1:=xAssunto.Text;
     //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
     //if xusrtype = 0 then axcp2TypeMsg:=1
     //else axcp2TypeMsg:=0;
     axcp2TypeMsg:=5;
     //Link
     axcp3:='';
     //Totos os Destinatários
     axusrselcAll:= true;
     //assunto
     if xAssunto.text='' then begin
        loadx.Close;
        SendMsgStatusbar('Digite um assunto...',true);
        hwsf.BtMensagem('Digite o Assunto.');
        BlockFrm(true);
        PageControl3.TabIndex:=1;
        xAssunto.SetFocus;
        exit;
     end;
     //mensa blb
     axcp4:= TMemoryStream.Create;
     axcp4.Clear;
     axcp4.Position:=0;
     axcp5:= TStringList.Create;
     axcp5.Clear;
     axcp5ADDfile:= TStringList.Create;
     axcp5ADDfile.Clear;
     axcp5TMfilePOS:= TStringList.Create;
     axcp5TMfilePOS.Clear;
     axcp5ADDstream:= TMemoryStream.Create;
     axcp5Inc:=0;
     xfileexec:=false;
     xerrorfilet:=0;
     seltLoadx('Testando documento');
         try     
            if Assigned(WebBrowser1.Document) then begin
               InternalSaveDocumentToStream(axcp4);
               //InternalSaveBodyHTMLToStream(axcp4);
               //InternalSaveBodyHTMLToStringList(axcp5);
               {case Style of
                 wbsAll:      InternalSaveDocumentToStream(Stream);
                 wbsBodyHTML: InternalSaveBodyHTMLToStream(Stream);
                 wbsBodyText: InternalSaveBodyTextToStream(Stream);
               end;}
            end;
            axcp4.Position:=0;
            if axcp4.Size=0 then begin
               loadx.Close;
               SendMsgStatusbar('Digite uma mensagem...',true);
               hwsf.BtMensagem('Digite uma mensagem.');
               BlockFrm(true);
               exit;
            end;
            xerrorfilet:=1;
            axcp4.Position:=0;
            axcp5.LoadFromStream(axcp4);
            //Substitui tags e upload de arquivos
            //axcp5TMP.AddStrings(axcp5);
            axcp5Inc:=0;
            axcp5TMP:=axcp5.Text;
            axcp5Tot:=length(axcp5TMP);
            axcp5TMPout:='';
            axcp5TMPresult:='';
            axcp5TMPerror:='';
            axcp5TMPon:=true;
            axcp5TMPimg:=false;
            axcp5TMPimg2:=false;
            axcp5ADDfile.Clear;
            axcp5TMfilePOSini:=0;
            xerrorfilet:=2;
            for axcp5id:=1 to axcp5Tot do begin
                //teste script
                if axcp5TMPon then begin
                   if ((copy(axcp5TMP,axcp5id,2)='<?') or
                       (copy(axcp5TMP,axcp5id,2)='?>')) then
                        axcp5TMPerror:='PHP'
                   else if ((copy(axcp5TMP,axcp5id,2)='<%') or
                        (copy(axcp5TMP,axcp5id,2)='%>')) then
                        axcp5TMPerror:='ASP'
                   else if ((LowerCase(copy(axcp5TMP,axcp5id,13))='<cfcomponent>') or
                        (LowerCase(copy(axcp5TMP,axcp5id,14))='</cfcomponent>')) then
                        axcp5TMPerror:='ColdFusion'
                   else if ((LowerCase(copy(axcp5TMP,axcp5id,7))='<script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='</script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='< script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='</ script')) then
                        axcp5TMPerror:='Script';
                   if axcp5TMPerror<>'' then begin
                       loadx.Close;
                       SendMsgStatusbar('ATENÇÃO: Não é permitido códigos em SCRIPTS nesta mensagem.',true);
                       hwsf.BtMensagem('Linha script detectada, remova e tente novamente.');
                       BlockFrm(true);
                       PageControl3.TabIndex:=1;
                       PageControltx.TabIndex:=1;
                       RxRichEdit_send.SetFocus;
                       RxRichEdit_send.SelectAll;
                       exit;
                   end;
                end;
                if (copy(axcp5TMP,axcp5id,1)='"') then begin
                   if axcp5TMPimg and not axcp5TMPon then begin
                      if ((copy(axcp5TMPout,2,2)=':/') or
                          (copy(axcp5TMPout,2,2)=':\')) then begin
                          if copy(axcp5TMPout,length(axcp5TMPout),1)=' ' then
                             axcp5TMPout:=copy(axcp5TMPout,1,length(axcp5TMPout)-1);
                          if not FileExists(axcp5TMPout) then begin
                             loadx.Close;
                             SendMsgStatusbar('ATENÇÃO: Arquivo não encontrado "'+axcp5TMPout+'"',true);
                             hwsf.BtMensagem('Arquivo não encontrado:'+#13+axcp5TMPout);
                             BlockFrm(true);
                             PageControl3.TabIndex:=1;
                             PageControltx.TabIndex:=0;
                             exit;
                          end else begin
                             axcp5ADDstream.Clear;
                             axcp5ADDstream.Position:=0;
                             axcp5ADDstream.LoadFromFile(axcp5TMPout);
                             axcp5ADDstream.Position:=0;
                             if (axcp5ADDstream.Size>2000000) then begin
                                 loadx.Close;
                                 SendMsgStatusbar('ATENÇÃO: Tamanho do arquivo superior ao Permitido [áté 2mb] "'+axcp5TMPout+'"',true);
                                 hwsf.BtMensagem('Tamanho do arquivo superior ao permitido [áté 2mb]'+#13+axcp5TMPout);
                                 BlockFrm(true);
                                 PageControl3.TabIndex:=1;
                                 PageControltx.TabIndex:=0;
                                 exit;
                             end;
                             axcp5ADDstream.Clear;
                             axcp5ADDstream.Position:=0;
                             axcp5TMext:=ExtractFileExt(axcp5TMPout);
                             if ((LowerCase(axcp5TMext)='.jpg') or
                                 (LowerCase(axcp5TMext)='.gif') or
                                 (LowerCase(axcp5TMext)='.bmp') or
                                 (LowerCase(axcp5TMext)='.wmf') or
                                 (LowerCase(axcp5TMext)='.xbm') or
                                 (LowerCase(axcp5TMext)='.art') or
                                 (LowerCase(axcp5TMext)='.png')) then begin
                                 Inc(axcp5Inc);
                                 axcp5ADDfile.Add(axcp5TMPout);
                                 axcp5TMfilename:=ExtractFileName(axcp5TMPout);
                                 axcp5TMfilename:=FilterNameFile(axcp5TMfilename);

                                 axcp5TMPout:='http://'+dm3.axhttp_web+'/HWSmail/<<imghws>>/'+axcp5TMfilename;
                                 axcp5TMfilePOSini:=axcp5TMfilePOSini+(length('http://'+dm3.axhttp_web+'/')-1);
                                 axcp5TMfilePOS.Add(IntToStr(axcp5TMfilePOSini));
                             end else begin
                                 loadx.Close;
                                 SendMsgStatusbar('ATENÇÃO: Formato do arquivo Inválido "'+axcp5TMPout+'"',true);
                                 hwsf.BtMensagem('Formato do arquivo Inválido'+#13+axcp5TMPout);
                                 BlockFrm(true);
                                 PageControl3.TabIndex:=1;
                                 PageControltx.TabIndex:=0;
                                 exit;
                             end;
                          end;
                      end;
                      axcp5TMPresult:=axcp5TMPresult+axcp5TMPout;
                      axcp5TMPimg:=false;
                   end;
                   axcp5TMPresult:=axcp5TMPresult+'"';
                   axcp5TMPon:=not axcp5TMPon;
                end else if axcp5TMPimg and not axcp5TMPon then
                   axcp5TMPout:=axcp5TMPout+copy(axcp5TMP,axcp5id,1)
                else axcp5TMPresult:=axcp5TMPresult+copy(axcp5TMP,axcp5id,1);
                if axcp5TMPon then begin
                    if ((LowerCase(copy(axcp5TMP,axcp5id,4))='src=') or
                        (LowerCase(copy(axcp5TMP,axcp5id,11))='background=')) then begin
                        axcp5TMPimg:=true;
                        axcp5TMPimg2:=true;
                        axcp5TMPout:='';
                        axcp5TMfilePOSini:=axcp5id+1;
                    end;
                end;
            end;
            axcp5.Clear;
            axcp5.Add(axcp5TMPresult);
            xfileexec:=true;
            {axcp5ADDstream.Clear;
            axcp5ADDstream.Position:=0;
            axcp5.SaveToStream(axcp5ADDstream);
            axcp5ADDstream.Position:=0;
            (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(axcp5ADDstream,soReference));
            axcp4.Clear;
            axcp4.Position:=0;
            if Assigned(WebBrowser1.Document) then
               InternalSaveBodyHTMLToStream(axcp4);}
         except
            loadx.Close;
            Case xerrorfilet of
                0: xerrortxt:='ERRO: Documento contém caracteres inválidos.';
                1: xerrortxt:='ERRO: Acesso Negado aos arquivos de Imagem Importados.';
                2: xerrortxt:='ERRO: Erro de leitura do arquivo HTML.';
            End;
            SendMsgStatusbar(xerrortxt,true);
            hwsf.BtMensagem(xerrortxt);
            BlockFrm(true);
            PageControl3.TabIndex:=1;
            exit;
         end;
         
  if xfileexec then begin
     if not hwsf.BtConfirma('Enviar Mala Direta?') then begin
        BlockFrm(true);
        loadx.Close;
        exit;
     end;
     axusrlist:= TStringList.Create;
     axusrlist.Clear;
     axusrlist.Add(BoolToStr(CheckBox_op1.Checked));
     axusrlist.Add(BoolToStr(CheckBox_op2.Checked));
     axusrlist.Add(BoolToStr(CheckBox_op3.Checked));
     axusrlist.Add(BoolToStr(CheckBox_op4.Checked));
     SEND_xslctop5Slc:=ReturnOp5;
     axusrlist.Add(BoolToStr(SEND_xslctop5Slc));
     if (SEND_xslctop5Slc) then begin
        for SEND_xslctop5Id:=0 to CheckBox_op5select.Items.Count-1 do
            if CheckBox_op5select.Checked[SEND_xslctop5Id] then
               axusrlist.Add(CheckBox_op5Cods[SEND_xslctop5Id]);
     end;
     axcp4.Position:=0;
     axcp4.Clear;
     axcp4.Position:=0;
     axusrlist.SaveToStream(axcp4);
     axcp4.Position:=0;
     axcp4:=EnDecryptStream(axcp4,36521);
     axcp4.Position:=0;
     axusrlist.Clear;
     //conf
     axdtAgend:= RadioButton2.Checked;
     DateTimePicker1.Time:=DateTimePicker2.Time;
     if axdtAgend then axdtenvAgend:= DateTimePicker1.DateTime
     else axdtenvAgend:= now;
     if PrioridadeAlta1.Checked then axPriorityMsg:=1
     else if PrioridadeNormal1.Checked then axPriorityMsg:=2
     else axPriorityMsg:=3;
     axbannSite:=false;//CheckBox_Attachament.Checked;// Attachament
     Application.ProcessMessages;
     //SetCountSec7(xcpid,xtable1,xtable2,xcod_web,xcod_usra,xtp_usra,xcod_sec,xcp1,xcp2,xcp3,xcp7,xtp:string; xcp9,xcp10:Boolean; xcp11:TDateTime; xcp4:TMemoryStream; xcp5,xusrlist:TStringList; var xdtenv: String; xconfcnfIDax: String):Integer;
     seltLoadx('Enviando Mensagem');
     SendMsgStatusbar('Enviando Mensagem...',false);
     axResulCodMsg:=dm3.SetCountSec7('573205',dm3.LstTables.Table[19],dm3.LstTables.Table[20],
                    dm3.axcod_web,dm3.axcod_Usr,IntToStr(axtp_usra),IntToStr(xcodIniSec),
                    axcp1,IntToStr(axcp2TypeMsg),axcp3,IntToStr(axcp7NumDestSelect),dm3.axparmSAC,
                    axdtAgend,axusrselcAll,axbannSite,axPriorityMsg,axdtenvAgend,
                    axcp4,axcp5,axusrlist,axcp5TMfilePOS,axdtenv,'0');
     Application.ProcessMessages;
     if axResulCodMsg>0 then begin
        //upload de arquivos
        if (axcp5Inc>0) then begin
            {
            PostBinaryStream4PH(xcptp,xcpcod,xcpdt: string; xFileData: TMemoryStream): Boolean;
            xcptp //cod website
            xcpcod //cod msg
            xcpdt //nome do arquivo
            }
            axcp5Tot:=axcp5ADDfile.Count-1;
            axmsgcodstr:=IntToStr(axResulCodMsg);
            for axcp5id:=0 to axcp5Tot do begin
                axcp5TMfilename:=ExtractFileName(axcp5ADDfile.Strings[axcp5id]);
                axcp5TMfilename:=FilterNameFile(axcp5TMfilename);
                if FileExists(axcp5ADDfile.Strings[axcp5id]) then begin
                   axcp5ADDstream.Clear;
                   axcp5ADDstream.Position:=0;
                   axcp5ADDstream.LoadFromFile(axcp5ADDfile.Strings[axcp5id]);
                   axcp5ADDstream.Position:=0;
                   if not dm3.PostBinaryStream4PH(dm3.axcod_web,axmsgcodstr,axcp5TMfilename,axcp5ADDstream) then begin
                      if hwsf.BtConfirma('Ocorreu um erro ao enviar arquivo, tentar novamente?') then begin
                         axcp5ADDstream.Clear;
                         axcp5ADDstream.Position:=0;
                         axcp5ADDstream.LoadFromFile(axcp5ADDfile.Strings[axcp5id]);
                         axcp5ADDstream.Position:=0;
                         if not dm3.PostBinaryStream4PH(dm3.axcod_web,axmsgcodstr,axcp5TMfilename,axcp5ADDstream) then begin
                            loadx.Close;
                            hwsf.BtMensagem('Erro ao importar arquivo.');
                            BlockFrm(true);
                            PageControl3.TabIndex:=1;
                            PageControltx.TabIndex:=0;
                            exit;
                         end;
                      end;
                   end;
                end;
            end;
        end;
        RxRichEdit_send.Clear;
        //if MudaStatusMsg(false,0,axResulCodMsg) then
        SendMsgStatusbar('Mensagem Enviada para o Servidor, em alguns segundos estará disponível em sua Caixa de Saída...',true);
        Result:=true;
     end else begin
        SendMsgStatusbar('Erro ao enviar Mensagem...',true);
        Result:=false;
     end;
     xrich1enter:=false;
     Application.ProcessMessages;
     BlockFrm(true);

     //RxRichEdit_send.SetFocus;
  end;
  try
     axcp4.Free;
     axcp5.Free;
     axcp5ADDfile.Free;
     axcp5ADDstream.Free;
  except
  end;
end;

procedure Twebchat_mail.FindDialog1Find(Sender: TObject);
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
  with RxRichEdit_send do begin
    if SelLength <> 0 then StartPos := SelStart + SelLength
    else StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(FindDialog1.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(FindDialog1.FindText);
    end;
  end;
end;

function Twebchat_mail.BtLink(Mensa:string; var axlnk: String;var axoplnk: Boolean):Boolean;
begin
     Try
        Application.CreateForm(TBt_link,Bt_link);
        Bt_link.Label1.Caption:=Mensa;
        Bt_link.ShowModal;
        axlnk:=Bt_link.bt_desctx;
        axoplnk:= Bt_Link.AX_oplnk;
        Result:=(axlnk<>'');
     finally
        Bt_link.Free;
     End;
end;

procedure WindowShake(wHandle: THandle); 
const
    MAXDELTA = 4;
    SHAKETIMES = 500;
var oRect, wRect :TRect;
    deltax: integer;
    deltay: integer;
    cnt: integer;
    dx, dy: integer;
begin
    //lembre da posição original
    GetWindowRect(wHandle,wRect);
    oRect := wRect;
    Randomize;
    for cnt := 0 to SHAKETIMES do begin
        deltax := Round(Random(MAXDELTA));
        deltay := Round(Random(MAXDELTA));
        dx := Round(1 + Random(2));
        if dx = 2 then dx := -1;
        dy := Round(1 + Random(2));
        if dy = 2 then dy := -1;
        OffsetRect(wRect,dx * deltax, dy * deltay);
        MoveWindow(wHandle, wRect.Left,wRect.Top,wRect.Right -
        wRect.Left,wRect.Bottom - wRect.Top,true);
    end;
    //returna à posição de início
    MoveWindow(wHandle, oRect.Left,oRect.Top,oRect.Right -
    oRect.Left,oRect.Bottom - oRect.Top,true);
end;

function Twebchat_mail.alertaHWS: Boolean;
begin
     ReproduzirAvisoNewMsg(true,true);
     PlaySoundHWS(0);
     WindowShake(WindowHandle);//Application.MainForm.Handle
     Result:=true;
end;

function Twebchat_mail.ReproduzirAvisoNewMsg(xrepAv1,xrepAv2:Boolean):Boolean;
begin
     if xrepAv1 then begin
        ShowWindow(Application.Handle, SW_RESTORE );
        SetForegroundWindow( Application.Handle );
        ShowWindow(WindowHandle, SW_RESTORE );
        SetForegroundWindow( WindowHandle );
     end;
     if xrepAv2 then PlaySoundHWS(1);
end;

procedure Twebchat_mail.SpeedButton1Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Bold', False,0);
end;

procedure Twebchat_mail.SpeedButton2Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Italic', False,0);
end;

procedure Twebchat_mail.SpeedButton3Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Underline', False,0);
end;

procedure Twebchat_mail.SpeedButton4Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    if cdColor.Execute then
       HTMLDocumento.execCommand('ForeColor', False,cdColor.Color)
    else abort;
end;

procedure Twebchat_mail.btnNumListClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR, 0);
end;

procedure Twebchat_mail.btnIncreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_INDENT, 0);
end;

procedure Twebchat_mail.btnDecreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_OUTDENT, 0);
end;

procedure Twebchat_mail.btnBulletClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR_LISTA, 0);
end;

procedure Twebchat_mail.btnAlignLeftClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHARESQ, 0);
end;

procedure Twebchat_mail.btnCenterClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_CENTRALIZAR, 0);
end;

procedure Twebchat_mail.btnAlignRightClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHADIR, 0);
end;

procedure Twebchat_mail.SpeedButton12Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFICAR, 0);
end;

procedure Twebchat_mail.SpeedButton5Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_IMAGEM, 0);
end;

procedure Twebchat_mail.btnHRClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_LINHAHORIZ, 0);
end;

procedure Twebchat_mail.SpeedButton6Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_HYPERLINK,0);
end;

procedure Twebchat_mail.btnCutClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_RECORTAR, 0);
end;

procedure Twebchat_mail.btnCopyClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COPIAR, 0);
end;

procedure Twebchat_mail.btnPasteClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COLAR, 0);
end;

procedure Twebchat_mail.SpeedButton7Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_DESFAZER,0);
end;

procedure Twebchat_mail.combofontChange(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('FontName', False,ComboFont.Text);
end;

procedure Twebchat_mail.ComboSizeChange(Sender: TObject);
begin
    //altera o tamanho da fonte
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    case Combosize.ItemIndex of
      0: HTMLDocumento.execCommand('FontSize', False,1);
      1: HTMLDocumento.execCommand('FontSize', False,2);
      2: HTMLDocumento.execCommand('FontSize', False,3);
      3: HTMLDocumento.execCommand('FontSize', False,5);
      4: HTMLDocumento.execCommand('FontSize', False,6);
      5: HTMLDocumento.execCommand('FontSize', False,7);
    end;
end;

procedure Twebchat_mail.SpeedButton10Click(Sender: TObject);
var xtmemory: TMemoryStream;
begin
    resetWebBrowse;
    //leftMargin=0
    {if OpenDialog1.Execute then
       webbrowser1.Navigate(OpenDialog1.FileName)
    else abort;}
end;

procedure Twebchat_mail.SpeedButton38Click(Sender: TObject);
begin
      if RxRichEdit_send.Lines.Count=0 then begin
         SendMsgStatusbar('Não há mensagens...',true);
         exit;
      end;
      SaveDialog1.FileName:=FormatDateTime('yyyymmddhhnnss',Now)+' HWSmail.html';
      if SaveDialog1.Execute then begin
         SendMsgStatusbar('Salvando para '+SaveDialog1.FileName,true);
         RxRichEdit_send.Lines.SaveToFile(SaveDialog1.FileName);
         xobsSec.Add(retornaTdt+' - Salvar como: '+SaveDialog1.FileName);
         RxRichEdit_send.SetFocus;
      end;
end;

procedure Twebchat_mail.SpeedButton41Click(Sender: TObject);
var xprintSrt: String;
begin
      if RxRichEdit_send.Lines.Count=0 then begin
         SendMsgStatusbar('Nenhuma mensagem digitada',true);
         exit;
      end;
      if PrintDialog1.Execute then begin
         SendMsgStatusbar('Imprimindo...',true);
         xprintSrt:=retornaTdt;
         RxRichEdit_send.Print(xprintSrt+'-HWSmail');
         xobsSec.Add(xprintSrt+' - Imprimindo');
         RxRichEdit_send.SetFocus;
      end;
end;

procedure Twebchat_mail.SpeedButton40Click(Sender: TObject);
begin
  FindDialog1.Position := Point(RxRichEdit_send.Left + RxRichEdit_send.Width, RxRichEdit_send.Top);
  FindDialog1.Execute;
end;

procedure Twebchat_mail.SpeedButton9Click(Sender: TObject);
var HTMLDocument: IHTMLDocument2;
    PersistFile: IPersistFile;
begin
  HTMLDocument := WebBrowser1.Document as IHTMLDocument2;
  if SaveDialog1.Execute then begin
      PersistFile  := HTMLDocument as IPersistFile;
      PersistFile.Save(StringToOleStr(savedialog1.FileName), System.True);
  end else begin
      abort;
  end;
end;

procedure Twebchat_mail.SpeedButton8Click(Sender: TObject);
var
  OleCommandTarget: IOleCommandTarget;
  Command: TOleCmd;
  Success: HResult;
begin
    WebBrowser1.Document.QueryInterface(IOleCommandTarget, OleCommandTarget);
    Command.cmdID := OLECMDID_PRINT;
    if OleCommandTarget.QueryStatus(nil, 1, @Command, nil) <> S_OK then
    begin
      // ShowMessage('Nothing to print');
      Exit;
    end;
    if (Command.cmdf and OLECMDF_ENABLED) <> 0 then
    begin
      Success := OleCommandTarget.Exec(nil, OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, EmptyParam, EmptyParam);
      case Success of
        S_OK: ;
        OLECMDERR_E_CANCELED: ShowMessage('Cancelado pelo Usuário');
      else ShowMessage('Error');
      end;
    end;
end;

procedure Twebchat_mail.SpeedButton11Click(Sender: TObject);
begin
    InvokeCMD(WebBrowser1, HTMLID_FIND);
end;

procedure Twebchat_mail.PageControltxChange(Sender: TObject);
begin
    setxHtml(PageControltx.TabIndex);
end;

procedure Twebchat_mail.SpeedButton39Click(Sender: TObject);
begin
    if OpenDialog1.Execute then begin
       RxRichEdit_send.Lines.LoadFromFile(OpenDialog1.FileName);
    end;
end;

procedure Twebchat_mail.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Twebchat_mail.Panel_AssuntoResize(Sender: TObject);
begin
      xAssunto.Width:= Panel_Assunto.Width-(xAssunto.Left+10);
end;

procedure Twebchat_mail.RxRichEdit_sendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) then case Key of
       65,84: (Sender as TRxRichEdit).SelectAll;
    end;
end;

procedure Twebchat_mail.SpeedButton43Click(Sender: TObject);
begin
      RxRichEdit_send.Undo;
end;

procedure Twebchat_mail.SpeedButton13Click(Sender: TObject);
begin
      RxRichEdit_send.Redo;
end;

procedure Twebchat_mail.SpeedButton31Click(Sender: TObject);
begin
      RxRichEdit_send.CutToClipboard;
end;

procedure Twebchat_mail.SpeedButton32Click(Sender: TObject);
begin
      RxRichEdit_send.CopyToClipboard;
end;

procedure Twebchat_mail.SpeedButton33Click(Sender: TObject);
begin
     RxRichEdit_send.PasteFromClipboard;
end;

procedure Twebchat_mail.SpeedButton37Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_REDO,0);
end;

procedure Twebchat_mail.InternalSaveDocumentToStream(
  const Stream: TStream);
var
  StreamAdapter: IStream;
  PersistStreamInit: IPersistStreamInit;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IPersistStreamInit, PersistStreamInit) = S_OK then begin
    StreamAdapter := TStreamAdapter.Create(Stream);
    PersistStreamInit.Save(StreamAdapter, True);
  end;
end;

procedure Twebchat_mail.InternalSaveBodyHTMLToStream(const Stream: TStream);
var
  HTMLStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      HTMLStr := BodyElement.innerHTML;
      Stream.WriteBuffer(HTMLStr[1], Length(HTMLStr));
    end;
  end;
end;

procedure Twebchat_mail.InternalSaveBodyHTMLToStringList(const StringList: TStringList);
var
  HTMLStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  StringList.Clear;
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      HTMLStr := BodyElement.innerHTML;
      StringList.Add(HTMLStr);
    end;
  end;
end;

procedure Twebchat_mail.InternalSaveBodyTextToStream(const Stream: TStream);
var
  TextStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      TextStr := BodyElement.innerText;
      Stream.WriteBuffer(TextStr[1], Length(TextStr));
    end;
  end;
end;

procedure Twebchat_mail.InternalLoadDocumentFromStream(const Stream: TStream);
var
  PersistStreamInit: IPersistStreamInit;
  StreamAdapter: IStream;
begin
  Assert(Assigned(WebBrowserView.Document));
  // Get IPersistStreamInit interface on document object
  if WebBrowserView.Document.QueryInterface(IPersistStreamInit, PersistStreamInit) = S_OK then begin
    // Clear document
    if PersistStreamInit.InitNew = S_OK then begin
      // Get IStream interface on stream
      StreamAdapter:= TStreamAdapter.Create(Stream);
      // Load data from Stream into WebBrowser
      PersistStreamInit.Load(StreamAdapter);
    end;
  end;
end;

procedure Twebchat_mail.setxHtml(xabaED:Integer);
var xStream: TMemoryStream;
begin
      Case xabaED of
        0: begin
           CoolBar1.Visible:=false;
           CoolBar2.Visible:=true;
           Panel_Assunto.Visible:=true;
           (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
           if PageControltxLast=1 then begin
              try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               RxRichEdit_send.Lines.SaveToStream(xStream);
               xStream.Position:=0;
               (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStream,soReference));
              finally
               xStream.Free;
              end;
           end;
        end;
        1: begin
           CoolBar1.Visible:=true;
           CoolBar2.Visible:=false;
           Panel_Assunto.Visible:=true;
           try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               if Assigned(WebBrowser1.Document) then begin
                  //InternalSaveBodyHTMLToStream(xStream);
                  InternalSaveDocumentToStream(xStream);
                  {case Style of
                    wbsAll:      InternalSaveDocumentToStream(Stream);
                    wbsBodyHTML: InternalSaveBodyHTMLToStream(Stream);
                    wbsBodyText: InternalSaveBodyTextToStream(Stream);
                  end;

<html><body topmargin="0">
<p><a href="http://www.hws.com.br" target=_blank><IMG src="http://www.hws.com.br/banner.jpg" height=224 width=550 border=0></a></p>
<P>dasfds</P>
<P>asdfa</P>
</body>
</html>
                  }
               end;
               xStream.Position:=0;
               RxRichEdit_send.Lines.LoadFromStream(xStream);
           finally
               xStream.Free;
           end;
        end;
        2: begin
           if PageControltxLast=1 then begin
              try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               RxRichEdit_send.Lines.SaveToStream(xStream);
               xStream.Position:=0;
               (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStream,soReference));
              finally
               xStream.Free;
              end;
              Application.ProcessMessages;
           end;
           CoolBar1.Visible:=false;
           CoolBar2.Visible:=false;
           Panel_Assunto.Visible:=false;
           try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               if Assigned(WebBrowser1.Document) then begin
                  InternalSaveDocumentToStream(xStream);
               end;
               xStream.Position:=0;
               InternalLoadDocumentFromStream(xStream);
           finally
               xStream.Free;
           end;
        end;
      End;
      PageControltxLast:=xabaED;
end;

procedure Twebchat_mail.PrioridadeAlta1Click(Sender: TObject);
begin
      Prioritymsg.Caption:='Prioridade Alta';
      PrioridadeAlta1.Checked:=true;
      PrioridadeNormal1.Checked:=false;
      PrioridadeBaixa1.Checked:=false;
end;

procedure Twebchat_mail.PrioridadeNormal1Click(Sender: TObject);
begin
      Prioritymsg.Caption:='Prioridade Normal';
      PrioridadeAlta1.Checked:=false;
      PrioridadeNormal1.Checked:=true;
      PrioridadeBaixa1.Checked:=false;
end;

procedure Twebchat_mail.PrioridadeBaixa1Click(Sender: TObject);
begin
      Prioritymsg.Caption:='Prioridade Baixa';
      PrioridadeAlta1.Checked:=false;
      PrioridadeNormal1.Checked:=false;
      PrioridadeBaixa1.Checked:=true;
end;

procedure Twebchat_mail.montaTablConf(xtype,xcodselect:Integer);
var xidtype,xidcodentH: String;
    function ajustdbgrid(xajustdbgd:Boolean):Boolean;
    var idaddgrid: Integer;
    begin
        With DBGrid1.Columns do begin
         Clear;
         idaddgrid:=0;
         if (xtype=0) then begin
            Add;
            Items[idaddgrid].Title.Caption:='%Enviando';
            Items[idaddgrid].FieldName:='cp14';
            Items[idaddgrid].Width:=70;
            Inc(idaddgrid);
         end else begin
            Add;
            if (xtype=1) then Items[idaddgrid].Title.Caption:='Agendado para'
            else Items[idaddgrid].Title.Caption:='Enviado em';
            Items[idaddgrid].FieldName:='cp11';
            Items[idaddgrid].Width:=120;
            Inc(idaddgrid);
         end;
         Add;
         Items[idaddgrid].Title.Caption:='Destinatários';
         Items[idaddgrid].FieldName:='cp7';
         Items[idaddgrid].Width:=80;
         Inc(idaddgrid);
         Add;
         Items[idaddgrid].Title.Caption:='Assunto';
         Items[idaddgrid].FieldName:='cp1';
         Items[idaddgrid].Width:=400;
       end;
       Result:=true;
    end;
begin
    ajustdbgrid(xtype=0);
    Case xtype of
       0:begin
         xidtype:=#39+'1'+#39+' or cp8='+#39+'10'+#39;
       end;
       1:begin
         xidtype:=#39+'0'+#39;
       end;
       2:begin
         xidtype:=#39+'3'+#39;
       end;
       3:begin
         xidtype:=#39+'2'+#39;
       end;
    End;
    xidcodentH:='cod_ent='+#39+dm3.axcod_web+#39+
                ' AND cod_usra='+#39+dm3.axcod_Usr+#39+
                ' AND tp_usra='+#39+'0'+#39+
                ' AND (cp8='+xidtype+')';
    try
     //if dm3.ds_sql11.Active then dm3.ds_sql11.Close;
     With dm3.ds_sql3 do begin
        if Active then Close;
        CommandText:='SELECT codigo,cp1,cp7,cp11,cp12,cp14,cp16,cp17,cp18,cp19 from '+dm3.LstTables.Table[19]+
                     ' WHERE '+xidcodentH+
                     ' ORDER BY cp11';
        Open;
        //if xcodselect<>0 then
        //   Locate('codigo',xcodselect,[]);
     end;
    except
     hwsf.BtMensagem('Erro ao montar lista de mensagens');
     exit;
    end;
    AtualizaTab_msg;
end;

procedure Twebchat_mail.AtualizaConf();
var xcodConfCnf: String;
    xconfstr: TStringList;
    axvTB1,axvTB2,axvTB3,axvTB4: Integer;
begin
   //exit;
   Memo1.Clear;
   if not dm3.ds_sql3.Active then exit;
   if dm3.ds_sql3.RecordCount=0 then begin
      Memo1.Lines.Add(' ');
      Case TreeView_msg.Selected.Index of
        0: Memo1.Lines.Add('Não há mensagens em sua Caixa de Saída');
        1: Memo1.Lines.Add('Não há mensagens Agendadas');
        2: Memo1.Lines.Add('Não há mensagens Enviadas');
        3: Memo1.Lines.Add('Não há mensagens Excluídas');
      End;
      exit;
   end;
   xcodConfCnf:=dm3.ds_sql3.FieldByName('codigo').AsString;
   try
       //Status (0-enviado,1-recebido,2-erro sintaxe,3-email inválido)
       try
           xconfstr:= TStringList.Create;
           xconfstr.Clear;
           xconfstr.Add(' ');
           xconfstr.Add('Status da Mensagem:');
           //xconfstr.Add('Enviando: '+FormatFloat('0.00',dm3.ds_sql3.FieldByName('cp14').AsFloat)+'%');
           Case TreeView_msg.Selected.Index of
              0: xconfstr.Add('Enviando Mensagem...');
              1: xconfstr.Add('Envio agendado para '+dm3.ds_sql3.FieldByName('cp11').AsString);
              2: xconfstr.Add('Concluído em '+dm3.ds_sql3.FieldByName('cp11').AsString);
              3: xconfstr.Add('Mensagem Excluída');
           End;
           Memo1.Lines:=xconfstr;
       finally
           xconfstr.Free;
       end;
    except
       hwsf.BtMensagem('Erro ao montar lista de usuários');
       exit;
   end;
end;

procedure Twebchat_mail.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then montaTablConf(0,0);
      //else atualiza_CheckTim;
end;

procedure Twebchat_mail.CheckBox3Click(Sender: TObject);
begin
     EnabletimerCnf;
end;

procedure Twebchat_mail.EnabletimerCnf;
begin
      if Timer1.Enabled<>CheckBox3.Checked then begin
         Timer1.Enabled:=CheckBox3.Checked;
         BitBtn1.Enabled:=not CheckBox3.Checked;
      end;
end;

procedure Twebchat_mail.Timer1Timer(Sender: TObject);
var xcodidlocate:Integer;
begin
    if dm3.ds_sql3.Active then begin
       xcodidlocate:=dm3.ds_sql3.fieldbyname('codigo').AsInteger;
       dm3.ds_sql3.Close;
       dm3.ds_sql3.Open;
       dm3.ds_sql3.Locate('codigo',xcodidlocate,[]);
       {if dm3.ds_sql11.Active then begin
          xcodidlocate:=dm3.ds_sql11.fieldbyname('codigo').AsInteger;
          dm3.ds_sql11.Close;
          dm3.ds_sql11.Open;
          dm3.ds_sql11.Locate('codigo',xcodidlocate,[]);
       end;}
    end;
end;

procedure Twebchat_mail.AtualizaGrid_msg;
var axcodaxconf: Integer;
begin
    Application.ProcessMessages;
    axcodaxconf:=0;
    if dm3.ds_sql3.Active then
    if dm3.ds_sql3.RecordCount>0 then
       axcodaxconf:=dm3.ds_sql3.fieldbyname('codigo').AsInteger;
    montaTablConf(TreeView_msg.Selected.Index,axcodaxconf);
    Application.ProcessMessages;
end;

procedure Twebchat_mail.AtualizaTab_msg;
var xStreamMSG: TMemoryStream;
    xStringMSG: TStringList;
    xcodConfCnf: String;
    xStringWide: WideString;
begin
    try
      xStreamMSG:= TMemoryStream.Create;
      xStreamMSG.Clear;
      xStreamMSG.Position:=0;
      xStringMSG:= TStringList.Create;
      xStringMSG.Clear;
      if dm3.ds_sql3.Active then begin
       if dm3.ds_sql3.RecordCount>0 then begin
         xcodConfCnf:=dm3.ds_sql3.FieldByName('codigo').AsString;
         With dm3.ds_sql4 do begin
            if Active then Close;
            CommandText:='SELECT codigo,cp5,cp15 from '+dm3.LstTables.Table[19]+
            ' WHERE codigo='+#39+xcodConfCnf+#39;
            Open;
            xStringMSG.Assign(FieldByName('cp5'));
            if xStringMSG.Count>0 then
               xStringMSG.SaveToStream(xStreamMSG);
            xStreamMSG.Position:=0;
        end;
       end;
      end;
      (WebBrowser2.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStreamMSG,soReference));
    finally
      xStreamMSG.free;
      xStringMSG.Free;
    end;
    AtualizaConf();
end;

procedure Twebchat_mail.DBGrid1CellClick(Column: TColumn);
begin
    AtualizaTab_msg;
end;

procedure Twebchat_mail.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    AtualizaTab_msg;
end;

procedure Twebchat_mail.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    AtualizaTab_msg;
end;

procedure Twebchat_mail.BitBtn1Click(Sender: TObject);
begin
    AtualizaGrid_msg;
end;

procedure Twebchat_mail.BitBtn3Click(Sender: TObject);
var axcodaxconf,axidupdcnf: Integer;
begin
    if TreeView_msg.Selected.Index=3 then axidupdcnf:=4
    else axidupdcnf:=2;
    axcodaxconf:=0;
    if dm3.ds_sql3.Active then begin
      if dm3.ds_sql3.RecordCount>0 then
         axcodaxconf:=dm3.ds_sql3.fieldbyname('codigo').AsInteger;
      MudaStatusMsg(true,2,axcodaxconf);
    end;
end;

function Twebchat_mail.MudaStatusMsg(xmsgMensa: Boolean; xidstatmsg,xCodMsgID: Integer):Boolean;
var xmsgMensaConfirma,xexecalt,xexecRES: Boolean;
begin
    xexecRES:=false;
    if xCodMsgID>0 then begin
     if xmsgMensa then
        xmsgMensaConfirma:=hwsf.BtConfirma('Excluir mensagem selecionada'+#13+dm3.ds_sql3.fieldbyname('cp1').AsString+'?')
     else xmsgMensaConfirma:=true;
     if xmsgMensaConfirma then begin
        try
           With dm3.executa do begin
             CommandText:='UPDATE '+dm3.LstTables.Table[19]+' SET cp8=:p0,cp12='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                          ' WHERE codigo=:p1';
             Params[0].AsInteger:=xidstatmsg;
             Params[1].AsInteger:=xCodMsgID;
             Execute;
             xexecRES:=true;
           end;
           if xmsgMensa then begin
              hwsf.BtMensagem('Mensagem Excluida.');
              AtualizaGrid_msg;
           end;
        except
           if xmsgMensa then
              hwsf.BtMensagem('Erro ao apagar mensagem.');
        end;
     end;
    end else if xmsgMensa then
        hwsf.BtMensagem('Nenhuma mensagem selecionada.');
    Result:=xexecRES;
end;

function Twebchat_mail.seltLoadx(xtitlemsg: String):Boolean;
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:=xtitlemsg;
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.Position:=0;
        PageControl1.Enabled:=false;
     end else begin
        loadx.lbloading.Caption:=xtitlemsg;
        loadx.lbloading.Repaint;
     end;
     Result:=axshowing;
end;

function Twebchat_mail.calcDest(xidPage:Integer):Boolean;
var xslctop5Slc, xResultcalcDst: Boolean;
    procedure msgSleep(xmstSlp:String);
    begin
        BitBtn_send.Caption:=xmstSlp+' AGUARDE...';
        Application.ProcessMessages;
        Sleep(1000);
    end;
begin
      xslctop5Slc:=ReturnOp5;
      xResultcalcDst:=((CheckBox_op1.Checked) or (CheckBox_op2.Checked) or (CheckBox_op3.Checked) or (CheckBox_op4.Checked) or (xslctop5Slc));
      if not xResultcalcDst then begin
         SendMsgStatusbar('Selecione o(s) Destinatário(s)...',true);
         hwsf.BtMensagem('Nenhum Destinatário Selecionado.');
         if PageControl3.TabIndex<>0 then
            PageControl3.TabIndex:=0;
      end else begin
        if (xidPage=1) then begin
            if PageControl3.TabIndex<>0 then
               PageControl3.TabIndex:=0;
            BitBtn_send.Caption:='AGUARDE...';
            BitBtn_send.Enabled:=false;
            PageControl1.Enabled:=false;
            PageControl3.Enabled:=false;
            xresultTotDst;
            msgSleep('.');
            msgSleep('..');
            msgSleep('...');
            //BitBtn_send.Enabled:=true;
            PageControl1.Enabled:=true;
            PageControl3.Enabled:=true;
        end;
        PageControl3.TabIndex:=xidPage;
        mdfBTsend(xidPage);
      end;
      Result:=xResultcalcDst;
end;

procedure Twebchat_mail.PageControl3Change(Sender: TObject);
var axtbidx: Integer;
begin
      axtbidx:=PageControl3.TabIndex;
      calcDest(axtbidx);
end;

procedure Twebchat_mail.Limpar1Click(Sender: TObject);
begin
       HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
       (HTMLDocumento.body as IHTMLBodyElement).background := '';
       HTMLDocumento.body.style.backgroundRepeat :='';
end;

procedure Twebchat_mail.Timer_btsendTimer(Sender: TObject);
begin
      Timer_btsend.Enabled:=false;
      BitBtn_send.Caption:='Enviar Mensagem';
      BitBtn_send.Enabled:=true;
end;

procedure Twebchat_mail.CoolBar3Resize(Sender: TObject);
begin
      Panelenv.Width:= webchat_mail.Width-(BitBtn_send.Width+40);
end;

procedure Twebchat_mail.ComboSpeedButton2Click(Sender: TObject);
var xfilebck,axreptx: String;
begin
    if OpenPictureDialog1.Execute then begin
       xfilebck:=OpenPictureDialog1.FileName;
       xfilebck:=xfilebck+' ';
       HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
       (HTMLDocumento.body as IHTMLBodyElement).background := xfilebck;
       if NoRepetir1.Checked then axreptx:='no-repeat'
       else if repetirimagem1.Checked then axreptx:='repeat'
       else if RepetirX1.Checked then axreptx:='repeat-x'
       else if RepetirY1.Checked then axreptx:='repeat-y';
       HTMLDocumento.body.style.backgroundRepeat :=axreptx;
    end;
end;

procedure Twebchat_mail.SetRepetirImagem(xreptid:Integer);
var axreptx: String;
begin
    Case xreptid of
        0: axreptx:='no-repeat';
        1: axreptx:='repeat';
        2: axreptx:='repeat-x';
        3: axreptx:='repeat-y';
    end;
    HTMLDocumento.body.style.backgroundRepeat :=axreptx;
    NoRepetir1.Checked:=(xreptid = 0);
    repetirimagem1.Checked:=(xreptid = 1);
    RepetirX1.Checked:=(xreptid = 2);
    RepetirY1.Checked:=(xreptid = 3);
end;


procedure Twebchat_mail.NoRepetir1Click(Sender: TObject);
begin
    if (not NoRepetir1.Checked) then
        SetRepetirImagem(0);
end;

procedure Twebchat_mail.repetirimagem1Click(Sender: TObject);
begin
    if (not repetirimagem1.Checked) then
        SetRepetirImagem(1);
end;

procedure Twebchat_mail.RepetirX1Click(Sender: TObject);
begin
    if (not RepetirX1.Checked) then
        SetRepetirImagem(2);
end;

procedure Twebchat_mail.RepetirY1Click(Sender: TObject);
begin
    if (not RepetirY1.Checked) then
        SetRepetirImagem(3);
end;

procedure Twebchat_mail.Fixarfundo1Click(Sender: TObject);
begin
      Fixarfundo1.Checked:=not Fixarfundo1.Checked;
      if (Fixarfundo1.Checked) then
          HTMLDocumento.body.style.backgroundAttachment:='fixed'
      else HTMLDocumento.body.style.backgroundAttachment:='';
end;

procedure Twebchat_mail.ComboSpeedButton3Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.bgColor := ColorToHTML(cdColor.Color);
end;

procedure Twebchat_mail.MenuItem3Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.linkColor := ColorToHTML(cdColor.Color);
end;

procedure Twebchat_mail.CorLinkvisitado1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.vlinkColor := ColorToHTML(cdColor.Color);
end;

procedure Twebchat_mail.CorLinkativo1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.alinkColor := ColorToHTML(cdColor.Color);
end;

procedure Twebchat_mail.SpeedButton50Click(Sender: TObject);
begin
    //SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_SOUND, 0);

    if cdColor.Execute then
       WebBrowser1.OleObject.Document.fgColor := ColorToHTML(cdColor.Color);
end;

procedure Twebchat_mail.PrioritymsgClick(Sender: TObject);
var p: TPoint;
begin
    p := Mouse.CursorPos;
    PopupMenu_priority.Popup(p.X, p.Y);
end;

procedure Twebchat_mail.selectDest(xselectDst:Boolean);
begin
    CheckBox_op1.Checked:=xselectDst;
    CheckBox_op2.Checked:=xselectDst;
    CheckBox_op3.Checked:=xselectDst;
    CheckBox_op4.Checked:=xselectDst;
end;

procedure Twebchat_mail.SpeedButton51Click(Sender: TObject);
begin
      selectDest(true);
end;

procedure Twebchat_mail.SpeedButton52Click(Sender: TObject);
begin
      selectDest(false);
end;

procedure Twebchat_mail.montaClassNews;
begin
      //teste
      With dm3.ds_sql5 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,descricao FROM '+dm3.LstTables.Table[25]+
                      ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
        CheckBox_op5select.Items.Clear;
        CheckBox_op5Cods.Clear;
        if (RecordCount=0) then Label10.Visible:=true
        else begin
          First;
          While not Eof do begin
              CheckBox_op5select.Items.Add(fieldbyname('descricao').AsString);
              CheckBox_op5Cods.Add(fieldbyname('codigo').AsString);
              Next;
          end;
        end;
        Close;
     end;
end;

procedure Twebchat_mail.TreeView_msgChange(Sender: TObject;
  Node: TTreeNode);
begin
      montaTablConf(TreeView_msg.Selected.Index,0);
end;

function Twebchat_mail.xresultTotDst:Boolean;
var xslctop5Id: Integer;
    xslctop5Slc: Boolean;
    xslct_SumDst,xslct_SumDstTOTAL: Integer;
    xresultotDst: Boolean;
begin
      Memo2.Clear;
      Memo2.Lines.Add('');
      xslctop5Slc:=ReturnOp5;
      if ((CheckBox_op1.Checked) or (CheckBox_op2.Checked) or (CheckBox_op3.Checked) or (xslctop5Slc)) then begin
         Memo2.Lines.Add('LISTA DE DESTINATÁRIOS:');
         Memo2.Lines.Add('');
         xslct_SumDst:=0;
         xslct_SumDstTOTAL:=0;
         if dm3.ds_sql8.Active then Close;
         if (CheckBox_op1.Checked) then begin
            Memo2.Lines.Add('');
            With dm3.ds_sql8 do begin
                //INTRANET
                CommandText:= 'SELECT COUNT(*) FROM '+dm3.LstTables.Table[5]+
                              ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                              ' AND cp31='+#39+'-1'+#39+
                              ' AND cp55='+#39+'0'+#39;
                Open;
                xslct_SumDst:=Fields[0].AsInteger;
                xslct_SumDstTOTAL:=xslct_SumDstTOTAL+xslct_SumDst;
                Memo2.Lines.Add('Intranet: '+Formatfloat('#,###,##0',xslct_SumDst));
                Close;
            end;
         end;
         if (CheckBox_op2.Checked) then begin
            Memo2.Lines.Add('');
            With dm3.ds_sql8 do begin
                //USR WEB
                CommandText:= 'SELECT COUNT(*) FROM '+dm3.LstTables.Table[12]+
                              ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                              ' AND cp31='+#39+'-1'+#39+
                              ' AND cp55='+#39+'0'+#39;
                Open;
                xslct_SumDst:=Fields[0].AsInteger;
                xslct_SumDstTOTAL:=xslct_SumDstTOTAL+xslct_SumDst;
                Memo2.Lines.Add('Usuários Registrados: '+Formatfloat('#,###,##0',xslct_SumDst));
                Close;
            end;
         end;
         if (CheckBox_op3.Checked) then begin
            Memo2.Lines.Add('');
            With dm3.ds_sql8 do begin
                //NEWS LETTER AUTO
                CommandText:= 'SELECT COUNT(*) FROM '+dm3.LstTables.Table[22]+
                              ' WHERE cod_web='+#39+dm3.axcod_web+#39+
                              ' AND cp31='+#39+'-1'+#39+
                              ' AND cp55='+#39+'0'+#39;
                Open;
                xslct_SumDst:=Fields[0].AsInteger;
                xslct_SumDstTOTAL:=xslct_SumDstTOTAL+xslct_SumDst;
                Memo2.Lines.Add('News Letter: '+Formatfloat('#,###,##0',xslct_SumDst));
                Close;
            end;
         end;
         if (CheckBox_op4.Checked) then begin
            Memo2.Lines.Add('');
            With dm3.ds_sql8 do begin
                //NEWS LETTER PG INICIAL/CATALOGO
                CommandText:= 'SELECT COUNT(*) FROM '+dm3.LstTables.Table[23]+
                              ' WHERE cod_ent='+#39+dm3.axcod_web+#39+
                              ' AND cp31='+#39+'-1'+#39+
                              ' AND cp55='+#39+'0'+#39;
                Open;
                xslct_SumDst:=Fields[0].AsInteger;
                xslct_SumDstTOTAL:=xslct_SumDstTOTAL+xslct_SumDst;
                Memo2.Lines.Add('Catálogo Website: '+Formatfloat('#,###,##0',xslct_SumDst));
                Close;
            end;
         end;
         if (xslctop5Slc) then begin
            Memo2.Lines.Add('');
            Memo2.Lines.Add('Catálogo de e-mails:');
            for xslctop5Id:=0 to CheckBox_op5select.Items.Count-1 do begin
                if CheckBox_op5select.Checked[xslctop5Id] then begin
                    With dm3.ds_sql8 do begin
                         CommandText:= 'SELECT SUM(cp7)as soma FROM '+dm3.LstTables.Table[26]+
                        ' WHERE cod_grp='+#39+CheckBox_op5Cods[xslctop5Id]+#39+
                        ' AND cp8='+#39+'0'+#39;
                        Open;
                        xslct_SumDst:=Fields[0].AsInteger;
                        xslct_SumDstTOTAL:=xslct_SumDstTOTAL+xslct_SumDst;
                        Memo2.Lines.Add('->'+CheckBox_op5select.Items.Strings[xslctop5Id]+': '+Formatfloat('#,###,##0',xslct_SumDst));
                        Close;
                    end;
                end;
            end;
         end;
         Memo2.Lines.Add('');
         Memo2.Lines.Add('');
         Memo2.Lines.Add('TOTAL DE DESTINATÁRIOS: '+Formatfloat('#,###,##0',xslct_SumDstTOTAL));
         axcp7NumDestSelect:=xslct_SumDstTOTAL;
         xresultotDst:=true;
      end else begin
         Memo2.Lines.Add('Nenhum Destinatário selecionado.');
         axcp7NumDestSelect:=0;
         xresultotDst:=false;
      end;
      Result:=xresultotDst;
end;

function Twebchat_mail.ReturnOp5:Boolean;
var RES_xslctop5Id: Integer;
    RES_xslctop5Slc: Boolean;
begin
      RES_xslctop5Slc:=false;
      for RES_xslctop5Id:=0 to CheckBox_op5select.Items.Count-1 do begin
          if CheckBox_op5select.Checked[RES_xslctop5Id] then begin
             RES_xslctop5Slc:=true;
             Break;
          end;
      end;
      Result:=RES_xslctop5Slc;
end;

procedure Twebchat_mail.dateAgendEnv(actvedit:Boolean);
begin
      DateTimePicker1.Enabled:=actvedit;
      DateTimePicker2.Enabled:=actvedit;
end;

procedure Twebchat_mail.RadioButton1Click(Sender: TObject);
begin
     dateAgendEnv(false);
end;

procedure Twebchat_mail.RadioButton2Click(Sender: TObject);
begin
     dateAgendEnv(true);
end;

procedure Twebchat_mail.BitBtn2Click(Sender: TObject);
begin
    PageControl1.TabIndex:=1;
end;

end.

{
procedure Twebchat_mail.Button1Click(Sender: TObject);
    function SendMsgConf():Boolean;
    var SendMsgConf_Result:Integer;
        SearchRec : TSearchRec;
    begin
        SendMsgConf_Result := FindFirst('C:\PFiles\Plugins\*.txt',faAnyFile,SearchRec);
        hwsf.BtMensagem(IntToStr(SendMsgConf_Result));
    end;
begin
    SendMsgConf;
end;
}
