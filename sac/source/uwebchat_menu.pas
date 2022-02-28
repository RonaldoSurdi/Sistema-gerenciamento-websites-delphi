unit uwebchat_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, jpeg, ExtCtrls, Buttons, ToolWin, XPMan,
  AppEvnts, TrayIcon, Menus, ImgList, ActnMan, ActnCtrls, MMSystem,
  uwebchat_msgMonitor, uwebchat_ListUsrMod, OleCtrls, SHDocVw, backup, Registry,
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  IdAntiFreezeBase, IdAntiFreeze;

type
  TDriveType = (dtUnknown, dtNoDrive, dtFloppy, dtFixed, dtNetwork, dtCDROM, dtRAM);
  
  Twebchat_menu = class(TForm)
    StatusBar1: TStatusBar;
    PageControlsac: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    XPManifest1: TXPManifest;
    TrayIcon_menu: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    popmnuGeral: TPopupMenu;
    ChatHWS1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    Sobre1: TMenuItem;
    N3: TMenuItem;
    Minimizar1: TMenuItem;
    Sair1: TMenuItem;
    xcodnect: TMenuItem;
    Timer_online: TTimer;
    ImageList_sys: TImageList;
    ImageList_on: TImageList;
    Timer_Atendentes: TTimer;
    GroupBox3: TGroupBox;
    Splitter2: TSplitter;
    PopupMenu1: TPopupMenu;
    EnviarMensagem1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem3: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem7: TMenuItem;
    ListView1: TListView;
    ListView3: TListView;
    Timer_usr: TTimer;
    Timer_hws: TTimer;
    ImageList_areas: TImageList;
    ListView2: TTreeView;
    Panelstatus: TPanel;
    Label1: TLabel;
    lb4: TComboBoxEx;
    ImageListHWS: TImageList;
    MainMenuHWS: TMainMenu;
    Ajuda1: TMenuItem;
    picosdeajuda1: TMenuItem;
    WebsiteHWS1: TMenuItem;
    HWSupdate1: TMenuItem;
    Autoupdate1: TMenuItem;
    N6: TMenuItem;
    Sobre2: TMenuItem;
    Fechar1: TMenuItem;
    Minimizar2: TMenuItem;
    N8: TMenuItem;
    Sair2: TMenuItem;
    Configuraes3: TMenuItem;
    SalvarSenha1: TMenuItem;
    IniciarcomWindows1: TMenuItem;
    Entrarautomaticamente1: TMenuItem;
    N1: TMenuItem;
    Aorecebermensagem1: TMenuItem;
    CheckBox_aviso1: TMenuItem;
    CheckBox_aviso2: TMenuItem;
    Abrirmodoconferncia1: TMenuItem;
    N5: TMenuItem;
    ImageListops: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    CoolBar2: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    CoolBar3: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton4: TToolButton;
    CoolBar4: TCoolBar;
    ToolBar4: TToolBar;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    N9: TMenuItem;
    Banirusurio1: TMenuItem;
    CompressStream: TBackupFile;
    Label_conect: TLabel;
    bthws: TSpeedButton;
    btdesconectar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    N10: TMenuItem;
    Dadoscadastrais1: TMenuItem;
    Panelaut: TPanel;
    lb1: TLabeledEdit;
    Label3: TLabel;
    lb2: TLabeledEdit;
    lb3: TLabeledEdit;
    Salvarsenha2: TCheckBox;
    btconectar: TBitBtn;
    Label_stat: TLabel;
    Timer_monitor: TTimer;
    Timer_autoupdate: TTimer;
    IdAntiFreeze1: TIdAntiFreeze;
    ICMP: TIdIcmpClient;
    Timer_conect: TTimer;
    Timer_inatividade: TTimer;
    GroupBox4: TGroupBox;
    ListView4: TListView;
    Splitter3: TSplitter;
    Timer_notregistred: TTimer;
    Label_olnotreg: TLabel;
    Label_usrweb: TLabel;
    Label_intra: TLabel;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    TimerDetect: TTimer;
    Label4: TLabel;
    chb_autologin: TCheckBox;
    procedure TrayIcon_menuClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ChatHWS1Click(Sender: TObject);
    procedure btconectarClick(Sender: TObject);
    procedure xcodnectClick(Sender: TObject);
    procedure Timer_onlineTimer(Sender: TObject);
    procedure lb3KeyPress(Sender: TObject; var Key: Char);
    procedure Timer_AtendentesTimer(Sender: TObject);
    procedure Timer_hwsTimer(Sender: TObject);
    procedure EnviarMensagem1Click(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ListView2DblClick(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure ListView3DblClick(Sender: TObject);
    procedure Timer_usrTimer(Sender: TObject);
    procedure lb4Change(Sender: TObject);
    procedure WebsiteHWS1Click(Sender: TObject);
    procedure Autoupdate1Click(Sender: TObject);
    procedure SalvarSenha1Click(Sender: TObject);
    procedure IniciarcomWindows1Click(Sender: TObject);
    procedure Entrarautomaticamente1Click(Sender: TObject);
    procedure CheckBox_aviso1Click(Sender: TObject);
    procedure CheckBox_aviso2Click(Sender: TObject);
    procedure Abrirmodoconferncia1Click(Sender: TObject);
    procedure HWSupdate1Click(Sender: TObject);
    procedure bthwsClick(Sender: TObject);
    procedure btdesconectarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Dadoscadastrais1Click(Sender: TObject);
    procedure TabSheet1Resize(Sender: TObject);
    procedure CoolBar2Resize(Sender: TObject);
    procedure Timer_monitorTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer_autoupdateTimer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ICMPReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure Timer_conectTimer(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Timer_notregistredTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerDetectTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormDockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListView2Change(Sender: TObject; Node: TTreeNode);
    procedure ListView4Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListView3Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Timer_inatividadeTimer(Sender: TObject);
    procedure chb_autologinClick(Sender: TObject);
    procedure Configuraes3Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    xiniShow,
    RefreshListUsrThIni: Boolean;
    axmousepos,axmouseposON: TPoint;
    xupdAtualizaSt: Boolean;
    ListView1_cod,ListView2_cod,ListView3_cod,ListView4_cod,ListView2_tp,
    clbAreas_cod,clbAreas_desc,clbAreas_tp: TStringList;
    activAtn,activAtn2,activAtn3,activAtn4: Boolean;
    //XaxtvUPDATEtimer: Integer;
    AxStatusOn: Integer;
    SysRegLoaded, SysTabLoaded: Boolean;
    xmdl_USR: Boolean;
    xfinalize: Boolean;
    axWinShow,axWinShowExec: Boolean;
    //xcnt_usr,xcnt_axf,xcnt_pass : String;
    function GravarAutentDad(xgrvdad,xgrvConf:Boolean):Boolean;
    function optables:Boolean;
    function sacconect(xcnx:Boolean):Boolean;
    procedure axbtConected(axconected:Boolean);
    procedure AtualizarUsuarios;
    function AtualizarStatus(setIDcb:Integer; IResetRt: Boolean):Boolean;
    function BuscarMdl:Boolean;
    procedure AtualizarUsuariosWeb(xcodwebID:String; IResetRt,xnewList: Boolean);
    procedure SetonlineUsers;
    procedure SendMessage1(var axListView: TListView; var axListView_cod: TStringList; VusrType: Integer);
    function atualizaprg_root:Boolean;
    function updatemod_root(cod_listAX: integer; xcript: Boolean; xnamemod,xchavelastver: String): boolean;
    procedure StartShowWin;
    function atualizamdlsys():Boolean;
    procedure enabledisableButtons(Yaxresul:Boolean; xipresult:String);
    function atualizaPosWin:Boolean;
    function atualizaWinShow(zcShow:Boolean):Boolean;
    { Private declarations }
  public
    inExecMonitor: Boolean;
    clbAreas_SQL: String;
    axipusr: string;
    axListUsr: String;
    xpingSet,ConnectionActive,inMoveActive: Boolean;
    xpingSetTime: TTime;
    //axWebSite, axtpParam: String;
    procedure RetestCnx();
    function RemoteConnection: boolean;
    { Public declarations }
  end;

var
  webchat_menu: Twebchat_menu;
  xMsgMonitorTh : MsgMonitor;
  RefreshListUsrTh : RefreshListUsr;

implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher;

{$R *.dfm}

{$R ../res/hwssac/audio/AudioSac.RES}

procedure Twebchat_menu.TrayIcon_menuClick(Sender: TObject);
begin
      //if xexecutpassdialog then exit;
      //if testblocksys then begin
      if not xfinalize then begin
         inMoveActive:=false;
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
         atualizaWinShow(true);
      end;
      //end;
end;

procedure Twebchat_menu.ApplicationEvents1Minimize(Sender: TObject);
begin
      //if Controlcnfg.vrf39 then
      //if not blocksys and Conectar1.Checked then blocksysexecute;
      //ShowWindow(Application.Handle, SW_HIDE );
      inMoveActive:=false;
      Application.ProcessMessages;
      ShowWindow(Application.Handle, SW_HIDE );
      if axWinShowExec then
         atualizaWinShow(false);
end;

procedure Twebchat_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        axWinShowExec:=not xfinalize;
        if (xfinalize) then begin
            atualizaPosWin;
            //Application.Minimize;
            if TrayIcon_menu.Active then begin
              TrayIcon_menu.Animate:=false;
              TrayIcon_menu.Active:=false;
            end;
            if dm3.CountSecID>0 then begin
               RemoteConnection;
               if ConnectionActive then begin
                  //SetonlineUsers;
                  AtualizarStatus(3,true);
                  dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Atendimento finalizado',dm3.axparmSAC);
               end;
            end;
            Action := caFree;
        end else begin
          Action := caNone;
          ShowWindow(Application.Handle, SW_HIDE );
          Application.Minimize;
        end;
        //if not blocksys and Conectar1.Checked then blocksysexecute;
end;

procedure Twebchat_menu.FormCreate(Sender: TObject);
var apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4:Integer;
begin
     axWinShowExec:=false;
     xupdAtualizaSt:=false;
     TabSheet1.TabVisible:=true;
     TabSheet2.TabVisible:=false;
     TabSheet3.TabVisible:=false;
     Application.ProcessMessages;
     inExecMonitor:=false;
     RefreshListUsrThIni:=true;
     ConnectionActive:=false;
     inMoveActive:=true;
     xpingSetTime:= Now;
     xpingSet:=true;
     enabledisableButtons(false, '');
     xpingSet:=false;
     TrayIcon_menu.Icon:=hwsf.HiconToIcon;
     //ImageListHWS.AddIcon(hwsf.HiconToIcon);
     TrayIcon_menu.Active := True;
     TrayIcon_menu.Hint:='Atendimento'+#13+'aguardando conexão...';
     xfinalize:=false;
     xiniShow:=true;
     //Busca tabelas
     axListUsr:= '';
     ListView1_cod:= TStringList.Create;
     ListView2_cod:= TStringList.Create;
     ListView3_cod:= TStringList.Create;
     ListView4_cod:= TStringList.Create;
     ListView2_tp:= TStringList.Create;
     clbAreas_cod:= TStringList.Create;
     clbAreas_desc:= TStringList.Create;
     clbAreas_tp:= TStringList.Create;
     //20000005
     activAtn:=true;
     activAtn2:=true;
     activAtn3:=true;
     activAtn4:=true;
     dm3.XaxtvUPDATE:=false;
     SysRegLoaded:= false;
     SysTabLoaded:= false;
     dm3.LstTables.Count:=0;
     //XaxtvUPDATEtimer:=0;
     AxStatusOn:=0;
     dm3.axparmSAC:='306';
     lb4.ItemIndex:=0;
     webchat_menu.Left:=Screen.Width-368;
     webchat_menu.Top:=0;
     webchat_menu.Height:=693;
     webchat_menu.Width:=368;
     apsx:=webchat_menu.Left;
     apsy:=webchat_menu.Top;
     apsw:=webchat_menu.Width;
     apsh:=webchat_menu.Height;
     apsv1:=GroupBox1.Height;
     apsv2:=GroupBox3.Height;
     //apsv3:= StrToInt(BoolToStr(GroupBox3.Visible));
     apsv4:=0;
     if dm3.testWindowSize(true,apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4) then begin
        if (apsw>=360) then begin
          webchat_menu.Left:=apsx;
          webchat_menu.Top:=apsy;
          webchat_menu.Width:=apsw;
          webchat_menu.Height:=apsh;
        end;
        GroupBox1.Height:=apsv1;
        GroupBox3.Height:=apsv2;
        axWinShow:= StrToBool(IntToStr(apsv4));
        //GroupBox3.Visible:= StrToBool(IntToStr(apsv3));
     end;
end;

function Twebchat_menu.optables:Boolean;
begin
     try
      Result:=false;
      dm3.TerminateApplication:=false;
      if not SysRegLoaded then SysRegLoaded:=dm3.winsysreg(1,true,false);
      if SysRegLoaded and not SysTabLoaded then begin
        Autoupdate1.Checked:=true;//Controlcnfg.vrf38;
        //Timer_autoupdate.Enabled:=Autoupdate1.Checked;
        IniciarcomWindows1.Checked:=Controlcnfg.vrf01;
        Entrarautomaticamente1.Checked:=Controlcnfg.vrf02;
        chb_autologin.Checked:=Controlcnfg.vrf02;
        CheckBox_aviso1.Checked:=Controlcnfg.vrf39;
        CheckBox_aviso2.Checked:= StrToBool(IntToStr(Controlcnfg.vrf40));
        if EnDecryptString(Controlcnfg.vrf17,15187) = 'NotSavePassKill' then begin
           lb2.Text:='';
           lb3.Text:='';
           lb1.Text:= EnDecryptString(Controlcnfg.vrf94,35412);
           SalvarSenha1.Checked:= false;
           Salvarsenha2.Checked:=false;
        end else begin
           lb2.Text:= EnDecryptString(Controlcnfg.vrf16,23654);
           lb3.Text:= EnDecryptString(Controlcnfg.vrf17,15187);
           lb1.Text:= EnDecryptString(Controlcnfg.vrf94,35412);
           SalvarSenha1.Checked:= true;
           Salvarsenha2.Checked:=true;
        end;
        SysTabLoaded:=dm3.getTablesNms;
      end;
      Result:=true;
     Except
         Result:=false;
     End;
end;

procedure Twebchat_menu.Sair1Click(Sender: TObject);
begin
      inMoveActive:=false;
      TimerDetect.Enabled:=false;
      inMoveActive:=false;
       if hwsf.BtConfirma('Finalizar Atendimento?') then begin
          axWinShowExec:=true;
          Application.Minimize;
          ShowWindow(Application.Handle, SW_HIDE );
          if Timer_conect.Enabled then Timer_conect.Enabled:=false;
          xfinalize:=true;
          Application.ProcessMessages;
          Close;
       end;
       TimerDetect.Enabled:=true;
end;

procedure Twebchat_menu.Minimizar1Click(Sender: TObject);
begin
      inMoveActive:=false;
      //ShowWindow(Application.Handle, SW_HIDE );
      axWinShowExec:=true;
      Application.Minimize;
      ShowWindow(Application.Handle, SW_HIDE );
      Application.ProcessMessages;
end;

procedure Twebchat_menu.Sobre1Click(Sender: TObject);
begin
      inMoveActive:=false;
      hwsf.BtSobre;
end;

procedure Twebchat_menu.ChatHWS1Click(Sender: TObject);
begin
      inMoveActive:=false;
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
      atualizaWinShow(true);
end;

function Twebchat_menu.sacconect(xcnx:Boolean):Boolean;
var cnt_usr,cnt_pass,cnt_web,
    cnt_usrREG,cnt_passREG,cnt_webREG: String;
    axresulconect:Boolean;
begin
      axresulconect:=false;
      //Timer_inatividade.Enabled:=false;
      RemoteConnection;
      if xcnx and (xcodnect.Caption='&Conectar Atendimento') then begin
         if not ConnectionActive then exit;
         axbtConected(false);
         if axWinShow then begin
            axWinShow:=false;
            Application.Restore;
         end;
         try
          if lb1.Text='' then begin
             hwsf.BtMensagem('É necessário digitar o domínio');
             lb1.SetFocus;
             exit;
          end;
          if lb2.Text='' then begin
             hwsf.BtMensagem('É necessário digitar o Usuário');
             lb2.SetFocus;
             exit;
         end;
         if lb3.Text='' then begin
             hwsf.BtMensagem('É necessário digitar a Senha');
             lb3.SetFocus;
             exit;
         end;
         btconectar.Enabled:=false;
         //*****
         Label_stat.Caption:='Aguarde conectando...';
         Label_stat.Repaint;

         dm3.SACconecta_bd(lb2.Text,lb3.Text,'0','0',lb1.Text);
         if dm3.axcod_Usr<>'0' then begin
             if Autoupdate1.Checked then begin
                if atualizaprg_root then exit;
                atualizamdlsys;
             end;
             if dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Atendimento Conectado',dm3.axparmSAC) then begin
                //dm3.SetCountSec2(dm3.LstTables.Table[11],dm3.axcod_web,dm3.axcod_Usr,dm3.axparmSAC,IntToStr(lb4.ItemIndex));
                Timer_online.Enabled:=true;
             end;
            Label_stat.Caption:='';
            TrayIcon_menu.Hint:='Atendimento'+#13+'Conectado';
            xcodnect.Caption:='&Desconectar Atendimento';
            TabSheet1.TabVisible:=false;
            TabSheet2.TabVisible:=true;
            TrayIcon_menu.Animate:=true;
            dm3.XaxtvUPDATE:=false;
            webchat_menu.Caption:='HWSsac '+dm3.ax_UsrName;
            Application.ProcessMessages;
            AtualizarStatus(lb4.ItemIndex,true);
            dm3.AtualizarAtendentes(ListView1,GroupBox1,Splitter1,ListView1_cod,activAtn,true,true,dm3.axcod_web,'not','0');
            Label_intra.Caption:=IntToStr(ListView1_cod.Count)+'  ';
            Label_intra.Repaint;
            BuscarMdl;
            {if dm3.axcod_web = '2' then begin
               GroupBox3.Visible:=true;
               Splitter2.Visible:=true;
               dm3.AtualizarAtendentes(ListView3,GroupBox3,Splitter2,ListView3_cod,activAtn3,false,true,'2','hws','0');
            end;}
            Timer_usr.Enabled:=xmdl_USR;
            Timer_Atendentes.Enabled:=true;
            if dm3.axcod_web = '2' then
               Timer_hws.Enabled:=true;
            Timer_monitor.Enabled:=true;
            //if dm3.ax_UsrMst then begin
               GroupBox4.Visible:=dm3.ax_UsrMst;
               Splitter3.Visible:=dm3.ax_UsrMst;
               Timer_notregistred.Enabled:=true;
               dm3.AtualizarUsrWebNotResgistred(ListView4,GroupBox4,Splitter3,ListView4_cod,activAtn4,dm3.axcod_web);
               Label_olnotreg.Caption:=IntToStr(ListView4_cod.Count)+'  ';
               Label_olnotreg.Repaint;
            //end;
            cnt_usrREG:= EnDecryptString(Controlcnfg.vrf16,23654);
            if SalvarSenha2.Checked then begin
               SalvarSenha1.Checked:= true;
               cnt_passREG:= EnDecryptString(Controlcnfg.vrf17,15187);
               cnt_webREG:= EnDecryptString(Controlcnfg.vrf94,35412);
               if ((cnt_usrREG<>cnt_usr) or
                   (cnt_passREG<>cnt_pass) or
                   (cnt_webREG<>cnt_web)) then
               GravarAutentDad(true,true);
            end else GravarAutentDad(false,true);
            if Entrarautomaticamente1.Checked<>Controlcnfg.vrf02 then begin
               Controlcnfg.vrf02:= Entrarautomaticamente1.Checked;
               dm3.winsysreg(2,false,false);
            end;
            axresulconect:=true;
            axbtConected(true);
            //GetCursorPos(axmouseposON);
            //Timer_inatividade.Enabled:=true;
         end else begin
            dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Autenticação Inválida',dm3.axparmSAC);
            Label_stat.Caption:='Dados Inválidos...';
            Label_stat.Repaint;
            hwsf.BtMensagem('Acesso negado.');
            AtualizarStatus(3,true);
            btconectar.Enabled:=true;
         end;
         if CheckBox_aviso2.Checked then PlaySoundHWS(2);
         except
           TrayIcon_menu.Hint:='Atendimento'+#13+'Desconectado';
           TrayIcon_menu.Animate:=false;
           Label_stat.Caption:='Sem conexão..';
           Label_stat.Repaint;
           btconectar.Enabled:=true;
           //if Entrarautomaticamente1.Checked and not Timer_online.Enabled then Timer_online.Enabled:=true;
           sacconect(false);
         End;
      end else if not xcnx and (xcodnect.Caption='&Desconectar Atendimento') then begin
         axbtConected(false);
         if ((ConnectionActive) and (dm3.CountSecID>0)) then begin
            AtualizarStatus(3,true);
            dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Atendimento finalizado',dm3.axparmSAC);
         end;
         if EnDecryptString(Controlcnfg.vrf16,23654) = 'NotSavePassKill' then begin
            lb1.Text:='';
            lb2.Text:='';
            lb3.Text:='';
         end;
         dm3.XaxtvUPDATE:=true;
         Timer_monitor.Enabled:=false;
         webchat_menu.Caption:='HWSsac';
         dm3.axcod_Usr:='0';
         dm3.ax_UsrName:='';
         btconectar.Enabled:=true;
         Timer_usr.Enabled:=false;
         Timer_Atendentes.Enabled:=false;
         if Timer_hws.Enabled then
            Timer_hws.Enabled:=false;
         //if Timer_inatividade.Enabled then
         //   Timer_inatividade.Enabled:=false;
         Application.ProcessMessages;
         ListView1_cod.Clear;
         ListView2_cod.Clear;
         ListView3_cod.Clear;
         ListView4_cod.Clear;
         ListView2_tp.Clear;
         clbAreas_cod.Clear;
         clbAreas_desc.Clear;
         clbAreas_tp.Clear;
         ListView1.Clear;
         ListView2.Items.Clear;
         ListView3.Clear;
         dm3.XaxtvUPDATE:=false;
         //if dm3.CountSecID>0 then
         //   dm3.SetCountSec1(LstTables.Table[10],axcod_web,axcod_Usr,'Atendimento desconectado',axparmSAC);
         TrayIcon_menu.Animate:=false;
         TrayIcon_menu.Hint:='Atendimento'+#13+'Desconectado';
         xcodnect.Caption:='&Conectar Atendimento';
         TabSheet1.TabVisible:=true;
         TabSheet2.TabVisible:=false;
         if (ConnectionActive) then
            dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Autenticação Inválida',dm3.axparmSAC);
         Label_stat.Caption:='Desconectado...';
         btconectar.Enabled:=true;
         //AtualizarStatus(3,true);
         axresulconect:=true;
      end;
      Result:=axresulconect;
end;

procedure Twebchat_menu.axbtConected(axconected:Boolean);
begin
    N10.Visible:=axconected;
    Dadoscadastrais1.Visible:=axconected;
end;

procedure Twebchat_menu.btconectarClick(Sender: TObject);
begin
      sacconect(true);
end;

procedure Twebchat_menu.xcodnectClick(Sender: TObject);
begin
      inMoveActive:=false;
      sacconect(xcodnect.Caption='&Conectar Atendimento');
end;

procedure Twebchat_menu.Timer_onlineTimer(Sender: TObject);
begin
      SetonlineUsers;
end;

procedure Twebchat_menu.SetonlineUsers;
begin
      if ((lb4.ItemIndex<3) and inMoveActive) then
         RemoteConnection;
      if (ConnectionActive and inMoveActive and (lb4.ItemIndex<3)) then begin
         RefreshListUsrThini:=false;
         RefreshListUsrTh := RefreshListUsr.Create(true);
         RefreshListUsrTh.FreeOnTerminate := true;
         RefreshListUsrTh.Priority := tpIdle;//tpIdle, tpLowest, tpLower, tpNormal, tpHigher, tpHighest, tpTimeCritical
         RefreshListUsrTh.Resume;
      end;
end;

procedure Twebchat_menu.lb3KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
      if btconectar.Enabled then btconectar.Click;
end;

procedure Twebchat_menu.AtualizarUsuarios;
begin
     //Usr
end;

procedure Twebchat_menu.RetestCnx();
begin
     {if TimerDetect.Enabled then begin
        inMoveActive:=false;
        TimerDetect.Enabled:=inMoveActive;
     end;}
     Application.ProcessMessages;
     xpingSetTime:=Now-StrToTime('00:06:00');
     RemoteConnection;
end;

function Twebchat_menu.AtualizarStatus(setIDcb:Integer; IResetRt: Boolean):Boolean;
begin
     RemoteConnection;
     if not ConnectionActive then exit;
     if dm3.XaxtvUPDATE then exit;
     dm3.XaxtvUPDATE:=true;
     Result:=false;
     try
         if dm3.ds_sql2.Active then dm3.ds_sql2.Close;
         dm3.ds_sql2.CommandText:= 'SELECT codigo,cp37 FROM '+dm3.LstTables.Table[5]+
                                   ' WHERE codigo='+#39+dm3.axcod_Usr+#39;
         dm3.ds_sql2.Open;
         if dm3.ds_sql2.FieldByName('cp37').AsInteger<>setIDcb then begin
            With dm3.executa do begin
                 CommandText:= 'UPDATE '+dm3.LstTables.Table[5]+' SET cp37=:p0 WHERE codigo=:p1';
                 Params[0].AsInteger:=setIDcb;
                 Params[1].AsInteger:=StrtoInt(dm3.axcod_Usr);
                 Execute;
            end;
         end;
         dm3.ds_sql2.Close;
         dm3.XaxtvUPDATE:=false;
         Result:=true;
     except
         dm3.XaxtvUPDATE:=false;
     end;
end;

procedure Twebchat_menu.Timer_AtendentesTimer(Sender: TObject);
begin
     if inMoveActive then RemoteConnection;
     if (ConnectionActive and inMoveActive) then begin
        //if not
        dm3.AtualizarAtendentes(ListView1,GroupBox1,Splitter1,ListView1_cod,activAtn,true,true,dm3.axcod_web,'not','0');
        //then RetestCnx();
        Label_intra.Caption:=IntToStr(ListView1_cod.Count)+'  ';
        Label_intra.Repaint;
     end;
end;

procedure Twebchat_menu.Timer_hwsTimer(Sender: TObject);
begin
      if GroupBox3.Visible then begin
         if inMoveActive then RemoteConnection;
         if (ConnectionActive and inMoveActive) then
            //if not
            dm3.AtualizarAtendentes(ListView3,GroupBox3,Splitter2,ListView3_cod,activAtn3,false,true,'2','hws','0');
            //then RetestCnx();
      end;
end;

procedure Twebchat_menu.EnviarMensagem1Click(Sender: TObject);
begin
      SendMessage1(ListView1,ListView1_cod,0);
end;

procedure Twebchat_menu.SendMessage1(var axListView: TListView; var axListView_cod: TStringList; VusrType: Integer);
var VusrName,VusrXtp,VusrStatCaption: String;
    VusrCod, VusrStat: Integer;
begin
      try
         VusrName:=axListView.Selected.Caption;
         VusrCod:=StrToInt(axListView_cod.Strings[axListView.ItemIndex]);
         VusrStat:=axListView.Selected.ImageIndex;
         VusrXtp:=dm3.axparmSAC;
      except
         exit;
      end;
      Case VusrStat of
           1: VusrStatCaption:='Ocupado';
           2: VusrStatCaption:='Ausente';
           3: VusrStatCaption:='Desconectado';
      End;
      dm3.OpenChat(false,VusrName,VusrXtp,VusrStatCaption,VusrCod,VusrStat,VusrType);
end;

procedure Twebchat_menu.ListView1DblClick(Sender: TObject);
begin
      EnviarMensagem1.Click;
end;

function Twebchat_menu.BuscarMdl:Boolean;
var xidlist: Integer;
    axdescArea,axwebMST: String;
    axinMSTusr: Boolean;
function loadicomdl(xcodic:String):TBitmap;
var xicotmp: TMemoryStream;
    codJpeg: TJPEGImage;
    codGraphic: TBitmap;
begin
   try
     xicotmp:= TMemoryStream.Create;
     xicotmp.Clear;
     xicotmp.Position:=0;
     With dm3.executa4 do begin
        CommandText:='SELECT codigo,ico,img FROM '+EnDecryptString(Serverconect.vrf24,37249)+' WHERE codigo='+#39+xcodic+#39;
        Open;
        if not fields[1].IsNull then begin
           TBlobField(FieldByName('ico')).SaveToStream(xicotmp);
           xicotmp.Position:=0;
        end;
        Close;
        codGraphic:=TBitmap.Create;
        if xicotmp.Size>0 then begin
           xicotmp.Position:=0;
           codJpeg:= TJPEGImage.Create;
           codJpeg.LoadFromStream(xicotmp);
           With codGraphic do begin
                Width := codJpeg.Width;
                Height := codJpeg.Height;
                Canvas.Draw(0,0,codJpeg);
           end;
        end;
        Result:=codGraphic;
     end;
   except
     Result:=nil;
   end;
end;
begin
    if dm3.XaxtvUPDATE then exit;
    dm3.XaxtvUPDATE:=true;
    try
      //módulos
      With dm3.ds_sql6 do begin
           if Active then Close;
           axinMSTusr:=((dm3.axcod_web = '2') and (dm3.ax_UsrMst));
           if axinMSTusr then begin
             CommandText:='SELECT A.codigo,A.cod_ent,A.cod_md,A.xtp,B.codigo,B.descricao,D.website FROM '+
                          dm3.LstTables.Table[5]+'_ax A,'+
                          EnDecryptString(Serverconect.vrf24,37249)+' B, '+
                          dm3.LstTables.Table[5]+' C, '+
                          EnDecryptString(Serverconect.vrf29,37249)+' D'+
                          ' WHERE B.codigo=A.cod_md '+
                          ' AND C.codigo=A.cod_ent '+
                          ' AND D.codigo=C.cod_ent '+
                          ' GROUP BY D.codigo,B.descricao'+
                          ' ORDER BY A.cod_ent,A.xtp';
           end else begin
             CommandText:='SELECT A.codigo,A.cod_ent,A.cod_md,A.xtp,B.codigo,B.descricao FROM '+
                          dm3.LstTables.Table[5]+'_ax A,'+
                          EnDecryptString(Serverconect.vrf24,37249)+' B'+
                          ' WHERE A.cod_ent='+#39+dm3.axcod_Usr+#39+
                          ' AND B.codigo=A.cod_md ORDER BY A.xtp';
           end;
           Open;
           First;
           ListView2.Items.Clear;
           clbAreas_cod.Clear;
           clbAreas_desc.Clear;
           clbAreas_tp.Clear;
           ImageList_areas.Clear;
           ImageList_areas.AddImages(ImageList_on);
           ListView2_cod.Clear;
           ListView2_tp.Clear;
           xidlist:=0;
           clbAreas_SQL:='';
           xmdl_USR:= (recordcount>0);
           if xmdl_USR then begin
             While not Eof do begin
               ListView2_cod.Add('0');
               ListView2_tp.Add('0');
               axdescArea:=fieldbyname('descricao').AsString;
               if (Copy(axdescArea,1,3) = 'SAC') then
                   axdescArea:=Copy(axdescArea,5,Length(axdescArea));
               if axinMSTusr then begin
                   axwebMST:=fieldbyname('website').AsString;
                   axwebMST:=copy(axwebMST,5,length(axwebMST));
                   axdescArea:=axwebMST+'->'+axdescArea;
               end;
               clbAreas_desc.Add(axdescArea);
               ListView2.Items.Add(nil,axdescArea);
               ImageList_areas.Insert((xidlist+4),loadicomdl(fieldbyname('cod_md').AsString),nil);
               ListView2.Items.Item[xidlist].ImageIndex:=xidlist+4;
               ListView2.Items.Item[xidlist].SelectedIndex:=xidlist+4;
               clbAreas_cod.Add(fieldbyname('cod_md').AsString);
               clbAreas_tp.Add(fieldbyname('xtp').AsString);
               if clbAreas_SQL<>'' then clbAreas_SQL:=clbAreas_SQL+' OR ';
               if axinMSTusr then
                  clbAreas_SQL:=clbAreas_SQL+'A.xtp='+#39+fieldbyname('xtp').AsString+#39
               else clbAreas_SQL:=clbAreas_SQL+'xtp='+#39+fieldbyname('xtp').AsString+#39;
               Inc(xidlist);
               Next;
             end;
           end;
           GroupBox2.Visible:=xmdl_USR;
           Splitter1.Visible:=xmdl_USR;
           if not xmdl_USR then GroupBox1.Align:= alClient
           else GroupBox1.Align:= alTop;
           Close;
      end;
      Result:=true;
      {if not TrayIcon_menu.Animate then begin
         TrayIcon_menu.Hint:='Atendimento'+#13+'Conectado';
         TrayIcon_menu.Animate:=true;
      end;}
    except
      Result:=false;
      {if TrayIcon_menu.Animate then begin
         TrayIcon_menu.Hint:='Atendimento'+#13+'Desonectado';
         TrayIcon_menu.Animate:=false;
      end;
      Application.ProcessMessages; }
    end;
    Application.ProcessMessages;
    dm3.XaxtvUPDATE:=false;
    if xmdl_USR then begin
       AtualizarUsuariosWeb(dm3.axcod_web,true,true);
       Label_usrweb.Caption:=IntToStr(ListView2_cod.Count-clbAreas_cod.Count)+'  ';
       Label_usrweb.Repaint;
    end;
end;

procedure Twebchat_menu.AtualizarUsuariosWeb(xcodwebID:String; IResetRt,xnewList: Boolean);
var xitID,xitIDult,xSetTP: Integer;
    xidTP,xuscod,xtpusr,xcodwID: String;
    MyTreeNode: TTreeNode;
    xidArfr,xidArfrOut,xidArfrAX,xidArRm,xidArRm1,xidArRm2: Integer;
    xupadateTN: Integer;
    axinMSTusr,xverifyXtpMST: Boolean;
begin
     //exit;
     RemoteConnection;
     if not ConnectionActive then exit;
     if dm3.XaxtvUPDATE then exit;
     dm3.XaxtvUPDATE:=true;
     try
       Application.ProcessMessages;
       With dm3.ds_sql7 do begin
          if Active then Close;
          axinMSTusr:=((dm3.axcod_web = '2') and (dm3.ax_UsrMst));
          if axinMSTusr then begin
             CommandText:= 'SELECT A.codigo,A.cp3,A.cp13,A.cp37,A.xtp,B.website FROM '+
                           dm3.LstTables.Table[12]+' A, '+
                           EnDecryptString(Serverconect.vrf29,37249)+' B'+
                           ' WHERE ('+clbAreas_SQL+')'+
                           ' AND A.cp37<3'+
                           ' AND B.codigo=A.cod_ent'+
                           ' ORDER BY A.cod_ent,A.xtp,A.cp38';
          end else begin
             CommandText:= 'SELECT codigo,cp3,cp13,cp37,xtp FROM '+dm3.LstTables.Table[12]+
                           ' WHERE cod_ent='+#39+xcodwebID+#39+
                           ' AND ('+clbAreas_SQL+')'+
                           ' AND cp37<3'+
                           ' ORDER BY xtp,cp38,cp38';
          end;
          Open;
          activAtn2:=(RecordCount>0);
          xitIDult:=0;
          xidTP:='';
          xcodwID:='';
          xSetTP:=-1;
          xidArfr:=0;
          xidArfrOut:=0;
          xidArRm:=0;
          xverifyXtpMST:=false;
          if (not xnewList) then begin
               xidArRm1:=ListView2.Items.Count-1;
               for xidArfrAX:=xidArRm1 downto 0 do begin
                   if ListView2_cod.Strings[xidArfrAX]<>'0' then
                   if not Locate('codigo',ListView2_cod.Strings[xidArfrAX],[]) then begin
                      MyTreeNode := ListView2.Items.Item[xidArfrAX];
                      ListView2.Select(MyTreeNode);
                      ListView2.Selected.Delete;
                      ListView2_cod.Delete(xidArfrAX);
                      ListView2_tp.Delete(xidArfrAX);
                   end;
               end;
          end;
          if activAtn2 then begin
             First;
             While not Eof do begin
                 if axinMSTusr then
                    xverifyXtpMST:=((xidTP<>fieldbyname('xtp').AsString) or
                                    (xcodwID<>fieldbyname('cod_ent').AsString))
                 else xverifyXtpMST:=(xidTP<>fieldbyname('xtp').AsString);
                 if xverifyXtpMST then begin
                    xidTP:=fieldbyname('xtp').AsString;
                    if clbAreas_tp.Count = 1 then begin
                       Inc(xSetTP);
                       xidArfr:=xSetTP;
                    end else begin
                       for xidArfrAX:=xidArfrOut to clbAreas_tp.Count-1 do begin
                          Inc(xSetTP);
                          if clbAreas_tp.Strings[xidArfrAX]=xidTP then begin
                             xidArfr:=xSetTP;
                             Inc(xidArfrOut);
                             break;
                          end else Inc(xidArfrOut);
                       end;
                    end;
                 end else Inc(xSetTP);
                 Inc(xSetTP);
                 xuscod:=fieldbyname('codigo').AsString;
                 xtpusr:=fieldbyname('xtp').AsString;
                 if (xnewList) then begin
                     MyTreeNode := ListView2.Items.Item[xidArfr];
                     ListView2.Items.AddChild(MyTreeNode,(fieldbyname('cp3').AsString));
                     ListView2_cod.Insert(xSetTP,xuscod);
                     ListView2_tp.Insert(xSetTP,xtpusr);
                     if not MyTreeNode.Expanded then
                        MyTreeNode.Expand(true);
                 end else begin
                     xupadateTN:=0;
                     if (xSetTP>=ListView2_cod.Count) then xupadateTN:=1
                     else if ListView2_cod.Strings[xSetTP]<>xuscod then xupadateTN:=2;
                     if xupadateTN>0 then begin
                        MyTreeNode := ListView2.Items.Item[xidArfr];
                        ListView2.Items.AddChild(MyTreeNode,(fieldbyname('cp3').AsString));
                        ListView2_cod.Insert(xSetTP,xuscod);
                        ListView2_tp.Insert(xSetTP,xtpusr);
                        if not MyTreeNode.Expanded then
                           MyTreeNode.Expand(true);
                     end;
                 end;
                 MyTreeNode:=ListView2.Items.Item[xSetTP];
                 if FieldByName('cp37').AsInteger<>MyTreeNode.ImageIndex then begin
                    MyTreeNode.ImageIndex:=FieldByName('cp37').AsInteger;
                    MyTreeNode.SelectedIndex:=FieldByName('cp37').AsInteger;
                 end;
                 Next;
             end;
          end else begin

          end;
          Close;
       end;
       dm3.XaxtvUPDATE:=false;
     except
       //RetestCnx();
       dm3.XaxtvUPDATE:=false;
     end;
end;

procedure Twebchat_menu.MenuItem3Click(Sender: TObject);
var VusrName,VusrXtp, VusrStatCaption: String;
    VusrCod, VusrType, VusrStat,VidSt: Integer;
begin
      try
         VidSt:=ListView2.Selected.AbsoluteIndex;
         VusrName:=ListView2.Selected.Text;
         VusrCod:=StrToInt(ListView2_cod.Strings[VidSt]);
         VusrXtp:=ListView2_tp.Strings[VidSt];
      except
         exit;
      end;
      if VusrCod=0 then exit;
      VusrType:=1;
      VusrStat:=ListView2.Selected.ImageIndex;
      VusrStatCaption:='';
      Case VusrStat of
           1: VusrStatCaption:='O usuário está em outra Seção do Atendimento.';
           2: VusrStatCaption:='O usuário está Ausente.';
           3: VusrStatCaption:='O usuário está Desconectado.';
      End;
      if VusrStatCaption<>'' then begin
         hwsf.BtMensagem(VusrStatCaption);
         exit;
      end;
      dm3.OpenChat(true,VusrName,VusrXtp,VusrStatCaption,VusrCod,VusrStat,VusrType);
end;

procedure Twebchat_menu.ListView2DblClick(Sender: TObject);
begin
      MenuItem3.Click;
end;

procedure Twebchat_menu.MenuItem7Click(Sender: TObject);
begin
      SendMessage1(ListView3,ListView3_cod,0);
end;

procedure Twebchat_menu.ListView3DblClick(Sender: TObject);
begin
      MenuItem7.Click;
end;

procedure Twebchat_menu.Timer_usrTimer(Sender: TObject);
begin
     if inMoveActive then RemoteConnection;
     if (ConnectionActive and inMoveActive) then begin
        AtualizarUsuariosWeb(dm3.axcod_web,true,false);
        Label_usrweb.Caption:=IntToStr(ListView2_cod.Count-clbAreas_cod.Count)+'  ';
        Label_usrweb.Repaint;
     end;
end;

procedure Twebchat_menu.lb4Change(Sender: TObject);
begin
    //if xupdAtualizaSt then exit;
    inMoveActive:=false;
    if TabSheet1.TabVisible then AxStatusOn:=lb4.ItemIndex
    else if TabSheet2.TabVisible then begin
       if AxStatusOn<>lb4.ItemIndex then begin
          if not AtualizarStatus(lb4.ItemIndex,true) then begin
             lb4.ItemIndex:=AxStatusOn
          end else begin
             AxStatusOn:=lb4.ItemIndex;
             SetonlineUsers;
             dm3.AtualizarAtendentes(ListView1,GroupBox1,Splitter1,ListView1_cod,activAtn,true,true,dm3.axcod_web,'not','0');
          end;
       end;
    end;
end;

procedure Twebchat_menu.StartShowWin;
var xdesconectedset:Boolean;
begin
    if xiniShow then begin
       xiniShow:=false;
       xdesconectedset:=true;
       if optables then begin
          dm3.SetCountSec1(dm3.LstTables.Table[10],'0','0','Iniciando Programa',dm3.axparmSAC);
         if Entrarautomaticamente1.Checked then
            if sacconect(true) then begin
               xdesconectedset:=false;
               Application.Minimize;
               ShowWindow(Application.Handle, SW_HIDE );
               Application.ProcessMessages;
            end;
       end;
       if (xdesconectedset) then TrayIcon_menu.Hint:='Atendimento'+#13+'Desconectado';
    end;
end;

procedure Twebchat_menu.WebsiteHWS1Click(Sender: TObject);
begin
     inMoveActive:=false;
     JumpTo('www.hws.com.br');
end;

procedure Twebchat_menu.Autoupdate1Click(Sender: TObject);
begin
       inMoveActive:=false;
       Autoupdate1.Checked:=not Autoupdate1.Checked;
       //Timer_autoupdate.Enabled:=Autoupdate1.Checked;
       Controlcnfg.vrf38:= Autoupdate1.Checked;
       dm3.winsysreg(2,false,false);
end;

function Twebchat_menu.GravarAutentDad(xgrvdad,xgrvConf:Boolean):Boolean;
begin
    if xgrvdad then begin
       Controlcnfg.vrf16:= EnDecryptString(lb2.Text,23654);
       Controlcnfg.vrf17:= EnDecryptString(lb3.Text,15187);
       Controlcnfg.vrf94:= EnDecryptString(lb1.Text,35412);
    end else begin
       Controlcnfg.vrf16:= EnDecryptString('NotSavePassKill',23654);
       Controlcnfg.vrf17:= EnDecryptString('NotSavePassKill',15187);
       Controlcnfg.vrf94:= EnDecryptString('NotSavePassKill',35412);
    end;
    if xgrvConf then dm3.winsysreg(2,false,false);
end;

procedure Twebchat_menu.SalvarSenha1Click(Sender: TObject);
var xchecksav,xchecksavConf:Boolean;
begin
       inMoveActive:=false;
       xchecksav:= not SalvarSenha1.Checked;
       SalvarSenha1.Checked:= xchecksav;
       Salvarsenha2.Checked:= xchecksav;
       xchecksavConf:=hwsf.BtConfirma('Gravar configurações para autenticação?');
       GravarAutentDad(xchecksav,xchecksavConf);
       if not xchecksavConf then hwsf.BtMensagem('Para retornar as configurações, reinicie o HWSsac');
end;

procedure Twebchat_menu.IniciarcomWindows1Click(Sender: TObject);
begin
       inMoveActive:=false;
       IniciarcomWindows1.Checked:= not IniciarcomWindows1.Checked;
       Controlcnfg.vrf01:= IniciarcomWindows1.Checked;
       dm3.winsysreg(2,false,false);
end;

procedure Twebchat_menu.Entrarautomaticamente1Click(Sender: TObject);
var xloginauto:Boolean;
begin
       inMoveActive:=false;
       xloginauto:= not Entrarautomaticamente1.Checked;
       Entrarautomaticamente1.Checked:= xloginauto;
       chb_autologin.Checked:=xloginauto;
       Controlcnfg.vrf02:= xloginauto;
       dm3.winsysreg(2,false,false);
end;

procedure Twebchat_menu.CheckBox_aviso1Click(Sender: TObject);
begin
       inMoveActive:=false;
       CheckBox_aviso1.Checked:= not CheckBox_aviso1.Checked;
       Controlcnfg.vrf39:= CheckBox_aviso1.Checked;
       dm3.winsysreg(2,false,false);
end;

procedure Twebchat_menu.CheckBox_aviso2Click(Sender: TObject);
begin
       inMoveActive:=false;
       CheckBox_aviso2.Checked:= not CheckBox_aviso2.Checked;
       Controlcnfg.vrf40:= StrToInt(BoolToStr(CheckBox_aviso2.Checked));
       dm3.winsysreg(2,false,false);
end;

procedure Twebchat_menu.Abrirmodoconferncia1Click(Sender: TObject);
begin
      //abrir conferência
      dm3.open_modulo('HWSsacconf.exe','235','');
end;

function Twebchat_menu.atualizaprg_root:Boolean;
var xidprog: Integer;
    StrLst : TStringList;
    xverinst,xmontafilter,xnamemod,xchavelastver: String;
    xupdatenow,xcript: Boolean;
    axshowing: Boolean;
begin
        Result:=false;
        xnamemod:='HWSsac.exe';
        StrLst := TStringList.Create;
        xmontafilter:='';
        StrLst.Clear;
        StrLst:=FileVerInfo(Application.ExeName);
        if StrLst.Count > 0 then xverinst:=StrLst.Strings[4]
        else xverinst:='';
        if xverinst<>'' then
           xmontafilter:=' WHERE mdl='+#39+xnamemod+#39;
        xupdatenow:= False;
        if xmontafilter<>'' then begin
          With dm3.executa3 do begin
            CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt FROM '+EnDecryptString(Serverconect.vrf24,37249)+
                       xmontafilter;
            Open;
            First;
            if Locate('mdl',xnamemod,[]) then begin
               if fieldbyname('lastver').AsString<>xverinst then begin
                  xupdatenow:= True;
                  xidprog:=fieldbyname('codigo').AsInteger;
                  xcript:=StrToBool(fieldbyname('cpt').AsString);
                  xchavelastver:=fieldbyname('lastver').AsString;
               end;
            end;
            Close;
          end;
        end;
        if xupdatenow then begin
            if not Autoupdate1.Checked then begin
               if not hwsf.BtConfirma('HWSupdate encontrou nova versão disponível, atualizar agora?') then begin
                  StrLst.Free;
                  exit;
               end;
            end;
            dm3.SetCountSec1(dm3.LstTables.Table[10],dm3.axcod_web,dm3.axcod_Usr,'Atualizando sistema',dm3.axparmSAC);
            Label_stat.Caption:='Atualizando sistema'+#13+'O módulo será reiniciado';
            Label_stat.Repaint;
            if not updatemod_root(xidprog,xcript,xnamemod,xchavelastver) then begin
               StrLst.Free;
               hwsf.BtMensagem('Erro na atualização, tente novamente.');
               exit;
            end else begin
               hwsf.BtMensagem('Atualização efetuada com êxito.'+#13+'O sistema será reiniciado.');
            end;
            Result:=true;
        end;
        StrLst.Free;
end;

function Twebchat_menu.updatemod_root(cod_listAX: integer; xcript: Boolean; xnamemod,xchavelastver: String): boolean;
var OutMS_mod,OutMS_tmp: TMemoryStream;
    xchr,xcmod,xordtmp,xpercax,xpercax2: integer;
    c_mod : byte;
    xchavecod,xfilepath_mod,xfilepath_mod2: String;
    Success: Boolean;
    xperc: Real;

    procedure AtualizaExeRoot; // procedure to delete the current program
      function GetTmpFileName(ext: string): string;
      var pc: PChar;
      begin
          pc := StrAlloc(MAX_PATH + 1);
          GetTempFileName(PChar(ExtractTempDir), 'EZC', 0, pc);
          Result := string(pc);
          Result := ChangeFileExt(Result, ext);
          StrDispose(pc);
      end;
    var batchfile: TStringList;
        batchname: string;
        apagarexe : string;
    begin
        apagarexe :=Application.ExeName;
        if (TDRiveType(GetDriveType(PChar('C:\'))) = dtFloppy) or (TDRiveType(GetDriveType(PChar('C:\'))) = dtFixed) then begin
          batchname := GetTmpFileName('.bat');
          FileSetAttr(ParamStr(0), 0);
          batchfile := TStringList.Create;
          with batchfile do begin
            try
              Add(':Label1');
              Add('del "'+ParamStr(0)+'"');
              Add('if Exist "'+ParamStr(0)+'" goto Label1');
              Add('del "'+apagarexe+'"');
              Add('copy "'+ExtractTempDir+ExtractFileName(apagarexe)+'" "'+apagarexe+'"');
              Add('del "'+apagarexe+'.BKP"');
              Add('del "'+ExtractTempDir+ExtractFileName(apagarexe)+'"');
              Add('"'+apagarexe+'"');
              Add('del "'+batchname+'"');
              SaveToFile(batchname);
              ChDir(ExtractTempDir);
              WinExec(PChar(batchname), SW_HIDE);
            finally
              batchfile.Free;
            end;
            TrayIcon_menu.Active := False;
            //If TrayIcon_menu <> Nil then FreeAndNil(TrayIcon_menu);
            Application.Terminate;
          end;
        end;
    end;
begin
     inMoveActive:=false;
     TimerDetect.Enabled:=false;
     Result:=true;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       xfilepath_mod:='';
       TrayIcon_menu.Hint:='HWSsac Atualizando'+#13+'aguarde...';
       Label_stat.Caption:='Verificando atualizações';
       axWinShowExec:=false;
       {Application.Minimize;
       ShowWindow(Application.Handle, SW_HIDE );
       Application.ProcessMessages;}
       With dm3.ds_sql2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24,37249)+'_ax '+
                       'WHERE cod_mod='+#39+InttoStr(cod_listAX)+#39' ORDER BY ordem';
            Open;
            First;
            OutMS_mod.Seek(0,soFromBeginning);
            xperc:=70/RecordCount;
            xpercax2:=1;
            While not Eof do begin
                xpercax:=StrtoInt(formatfloat('0',xperc*xpercax2))+30;
                if xpercax > 100 then xpercax:=100;
                Label_stat.Caption:='Atualizando módulos do sistema'+#13+'aguarde...';
                //loadx.Progressloading.Position:=xpercax;
                TrayIcon_menu.Hint:='HWSsac Atualizando'+#13+IntToStr(xpercax)+'%';
                Inc(xpercax2);
                OutMS_tmp.Clear;
                OutMS_tmp.Seek(0,soFromBeginning);
                TBlobField(FieldByName('img')).SaveToStream(OutMS_tmp);
                OutMS_tmp.Seek(0,soFromBeginning);
                if xcript then begin
                   xchavecod:=fieldbyname('codigo').AsString;
                   xchr:=HexToInt(xnamemod+xchavecod+xchavelastver+Inttostr(cod_listAX));
                   OutMS_tmp:=EnDecryptStream(OutMS_tmp,xchr);
                   OutMS_tmp.Seek(0,soFromBeginning);
                end;
                for xcmod:=0 to OutMS_tmp.Size-1 do begin
                    OutMS_tmp.Read(c_mod,1);
                    OutMS_mod.Write(c_mod,1);
                end;
                Next;
            end;
            Close;
       end;
       OutMS_mod.Seek(0,soFromBeginning);
       if OutMS_mod.Size > 0 then begin
          xfilepath_mod:=Application.ExeName;
          xfilepath_mod2:=ExtractFilePath(Application.ExeName);
          if FileExists(xfilepath_mod) then
             CopyFile(Pchar(xfilepath_mod),Pchar(xfilepath_mod+'.BKP'),True);
          OutMS_mod.Seek(0,soFromBeginning);
          Success := CompressStream.RestoreFromStream(OutMS_mod,ExtractTempDir);
          if not Success then begin
             if FileExists(xfilepath_mod+'.BKP') then
                MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
             OutMS_mod.Free;
             Result:=false;
             Exit;
          end else begin
             Label_stat.Caption:='Módulo atualizado com sucesso.';
          end;
          AtualizaExeRoot;
       end else begin
          Label_stat.Caption:='Iniciando...';
          Label_stat.Repaint;
          Result:=false;
       end;
       OutMS_mod.Free;
       TrayIcon_menu.Hint:='Atendimento'+#13+'Conectado';
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod+'.BKP') then
          MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
       Result:=false;
     End;
     TimerDetect.Enabled:=true;
end;

procedure Twebchat_menu.HWSupdate1Click(Sender: TObject);
begin
      inMoveActive:=false;
      if not atualizaprg_root then
      if not atualizamdlsys then
         hwsf.BtMensagem('O sistema está atualizado.');
end;

procedure Twebchat_menu.bthwsClick(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
      {if dm3.axcod_web <> '2' then begin
         JumpTo('www.hws.com.br');
      end else begin}
      {if GroupBox3.Visible then begin
         Splitter2.Visible:=false;
         GroupBox3.Visible:=false;
         bthws.Down:=false;
      end else begin
         //if dm3.ax_UsrMst then begin
         //  GroupBox4.Visible:=false;
         //   Splitter3.Visible:=false;
         //end;
         GroupBox3.Visible:=true;
         Splitter2.Visible:=true;
         //if dm3.ax_UsrMst then begin
         //   GroupBox4.Visible:=true;
         //   Splitter3.Visible:=true;
         //end;
         bthws.Down:=true;
         dm3.AtualizarAtendentes(ListView3,GroupBox3,Splitter2,ListView3_cod,activAtn3,false,true,'2','hws','0');
      end;
      //end;
      }
end;

procedure Twebchat_menu.btdesconectarClick(Sender: TObject);
begin
      if hwsf.BtConfirma('Desconectar Atendimento?') then begin
         Timer_online.Enabled:=false;
         sacconect(false);
      end;
end;

procedure Twebchat_menu.SpeedButton1Click(Sender: TObject);
begin
      Sair1.Click;
end;

procedure Twebchat_menu.Dadoscadastrais1Click(Sender: TObject);
begin
      //Dados cadastrais
      inMoveActive:=false;
      dm3.open_modulo('HWSsaccad.exe','236','');
end;

function Twebchat_menu.atualizamdlsys():Boolean;
var xstatinst,StrLst: TStringList;
    dirdefault,xdirpthinst: String;
    xerror,StrLstADD,StrLstADDok,axshowing: Boolean;
    function updatemod(xcodmod: integer; xcodmodPai: integer; xcpt: Boolean; xmdl,xlastver,xpathextract: string): boolean;
    var OutMS_mod,OutMS_tmp: TMemoryStream;
        xchr,xcmod,xordtmp: integer;
        c_mod : byte;
        xfilepath_mod,xfilepath_mod2: String;
        Success: Boolean;
        function HexToInt(const HexStr: string): Word;
        var x_for:integer;
            result_int: real;
        begin
            result_int := 0;
            for x_for:=1 to Length(HexStr) do begin
                result_int:= result_int+ord(HexStr[x_for]);
            end;
            result_int:=result_int*25.55;
            if (result_int > 65535) then
            while (result_int > 65535) do begin
                 result_int:= result_int - 53;
            end;
            Result := StrtoInt(FormatFloat('0',result_int));
        end;
    begin
        Result:=true;
        Try
           OutMS_mod:= TMemoryStream.Create;
           OutMS_mod.Clear;
           OutMS_tmp:= TMemoryStream.Create;
           OutMS_tmp.Clear;
           xfilepath_mod:='';
           With dm3.ds_sql11 do begin
                CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24,37249)+'_ax '+
                              'WHERE cod_mod='+#39+InttoStr(xcodmodPai)+#39' ORDER BY ordem';
                Application.ProcessMessages;
                Open;
                Application.ProcessMessages;
                First;
                OutMS_mod.Seek(0,soFromBeginning);
                While not Eof do begin
                    OutMS_tmp.Clear;
                    OutMS_tmp.Seek(0,soFromBeginning);
                    TBlobField(FieldByName('img')).SaveToStream(OutMS_tmp);
                    OutMS_tmp.Seek(0,soFromBeginning);
                    if xcpt then begin
                       xchr:=HexToInt(xmdl+fieldbyname('codigo').AsString+xlastver+Inttostr(xcodmodPai));
                       OutMS_tmp:=EnDecryptStream(OutMS_tmp,xchr);
                       OutMS_tmp.Seek(0,soFromBeginning);
                    end;
                    for xcmod:=0 to OutMS_tmp.Size-1 do begin
                        OutMS_tmp.Read(c_mod,1);
                        OutMS_mod.Write(c_mod,1);
                    end;
                    Next;
                    Application.ProcessMessages;
                end;
                Close;
           end;
           With dm3.executa do begin
                OutMS_mod.Seek(0,soFromBeginning);
                if OutMS_mod.Size > 0 then begin
                   xfilepath_mod:=xpathextract+xmdl;
                   xfilepath_mod2:=xpathextract;
                   if FileExists(xfilepath_mod) then
                      MoveFile(Pchar(xfilepath_mod),Pchar(xfilepath_mod+'.BKP'));
                   OutMS_mod.Seek(0,soFromBeginning);
                   Success := CompressStream.RestoreFromStream(OutMS_mod,xfilepath_mod2);
                   if not Success then begin
                      if FileExists(xfilepath_mod) then
                         DeleteFile(Pchar(xfilepath_mod));
                      if FileExists(xfilepath_mod+'.BKP') then
                         MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
                      OutMS_mod.Free;
                      Result:=false;
                      Exit;
                   end;
                   CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33,37249)+' SET verinst=:p0 '+
                                 'WHERE cod_grp=:p1 AND cod_usr=:p2';
                   Params[0].AsString:= xlastver;
                   Params[1].AsInteger:= xcodmod;
                   Params[2].AsInteger:= Serverconect.vrf00;
                   Application.ProcessMessages;
                   Execute;
                   Application.ProcessMessages;
                   DeleteFile(xfilepath_mod+'.BKP');
                end else Result:=false;
           end;
           OutMS_mod.Free;
        Except
           OutMS_mod.Free;
           try
           if FileExists(xfilepath_mod) then
              DeleteFile(Pchar(xfilepath_mod));
           if FileExists(xfilepath_mod+'.BKP') then
              MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
           except
           end;
           Result:=false;
        End;
    end;
begin
      //copia arquivos
      dirdefault:=ExtractFilePath(Application.ExeName);
      xstatinst:=TStringList.Create;
      xstatinst.Add('');
      xstatinst.Add('Baixando e instalando arquivos do sistema.');
      StrLst := TStringList.Create;
      try
         {axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Verificando se há atualizações.';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Verificando se há atualizações.';
            loadx.lbloading.Repaint;
         end;}
         //cria diretórios do sistema
         if not DirectoryExists(copy(dirdefault,1,Length(dirdefault)-12)) then
            CreateDir(copy(dirdefault,1,Length(dirdefault)-12));
         CreateDir(copy(dirdefault,1,Length(dirdefault)-1));
         CreateDir(dirdefault+'bin');
         //copia arquivo
         xerror:=false;
         StrLstADDok:=false;
         Label_stat.Caption:='Verificando atualizações...';
         with dm3.ds_sql10 do begin
              CommandText:= 'SELECT codigo,mdl,lastver,cpt,cp3,cp6,cp7 FROM '+EnDecryptString(Serverconect.vrf24,37249)+
                            ' WHERE (((cp2='+#39+BoolToStr(true)+#39+')'+
                            ' AND (mdl<>'+#39+'HWScontrol.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'uninstall.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'HWScontrolConfig.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'HWShelp.exe'+#39+')'+
                            ' AND (mdl<>'+#39+'HWSsac.exe'+#39+'))'+
                            ' OR (mdl='+#39+'HWSsacuninstall.exe'+#39+'))'+
                            ' OR ((cp2='+#39+BoolToStr(false)+#39+')'+
                            ' AND (mdl like '+#39+'HWSsac%'+#39+'))'+
                            ' ORDER BY codigo';
              Application.ProcessMessages;
              Open;
              Application.ProcessMessages;
              //loadx.Progressloading.Max:=dm3.ds_sql10.RecordCount;
              //loadx.Progressloading.Position:=0;
              First;
              while not Eof do begin
                  {if (not inexecut) then begin
                     Application.Terminate;
                     exit;
                  end;}
                  //loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  Case fieldbyname('cp3').AsInteger of
                       0: xdirpthinst:= dirdefault;
                       1: xdirpthinst:= dirdefault+'bin\';
                       2: xdirpthinst:= ExtractSystemDir;
                  End;
                  StrLstADD:=true;
                  if FileExists(xdirpthinst+fieldbyname('mdl').AsString) then begin
                     if ExtractFileExt(xdirpthinst+fieldbyname('mdl').AsString)='.bpl' then StrLstADD:=false
                     else begin
                        StrLst:=FileVerInfo(xdirpthinst+fieldbyname('mdl').AsString);
                        if StrLst.Count > 0 then
                           StrLstADD:=(StrLst.Strings[4]<>fieldbyname('lastver').AsString);
                     end;
                  end;
                  if StrLstADD then begin
                     Label_stat.Caption:='Aguarde módulo,'+#13+'aguarde...';
                     TrayIcon_menu.Hint:='Atualizando Módulos'+#13+'aguarde';
                     StrLstADDok:=true;
                     //loadx.lbloading.Caption:='Atualizando Módulos.';
                     //loadx.lbloading.Repaint;
                     Application.ProcessMessages;
                     if not updatemod(fieldbyname('codigo').AsInteger,fieldbyname('codigo').AsInteger,StrToBool(fieldbyname('cpt').AsString),fieldbyname('mdl').AsString,fieldbyname('lastver').AsString,xdirpthinst) then
                        xerror:=true;
                     TrayIcon_menu.Hint:='Atendimento'+#13+'Conectado';
                  end else xerror:=false;
                  next;
                  Application.ProcessMessages;
              end;
              Close;
         end;
      Except
         xerror:=true;
      End;
      //loadx.Progressloading.Max:=100;
      Application.ProcessMessages;
      if StrLstADDok then begin
          if xerror then xstatinst.Add('Ocorreu algum erro ao atualizar os arquivos do sistema.')
          else xstatinst.Add('Arquivos instalados com sucesso.');
          //loadx.lbloading.Caption:='Arquivos atualizados com sucesso.';
      end else begin
          xstatinst.Add('Nenhuma atualização encontrada.');
          //loadx.lbloading.Caption:='Nenhuma atualização encontrada.';
      end;
      //loadx.lbloading.Repaint;
      //sleep(1000);
      xstatinst.Add('');
      xstatinst.Add('');
      //if not axshowing then loadx.Close;
      //hwsf.BtAviso(xstatinst);
end;

function Twebchat_menu.atualizaPosWin:Boolean;
var apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4:Integer;
begin
      apsx:=webchat_menu.Left;
      apsy:=webchat_menu.Top;
      apsw:=webchat_menu.Width;
      apsh:=webchat_menu.Height;
      apsv1:=GroupBox1.Height;
      apsv2:=GroupBox3.Height;
      apsv3:= StrToInt(BoolToStr(GroupBox3.Visible));
      apsv4:= 1;
      dm3.testWindowSize(false,apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4);
end;

function Twebchat_menu.atualizaWinShow(zcShow:Boolean):Boolean;
var apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4:Integer;
begin
      apsx:=webchat_menu.Left;
      apsy:=webchat_menu.Top;
      apsw:=webchat_menu.Width;
      apsh:=webchat_menu.Height;
      apsv1:=GroupBox1.Height;
      apsv2:=GroupBox3.Height;
      apsv3:= StrToInt(BoolToStr(GroupBox3.Visible));
      apsv4:= StrToInt(BoolToStr(zcShow));
      dm3.testWindowSize(false,apsx,apsy,apsw,apsh,apsv1,apsv2,apsv3,apsv4);
      Result:=true;
end;

procedure Twebchat_menu.TabSheet1Resize(Sender: TObject);
begin
      try
          Panelaut.Left:= strtoint(formatfloat('0',(TabSheet1.Width-Panelaut.Width)/2));
      except
          Panelaut.Left:=0;
      end;
end;

procedure Twebchat_menu.CoolBar2Resize(Sender: TObject);
var axwidbar: Real;
begin
     axwidbar:=CoolBar2.Width-(btdesconectar.Width+ToolButton8.Width+SpeedButton1.Width+bthws.Width+10);
     if axwidbar<0 then begin
        axwidbar:=7;
     end;
     ToolButton9.Width:=StrToInt(FormatFloat('0',axwidbar));
end;

procedure Twebchat_menu.Timer_monitorTimer(Sender: TObject);
begin
      if inMoveActive then RemoteConnection;
      if (ConnectionActive and inMoveActive) then
      if not inExecMonitor then begin
         inExecMonitor:=true;
         xMsgMonitorTh := MsgMonitor.Create(true);
         xMsgMonitorTh.FreeOnTerminate := true;
         xMsgMonitorTh.Priority := tpIdle;//tpIdle, tpLowest, tpLower, tpNormal, tpHigher, tpHighest, tpTimeCritical
         xMsgMonitorTh.Resume;
      end;
end;

procedure Twebchat_menu.FormActivate(Sender: TObject);
begin
     if xiniShow then begin
        xpingSet:=true;
        xpingSetTime:=Now-StrToTime('00:06:00');
        RemoteConnection;
        TimerDetect.Enabled:=true;
     end;
end;

procedure Twebchat_menu.Timer_autoupdateTimer(Sender: TObject);
begin
      {if inMoveActive then RemoteConnection;
      if (ConnectionActive and inMoveActive) then begin
         if inExecMonitor then exit;
         if Autoupdate1.Checked then begin
            atualizaprg_root;
            atualizamdlsys;
         end;
      end;}
end;

procedure Twebchat_menu.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      //inMoveActive:=false;
      Application.ProcessMessages;
end;

procedure Twebchat_menu.enabledisableButtons(Yaxresul:Boolean; xipresult:String);
var xinterset: String;
begin
     axWinShowExec:=false;
     ConnectionActive:=Yaxresul;
     xinterset:='Atendimento ';
     if Panelstatus.Visible<>Yaxresul then Panelstatus.Visible:=Yaxresul;
     if TabSheet1.TabVisible then begin
        if (Label3.Enabled<>Yaxresul) then begin
            Label3.Enabled:=Yaxresul;
            lb1.Enabled:=Yaxresul;
            lb2.Enabled:=Yaxresul;
            lb3.Enabled:=Yaxresul;
            Salvarsenha2.Enabled:=Yaxresul;
            chb_autologin.Enabled:=Yaxresul;
            btconectar.Enabled:=Yaxresul;
            xinterset:=xinterset+#13+'Desconectado';
            if Yaxresul then begin
               xinterset:=xinterset+#13+'Sinal On';
               Label_conect.Font.Color:= clGreen;
               Label_conect.Caption:='Conectado à Internet';
               StartShowWin;
            end else begin
               xinterset:=xinterset+#13+'Sinal Off';
               Label_conect.Font.Color:= clGray;
               Label_conect.Caption:='Aguardando conexão com Internet';
            end;
        end;
     end else begin
        if Yaxresul then begin
           if TabSheet3.TabVisible then begin
              TabSheet3.TabVisible:=false;
              TabSheet2.TabVisible:=true;
           end;
           //dm3.XaxtvUPDATE:=false;
           xinterset:=xinterset+#13+'Conectado';
        end else begin
           //dm3.XaxtvUPDATE:=true;
           if not TabSheet3.TabVisible then begin
              TabSheet2.TabVisible:=false;
              TabSheet3.TabVisible:=true;
           end;
        end;
     end;
     if Yaxresul then begin
        TrayIcon_menu.Hint:=xinterset;
        axipusr:=xipresult;
        StatusBar1.Panels.Items[0].Text:='Status: conectado';
        StatusBar1.Panels.Items[1].Text:=axipusr;
        if TabSheet2.TabVisible then begin
           if Timer_conect.Enabled then
              Timer_conect.Enabled:=false;
        end else if not Timer_conect.Enabled then
           Timer_conect.Enabled:=true;
        if not TimerDetect.Enabled then begin
           inMoveActive:=true;
           TimerDetect.Enabled:=inMoveActive;
        end;
     end else begin
        xinterset:=xinterset+#13+'Sem sinal';
        TrayIcon_menu.Hint:=xinterset;
        axipusr:='off';
        StatusBar1.Panels.Items[0].Text:='Status: desconectado';
        StatusBar1.Panels.Items[1].Text:='off';
        if TimerDetect.Enabled then begin
           inMoveActive:=false;
           TimerDetect.Enabled:=inMoveActive;
        end;
        if chb_autologin.Checked then
        if not Timer_conect.Enabled then
           Timer_conect.Enabled:=true;
     end;
     xpingSet:=true;
end;

function Twebchat_menu.RemoteConnection: boolean;
var xipget:String;
    axresulPing:Boolean;
begin
    axresulPing:=((xpingSetTime+StrToTime('00:05:00'))<Now);
    if xpingSet and axresulPing then begin
       xpingSet:=false;
       xpingSetTime:= Now;
       axresulPing:=dm3.GetIPcntHWS(xipget);
       if not axresulPing then begin
          inMoveActive:=false;
          TimerDetect.Enabled:=inMoveActive;
       end;
       Application.ProcessMessages;
       if (ConnectionActive<>axresulPing) then begin
           enabledisableButtons(axresulPing, xipget);
           Application.ProcessMessages;
       end else xpingSet:=true;
    end;
    Result:=ConnectionActive;
    // Declaração das Constantes const INTERNET_CONNECTION_MODEM=1; INTERNET_CONNECTION_LAN=2; INTERNET_CONNECTION_PROXY=4; INTERNET_CONNECTION_MODEM_BUSY=8;

//  if (ConnectionActive<>axresul) then
//      enabledisableButtons(axresul);

    {try
      IdAntiFreeze1.OnlyWhenIdle:=False;
      if not xpingSet then begin
         xpingSet:=true;
         ICMP.Ping();
         Result:=true;
      end else Result:=ConnectionActive;
    except
      if (ConnectionActive) then
         enabledisableButtons(false);
      Result:=false;
      Application.ProcessMessages;
    end;   }
end;

procedure Twebchat_menu.ICMPReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
//var axresul: Boolean;
begin
{    axresul:=(AReplyStatus.ReplyStatusType = rsEcho);
    if (ConnectionActive<>axresul) then
      enabledisableButtons(axresul)
    else xpingSet:=false;}
end;

procedure Twebchat_menu.Timer_conectTimer(Sender: TObject);
begin
     xpingSetTime:=Now-StrToTime('00:06:00');
     RemoteConnection;
end;

procedure Twebchat_menu.ToolButton3Click(Sender: TObject);
begin
      dm3.open_modulo('HWSsacmail.exe','237',' 0');
end;

procedure Twebchat_menu.Timer_notregistredTimer(Sender: TObject);
begin
      if inMoveActive then RemoteConnection;
      if (ConnectionActive and inMoveActive) then begin
         //if not
         dm3.AtualizarUsrWebNotResgistred(ListView4,GroupBox4,Splitter3,ListView4_cod,activAtn4,dm3.axcod_web);
         //then RetestCnx();
         Label_olnotreg.Caption:=IntToStr(ListView4_cod.Count)+'  ';
         Label_olnotreg.Repaint;
      end;
end;

procedure Twebchat_menu.FormDestroy(Sender: TObject);
begin
      Application.Terminate;
end;

procedure Twebchat_menu.TimerDetectTimer(Sender: TObject);
begin
      inMoveActive:=true;
end;

procedure Twebchat_menu.FormResize(Sender: TObject);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.FormClick(Sender: TObject);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.FormDockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.ListView2Change(Sender: TObject; Node: TTreeNode);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.ListView4Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.ListView3Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.Timer_inatividadeTimer(Sender: TObject);
//var axtabindex:Integer;
begin
      {if TabSheet2.Visible then begin
         GetCursorPos(axmouseposON);
         RemoteConnection;
         if (axmouseposON.X <> axmousepos.X) or
            (axmouseposON.Y <> axmousepos.Y) then begin
             GetCursorPos(axmousepos);
             if (ConnectionActive and inMoveActive) then begin
                 if ((0<>lb4.ItemIndex) and (AxStatusOn<2)) then begin
                    inMoveActive:=false;
                    xupdAtualizaSt:=true;
                    axtabindex:=lb4.ItemIndex;
                    lb4.ItemIndex:=0;
                    if not AtualizarStatus(lb4.ItemIndex,true) then
                       lb4.ItemIndex:=axtabindex;
                    xupdAtualizaSt:=false;
                 end;
             end;
         end else begin
             if (ConnectionActive and inMoveActive) then begin
                 if ((lb4.ItemIndex<2) and (AxStatusOn<2)) then begin
                    inMoveActive:=false;
                    xupdAtualizaSt:=true;
                    axtabindex:=lb4.ItemIndex;
                    lb4.ItemIndex:=2;
                    if not AtualizarStatus(lb4.ItemIndex,true) then
                       lb4.ItemIndex:=axtabindex;
                    xupdAtualizaSt:=false;
                 end;
             end;
         end;
      end;}
end;

procedure Twebchat_menu.chb_autologinClick(Sender: TObject);
begin
      Entrarautomaticamente1.Checked:= chb_autologin.Checked;
end;

procedure Twebchat_menu.Configuraes3Click(Sender: TObject);
begin
      inMoveActive:=false;          
end;

procedure Twebchat_menu.Ajuda1Click(Sender: TObject);
begin
      inMoveActive:=false;
end;

procedure Twebchat_menu.Fechar1Click(Sender: TObject);
begin
      inMoveActive:=false;
end;

end.
