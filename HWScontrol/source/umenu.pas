{###############################################################################
Programa: HWScontrol
Módulo: Menu principal.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, TrayIcon, AppEvnts,
  XPMenu, ComboSpeedButton, ImgList, ComCtrls, ToolWin, JPEG, Clipbrd,
  backup, OleCtrls, XPMan, SHDocVw;

type
  TOpenavhws = record
      xcount: integer;
      xURL : array[1..50] of string[255];
end;

type
  TDriveType = (dtUnknown, dtNoDrive, dtFloppy, dtFixed, dtNetwork, dtCDROM, dtRAM);
  TimageListAX = record
    codigo: array[0..100] of integer;
    descricao: array[0..100] of string[255];
    mdl: array[0..100] of string[255];
    lastver: array[0..100] of string[100];
    verinst: array[0..100] of string[100];
    ico: array[0..100] of TBitmap;
    cpt: array[0..100] of Boolean;
    cp2: array[0..100] of integer;
    cp3: array[0..100] of integer;
    cp4: array[0..100] of string[100];
    cp5: array[0..100] of string[100];
    cp6: array[0..100] of Boolean;
    cp7: array[0..100] of integer;
    count : integer;
  End;
  Txupdatever = Record
     codigo: Array[0..100] of Integer;
     count: Integer
  end;
  Ttblockmouse = Record
      x: Integer;
      y: Integer;
  end;
  Tmdlext = record
      codigo: array[0..10] of integer;
      mdl: array[0..10] of string[255];
      lastver: array[0..10] of string[100];
      verinst: array[0..10] of string[100];
      cpt: array[0..10] of Boolean;
      param: array[0..10] of Boolean;
      count : integer;
  end;
  Tadm = class(TForm)
    popmnuGeral: TPopupMenu;
    ChatHWS1: TMenuItem;
    N1: TMenuItem;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    Minimizar1: TMenuItem;
    Sair1: TMenuItem;
    Configuraes1: TMenuItem;
    Conectar1: TMenuItem;
    Desconectar1: TMenuItem;
    TrayIcon_menu: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    Conexo1: TMenuItem;
    MainMenuHWS: TMainMenu;
    Conexo2: TMenuItem;
    Desconectar2: TMenuItem;
    Conectar2: TMenuItem;
    Configuraes2: TMenuItem;
    Sobre2: TMenuItem;
    Minimizar2: TMenuItem;
    Sair2: TMenuItem;
    Ajuda1: TMenuItem;
    N6: TMenuItem;
    picosdeajuda1: TMenuItem;
    HWSupdate1: TMenuItem;
    Fechar1: TMenuItem;
    N8: TMenuItem;
    ImageListHWS: TImageList;
    Ajda1: TMenuItem;
    N3: TMenuItem;
    Autoupdate1: TMenuItem;
    N5: TMenuItem;
    CompressStream: TBackupFile;
    WebsiteHWS1: TMenuItem;
    N4: TMenuItem;
    Mdulos1: TMenuItem;
    N7: TMenuItem;
    Bloquear1: TMenuItem;
    Bloquear2: TMenuItem;
    Timer_blocksys: TTimer;
    StatusBar1: TStatusBar;
    ProgressBar_cnt: TProgressBar;
    Panel_cnt: TPanel;
    ImgCnt_1: TImage;
    ImgCnt_2: TImage;
    ImgCnt_3: TImage;
    Panel_ico: TPanel;
    Image_hwscontrol: TImage;
    Timer_cnt: TTimer;
    ComboSpeedButton1: TComboSpeedButton;
    WebBrowserhws: TWebBrowser;
    XPManifest1: TXPManifest;
    CoolBar1: TCoolBar;
    ToolBar_nav: TToolBar;
    bt_voltar: TSpeedButton;
    bt_avancar: TSpeedButton;
    ComboBox1: TComboBox;
    bt_send: TSpeedButton;
    bt_stop: TSpeedButton;
    bt_home: TSpeedButton;
    bt_refresh: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Conectar1Click(Sender: TObject);
    procedure Desconectar1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CompressStreamProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure HWSupdate1Click(Sender: TObject);
    procedure Autoupdate1Click(Sender: TObject);
    procedure WebsiteHWS1Click(Sender: TObject);
    procedure picosdeajuda1Click(Sender: TObject);
    procedure Bloquear2Click(Sender: TObject);
    procedure MainMenuHWSChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure popmnuGeralChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer_blocksysTimer(Sender: TObject);
    procedure TrayIcon_menuClick(Sender: TObject);
    procedure bt_sendClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_voltarClick(Sender: TObject);
    procedure bt_avancarClick(Sender: TObject);
    procedure bt_stopClick(Sender: TObject);
    procedure bt_refreshClick(Sender: TObject);
    procedure bt_homeClick(Sender: TObject);
    procedure Timer_cntTimer(Sender: TObject);
    procedure WebBrowserhwsBeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure WebBrowserhwsDocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure WebBrowserhwsDownloadBegin(Sender: TObject);
    procedure WebBrowserhwsDownloadComplete(Sender: TObject);
    procedure WebBrowserhwsProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure FormResize(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure bt_sendMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
     websitehome,x_campo_form: string;
     xacessurl : string;
     xacesstool,xexecutpassdialog: boolean;
    imageListAX: TimageListAX;
    mdlext: Tmdlext;
    xinitmdl: TStringList;
    initfrm,blocksys: boolean;
    xcnt_usr,xcnt_pass,xcnt_axf : string;
    timerblock: Integer;
    tblockmouse: Ttblockmouse;
    function conecta_bdAct:boolean;
    function desconecta_bd:boolean;
    function updatemod(cod_listAX: integer): boolean;
    function testblocksys:boolean;
    function blocksysexecute:boolean;
    procedure cofigcnt(xcnt: byte; montamenu: boolean);
    procedure iconsysvisible(xvisib: Boolean);
    procedure limparmenus;
    procedure chamaprg(btcomponente: String);
    procedure chamaprg_path(xnomeexe:Integer);
    procedure atualizaprg_path(xforce:Boolean);
    function updatemod2(cod_listAX: integer; xsubdir: string): boolean;
    procedure atualizaprg_sys(xnameprg:string);
    function updatemod_sys(cod_listAX: integer; xcript: Boolean; xnamemod,xpathprg,xchavelastver: string): boolean;
    procedure atualizaprg_root;
    function updatemod_root(cod_listAX: integer; xcript: Boolean; xnamemod,xchavelastver: String): boolean;
    procedure open_modulo(ax_mod,ax_param:string);
    procedure CapturaClickmenu_Main(Sender: TObject);
    procedure bloquearmenus(xblock:boolean);
    procedure resetatimerblok;
    function closeAllForms():Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adm: Tadm;
  Openavhws: TOpenavhws;

implementation

uses udm,hwsfunctions, SqlExpr, DB, DBClient, SimpleDS, Math;

{$R *.dfm}

function Tadm.conecta_bdAct:boolean;
var ckseg : bool;
    dgtdados : Tdgtdados;
    axshowing: Boolean;
begin
      if xexecutpassdialog then exit;
      xcnt_usr:= '';
      xcnt_pass:= '';
      xcnt_axf:= 'Å?Ö¤¶•';
      ckseg:= false;
      axshowing:= loadx.Showing;
      if axshowing then loadx.Close;
      xexecutpassdialog:=true;
      dgtdados:=hwsf.BtDigitarSenha('Autenticação');
      xexecutpassdialog:=false;
      if dgtdados.confat then begin
         xcnt_usr:= dgtdados.usr;
         xcnt_pass:= dgtdados.pass;
         if dm.conecta_bd(xcnt_usr,xcnt_pass,'') then begin
            ckseg:=true;
            websitehome:= AxDadosUsr.website;
            Result:=true;
         end else begin
            Result:=false;
            Application.Terminate;
            exit;
            //websitehome:= 'http://www.hws.com.br';
         end;
      end else begin
         Result:=false;
         Application.Terminate;
         exit;
      end;
      if ckseg then cofigcnt(1,true)
      else cofigcnt(0,true);
end;

function Tadm.desconecta_bd:boolean;
begin
      cofigcnt(0,true);
end;

procedure Tadm.limparmenus;
var xtotit:integer;
begin
    for xtotit:=0 to (MainMenuHWS.Items.Count-4) do
        MainMenuHWS.Items[0].Destroy;
    for xtotit:=0 to (popmnuGeral.Items[2].Count-1) do
        popmnuGeral.Items[2].Items[0].Destroy;
end;

procedure Tadm.cofigcnt(xcnt: byte; montamenu: boolean);
var xmmenu_new,xmmenu_new2 : TMenuItem;
    xtotit,xsubit,xpercax,xcodtitle : Integer;
    ximgmenu: TBitmap;
    xjpgmenu: TJPEGImage;
    xstrmenu: TMemoryStream;
    xerror: TStringList;
    xverinst_mod: string;
    xupdatever: Txupdatever;
    xperc: Real;
    xupdatenow,axshowing: Boolean;
    update_texthint,texthintdefault,xsystemdirid: String;
begin
      axshowing:= loadx.Showing;
      Case xcnt of
         0: begin
            Conectar1.Checked:=false;
            Conectar2.Checked:=false;
            Desconectar1.Checked:=true;
            Desconectar2.Checked:=true;
            if not axshowing then begin
               loadx := Tloadx.Create(Application);
               loadx.lbloading.Caption:='Desconectando.';
               loadx.Show;
               loadx.Update;
            end else begin
               loadx.lbloading.Caption:='Desconectando.';
               loadx.lbloading.Repaint;
            end;
            iconsysvisible(false);
            TrayIcon_menu.Hint:='HWScontrol'+#13+'Desconectado';
            StatusBar1.Panels.Items[7].Text:= 'Desconectado';
            popmnuGeral.Items[4].ImageIndex:=2;
            limparmenus;
            N4.Visible:=false;
            Mdulos1.Visible:=false;
            //Application.Minimize;
         end;
         1: begin
            if not axshowing then begin
               loadx := Tloadx.Create(Application);
               loadx.lbloading.Caption:='Conectando.';
               loadx.Show;
               loadx.Update;
            end else begin
               loadx.lbloading.Caption:='Conectando.';
               loadx.lbloading.Repaint;
            end;
            iconsysvisible(true);
            loadx.Progressloading.position:=0;
            TrayIcon_menu.Hint:='HWScontrol'+#13+'Conectado';
            StatusBar1.Panels.Items[7].Text:= 'Conectado';
            Conectar1.Checked:=true;
            Conectar2.Checked:=true;
            Desconectar1.Checked:=false;
            Desconectar2.Checked:=false;
            popmnuGeral.Items[4].ImageIndex:=1;
            if montamenu then begin
               limparmenus;
               imageListAX.count:=0;
               xupdatever.count:=0;
               ximgmenu:= TBitmap.Create;
               xjpgmenu:= TJPEGImage.Create;
               xstrmenu:= TMemoryStream.Create;
               N4.Visible:=true;
               Mdulos1.Visible:=true;
               xcodtitle:=0;
               dm.ds_sql3.CommandText:= 'SELECT DISTINCT B.codigo,B.descricao,B.mdl,B.lastver,B.cpt,B.xinit,B.cp2,B.cp3,B.cp4,B.cp5,B.cp6,B.cp7,A.cod_usr,A.cod_menu,A.verinst,C.descricao,C.ordem,A.ordem FROM '+EnDecryptString(Serverconect.vrf33,37249)+' A, '+
                                        EnDecryptString(Serverconect.vrf24,37249)+' B, '+
                                        EnDecryptString(Serverconect.vrf37,37249)+' C '+
                                        'WHERE B.codigo=A.cod_grp AND C.codigo=A.cod_menu AND A.cod_usr='+#39+IntToStr(Serverconect.vrf00)+#39+
                                        ' ORDER BY C.ordem, A.ordem';
               dm.ds_sql3.Open;
               dm.ds_sql3.First;
               xtotit:=-1;
               try
                   xperc:=100/dm.ds_sql3.RecordCount;
               except
                   xperc:=1;
               end;
               xinitmdl.Clear;
               While not dm.ds_sql3.Eof do begin
                     xpercax:=StrtoInt(formatfloat('0',xperc*xtotit));
                     if xpercax > 100 then xpercax:=100;
                     loadx.Progressloading.Position:=xpercax;
                     if (dm.ds_sql3.fieldbyname('cod_menu').AsInteger <> xcodtitle) then begin
                        xcodtitle:= dm.ds_sql3.fieldbyname('cod_menu').AsInteger;
                        xsubit:=0;
                        Inc(xtotit);
                        //cria menu principal
                        xmmenu_new := TMenuItem.Create(MainMenuHWS);
                        xmmenu_new2 := TMenuItem.Create(popmnuGeral);
                        xmmenu_new.Caption := dm.ds_sql3.fieldbyname('descricao_1').AsString;
                        xmmenu_new2.Caption := dm.ds_sql3.fieldbyname('descricao_1').AsString;
                        xmmenu_new.ImageIndex:= -1;
                        xmmenu_new2.ImageIndex:= -1;
                        {if not TBlobField(FieldByName('ico')).IsNull then begin
                           try
                               TBlobField(FieldByName('ico')).SaveToStream(xstrmenu);
                               xstrmenu.Seek(0,soFromBeginning);
                               xjpgmenu.LoadFromStream(xstrmenu);
                               ximgmenu.Width := 15;
                               ximgmenu.Height := 15;
                               ximgmenu.Canvas.StretchDraw(Rect(0, 0, 15, 15), xjpgmenu);
                               xmmenu_new.Bitmap.Assign(ximgmenu);
                               xmmenu_new2.Bitmap.Assign(ximgmenu);
                           except end;
                        end else begin
                           xmmenu_new2.ImageIndex:= 10;
                        end;}
                        xmmenu_new2.ImageIndex:= 10;
                        MainMenuHWS.Items.Insert(xtotit,xmmenu_new);
                        popmnuGeral.Items[2].Insert(xtotit,xmmenu_new2);
                     end;
                          //cria itens do menu
                          xmmenu_new := TMenuItem.Create(MainMenuHWS);
                          xmmenu_new2 := TMenuItem.Create(popmnuGeral);
                          xmmenu_new.Caption := dm.ds_sql3.fieldbyname('descricao').AsString;
                          xmmenu_new2.Caption := dm.ds_sql3.fieldbyname('descricao').AsString;
                          try
                              xstrmenu.Clear;
                              xstrmenu.Seek(0,soFromBeginning);
                              {if not dm.ds_sql3.FieldByName('ico').IsNull then begin
                                  TBlobField(dm.ds_sql3.FieldByName('ico')).SaveToStream(xstrmenu);
                                  xstrmenu.Seek(0,soFromBeginning);
                                  xjpgmenu.LoadFromStream(xstrmenu);
                                  ximgmenu.Width := 15;
                                  ximgmenu.Height := 15;
                                  ximgmenu.Canvas.StretchDraw(Rect(0, 0, 15, 15), xjpgmenu);
                                  xmmenu_new.Bitmap.Assign(ximgmenu);
                                  xmmenu_new2.Bitmap.Assign(ximgmenu);
                              end else begin
                                  xmmenu_new.Bitmap.Assign(nil);
                                  xmmenu_new2.Bitmap.Assign(nil);
                              end;  }
                              xmmenu_new.ImageIndex:= 10;
                              xmmenu_new2.ImageIndex:= 10;
                              xmmenu_new.Name:='btmainm_'+IntToStr(imageListAX.count);
                              xmmenu_new2.Name:='btmainm_'+IntToStr(imageListAX.count);
                              imageListAX.codigo[imageListAX.count]:= dm.ds_sql3.FieldByName('codigo').AsInteger;
                              imageListAX.descricao[imageListAX.count]:= dm.ds_sql3.FieldByName('descricao').AsString;
                              imageListAX.cp6[imageListAX.count]:=StrToBool(dm.ds_sql3.FieldByName('cp6').AsString);
                              if imageListAX.cp6[imageListAX.count] then begin
                                 imageListAX.cp7[imageListAX.count]:=imageListAX.codigo[imageListAX.count];
                                 imageListAX.mdl[imageListAX.count]:= dm.ds_sql3.FieldByName('mdl').AsString;
                                 imageListAX.lastver[imageListAX.count]:= dm.ds_sql3.FieldByName('lastver').AsString;
                                 imageListAX.cpt[imageListAX.count]:= StrToBool(dm.ds_sql3.FieldByName('cpt').AsString);
                                 imageListAX.cp2[imageListAX.count]:= dm.ds_sql3.FieldByName('cp2').AsInteger;
                                 imageListAX.cp3[imageListAX.count]:= dm.ds_sql3.FieldByName('cp3').AsInteger;
                              end else begin
                                 imageListAX.cp7[imageListAX.count]:=dm.ds_sql3.FieldByName('cp7').AsInteger;
                                 if dm.ds_sql4.Active then dm.ds_sql4.Close;
                                 dm.ds_sql4.CommandText:= 'SELECT DISTINCT codigo,mdl,lastver,cpt,cp2,cp3 FROM '+
                                                          EnDecryptString(Serverconect.vrf24,37249)+
                                                          ' WHERE codigo='+#39+IntToStr(imageListAX.cp7[imageListAX.count])+#39;
                                 dm.ds_sql4.Open;
                                 imageListAX.mdl[imageListAX.count]:= dm.ds_sql4.FieldByName('mdl').AsString;
                                 imageListAX.lastver[imageListAX.count]:= dm.ds_sql4.FieldByName('lastver').AsString;
                                 imageListAX.cpt[imageListAX.count]:= StrToBool(dm.ds_sql4.FieldByName('cpt').AsString);
                                 imageListAX.cp2[imageListAX.count]:= dm.ds_sql4.FieldByName('cp2').AsInteger;
                                 imageListAX.cp3[imageListAX.count]:= dm.ds_sql4.FieldByName('cp3').AsInteger;
                              end;
                              imageListAX.cp4[imageListAX.count]:= dm.ds_sql3.FieldByName('cp4').AsString;
                              imageListAX.cp5[imageListAX.count]:= dm.ds_sql3.FieldByName('cp5').AsString;
                              if StrtoBool(dm.ds_sql3.FieldByName('xinit').AsString) then
                                 xinitmdl.Add(InttoStr(imageListAX.count));
                              imageListAX.verinst[imageListAX.count]:= dm.ds_sql3.FieldByName('verinst').AsString;
                              if Autoupdate1.Checked then begin
                                 if (((imageListAX.lastver[imageListAX.count] <> imageListAX.verinst[imageListAX.count]) and (imageListAX.mdl[imageListAX.count]<>''))
                                    or ((imageListAX.mdl[imageListAX.count]<>'') and not FileExists('bin\'+imageListAX.mdl[imageListAX.count]))) then begin
                                    xupdatever.codigo[xupdatever.count]:=imageListAX.count;
                                    xupdatever.count:=xupdatever.count+1;
                                 end;
                              end else begin
                                 if FileExists('bin\'+imageListAX.mdl[imageListAX.count]) then begin
                                    if (((imageListAX.lastver[imageListAX.count] <> imageListAX.verinst[imageListAX.count]) and (imageListAX.mdl[imageListAX.count]<>''))) then begin
                                        xupdatever.codigo[xupdatever.count]:=imageListAX.count;
                                        xupdatever.count:=xupdatever.count+1;
                                    end;
                                 end;
                              end;
                              if (imageListAX.mdl[imageListAX.count]<>'') then begin
                                 xmmenu_new.OnClick:= CapturaClickmenu_Main;
                                 xmmenu_new2.OnClick:= CapturaClickmenu_Main;
                              end;

                              imageListAX.ico[imageListAX.count]:= TBitmap.Create;
                              imageListAX.ico[imageListAX.count].Assign(nil);
                              {if not dm.ds_sql3.FieldByName('ico').IsNull then begin
                                 imageListAX.ico[imageListAX.count].Assign(ximgmenu);
                              end else begin
                                 imageListAX.ico[imageListAX.count].Assign(nil);
                              end;}
                              imageListAX.count:=imageListAX.count+1;
                          except end;
                          MainMenuHWS.Items[xtotit].Insert(xsubit,xmmenu_new);
                          popmnuGeral.Items[2].Items[xtotit].Insert(xsubit,xmmenu_new2);
                          Inc(xsubit);
                     dm.ds_sql3.Next;
               end;
               dm.ds_sql3.Close;
               if dm.ds_sql4.Active then dm.ds_sql4.Close;
               ximgmenu.Free;
               xjpgmenu.Free;
               xstrmenu.Free;
               xerror:= TStringList.Create;
               xerror.Clear;
               if xupdatever.count > 0 then begin
                  xupdatenow:= True;
                  if not Autoupdate1.Checked then begin
                     loadx.Close;
                     if not hwsf.BtConfirma('HWSupdate encontrou novas versões disponíveis, atualizar agora?') then
                        xupdatenow:= False;
                     loadx := Tloadx.Create(Application);
                     loadx.lbloading.Caption:='Conectando.';
                     loadx.Show;
                     loadx.Update;
                  end;
                  if xupdatenow then begin
                    loadx.Progressloading2.Visible:=true;
                    loadx.Progressloading2.Repaint;
                    loadx.lbloading.Caption:='Atualizando módulos';
                    loadx.lbloading.Repaint;
                    xperc:=100/xupdatever.Count;
                    texthintdefault:=TrayIcon_menu.Hint;
                    update_texthint:='HWScontrol está sendo atualizado, aguarde. ' + #13 +
                                     'Download: ';
                    TrayIcon_menu.Hint:= update_texthint+'1 %';
                    for xtotit:=0 to (xupdatever.Count-1) do begin
                      xpercax:=StrtoInt(formatfloat('0',xperc*xtotit));
                      if xpercax > 100 then xpercax:=100;
                      TrayIcon_menu.Hint:= update_texthint+InttoStr(xpercax)+' %';
                      loadx.Progressloading.Position:=xpercax;
                      //update módulo
                      xverinst_mod:=imageListAX.verinst[xtotit];
                      if updatemod(xupdatever.codigo[xtotit]) then
                         xerror.Add('Módulo: '+imageListAX.mdl[xupdatever.codigo[xtotit]]+' '+xverinst_mod+'->'+imageListAX.lastver[xupdatever.codigo[xtotit]]+' ... Atualizado')
                      else xerror.Add('Módulo: '+imageListAX.mdl[xupdatever.codigo[xtotit]]+' '+xverinst_mod+'->'+imageListAX.lastver[xupdatever.codigo[xtotit]]+' ... Erro');
                    end;
                    TrayIcon_menu.Hint:=texthintdefault;
                  end;
               end;
               loadx.Progressloading2.Visible:=false;
               if (xerror.Count > 0) and not (Autoupdate1.Checked) then begin
                  loadx.Close;
                  hwsf.BtAviso(xerror);
                  //loadx := Tloadx.Create(Application);
                  //loadx.lbloading.Caption:='Conectando.';
                  //loadx.Show;
                  //loadx.Update;
               end;
               xerror.Free;
            end;
            atualizaprg_root;
            xsystemdirid:= ExtractSystemDir;
            if (copy(xsystemdirid,Length(xsystemdirid),1)<>'\') and
               (copy(xsystemdirid,Length(xsystemdirid),1)<>'/') then
               xsystemdirid:=xsystemdirid+'\';
            atualizaprg_sys(xsystemdirid+'hwsdialogs.bpl');
            atualizaprg_sys(xsystemdirid+'hws.bpl');
            ShowWindow(Application.Handle,SW_RESTORE);
            SetForegroundWindow(Application.Handle);
         end;
      end;
      if not axshowing then loadx.Close;
end;

procedure Tadm.iconsysvisible(xvisib: Boolean);
begin
      picosdeajuda1.Visible:=xvisib;
      HWSupdate1.Visible:=xvisib;
      Ajda1.Visible:=xvisib;
      Mdulos1.Visible:=xvisib;
      N1.Visible:=xvisib;
      N5.Visible:=xvisib;
      Bloquear1.Visible:=xvisib;
      Bloquear2.Visible:=xvisib;
      Desconectar2.Visible:=xvisib;
      ImgCnt_1.Visible:=xvisib;
      Conectar2.Visible:=not xvisib;
      ImgCnt_3.Visible:=not xvisib;
end;

procedure Tadm.CapturaClickmenu_Main(Sender: TObject);
begin
      chamaprg(TMenuItem(Sender).Name);
end;

procedure Tadm.chamaprg(btcomponente: String);
var cod_prog: Integer;
    StrLst : TStringList;
    xver: string;
    xupdatenow: Boolean;
    axshowing: Boolean;
    xparamADD: String;
begin
      try
        StrLst := TStringList.Create;
        cod_prog:= StrtoInt(copy(btcomponente,9,Length(btcomponente)));
        StrLst.Clear;
        StrLst:= FileVerInfo(ExtractFilePath(Application.ExeName)+'bin\'+imageListAX.mdl[cod_prog]);
        if StrLst.Count > 0 then xver:=StrLst.Strings[4]
        else xver:='';
        if xver <> imageListAX.lastver[cod_prog] then begin
           //imageListAX.cpt[cod_prog];
           xupdatenow:= True;
           if not Autoupdate1.Checked then
           if not hwsf.BtConfirma('HWSupdate encontrou nova versão disponível, atualizar agora?') then
              xupdatenow:= False;
           if xupdatenow then begin
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
              loadx.lbloading.Caption:='Atualizando módulos';
              loadx.Progressloading2.Visible:=true;
              loadx.Show;
              loadx.Update;
              loadx.Progressloading.position:=0;
              updatemod(cod_prog);
              if not axshowing then loadx.Close;
           end;
        end;
      finally
        StrLst.Free;
      end;
      xparamADD:=imageListAX.cp5[cod_prog];
      if xparamADD<>'' then xparamADD:= ' '+xparamADD;
      open_modulo(imageListAX.mdl[cod_prog],xparamADD);
end;

function Tadm.updatemod(cod_listAX: integer): boolean;
var OutMS_mod,OutMS_tmp: TMemoryStream;
    xchr,xcmod,xordtmp,xpercax,xpercax2: integer;
    c_mod : byte;
    xfilepath_mod,xfilepath_mod2: String;
    Success: Boolean;
    xperc: Real;
    //xcodTMP: Integer;
begin
     Result:=true;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       xfilepath_mod:='';
       With dm.ds_sql2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24,37249)+'_ax '+
                       'WHERE cod_mod='+#39+InttoStr(imageListAX.cp7[cod_listAX])+#39' ORDER BY ordem';
            Open;
            First;
            OutMS_mod.Seek(0,soFromBeginning);
            xperc:=70/RecordCount;
            xpercax2:=1;
            While not Eof do begin
                xpercax:=StrtoInt(formatfloat('0',xperc*xpercax2))+30;
                if xpercax > 100 then xpercax:=100;
                if loadx.Progressloading2.Visible then
                   loadx.Progressloading2.Position:=xpercax
                else loadx.Progressloading.Position:=xpercax;
                Inc(xpercax2);
                OutMS_tmp.Clear;
                OutMS_tmp.Seek(0,soFromBeginning);
                TBlobField(FieldByName('img')).SaveToStream(OutMS_tmp);
                OutMS_tmp.Seek(0,soFromBeginning);
                if imageListAX.cpt[cod_listAX] then begin
                   xchr:=HexToInt(imageListAX.mdl[cod_listAX]+fieldbyname('codigo').AsString+imageListAX.lastver[cod_listAX]+Inttostr(imageListAX.cp7[cod_listAX]));
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
       With dm.executa do begin
            OutMS_mod.Seek(0,soFromBeginning);
            if OutMS_mod.Size > 0 then begin
               xfilepath_mod:=ExtractFilePath(Application.ExeName)+'bin\'+imageListAX.mdl[cod_listAX];
               xfilepath_mod2:=ExtractFilePath(Application.ExeName)+'bin\';
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
               Params[0].AsString:= imageListAX.lastver[cod_listAX];
               Params[1].AsInteger:= imageListAX.codigo[cod_listAX];
               Params[2].AsInteger:= Serverconect.vrf00;
               Execute;
               DeleteFile(xfilepath_mod+'.BKP');
            end else Result:=false;
       end;
       OutMS_mod.Free;
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod) then
          DeleteFile(Pchar(xfilepath_mod));
       if FileExists(xfilepath_mod+'.BKP') then
          MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
       Result:=false;
     End;
end;

procedure Tadm.FormCreate(Sender: TObject);
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
     if FileExists(Application.ExeName+'.BKP') then
        DeleteFile(Application.ExeName+'.BKP');
     websitehome:= 'http://www.hws.com.br';
     initfrm:=false;
     blocksys:=false;
     xexecutpassdialog:=false;
     tblockmouse.x:=0;
     tblockmouse.y:=0;
     timerblock:=0;
     xinitmdl:= TStringList.Create;
     TrayIcon_menu.Icon:=hwsf.HiconToIcon;
     ImageListHWS.AddIcon(hwsf.HiconToIcon);
     popmnuGeral.Items[0].ImageIndex:=ImageListHWS.Count-1;
     Autoupdate1.Checked:=Controlcnfg.vrf38;
     TrayIcon_menu.Active := True;
     //if
     conecta_bdAct;// then begin
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando ambiente';
        loadx.Show;
        loadx.Update;
     end;
     With mdlext do begin
          codigo[0]:=0;
          mdl[0]:='HWScontrolConfig.exe';
          lastver[0]:='';
          verinst[0]:='';
          cpt[0]:=true;
          param[0]:=false;
          codigo[1]:=0;
          mdl[1]:='HWShelp.exe';
          lastver[1]:='';
          verinst[1]:='';
          cpt[1]:=true;
          param[1]:=true;
          count:=2;
     end;
     if not axshowing then loadx.Close;
     loadx.Close;
     bt_home.Click;
     //end;
end;

procedure Tadm.FormDestroy(Sender: TObject);
begin
        If TrayIcon_menu <> Nil Then FreeAndNil(TrayIcon_menu);
        //adm := Nil;
end;

procedure Tadm.FormClose(Sender: TObject; var Action: TCloseAction);
var xcloseend: Boolean;
    axshowing: Boolean;
begin
       xcloseend:=hwsf.BtConfirma('Finalizar sistema HWScontrol?');
       if not xcloseend then begin
{           axshowing:= loadx.Showing;
           if not axshowing then begin
              loadx := Tloadx.Create(Application);
              loadx.lbloading.Caption:='Finalizando';
              loadx.Show;
              loadx.Update;
           end else begin
              loadx.lbloading.Caption:='Finalizando';
              loadx.lbloading.Repaint;
           end;
           Sleep(1000);
           closeAllForms();
           TrayIcon_menu.Active := False;
           //If TrayIcon_menu <> Nil then FreeAndNil(TrayIcon_menu);
           Action:= caFree;
           //Application.Terminate;
        end else begin                }
           Action := caNone;
           Application.Minimize;
           if Controlcnfg.vrf39 then
           if not blocksys and Conectar1.Checked then blocksysexecute;
        end;
end;

procedure Tadm.ApplicationEvents1Minimize(Sender: TObject);
begin
      if Controlcnfg.vrf39 then
      if not blocksys and Conectar1.Checked then blocksysexecute;
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tadm.FormActivate(Sender: TObject);
var xinitax: integer;
    xparamADD: String;
begin
     if not initfrm then begin
         initfrm:=true;
         adm.Refresh;
         adm.Top:=adm.Top-10;
         if Controlcnfg.vrf40 > 0 then Timer_blocksys.Enabled:=true;
         if xinitmdl.Count>0 then begin
            for xinitax:=0 to (xinitmdl.Count-1) do begin
                xparamADD:=imageListAX.cp5[StrtoInt(xinitmdl.Strings[xinitax])];
                if xparamADD<>'' then xparamADD:= ' '+xparamADD;
                open_modulo(imageListAX.mdl[StrtoInt(xinitmdl.Strings[xinitax])],' /h'+xparamADD);
            end;
         end;
         adm.WindowState:= wsMaximized;
     end;
     loadx.Close;
end;

//abre módulos do sistema
procedure Tadm.open_modulo(ax_mod,ax_param:string);
var ax_mod2: string;
begin
     ax_mod2:= ExtractFilePath(Application.ExeName)+'bin\'+ax_mod;
     if FileExists(ax_mod2) then begin
        if not (Conectar1.Checked) or not (dm.gravar_logsys('Módulo: '+ax_mod2)) then begin
            hwsf.BtMensagem('Bases estão desconectadas.');
        end else begin
            WinExec(PChar(ax_mod2+' '+xcnt_usr+' '+xcnt_axf+' '+xcnt_pass+ax_param), SW_SHOW);
        end;
     end else begin
        hwsf.BtMensagem('Módulo inexistente.');
     end;
end;

procedure Tadm.Conectar1Click(Sender: TObject);
begin
      if testblocksys then
      if not Conectar1.Checked then conecta_bdAct
      else hwsf.BtMensagem('Bases já estão conectadas.');
end;

procedure Tadm.Desconectar1Click(Sender: TObject);
begin
      if testblocksys then
      if not Desconectar1.Checked then desconecta_bd
      else hwsf.BtMensagem('Bases já estão desconectadas.');
end;

procedure Tadm.Configuraes1Click(Sender: TObject);
begin
      chamaprg_path(0);
end;

procedure Tadm.Sobre1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm.Minimizar1Click(Sender: TObject);
begin
      Application.Minimize;
end;

procedure Tadm.Sair1Click(Sender: TObject);
begin
      Close;
end;

procedure Tadm.CompressStreamProgress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
var xPercent : Integer;
begin
     xPercent:=StrtoInt(Formatfloat('0',(Percent*30)/100));
     if loadx.Progressloading2.Visible then
        loadx.Progressloading2.position:=xPercent
     else loadx.Progressloading.position:=xPercent;
end;

procedure Tadm.HWSupdate1Click(Sender: TObject);
var xsystemdirid: String;
begin
     if testblocksys then
     if hwsf.BtConfirma('Atualizar agora?') then begin
        closeAllForms();
        cofigcnt(0,true);
        cofigcnt(1,true);
        atualizaprg_path(true);
        xsystemdirid:= ExtractSystemDir;
        if (copy(xsystemdirid,Length(xsystemdirid),1)<>'\') and
           (copy(xsystemdirid,Length(xsystemdirid),1)<>'/') then
           xsystemdirid:=xsystemdirid+'\';
        atualizaprg_sys(xsystemdirid+'hwsdialogs.bpl');
        atualizaprg_sys(xsystemdirid+'hws.bpl');
        atualizaprg_sys(ExtractFilePath(Application.ExeName)+'uninstall.exe');
     end;
end;

procedure Tadm.Autoupdate1Click(Sender: TObject);
begin
    if testblocksys then begin
       if Autoupdate1.Checked then Autoupdate1.Checked:=false
       else Autoupdate1.Checked:=true;
       Controlcnfg.vrf38:= Autoupdate1.Checked;
       dm.winsysreg(2,false,false);
    end;
end;

procedure Tadm.WebsiteHWS1Click(Sender: TObject);
begin
      WebBrowserhws.Navigate('http://www.hws.com.br');
end;

procedure Tadm.picosdeajuda1Click(Sender: TObject);
begin
      chamaprg_path(1);
end;

procedure Tadm.Bloquear2Click(Sender: TObject);
begin
      blocksysexecute;
      if blocksys then Close;
end;

function Tadm.blocksysexecute:boolean;
var  dgtdados : Tdgtdados;
begin
      if xexecutpassdialog then exit;
      Result:=false;
      if not blocksys then begin;
         blocksys:=true;
         Bloquear1.Caption:='Desbloquear';
         Bloquear2.Caption:='Desbloquear';
         bloquearmenus(false);
         Result:=true;
      end else begin
         xexecutpassdialog:=true;
         dgtdados:=hwsf.BtDigitarSenha('Autenticação');
         xexecutpassdialog:=false;
         if dgtdados.confat then begin
            if (xcnt_usr<>dgtdados.usr) or (xcnt_pass<>dgtdados.pass) then begin
               hwsf.BtMensagem('Autenticação inválida!');
            end else begin
               blocksys:=false;
               if Controlcnfg.vrf40 > 0 then Timer_blocksys.Enabled:=true;
               Bloquear1.Caption:='Bloquear';
               Bloquear2.Caption:='Bloquear';
               bloquearmenus(true);
               Result:=true;
            end;
         end;
      end;
end;

procedure Tadm.bloquearmenus(xblock:boolean);
var xtotit:integer;
begin
     for xtotit:=0 to (MainMenuHWS.Items.Count-4) do 
         MainMenuHWS.Items[xtotit].Visible:=xblock;
     for xtotit:=0 to (popmnuGeral.Items[2].Count-1) do
         popmnuGeral.Items[2].Items[xtotit].Visible:=xblock;
end;

function Tadm.testblocksys:boolean;
begin
    Result:=true;
    if blocksys then if not blocksysexecute then Result:=false;
end;

procedure Tadm.MainMenuHWSChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
      resetatimerblok;
end;

procedure Tadm.popmnuGeralChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
      resetatimerblok;
end;

procedure Tadm.resetatimerblok;
begin
      timerblock:=0;
end;

procedure Tadm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
      resetatimerblok;
end;

function MouseGetPos(var Pt: TPoint): boolean;
begin
      Result := Windows.GetCursorPos(Pt);
end;

procedure Tadm.Timer_blocksysTimer(Sender: TObject);
var pt: TPoint;
begin
      Inc(timerblock);
      GetCursorPos(pt);
      if (tblockmouse.x<>pt.x) or (tblockmouse.y<>pt.y) then begin
          tblockmouse.x:=pt.x;
          tblockmouse.y:=pt.y;
          timerblock:=0;
      end else begin
          if timerblock > Controlcnfg.vrf40 then begin
             if not blocksys then begin
                blocksysexecute;
                Close;
             end;
             Timer_blocksys.Enabled:=false;
             timerblock:=0;
          end;
      end;
end;

procedure Tadm.chamaprg_path(xnomeexe:Integer);
begin
      atualizaprg_path(false);
      With mdlext do begin
           if param[xnomeexe] then open_modulo(mdl[xnomeexe],' 1')
           else WinExec(PChar(ExtractFilePath(Application.ExeName)+'bin\'+mdl[xnomeexe]), SW_SHOW);
      end;
end;

procedure Tadm.atualizaprg_path(xforce:Boolean);
var xidprog: Integer;
    StrLst : TStringList;
    xmontafilter: String;
    xupdatenow: Boolean;
    axshowing: Boolean;
begin
     if mdlext.verinst[0]='' then xforce:=true;
     if xforce then begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Atualizando módulos, aguarde.';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Atualizando módulos, aguarde.';
           loadx.lbloading.Repaint;
        end;
        loadx.Progressloading.position:=0;
        StrLst := TStringList.Create;
        xmontafilter:='';
        for xidprog:=0 to mdlext.count-1 do begin
            StrLst.Clear;
            if FileExists(ExtractFilePath(Application.ExeName)+'bin\'+mdlext.mdl[xidprog]) then begin
               StrLst:=FileVerInfo(ExtractFilePath(Application.ExeName)+'bin\'+mdlext.mdl[xidprog]);
               if StrLst.Count > 0 then mdlext.verinst[xidprog]:=StrLst.Strings[4]
               else mdlext.verinst[xidprog]:='';
            end else mdlext.verinst[xidprog]:='1';
            if xmontafilter<>'' then xmontafilter:=xmontafilter+' OR ';
            xmontafilter:=xmontafilter+'mdl='+#39+mdlext.mdl[xidprog]+#39;
        end;
        xmontafilter:=' WHERE '+xmontafilter;
        With dm.executa3 do begin
            CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt FROM '+EnDecryptString(Serverconect.vrf24,37249)+
                       xmontafilter;
            Open;
            xupdatenow:= False;
            for xidprog:=0 to mdlext.count-1 do begin
                if Locate('mdl',mdlext.mdl[xidprog],[]) then begin
                   mdlext.codigo[xidprog]:=fieldbyname('codigo').AsInteger;
                   mdlext.lastver[xidprog]:=fieldbyname('lastver').AsString;
                   mdlext.cpt[xidprog]:=StrToBool(fieldbyname('cpt').AsString);
                   if mdlext.lastver[xidprog]<>mdlext.verinst[xidprog] then
                      xupdatenow:= True;
                end;
            end;
            Close;
        end;
        if xupdatenow then begin
            if not Autoupdate1.Checked then
            if not hwsf.BtConfirma('HWSupdate encontrou nova versão disponível, atualizar agora?') then begin
               StrLst.Free;
               if not axshowing then loadx.Close;
               exit;
            end;
            for xidprog:=0 to mdlext.count-1 do begin
                if mdlext.lastver[xidprog]<>mdlext.verinst[xidprog] then
                if not updatemod2(xidprog,'bin\') then begin
                   StrLst.Free;
                   if not axshowing then loadx.Close;
                   hwsf.BtMensagem('Erro na atualização, tente novamente.');
                   exit;
                end;
            end;
        end;
        StrLst.Free;
        if not axshowing then loadx.Close;
     end;
end;

function Tadm.updatemod2(cod_listAX: integer; xsubdir: string): boolean;
var OutMS_mod,OutMS_tmp: TMemoryStream;
    xchr,xcmod,xordtmp,xpercax,xpercax2: integer;
    c_mod : byte;
    xfilepath_mod,xfilepath_mod2: String;
    Success: Boolean;
    xperc: Real;
begin
     Result:=true;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       xfilepath_mod:='';
       With dm.ds_sql2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24,37249)+'_ax '+
                       'WHERE cod_mod='+#39+InttoStr(mdlext.codigo[cod_listAX])+#39' ORDER BY ordem';
            Open;
            First;
            OutMS_mod.Seek(0,soFromBeginning);
            xperc:=70/RecordCount;
            xpercax2:=1;
            While not Eof do begin
                xpercax:=StrtoInt(formatfloat('0',xperc*xpercax2))+30;
                if xpercax > 100 then xpercax:=100;
                if loadx.Progressloading2.Visible then
                   loadx.Progressloading2.Position:=xpercax
                else loadx.Progressloading.Position:=xpercax;
                Inc(xpercax2);
                OutMS_tmp.Clear;
                OutMS_tmp.Seek(0,soFromBeginning);
                TBlobField(FieldByName('img')).SaveToStream(OutMS_tmp);
                OutMS_tmp.Seek(0,soFromBeginning);
                if mdlext.cpt[cod_listAX] then begin
                   xchr:=HexToInt(mdlext.mdl[cod_listAX]+fieldbyname('codigo').AsString+mdlext.lastver[cod_listAX]+Inttostr(mdlext.codigo[cod_listAX]));
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
          xfilepath_mod:=ExtractFilePath(Application.ExeName)+xsubdir+mdlext.mdl[cod_listAX];
          xfilepath_mod2:=ExtractFilePath(Application.ExeName)+xsubdir;
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
          DeleteFile(xfilepath_mod+'.BKP');
       end;
       OutMS_mod.Free;
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod) then
          DeleteFile(Pchar(xfilepath_mod));
       if FileExists(xfilepath_mod+'.BKP') then
          MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
       Result:=false;
     End;
end;

procedure Tadm.atualizaprg_sys(xnameprg:string);
var xidprog: Integer;
    StrLst : TStringList;
    xverinst,xmontafilter,xnamemod,xpathmod,xchavelastver: String;
    xupdatenow,xcript: Boolean;
    axshowing: Boolean;
begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Atualizando módulos, aguarde.';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Atualizando módulos, aguarde.';
           loadx.lbloading.Repaint;
        end;
        loadx.Progressloading.position:=0;
        xnamemod:=ExtractFileName(xnameprg);
        xpathmod:=ExtractFilePath(xnameprg);
        StrLst := TStringList.Create;
        xmontafilter:='';
        StrLst.Clear;
        if FileExists(xnameprg) then begin
           StrLst:=FileVerInfo(xnameprg);
           if StrLst.Count > 0 then xverinst:=StrLst.Strings[4]
           else xverinst:='';
        end else xverinst:='1';
        if xverinst<>'' then
           xmontafilter:=' WHERE mdl='+#39+xnamemod+#39;
        xupdatenow:= False;
        if xmontafilter<>'' then begin
          With dm.executa3 do begin
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
                  if not axshowing then loadx.Close;
                  exit;
               end;
            end;
            if not updatemod_sys(xidprog,xcript,xnamemod,xpathmod,xchavelastver) then begin
               StrLst.Free;
               if not axshowing then loadx.Close;
               hwsf.BtMensagem('Erro na atualização, tente novamente.');
               exit;
            end;
        end;
        StrLst.Free;
        if not axshowing then loadx.Close;
end;

function Tadm.updatemod_sys(cod_listAX: integer; xcript: Boolean; xnamemod,xpathprg,xchavelastver: string): boolean;
var OutMS_mod,OutMS_tmp: TMemoryStream;
    xchr,xcmod,xordtmp,xpercax,xpercax2: integer;
    c_mod : byte;
    xfilepath_mod,xfilepath_mod2,xchavecod: String;
    Success: Boolean;
    xperc: Real;
begin
     Result:=true;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       xfilepath_mod:='';
       With dm.ds_sql2 do begin
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
                loadx.Progressloading.Position:=xpercax;
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
          xfilepath_mod:=xpathprg+xnamemod;
          xfilepath_mod2:=xpathprg;
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
          DeleteFile(xfilepath_mod+'.BKP');
       end;
       OutMS_mod.Free;
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod) then
          DeleteFile(Pchar(xfilepath_mod));
       if FileExists(xfilepath_mod+'.BKP') then
          MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
       Result:=false;
     End;
end;

procedure Tadm.atualizaprg_root;
var xidprog: Integer;
    StrLst : TStringList;
    xverinst,xmontafilter,xnamemod,xchavelastver: String;
    xupdatenow,xcript: Boolean;
    axshowing: Boolean;
begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Atualizando módulo principal, aguarde.';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Atualizando módulo principal, aguarde.';
           loadx.lbloading.Repaint;
        end;
        loadx.Progressloading2.Visible:=true;
        loadx.Progressloading.position:=0;
        xnamemod:='HWScontrol.exe';
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
          With dm.executa3 do begin
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
                  if not axshowing then loadx.Close;
                  exit;
               end;
            end;
            if not updatemod_root(xidprog,xcript,xnamemod,xchavelastver) then begin
               StrLst.Free;
               if not axshowing then loadx.Close;
               hwsf.BtMensagem('Erro na atualização, tente novamente.');
               exit;
            end;
        end;
        StrLst.Free;
        if not axshowing then loadx.Close;
end;

function Tadm.updatemod_root(cod_listAX: integer; xcript: Boolean; xnamemod,xchavelastver: String): boolean;
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
              SaveToFile('c:\lixodel.txt');
              ChDir(ExtractTempDir);
              WinExec(PChar(batchname), SW_HIDE);
            finally
              batchfile.Free;
            end;
            TrayIcon_menu.Active := False;
            If TrayIcon_menu <> Nil then FreeAndNil(TrayIcon_menu);
            Application.Terminate;
          end;
        end;
    end;
begin
     Result:=true;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       xfilepath_mod:='';
       With dm.ds_sql2 do begin
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
                loadx.Progressloading.Position:=xpercax;
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
          end;
          AtualizaExeRoot;
       end else Result:=false;
       OutMS_mod.Free;
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod+'.BKP') then
          MoveFile(Pchar(xfilepath_mod+'.BKP'),Pchar(xfilepath_mod));
       Result:=false;
     End;
end;

procedure Tadm.TrayIcon_menuClick(Sender: TObject);
begin
      if xexecutpassdialog then exit;
      if testblocksys then begin
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
      end;
end;

procedure Tadm.bt_sendClick(Sender: TObject);
begin
     Try
         WebBrowserhws.Navigate(Combobox1.Text);
     Except End;
end;

procedure Tadm.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then bt_send.Click;
end;

procedure Tadm.bt_voltarClick(Sender: TObject);
begin
     Try
        WebBrowserhws.GoBack;
     Except End;
end;

procedure Tadm.bt_avancarClick(Sender: TObject);
begin
     Try
        WebBrowserhws.GoForward;
     Except End;
end;

procedure Tadm.bt_stopClick(Sender: TObject);
begin
     Try
        WebBrowserhws.Stop;
     Except End;
end;

procedure Tadm.bt_refreshClick(Sender: TObject);
begin
     Try
        WebBrowserhws.Refresh;
     Except End;
end;

procedure Tadm.bt_homeClick(Sender: TObject);
begin
     Try
        WebBrowserhws.Navigate(websitehome);
     Except End;
end;

procedure Tadm.Timer_cntTimer(Sender: TObject);
begin
      if ImgCnt_1.Visible then begin
         ImgCnt_2.Visible:=true;
         ImgCnt_1.Visible:=false;
      end else begin
         ImgCnt_1.Visible:=true;
         ImgCnt_2.Visible:=false;
      end;
end;

procedure Tadm.WebBrowserhwsBeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var acsurl:string;
begin
     Try
     with ComboBox1 do begin
        acsurl:=Trim(URL);
        if (Items.IndexOf(acsurl)<0) and (acsurl<>'') and (Length(acsurl)>3) then begin
           try
             Items.Add(acsurl);
             Openavhws.xcount:=Openavhws.xcount+1;
             Openavhws.xURL[Openavhws.xcount]:=acsurl;
           finally
             //winsysreg(2);
           End;
        end;
        if copy(URL,0,4) = 'http' then
           Text := URL;
        SelectAll;
     end;
     if xacesstool then StatusBar1.Panels.Items[1].Text:= URL;
     Except End;
end;

procedure Tadm.WebBrowserhwsDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
     ProgressBar_cnt.Position:=0;
end;

procedure Tadm.WebBrowserhwsDownloadBegin(Sender: TObject);
begin
      StatusBar1.Panels.Items[1].Text:=ComboBox1.Text;
      ProgressBar_cnt.Visible:=true;
      if not Conectar1.Checked then begin
         ImgCnt_3.Visible:=true;
         ImgCnt_3.Visible:=false;
      end;
      Timer_cnt.Enabled:=true;
end;

procedure Tadm.WebBrowserhwsDownloadComplete(Sender: TObject);
begin
      StatusBar1.Panels.Items[1].Text:=WebBrowserhws.LocationName;
      ProgressBar_cnt.Visible:=false;
      Timer_cnt.Enabled:=false;
      if not Conectar1.Checked then begin
         ImgCnt_3.Visible:=true;
         ImgCnt_1.Visible:=false;
      end else ImgCnt_1.Visible:=true;
      ImgCnt_2.Visible:=false;
end;

procedure Tadm.WebBrowserhwsProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
     if ProgressBar_cnt.Visible then begin
        ProgressBar_cnt.Max:=ProgressMax;
        ProgressBar_cnt.Position:=Progress;
        StatusBar1.Panels.Items[1].Text:=WebBrowserhws.LocationURL;
     end;
end;

procedure Tadm.FormResize(Sender: TObject);
begin
     //top
     Panel_ico.Top:= StatusBar1.Top+3;
     ProgressBar_cnt.Top:= StatusBar1.Top+4;
     Panel_cnt.Top:= StatusBar1.Top+3;
     ComboSpeedButton1.Top:= StatusBar1.Top+2;
     //width
     if (StatusBar1.Width-363) > 0 then
        StatusBar1.Panels.Items[1].Width:= StatusBar1.Width-363
     else StatusBar1.Panels.Items[1].Width:= 0;
     //left                                             
     ProgressBar_cnt.Left:= StatusBar1.Panels.Items[1].Width+32;
     Panel_cnt.Left:= ProgressBar_cnt.Left+277;
     ComboSpeedButton1.Left:= ProgressBar_cnt.Left+303;
     //barra superior
     ComboBox1.Width:= ToolBar_nav.Width-264;
end;

procedure Tadm.ComboBox1Click(Sender: TObject);
begin
      bt_send.Click;
end;

procedure Tadm.bt_sendMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
      bt_send.Hint:='Ir para "'+ComboBox1.Text+'"';
end;

function EnumWindowsProc (Wnd: HWND; lb: TStringlist): BOOL; stdcall;
var
   caption: Array [0..128] of Char;
begin
  Result := True;
  if IsWindowVisible(Wnd) and
  ((getWindowLong(Wnd, GWL_HWNDPARENT) = 0) or
  (HWND(GetWindowLong(Wnd, GWL_HWNDPARENT)) = GetDesktopWindow)) and
  ((GetWindowLong(Wnd, GWL_EXSTYLE) and WS_EX_TOOLWINDOW) = 0)
  then
  begin
     SendMessage( Wnd, WM_GETTEXT, Sizeof(caption),integer(@caption));
     lb.AddObject( caption,TObject( Wnd ));
  end;
end;

function Tadm.closeAllForms():Boolean;
var axMdlclose:String;
  strs:TStringlist;
  i:integer;
  hwnd:Thandle;
begin
  strs:=tstringlist.Create;
  EnumWindows( @EnumWindowsProc, integer(strs));
  for i := 1 to strs.Count-1 do begin
    axMdlclose:= strs.Strings[i];
    if ((LowerCase(axMdlclose) <> LowerCase('HWScontrol Gerenciamento de Websites')) and
        (copy(LowerCase(axMdlclose),1,10) = 'hwscontrol')) then begin
        hwnd:=findwindow(nil,pchar(strs.Strings[i]));
        if hwnd <> 0 then
           sendmessage(hwnd,wm_close,0,0);
    end;
  end;
end;

procedure Tadm.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.

