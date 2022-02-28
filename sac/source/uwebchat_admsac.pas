unit uwebchat_admsac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RxRichEd, Buttons, ToolWin, ExtCtrls,uwebchat_msgReadConf,
  XPMan, ImgList, MMSystem, Menus, AppEvnts, Grids, DBGrids;

type
  Twebchat_admsac = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    RxRichEdit1: TRxRichEdit;
    GroupBox2: TGroupBox;
    RxRichEdit2: TRxRichEdit;
    Splitter1: TSplitter;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    Timer_clearbar: TTimer;
    Timer_Sendup: TTimer;
    Timer_dg: TTimer;
    ColorDialogText: TColorDialog;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    BitBtn_save: TBitBtn;
    BitBtn_print: TBitBtn;
    BitBtn_fontSend: TBitBtn;
    BitBtn_fontRead: TBitBtn;
    BitBtn_Shearch: TBitBtn;
    XPManifest1: TXPManifest;
    FindDialog1: TFindDialog;
    CoolBar3: TCoolBar;
    ToolBar1: TToolBar;
    BitBtn_send: TBitBtn;
    ToolBar3: TToolBar;
    BitBtn_mail: TBitBtn;
    BitBtn_url: TBitBtn;
    ToolBar4: TToolBar;
    Images_status: TImageList;
    BitBtn_beep: TBitBtn;
    Timer_atencao: TTimer;
    RxRichEdit3: TRxRichEdit;
    RxRichEdit4: TRxRichEdit;
    Usrupdat: TTimer;
    Label1_stat: TLabel;
    ImageList_areas: TImageList;
    Timer_Read: TTimer;
    GroupBoxUsr: TGroupBox;
    PopupMenu2_1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PopupMenu2_2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    StatusBar2: TStatusBar;
    Splitter2: TSplitter;
    ListViewUsr: TListView;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_saveClick(Sender: TObject);
    procedure BitBtn_printClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer_clearbarTimer(Sender: TObject);
    procedure BitBtn_sendClick(Sender: TObject);
    procedure RxRichEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer_SendupTimer(Sender: TObject);
    procedure Timer_dgTimer(Sender: TObject);
    procedure RxRichEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn_fontSendClick(Sender: TObject);
    procedure BitBtn_fontReadClick(Sender: TObject);
    procedure BitBtn_ShearchClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure CoolBar3Resize(Sender: TObject);
    procedure CoolBar2Resize(Sender: TObject);
    procedure BitBtn_mailClick(Sender: TObject);
    procedure BitBtn_urlClick(Sender: TObject);
    procedure RxRichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxRichEdit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RxRichEdit1URLClick(Sender: TObject; const URLText: String;
      Button: TMouseButton);
    procedure BitBtn_beepClick(Sender: TObject);
    procedure Timer_atencaoTimer(Sender: TObject);
    procedure UsrupdatTimer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Timer_ReadTimer(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
    xmessageError: Boolean;
    xusrAnonymous: Boolean;
    xcodIniSec: Integer;
    xiniTfrm,xrich1enter: Boolean;
    xobsSec: TStringList;
    corTxEnviado, corTxRecebido: TColor;
    xtimerDigt: TTime;
    function ChatSec(xini:Boolean):Boolean;
    function retornaTdt:String;
    procedure BlockFrm(xblk:Boolean);
    function SendMailHWS:Boolean;
    function SendMessageHWS:Boolean;
    function BtLink(Mensa:string; var axlnk: String;var axoplnk: Boolean):Boolean;
    function alertaHWS: Boolean;
    function ReproduzirAvisoNewMsg(xrepAv1,xrepAv2:Boolean):Boolean;
  public
    activAtnUsr,xMsgReadThConfINI,InDigt: Boolean;
    xconfcnfID,xconfTitleID: String;
    xtestUSRLocCount,xtestUSRCODac: Integer;
    xinitanony: Boolean;
    ListViewUsrs_cod,ListViewUsrs_stat: TStringList;
    procedure AtualizaUser;
    procedure SendMsgStatusbar(xmens:String; autoocultBarTx: Boolean);
    function ReadMenssager(xmsgLst,xmsgLstCnfg:TStringList; xmsgStr:TMemoryStream;
             VusrNameAX,VusrStatCaptionAX,xdtenvRead: String;
             VusrCodAX,VusrStatAX,xtypeMsgID: Integer):Boolean;
    { Public declarations }
  end;


var
  webchat_admsac: Twebchat_admsac;
  InExcecApp: Boolean;
  xMsgReadThConf : MsgReadConf;
  xsndpath: String;


implementation

uses hwsfunctions, udm3, DBClient, DB, U_Cipher, uBt_link;

{$R *.dfm}

procedure Twebchat_admsac.FormClose(Sender: TObject;
  var Action: TCloseAction);
var axerrorID: Integer;
begin
      Timer_dg.Enabled:=false;
      InDigt:=true;
      if hwsf.BtConfirma('Fechar Conferêcia '+xconfTitleID+'?') then begin
         xobsSec.Add(retornaTdt+' - Finalizando Conferência: '+CoolBar2.Bands.Items[1].Text);
         axerrorID:=dm3.SetCountSec3(dm3.LstTables.Table[18],IntToStr(xcodIniSec),'3',dm3.axcod_web,dm3.axcod_Usr,'Conferência Finalizada: '+CoolBar2.Bands.Items[1].Text,xobsSec,xconfcnfID);
         Action:=caFree;
      end else begin
         Timer_dg.Enabled:=true;
         Action:=caNone;
      end;
end;

procedure Twebchat_admsac.AtualizaUser;
//var xusrstatLabel, xtableidatusr: String;
begin
     if (not InDigt) then begin
         dm3.AtualizarAtendentes(ListViewUsr,GroupBoxUsr,Splitter2,ListViewUsrs_cod,activAtnUsr,true,true,dm3.axcod_web,'not',xconfcnfID);
         dm3.RefreshUserConf(0,xtestUSRCODac);
         if (xinitanony) then begin
            if ListViewUsrs_cod.Count>0 then begin
               xinitanony:=false;
               BlockFrm(true);
            end;
         end;
     end;
end;

procedure Twebchat_admsac.BitBtn_saveClick(Sender: TObject);
begin
       if RxRichEdit1.Lines.Count=0 then begin
         SendMsgStatusbar('Não há mensagens...',true);
         exit;
      end;
      SaveDialog1.FileName:=FormatDateTime('yyyymmddhhnnss',Now)+' '+xconfTitleID+'.rtf';
      if SaveDialog1.Execute then begin
         SendMsgStatusbar('Salvando para '+SaveDialog1.FileName,true);
         RxRichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
         xobsSec.Add(retornaTdt+' - Salvar como: '+SaveDialog1.FileName);
         RxRichEdit2.SetFocus;
      end;
end;

procedure Twebchat_admsac.BitBtn_printClick(Sender: TObject);
var xprintSrt: String;
begin
      if RxRichEdit1.Lines.Count=0 then begin
         SendMsgStatusbar('Não há mensagens...',true);
         exit;
      end;
      if PrintDialog1.Execute then begin
         SendMsgStatusbar('Imprimindo...',true);
         xprintSrt:=retornaTdt;
         RxRichEdit1.Print(xprintSrt+'-'+xconfTitleID);
         xobsSec.Add(xprintSrt+' - Imprimindo');
         RxRichEdit2.SetFocus;
      end;
end;

function Twebchat_admsac.ChatSec(xini:Boolean):Boolean;
begin
      xcodIniSec:=dm3.SetCountSec3(dm3.LstTables.Table[18],'0','0',dm3.axcod_web,dm3.axcod_Usr,'Iniciando Conferência: '+CoolBar2.Bands.Items[1].Text,xobsSec,xconfcnfID);
end;

procedure Twebchat_admsac.FormCreate(Sender: TObject);
begin
     InDigt:=false;
     xmessageError:=true;
     Application.Title := 'HWSsac Conferência - '+ParamStr(8);
     xconfcnfID:=ParamStr(7);
     xconfTitleID:=ParamStr(8);
     try
         xtestUSRLocCount:=StrToInt(ParamStr(9));
         xtestUSRCODac:=StrToInt(ParamStr(10));
     except
         Application.Terminate;
     end;
     webchat_admsac.Caption:=xconfTitleID;
     //vars
     SendMessage(RxRichEdit1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(RxRichEdit2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     //RxRichEdit1.Justify;
     xcodIniSec:=0;
     activAtnUsr:=true;
     xiniTfrm:=true;
     xinitanony:=true;
     xrich1enter:=false;
     InExcecApp:=false;
     corTxEnviado:=clGreen;
     corTxRecebido:=clBlack;
     ListViewUsrs_cod:=TStringList.Create;
     ListViewUsrs_cod.Clear;
     RxRichEdit1.Lines.Add('Conferência Iniciada');
end;

procedure Twebchat_admsac.FormShow(Sender: TObject);
var hThreadID : THandle;
    ThreadID : DWord;
begin
    if xiniTfrm then begin
       xiniTfrm:=false;
       xobsSec:= TStringList.Create;
       xobsSec.Clear;
       xobsSec.Add('Iniciando...');
       AtualizaUser;
       ChatSec(true);
       Usrupdat.Enabled:=true;
       xMsgReadThConfINI:=false;
       Timer_Read.Enabled:=true;
       xtimerDigt:=Time;
       InDigt:=true;
       Timer_dg.Enabled:=true;
    end;
end;

function Twebchat_admsac.retornaTdt:String;
begin
     Result:=FormatDateTime('yyyymmddhhnnss',Now);
end;

procedure Twebchat_admsac.Timer_clearbarTimer(Sender: TObject);
begin
     Timer_clearbar.Enabled:=false;
     StatusBar1.Panels.Items[0].Text:='';
end;

procedure Twebchat_admsac.SendMsgStatusbar(xmens:String; autoocultBarTx: Boolean);
begin
     StatusBar1.Panels.Items[0].Text:=xmens;
     Timer_clearbar.Enabled:=autoocultBarTx;
end;

procedure Twebchat_admsac.BlockFrm(xblk:Boolean);
var xblk2:Boolean;
begin
     if xusrAnonymous then xblk2:=false
     else xblk2:=xblk;
     GroupBox2.Enabled:=xblk;
     BitBtn_print.Enabled:=xblk;
     BitBtn_save.Enabled:=xblk;
     BitBtn_send.Enabled:=xblk2;
     BitBtn_url.Enabled:=xblk2;
     //BitBtn_mail.Enabled:=xblk;
     BitBtn_mail.Visible:=false;
     BitBtn_fontSend.Enabled:=xblk;
     BitBtn_fontRead.Enabled:=xblk;
     BitBtn_Shearch.Enabled:=xblk;
     if not Timer_atencao.Enabled then
        BitBtn_beep.Enabled:=xblk2;
     RxRichEdit2.ReadOnly:=not xblk2;
end;

procedure Twebchat_admsac.BitBtn_sendClick(Sender: TObject);
begin
     Timer_dg.Enabled:=false;
     InDigt:=true;
     if StrToBool(IntToStr(Controlcnfg.vrf40)) then
        PlaySoundHWS(1);
     SendMessageHWS;
end;

procedure Twebchat_admsac.BitBtn_mailClick(Sender: TObject);
begin
     //enviar email
     hwsf.BtMensagem('Acesso negado.');
end;

function Twebchat_admsac.SendMailHWS:Boolean;
var axmsgcopy,axdtenv: String;
    axcp5: TStringList;
begin
    if RxRichEdit2.Text='' then begin
        SendMsgStatusbar('Digite uma mensagem...',true);
        RxRichEdit2.SetFocus;
        exit;
    end;
    axmsgcopy:='"'+Copy(RxRichEdit2.Lines.Strings[0],0,100)+'..."';
    axdtenv:='';
    if hwsf.BtConfirma('Enviar um e-mail com a mensagem'+#13+axmsgcopy+#13+'para '+'?') then begin//+xusrname
       SendMsgStatusbar('Enviando e-mail, aguarde...',false);
       BlockFrm(false);
       axcp5:= TStringList.Create;
       axcp5.Clear;
       axcp5.AddStrings(RxRichEdit2.Lines);

       RxRichEdit1.Lines.Add('');
       RxRichEdit1.SelAttributes.Color:=clBlue;
       RxRichEdit1.SelAttributes.Style:=[fsBold,fsUnderline];
       RxRichEdit1.Lines.Add('De '+dm3.ax_UsrName+' para '+' '+axdtenv+' EMAIL ENVIADO:');//+xusrname
       RxRichEdit1.SelAttributes.Style:=[];
       RxRichEdit1.Lines.AddStrings(axcp5);
       RxRichEdit1.SelAttributes.Color:=corTxRecebido;

       RxRichEdit1.SetFocus;
       RxRichEdit1.SelLength := 0;
       RxRichEdit1.SelStart:= RxRichEdit1.GetTextLen;
       RxRichEdit1.Perform( EM_SCROLLCARET, 0, 0 );
       RxRichEdit2.Clear;
       SendMsgStatusbar('e-mail enviado com sucesso...',true);
       Application.ProcessMessages;
       hwsf.BtMensagem('e-mail enviado com sucesso...');
       BlockFrm(true);
    end;
    Timer_dg.Enabled:=true;
    InDigt:=false;
end;

function Twebchat_admsac.SendMessageHWS:Boolean;
var axcp1,axcp3: String;
    axcp2TypeMsg,axcp7NumDest,
    xfr_USRlst: Integer;
    axcp4: TMemoryStream;
    axcp5,axusrlist: TStringList;
    axdtenv: String;
    axtp_usra,axResulCodMsg:Integer;
begin
     if not BitBtn_send.Enabled then exit;
     Result:=false;
     //enviar mensagem
     if RxRichEdit2.text='' then begin
        SendMsgStatusbar('Digite uma mensagem...',true);
        RxRichEdit2.SetFocus;
        exit;
     end;
     BlockFrm(false);
     SendMsgStatusbar('Enviando Mensagem...',false);
     Application.ProcessMessages;
     if InExcecApp then begin
        Timer_Sendup.Enabled:=true;
        exit;
     end;
     InExcecApp:=true;
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
     axcp1:='';
     //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
     //if xusrtype = 0 then axcp2TypeMsg:=1
     //else axcp2TypeMsg:=0;
     axcp2TypeMsg:=1;
     //Link
     axcp3:='';
     //mensa blb
     axcp4:= TMemoryStream.Create;
     axcp4.Clear;
     axcp4.Position:=0;
     if axcp2TypeMsg = 1 then begin
         RxRichEdit2.Lines.SaveToStream(axcp4);
         axcp4.Position:=0;
         axcp4:=EnDecryptStream(axcp4,36521);
         axcp4.Position:=0;
     end;
     //mensa text
     axcp5:= TStringList.Create;
     axcp5.Clear;
     if axcp2TypeMsg = 0 then begin
        RxRichEdit3.Clear;
        RxRichEdit3.Lines:=RxRichEdit2.Lines;
        axcp5.AddStrings(RxRichEdit3.Lines);
     end;

     //Num Destinatários
     axcp7NumDest:=ListViewUsrs_cod.count;
     //lista de usr
     axusrlist:= TStringList.Create;
     axusrlist.Clear;
     for xfr_USRlst:=0 to axcp7NumDest-1 do begin
         axusrlist.Add(ListViewUsrs_cod.Strings[xfr_USRlst]);
         axusrlist.Add('0');
         axusrlist.Add(IntToStr(ListViewUsr.Items.Item[xfr_USRlst].ImageIndex));
         axusrlist.Add(dm3.axparmSAC);
     end;
     {axusrlist.Add(IntToStr(xusrcod));
     axusrlist.Add(IntToStr(xusrtype));
     axusrlist.Add(IntToStr(xusrstat));
     axusrlist.Add(xusrxtp);}
     Application.ProcessMessages;
     axResulCodMsg:=dm3.SetCountSec4('573205',dm3.LstTables.Table[16],dm3.LstTables.Table[17],
                    dm3.axcod_web,dm3.axcod_Usr,IntToStr(axtp_usra),IntToStr(xcodIniSec),
                    axcp1,IntToStr(axcp2TypeMsg),axcp3,IntToStr(axcp7NumDest),dm3.axparmSAC,axcp4,
                    axcp5,axusrlist,axdtenv,xconfcnfID);
     Application.ProcessMessages;
     if axResulCodMsg>0 then begin
        //axdtenv Data de Envio da Mensagem
        {RxRichEdit1.Lines.Add('');
        RxRichEdit1.SelAttributes.Color:=corTxEnviado;
        RxRichEdit1.SelAttributes.Style:=[fsBold,fsUnderline];
        RxRichEdit1.Lines.Add(dm3.ax_UsrName+' '+axdtenv+':');//+xusrname
        RxRichEdit1.SelAttributes.Style:=[];
        if axcp2TypeMsg = 1 then begin
           RxRichEdit3.Clear;
           RxRichEdit3.Lines:=RxRichEdit2.Lines;
           axcp5.AddStrings(RxRichEdit3.Lines);
        end;
        RxRichEdit1.Lines.AddStrings(axcp5);
        RxRichEdit1.SelAttributes.Color:=corTxRecebido;}

        {RxRichEdit1.SetFocus;
        RxRichEdit1.SelLength := 0;
        RxRichEdit1.SelStart:= RxRichEdit1.GetTextLen;
        RxRichEdit1.Perform( EM_SCROLLCARET, 0, 0 );}
        RxRichEdit2.Clear;
        SendMsgStatusbar('Mensagem Enviada com sucesso...',true);
     end else begin
        SendMsgStatusbar('Erro ao enviar Mensagem...',true);
     end;
     xrich1enter:=false;
     Application.ProcessMessages;
     BlockFrm(true);
     InExcecApp:=false;
     RxRichEdit2.SetFocus;
     Timer_dg.Enabled:=true;
     InDigt:=false;
     Result:=true;
end;

procedure Twebchat_admsac.RxRichEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssShift]) then case Key of
       13: ;
    end else if (Shift = [ssCtrl]) then case Key of
       65,84: (Sender as TRxRichEdit).SelectAll;
       83: BitBtn_save.Click;
       80: BitBtn_print.Click;
       13: ;
    end else case Key of
       13: begin
           key:=0;
           if BitBtn_send.Enabled then begin
              try
                BitBtn_send.Click;
              except
              end;
           end;
       end;
    end;
end;

procedure Twebchat_admsac.Timer_SendupTimer(Sender: TObject);
begin
      if not InExcecApp then begin
         Timer_Sendup.Enabled:=false;
         SendMessageHWS;
      end;
end;

function Twebchat_admsac.ReadMenssager(xmsgLst,xmsgLstCnfg:TStringList; xmsgStr:TMemoryStream;
                                       VusrNameAX,VusrStatCaptionAX,xdtenvRead: String;
                                       VusrCodAX,VusrStatAX,xtypeMsgID: Integer):Boolean;
begin
      try
         RxRichEdit1.Lines.Add('');
         if (dm3.ax_UsrName=VusrNameAX) then
             RxRichEdit1.SelAttributes.Color:=corTxEnviado
         else RxRichEdit1.SelAttributes.Color:=corTxRecebido;
         RxRichEdit1.SelAttributes.Style:=[fsBold,fsUnderline];
         //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
         Case xtypeMsgID of
            0: begin
               RxRichEdit1.Lines.Add(VusrNameAX+'->'+xmsgLstCnfg.Strings[8]+':');//xdtenvRead//+xusrname
               RxRichEdit1.SelAttributes.Style:=[];
               RxRichEdit1.Lines.AddStrings(xmsgLst);
            end;
            1: begin
               RxRichEdit4.Clear;
               RxRichEdit4.Lines.LoadFromStream(xmsgStr);
               RxRichEdit1.Lines.Add(VusrNameAX+'->'+xmsgLstCnfg.Strings[8]+':');//xdtenvRead//+xusrname
               RxRichEdit1.SelAttributes.Style:=[];
               RxRichEdit1.Lines.AddStrings(RxRichEdit4.Lines);
               RxRichEdit4.Clear;
            end;
            2,3: begin
               RxRichEdit1.Lines.Add(VusrNameAX+'->'+xmsgLstCnfg.Strings[8]+' [LINK]:');//+xusrname
               RxRichEdit1.SelAttributes.Color:=clBlue;
               RxRichEdit1.Lines.Add(xmsgLstCnfg.Strings[7]);
               Application.ProcessMessages;
               if xtypeMsgID = 3 then JumpTo(xmsgLstCnfg.Strings[7]);
            end;
            6: begin
               RxRichEdit1.SelAttributes.Color:=clRed;
               RxRichEdit1.Lines.Add(VusrNameAX+'->CHAMOU A ATENÇÃO!!! '+xmsgLstCnfg.Strings[8]);//xusrname+
               Application.ProcessMessages;
               alertaHWS;
            end;
         End;
         RxRichEdit1.SelAttributes.Style:=[];
         RxRichEdit1.SelAttributes.Color:=corTxEnviado;
         //0-Atendente,1-usr
         if not xrich1enter then begin
            ReproduzirAvisoNewMsg(Controlcnfg.vrf39,StrToBool(IntToStr(Controlcnfg.vrf40)));
            //if webchat_sac.ShowHint then begin
               RxRichEdit1.SetFocus;
               RxRichEdit1.SelLength := 0;
               RxRichEdit1.SelStart:= RxRichEdit1.GetTextLen;
               RxRichEdit1.Perform( EM_SCROLLCARET, 0, 0 );
               RxRichEdit2.SetFocus;
            //end;
         end;
         SendMsgStatusbar('Chegou mensagem...',true);
         Result:=true;
      except
         Result:=false;
      end;
end;

procedure Twebchat_admsac.Timer_dgTimer(Sender: TObject);
begin
     if ((Time-xtimerDigt)>strtotime('00:00:02')) then
        InDigt:=false;
end;

procedure Twebchat_admsac.RxRichEdit2KeyPress(Sender: TObject; var Key: Char);
begin
     xtimerDigt:=Time;// Now;
     InDigt:=true;
     xrich1enter:=false;
end;

procedure Twebchat_admsac.BitBtn_fontSendClick(Sender: TObject);
begin
     ColorDialogText.Color:=corTxEnviado;
     if ColorDialogText.Execute then
        corTxEnviado:=ColorDialogText.Color;
end;

procedure Twebchat_admsac.BitBtn_fontReadClick(Sender: TObject);
begin
     ColorDialogText.Color:=corTxRecebido;
     if ColorDialogText.Execute then
        corTxRecebido:=ColorDialogText.Color;
end;

procedure Twebchat_admsac.BitBtn_ShearchClick(Sender: TObject);
begin
  FindDialog1.Position := Point(RxRichEdit1.Left + RxRichEdit1.Width, RxRichEdit1.Top);
  FindDialog1.Execute;
end;

procedure Twebchat_admsac.FindDialog1Find(Sender: TObject);
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
  with RxRichEdit1 do begin
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

procedure Twebchat_admsac.CoolBar3Resize(Sender: TObject);
var axwihd: Integer;
begin
    axwihd:=(CoolBar3.Width-BitBtn_send.Width)-40;
    if axwihd>(BitBtn_mail.Width+BitBtn_url.Width+BitBtn_beep.Width) then
       ToolBar3.Width:=axwihd;
end;

procedure Twebchat_admsac.CoolBar2Resize(Sender: TObject);
var axwihd: Integer;
begin
    axwihd:=(CoolBar2.Width-70);
    ToolBar2.Width:=axwihd;
end;

procedure Twebchat_admsac.BitBtn_urlClick(Sender: TObject);
var axlink, axdtenv: String;
    axlinkop: Boolean;
    axcp1,axcp3: String;
    axtp_usra,axResulCodMsg,
    axcp2TypeMsg,axcp7NumDest,xfr_USRlst:Integer;
    axcp4: TMemoryStream;
    axcp5,axusrlist: TStringList;
begin
    if BtLink('Digite o Link URL:',axlink,axlinkop) then begin
       SendMsgStatusbar('Enviando link URL, aguarde...',false);
       BlockFrm(false);
       // 0-Atendente,1-usr
       axtp_usra:=0;
       //Assunto
       axcp1:='';
       //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
       if axlinkop then axcp2TypeMsg:=3
       else axcp2TypeMsg:=2;
       //Link
       axcp3:=axlink;
       //mensa blb
       axcp4:= TMemoryStream.Create;
       axcp4.Clear;
       axcp4.Position:=0;
       //mensa text
       axcp5:= TStringList.Create;
       axcp5.Clear;
       //Num Destinatários
       axcp7NumDest:=ListViewUsrs_cod.count;
       //lista de usr
       axusrlist:= TStringList.Create;
       axusrlist.Clear;
       for xfr_USRlst:=0 to axcp7NumDest-1 do begin
           axusrlist.Add(ListViewUsrs_cod.Strings[xfr_USRlst]);
           axusrlist.Add('0');
           axusrlist.Add(IntToStr(ListViewUsr.Items.Item[xfr_USRlst].ImageIndex));
           axusrlist.Add(dm3.axparmSAC);
       end;
       axResulCodMsg:=dm3.SetCountSec4('573205',dm3.LstTables.Table[16],dm3.LstTables.Table[17],
                    dm3.axcod_web,dm3.axcod_Usr,IntToStr(axtp_usra),IntToStr(xcodIniSec),
                    axcp1,IntToStr(axcp2TypeMsg),axcp3,IntToStr(axcp7NumDest),dm3.axparmSAC,axcp4,
                    axcp5,axusrlist,axdtenv,xconfcnfID);

       if axResulCodMsg>0 then begin
          //axdtenv Data de Envio da Mensagem
          RxRichEdit1.Lines.Add('');
          RxRichEdit1.SelAttributes.Color:=corTxEnviado;
          RxRichEdit1.SelAttributes.Style:=[fsBold,fsUnderline];
          RxRichEdit1.Lines.Add(dm3.ax_UsrName+' '+axdtenv+' [LINK]:');//+xusrname
          RxRichEdit1.SelAttributes.Color:=clBlue;
          RxRichEdit1.Lines.Add(axlink);
          RxRichEdit1.SelAttributes.Style:=[];
          RxRichEdit1.SelAttributes.Color:=corTxRecebido;

          RxRichEdit1.SetFocus;
          RxRichEdit1.SelLength := 0;
          RxRichEdit1.SelStart:= RxRichEdit1.GetTextLen;
          RxRichEdit1.Perform( EM_SCROLLCARET, 0, 0 );
          SendMsgStatusbar('Link Enviado com sucesso...',true);
       end else begin
          SendMsgStatusbar('Erro ao enviar Link...',true);
       end;
       BlockFrm(true);
    end;
end;

function Twebchat_admsac.BtLink(Mensa:string; var axlnk: String;var axoplnk: Boolean):Boolean;
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

procedure Twebchat_admsac.RxRichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    xrich1enter:=true;
end;

procedure Twebchat_admsac.RxRichEdit1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    xrich1enter:=true;
end;

procedure Twebchat_admsac.RxRichEdit1URLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
begin
    JumpTo(URLText);
end;

procedure Twebchat_admsac.BitBtn_beepClick(Sender: TObject);
var axdtenv: String;
    axcp1,axcp3: String;
    axtp_usra,axResulCodMsg,
    axcp2TypeMsg,axcp7NumDest,xfr_USRlst:Integer;
    axcp4: TMemoryStream;
    axcp5,axusrlist: TStringList;
begin
    if hwsf.BtConfirma('Chamar a Atenção dos Membros'+'?') then begin
       SendMsgStatusbar('Chamando atenção...',false);
       BlockFrm(false);
       // 0-Atendente,1-usr
       axtp_usra:=0;
       //Assunto
       axcp1:='';
       //Tipo mensagem (0-text,1-rich,2-link,3-linkopen,4-imagem,5-email,6-Chamar atenção)
       axcp2TypeMsg:=6;
       //Link
       axcp3:='';
       //mensa blb
       axcp4:= TMemoryStream.Create;
       axcp4.Clear;
       axcp4.Position:=0;
       //mensa text
       axcp5:= TStringList.Create;
       axcp5.Clear;
       //Num Destinatários
       axcp7NumDest:=ListViewUsrs_cod.count;
       //lista de usr
       axusrlist:= TStringList.Create;
       axusrlist.Clear;
       for xfr_USRlst:=0 to axcp7NumDest-1 do begin
           axusrlist.Add(ListViewUsrs_cod.Strings[xfr_USRlst]);
           axusrlist.Add('0');
           axusrlist.Add(IntToStr(ListViewUsr.Items.Item[xfr_USRlst].ImageIndex));
           axusrlist.Add(dm3.axparmSAC);
       end;
       axResulCodMsg:=dm3.SetCountSec4('573205',dm3.LstTables.Table[16],dm3.LstTables.Table[17],
                    dm3.axcod_web,dm3.axcod_Usr,IntToStr(axtp_usra),IntToStr(xcodIniSec),
                    axcp1,IntToStr(axcp2TypeMsg),axcp3,IntToStr(axcp7NumDest),dm3.axparmSAC,axcp4,
                    axcp5,axusrlist,axdtenv,xconfcnfID);
       if axResulCodMsg>0 then begin
          //axdtenv Data de Envio da Mensagem
          RxRichEdit1.Lines.Add('');
          RxRichEdit1.SelAttributes.Color:=corTxEnviado;
          RxRichEdit1.SelAttributes.Style:=[fsBold,fsUnderline];
          RxRichEdit1.Lines.Add(dm3.ax_UsrName+' '+axdtenv+' [ALERTA]:');//+xusrname
          RxRichEdit1.SelAttributes.Color:=clRed;
          RxRichEdit1.Lines.Add('CHAMANDO ATENÇÃO!!!');
          RxRichEdit1.SelAttributes.Style:=[];
          RxRichEdit1.SelAttributes.Color:=corTxRecebido;

          RxRichEdit1.SetFocus;
          RxRichEdit1.SelLength := 0;
          RxRichEdit1.SelStart:= RxRichEdit1.GetTextLen;
          RxRichEdit1.Perform( EM_SCROLLCARET, 0, 0 );
          SendMsgStatusbar('Chamando Atenção...',true);
       end else begin
          SendMsgStatusbar('Erro ao Chamar Atenção...',true);
       end;
       BlockFrm(true);
       BitBtn_beep.Enabled:=false;
       Timer_atencao.Enabled:=true;
    end;
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

function Twebchat_admsac.alertaHWS: Boolean;
begin
     ReproduzirAvisoNewMsg(true,true);
     PlaySoundHWS(0);
     WindowShake(WindowHandle);//Application.MainForm.Handle
     Result:=true;
end;

function Twebchat_admsac.ReproduzirAvisoNewMsg(xrepAv1,xrepAv2:Boolean):Boolean;
begin
     if xrepAv1 then begin
        ShowWindow(Application.Handle, SW_RESTORE );
        SetForegroundWindow( Application.Handle );
        ShowWindow(WindowHandle, SW_RESTORE );
        SetForegroundWindow( WindowHandle );
     end;
     if xrepAv2 then PlaySoundHWS(1);
end;

procedure Twebchat_admsac.Timer_atencaoTimer(Sender: TObject);
begin
      Timer_atencao.Enabled:=false;
      BitBtn_beep.Enabled:=true;
end;

procedure Twebchat_admsac.UsrupdatTimer(Sender: TObject);
begin
      if (not InDigt) then AtualizaUser;
end;

procedure Twebchat_admsac.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      if xmessageError then begin
         xmessageError:=false;
         hwsf.BtMensagem('AVISO: Falha na conexão.');
      end;
end;

procedure Twebchat_admsac.Timer_ReadTimer(Sender: TObject);
begin
       if ((not xMsgReadThConfINI) and (not InDigt)) then begin
          xMsgReadThConfINI:=true;
          xMsgReadThConf := MsgReadConf.Create(true);
          xMsgReadThConf.axcodConf:=xconfcnfID;
          xMsgReadThConf.FreeOnTerminate := true;
          xMsgReadThConf.Priority := tpLowest;//tpIdle, tpLowest, tpLower, tpNormal, tpHigher, tpHighest, tpTimeCritical
          xMsgReadThConf.Resume;
       end;
end;

procedure Twebchat_admsac.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    xtimerDigt:=Time;
    InDigt:=true;
end;

procedure Twebchat_admsac.FormMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
    xtimerDigt:=Time;
    InDigt:=true;
end;

end.
