{###############################################################################
Programa: HWStradutor
Módulo: HWS tradutor.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_tradutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Tradutor, ExtCtrls, Menus, TrayIcon, AppEvnts, XPMan,
  ComCtrls, ToolWin, yupack, Buttons;

type
  Tadm_tradutor = class(TForm)
    XPManifest1: TXPManifest;
    ApplicationEvents1: TApplicationEvents;
    TrayIconini: TTrayIcon;
    PopupMenu_icon: TPopupMenu;
    HWSstChat1: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    Maximizar1: TMenuItem;
    Minimizar1: TMenuItem;
    Finalizar1: TMenuItem;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    pn_status: TPanel;
    Image4: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    btriche_1: TRichEdit;
    btriche_2: TRichEdit;
    ToolBar1: TToolBar;
    btnewdc_1: TSpeedButton;
    btclear_1: TSpeedButton;
    btprint_1: TSpeedButton;
    btpaste_1: TSpeedButton;
    btrecor_1: TSpeedButton;
    btcoppy_1: TSpeedButton;
    btfinde_1: TSpeedButton;
    btsalva_1: TSpeedButton;
    ToolBar2: TToolBar;
    btclear_2: TSpeedButton;
    btnewdc_2: TSpeedButton;
    btsalva_2: TSpeedButton;
    btprint_2: TSpeedButton;
    btcoppy_2: TSpeedButton;
    btrecor_2: TSpeedButton;
    btpaste_2: TSpeedButton;
    btfinde_2: TSpeedButton;
    SaveDialog: TSaveDialog;
    ReplaceDialog1: TReplaceDialog;
    OpenDialog: TOpenDialog;
    PrintDialog: TPrintDialog;
    ReplaceDialog2: TReplaceDialog;
    Panel_language: TToolBar;
    Combo_selectlinguage: TComboBoxEx;
    bttraduz: TSpeedButton;
    PageScroller1: TPageScroller;
    PageScroller2: TPageScroller;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bttraduzClick(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure Maximizar1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure TrayIconiniDblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure btclear_1Click(Sender: TObject);
    procedure btclear_2Click(Sender: TObject);
    procedure btnewdc_1Click(Sender: TObject);
    procedure btnewdc_2Click(Sender: TObject);
    procedure btsalva_1Click(Sender: TObject);
    procedure btsalva_2Click(Sender: TObject);
    procedure btprint_1Click(Sender: TObject);
    procedure btprint_2Click(Sender: TObject);
    procedure btcoppy_1Click(Sender: TObject);
    procedure btcoppy_2Click(Sender: TObject);
    procedure btrecor_1Click(Sender: TObject);
    procedure btrecor_2Click(Sender: TObject);
    procedure btpaste_1Click(Sender: TObject);
    procedure btpaste_2Click(Sender: TObject);
    procedure btfinde_1Click(Sender: TObject);
    procedure btfinde_2Click(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog2Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure ReplaceDialog2Replace(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    procedure Timer_traduzTimer(Sender: TObject);
  private
    Languagetrad,xreceivetrad: TStringList;
    function traduzirtexto(xtradDe,xtradPara:String; xtexto:TstringList):TStringList;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    xtimerresponse : Integer;
    { Public declarations }
  end;

var
  adm_tradutor: Tadm_tradutor;

implementation

uses hwsfunctions, RichEdit;

{$R *.dfm}

procedure Tadm_tradutor.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;   
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
      TrayIconini.Icon:=hwsf.HiconToIcon;
      TrayIconini.Hint:='HWS Tradutor';
      Languagetrad:= TStringList.Create;
      xreceivetrad:= TStringList.Create;
      SendMessage(btriche_1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
      SendMessage(btriche_2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
      Languagetrad.Clear;
      xreceivetrad.Clear;
      Combo_selectlinguage.Clear;
      //Português para
      Languagetrad.Add('Portuguese/English');
      Combo_selectlinguage.Items.Add('Português para Inglês');
      Languagetrad.Add('Portuguese/Spanish');
      Combo_selectlinguage.Items.Add('Português para Espanhol');
      Languagetrad.Add('Portuguese/French');
      Combo_selectlinguage.Items.Add('Português para Francês');
      Languagetrad.Add('Portuguese/German');
      Combo_selectlinguage.Items.Add('Português para Alemão');
      Languagetrad.Add('Portuguese/Italian');
      Combo_selectlinguage.Items.Add('Português para Italiano');
      Languagetrad.Add('Portuguese/Dutch');
      Combo_selectlinguage.Items.Add('Português para Holandês');
      Languagetrad.Add('Portuguese/Norwegian');
      Combo_selectlinguage.Items.Add('Português para Norueguês');
      //Inglês para
      Languagetrad.Add('English/Portuguese');
      Combo_selectlinguage.Items.Add('Inglês para Português');
      Languagetrad.Add('English/Spanish');
      Combo_selectlinguage.Items.Add('Inglês para Espanhol');
      Languagetrad.Add('English/French');
      Combo_selectlinguage.Items.Add('Inglês para Francês');
      Languagetrad.Add('English/German');
      Combo_selectlinguage.Items.Add('Inglês para Alemão');
      Languagetrad.Add('English/Italian');
      Combo_selectlinguage.Items.Add('Inglês para Italiano');
      Languagetrad.Add('English/Dutch');
      Combo_selectlinguage.Items.Add('Inglês para Holandês');
      Languagetrad.Add('English/Norwegian');
      Combo_selectlinguage.Items.Add('Inglês para Norueguês');
      //Outras para
      Languagetrad.Add('Spanish/English');
      Combo_selectlinguage.Items.Add('Espanhol para Inglês');
      Languagetrad.Add('French/English');
      Combo_selectlinguage.Items.Add('Francês para Inglês');
      Languagetrad.Add('German/English');
      Combo_selectlinguage.Items.Add('Alemão para Inglês');
      Languagetrad.Add('Italian/English');
      Combo_selectlinguage.Items.Add('Italiano para Inglês');
      Languagetrad.Add('Dutch/English');
      Combo_selectlinguage.Items.Add('Holandês para Inglês');
      Combo_selectlinguage.ItemIndex:=7;

      {Languagetrad.Add('English/Russian');
      Combo_selectlinguage.Items.Add('Inglês para Russo');
      Languagetrad.Add('English/SimplifiedChinese');
      Combo_selectlinguage.Items.Add('Inglês para Chinês simplificado');
      Languagetrad.Add('English/TraditionalChinese');
      Combo_selectlinguage.Items.Add('Inglês para Chinês tradicional');
      Languagetrad.Add('Norwegian/English');
      Combo_selectlinguage.Items.Add('Norueguês para Inglês');
      Languagetrad.Add('Russian/English');
      Combo_selectlinguage.Items.Add('Russo para Inglês');}
end;

procedure Tadm_tradutor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := caNone;
      Application.Minimize;
end;

procedure Tadm_tradutor.bttraduzClick(Sender: TObject);
var xid1: integer;
    xstagio: boolean;
    xtxt,xtradDe,xtradPara: string;
    xtextoax: TStringList;
begin
      if Combo_selectlinguage.ItemIndex<0 then begin
         hwsf.BtMensagem('Selecione a linguagem');
         Combo_selectlinguage.SetFocus;
         Exit;
      end;
      if btriche_1.Text='' then begin
         hwsf.BtMensagem('É necessário digitar um texto');
         btriche_1.SetFocus;
         Exit;
      end;
      GroupBox1.Enabled:=false;
      GroupBox2.Enabled:=false;
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Iniciando comunicação';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.position:=0;
      xtxt:= Languagetrad.Strings[Combo_selectlinguage.ItemIndex];
      xtradDe:='';
      xtradPara:='';
      xstagio:=true;
      loadx.Progressloading.position:=25;
      for xid1:=1 to Length(xtxt) do begin
          if copy(xtxt,xid1,1)='/' then xstagio:=false
          else if xstagio then xtradDe:=xtradDe+copy(xtxt,xid1,1)
          else xtradPara:=xtradPara+copy(xtxt,xid1,1);
      end;
      loadx.lbloading.Caption:=Combo_selectlinguage.Items.Strings[Combo_selectlinguage.ItemIndex];
      loadx.lbloading.Repaint;
      loadx.Progressloading.position:=35;
      try
          xtextoax:= TStringList.Create;
          xtextoax.Clear;
          loadx.Progressloading.position:=40;
          xtextoax.AddStrings(btriche_1.Lines);
          loadx.Progressloading.position:=50;
          if (xtradDe='Portuguese') and (xtradPara<>'English') then begin
             xtextoax.Text:=traduzirtexto(xtradDe,'English',xtextoax).Text;
             loadx.Progressloading.position:=70;
             xtextoax.Text:=traduzirtexto('English',xtradPara,xtextoax).Text;
          end else xtextoax.Text:=traduzirtexto(xtradDe,xtradPara,xtextoax).Text;
          loadx.Progressloading.position:=80;
          GroupBox2.Enabled:=true;
          btriche_2.Lines.Text:=xtextoax.Text;
          GroupBox2.Enabled:=false;
          loadx.Progressloading.position:=90;
      finally
           xtextoax.Free;
      End;
      loadx.Progressloading.position:=100;
      loadx.lbloading.Caption:='Processo concluído com sucesso.';
      loadx.lbloading.Repaint;
      Sleep(1000);
      loadx.Free;
      GroupBox1.Enabled:=true;
      GroupBox2.Enabled:=true;
end;

function Tadm_tradutor.traduzirtexto(xtradDe,xtradPara:String; xtexto:TstringList):TStringList;
var xrecebido: Bool;
begin
      xrecebido:=false;
      xreceivetrad.Clear;
      Tradutor1.TraduzirDe:=xtradDe;
      Tradutor1.TraduzirPara:=xtradPara;
      Tradutor1.Texto:=xtexto.Text;
      Tradutor1.Traduzir;
      xtimerresponse:=0;
      Timer_traduz.Enabled:=true;
      Repeat
           Application.ProcessMessages;
           if xreceivetrad.Text<>'' then
              xrecebido:=true;
           if xtimerresponse>=60 then begin
              if not hwsf.BtConfirma('Falha na conexão, tentar novamente?') then begin
                 Result.Text:='Erro na comunicação...';
                 exit;
              end else begin
                 Tradutor1.TraduzirDe:=xtradDe;
                 Tradutor1.TraduzirPara:=xtradPara;
                 Tradutor1.Texto:=xtexto.Text;
                 Tradutor1.Traduzir;
                 xtimerresponse:=0;
              end;
           end;
      Until xrecebido;
      Timer_traduz.Enabled:=false;
      if xreceivetrad.Text='Error: Too many requests.  Please try again later.' then begin
         xreceivetrad.Clear;
         xreceivetrad.Add('Erro na comunicação, aguarde alguns minutos e tente novamente.');
      end;
      Result:=xreceivetrad;
end;

procedure Tadm_tradutor.Finalizar1Click(Sender: TObject);
begin
      try
      if hwsf.BtConfirma('Finalizar tradutor de textos?') then begin
         TrayIconini.Active := False;
         If TrayIconini <> Nil then FreeAndNil(TrayIconini);
         Application.Terminate;
      end else Close;
      Except End;
end;

procedure Tadm_tradutor.Minimizar1Click(Sender: TObject);
begin
    close;
end;

procedure Tadm_tradutor.Maximizar1Click(Sender: TObject);
begin
      try
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_tradutor.Sobre1Click(Sender: TObject);
begin
      try hwsf.BtSobre; Except End;
end;

procedure Tadm_tradutor.bt_sobreClick(Sender: TObject);
begin
      Sobre1.Click;
end;

procedure Tadm_tradutor.bt_minimizeClick(Sender: TObject);
begin
      Close;
end;

procedure Tadm_tradutor.bt_maximizaClick(Sender: TObject);
begin
    if adm_tradutor.WindowState=wsMaximized then adm_tradutor.WindowState:=wsNormal
    else adm_tradutor.WindowState:=wsMaximized;
end;

procedure Tadm_tradutor.bt_fecharClick(Sender: TObject);
begin
    Finalizar1.Click;
end;

procedure Tadm_tradutor.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_tradutor.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_tradutor.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      adm_tradutor.Left:= adm_tradutor.Left-(mv_mouse.x-x);
      adm_tradutor.Top:= adm_tradutor.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_tradutor.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_tradutor.Left := adm_tradutor.Left - (mv_mouse.x -x);
      adm_tradutor.Top := adm_tradutor.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_tradutor.FormDestroy(Sender: TObject);
begin
        If TrayIconini <> Nil Then FreeAndNil(TrayIconini);
        adm_tradutor := Nil;
end;

procedure Tadm_tradutor.TrayIconiniDblClick(Sender: TObject);
begin
      try
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_tradutor.ApplicationEvents1Minimize(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tadm_tradutor.btclear_1Click(Sender: TObject);
begin
      if btriche_1.Text<>'' then
      if hwsf.BtConfirma('Descartar alterações?') then btriche_1.Clear;
end;

procedure Tadm_tradutor.btclear_2Click(Sender: TObject);
begin
      if btriche_2.Text<>'' then
      if hwsf.BtConfirma('Descartar alterações?') then btriche_2.Clear;
end;

procedure Tadm_tradutor.btnewdc_1Click(Sender: TObject);
begin
      if OpenDialog.Execute then btriche_1.Lines.LoadFromFile(OpenDialog.FileName);
end;

procedure Tadm_tradutor.btnewdc_2Click(Sender: TObject);
begin
      if OpenDialog.Execute then btriche_2.Lines.LoadFromFile(OpenDialog.FileName);
end;

procedure Tadm_tradutor.btsalva_1Click(Sender: TObject);
begin
      if SaveDialog.Execute then btriche_1.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure Tadm_tradutor.btsalva_2Click(Sender: TObject);
begin
      if SaveDialog.Execute then btriche_2.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure Tadm_tradutor.btprint_1Click(Sender: TObject);
begin
      if PrintDialog.Execute then btriche_1.Print('HWS Tradutor');
end;

procedure Tadm_tradutor.btprint_2Click(Sender: TObject);
begin
      if PrintDialog.Execute then btriche_1.Print('HWS Tradutor');
end;

procedure Tadm_tradutor.btcoppy_1Click(Sender: TObject);
begin
      btriche_1.CopyToClipboard;
end;

procedure Tadm_tradutor.btcoppy_2Click(Sender: TObject);
begin
      btriche_2.CopyToClipboard;
end;

procedure Tadm_tradutor.btrecor_1Click(Sender: TObject);
begin
      btriche_1.CutToClipboard;
end;

procedure Tadm_tradutor.btrecor_2Click(Sender: TObject);
begin
      btriche_2.CutToClipboard;
end;

procedure Tadm_tradutor.btpaste_1Click(Sender: TObject);
begin
      btriche_1.PasteFromClipboard;
end;

procedure Tadm_tradutor.btpaste_2Click(Sender: TObject);
begin
      btriche_2.PasteFromClipboard;
end;

procedure Tadm_tradutor.btfinde_1Click(Sender: TObject);
begin
      ReplaceDialog1.Execute;
end;

procedure Tadm_tradutor.btfinde_2Click(Sender: TObject);
begin
      ReplaceDialog2.Execute;
end;

procedure Tadm_tradutor.ReplaceDialog1Find(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with btriche_1 do begin
    if SelLength <> 0 then StartPos := SelStart + SelLength
    else StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(ReplaceDialog1.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(ReplaceDialog1.FindText);
    end;
  end;
end;

procedure Tadm_tradutor.ReplaceDialog2Find(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with btriche_2 do begin
    if SelLength <> 0 then StartPos := SelStart + SelLength
    else StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(ReplaceDialog2.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(ReplaceDialog2.FindText);
    end;
  end;
end;

procedure Tadm_tradutor.ReplaceDialog1Replace(Sender: TObject);
var SelPos: Integer;
begin
  with TReplaceDialog(Sender) do begin
    SelPos := Pos(FindText, btriche_1.Lines.Text);
    if SelPos > 0 then begin
      btriche_1.SelStart := SelPos - 1;
      btriche_1.SelLength := Length(FindText);
      btriche_1.SelText := ReplaceText;
    end;
  end;
end;

procedure Tadm_tradutor.ReplaceDialog2Replace(Sender: TObject);
var SelPos: Integer;
begin
  with TReplaceDialog(Sender) do begin
    SelPos := Pos(FindText, btriche_2.Lines.Text);
    if SelPos > 0 then begin
      btriche_2.SelStart := SelPos - 1;
      btriche_2.SelLength := Length(FindText);
      btriche_2.SelText := ReplaceText;
    end;
  end;
end;

procedure Tadm_tradutor.FormResize(Sender: TObject);
begin
      bt_fechar.Left:=pn_tit.Width-18;
      bt_maximiza.Left:=bt_fechar.Left-15;
      bt_minimize.Left:=bt_maximiza.Left-15;
      bt_sobre.Left:=bt_minimize.Left-15;
      Combo_selectlinguage.Width:= Panel_language.Width-85;
end;

procedure Tadm_tradutor.Splitter1Moved(Sender: TObject);
begin
      Combo_selectlinguage.Width:= Panel_language.Width-85;
end;

procedure Tadm_tradutor.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_tradutor.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
      xreceivetrad.Text:=Traducao;
end;

procedure Tadm_tradutor.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

end.
