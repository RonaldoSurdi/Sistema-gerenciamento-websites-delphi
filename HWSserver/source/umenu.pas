{###############################################################################
Programa: HWSwebServer
Módulo: Menu principal.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, yupack, Buttons, ExtCtrls, Menus, TrayIcon, AppEvnts,
  XPMenu, ComboSpeedButton, ImgList, ComCtrls, ToolWin, JPEG, Clipbrd,
  backup, OleCtrls, ShockwaveFlashObjects_TLB, XPMan;

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
    pn_tit: TPanel;
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
    Image3: TImage;
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
    XPManifest1: TXPManifest;
    ToolBar1: TToolBar;
    ComboSpeedButton1: TComboSpeedButton;
    bt_desconect: TSpeedButton;
    bt_conect: TSpeedButton;
    Label_cnx: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure YuSoftLabel1Click(Sender: TObject);
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
  private
    imageListAX: TimageListAX;
    mdlext: Tmdlext;
    xinitmdl: TStringList;
    initfrm,blocksys: boolean;
    xcnt_usr,xcnt_pass,xcnt_axf : string;
    timerblock: Integer;
    tblockmouse: Ttblockmouse;
    function conecta_bd:boolean;
    function desconecta_bd:boolean;
    function updatemod(cod_listAX: integer): boolean;
    function testblocksys:boolean;
    function blocksysexecute:boolean;
    procedure cofigcnt(xcnt: byte; montamenu: boolean);
    procedure limparmenus;
    procedure montascrmenu;
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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adm: Tadm;

implementation

uses udm,hwsfunctions, SqlExpr, DB, DBClient, SimpleDS, Math;

{$R *.dfm}

function Tadm.conecta_bd:boolean;
var ckseg : bool;
    dgtdados : Tdgtdados;
begin
      xcnt_usr:= '';
      xcnt_pass:= '';
      xcnt_axf:= 'Å?Ö¤¶•';
      ckseg:= false;
      dgtdados:=hwsf.BtDigitarSenha('Autenticação');
      if dgtdados.confat then begin
         xcnt_usr:= dgtdados.usr;
         xcnt_pass:= dgtdados.pass;
         if dm.conecta_bd(true,true,xcnt_usr,xcnt_pass) then ckseg:=true;
      end;
      if ckseg then cofigcnt(1,true)
      else cofigcnt(0,true);
end;

function Tadm.desconecta_bd:boolean;
begin
      if dm.desconecta_bd(true,true) then cofigcnt(0,true)
      else cofigcnt(1,false);
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
    xtotit,xsubit,xpercax : Integer;
    ximgmenu: TBitmap;
    xjpgmenu: TJPEGImage;
    xstrmenu: TMemoryStream;
    xerror: TStringList;
    xverinst_mod: string;
    xupdatever: Txupdatever;
    xperc: Real;
    xupdatenow: Boolean;
begin
      Case xcnt of
         0: begin
            TrayIcon_menu.Hint:='HWS Web Server'+#13+'Desconectado';
            Label_cnx.caption:= 'Desconectado';
            bt_conect.Transparent:=true;
            bt_desconect.Transparent:=false;
            Conectar1.Checked:=false;
            Conectar2.Checked:=false;
            Desconectar1.Checked:=true;
            Desconectar2.Checked:=true;
            popmnuGeral.Items[4].ImageIndex:=2;
            limparmenus;
            N4.Visible:=false;
            Mdulos1.Visible:=false;
         end;
         1: begin
            TrayIcon_menu.Hint:='HWS Web Server'+#13+'Conectado';
            Label_cnx.caption:= 'Conectado';
            bt_conect.Transparent:=false;
            bt_desconect.Transparent:=true;
            Conectar1.Checked:=true;
            Conectar2.Checked:=true;
            Desconectar1.Checked:=false;
            Desconectar2.Checked:=false;
            popmnuGeral.Items[4].ImageIndex:=1;
            if montamenu then begin
               loadx := Tloadx.Create(Application);
               loadx.lbloading.Caption:='Autorizando';
               loadx.Show;
               loadx.Update;
               loadx.Progressloading.position:=0;
               limparmenus;
               imageListAX.count:=0;
               xupdatever.count:=0;
               ximgmenu:= TBitmap.Create;
               xjpgmenu:= TJPEGImage.Create;
               xstrmenu:= TMemoryStream.Create;
               N4.Visible:=true;
               Mdulos1.Visible:=true;
               With dm.ds_int do begin
                  CommandText:= 'select codigo,descricao,ordem,ico from '+EnDecryptString(Serverconect.vrf37[1],37249)+' ORDER BY ordem';
                  Open;
                  First;
                  xtotit:=0;
                  xperc:=100/RecordCount;
                  xinitmdl.Clear;
                  While not Eof do begin
                     xpercax:=StrtoInt(formatfloat('0',xperc*xtotit));
                     if xpercax > 100 then xpercax:=100;
                     loadx.Progressloading.Position:=xpercax;
                     dm.ds_int3.CommandText:= 'SELECT DISTINCT B.codigo,B.descricao,B.mdl,B.lastver,B.ico,B.cpt,B.xinit,A.cod_usr,A.cod_menu,A.verinst FROM '+EnDecryptString(Serverconect.vrf33[1],37249)+' A, '+
                                               EnDecryptString(Serverconect.vrf24[1],37249)+' B '+
                                               'WHERE B.codigo=A.cod_grp AND A.cod_usr='+#39+IntToStr(Serverconect.vrf00)+#39+' AND A.cod_menu='+#39+fieldbyname('codigo').AsString+#39+
                                               ' ORDER BY A.ordem';
                     dm.ds_int3.Open;
                     dm.ds_int3.First;
                     xsubit:=0;
                     if dm.ds_int3.RecordCount > 0 then begin
                        //cria menu principal
                        xmmenu_new := TMenuItem.Create(MainMenuHWS);
                        xmmenu_new2 := TMenuItem.Create(popmnuGeral);
                        xmmenu_new.Caption := fieldbyname('descricao').AsString;
                        xmmenu_new2.Caption := fieldbyname('descricao').AsString;
                        xmmenu_new.ImageIndex:= -1;
                        xmmenu_new2.ImageIndex:= -1;
                        if not TBlobField(FieldByName('ico')).IsNull then begin
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
                        end;
                        MainMenuHWS.Items.Insert(xtotit,xmmenu_new);
                        popmnuGeral.Items[2].Insert(xtotit,xmmenu_new2);
                        //cria itens do menu
                        While not dm.ds_int3.Eof do begin
                          xmmenu_new := TMenuItem.Create(MainMenuHWS);
                          xmmenu_new2 := TMenuItem.Create(popmnuGeral);
                          xmmenu_new.Caption := dm.ds_int3.fieldbyname('descricao').AsString;
                          xmmenu_new2.Caption := dm.ds_int3.fieldbyname('descricao').AsString;
                          try
                              xstrmenu.Clear;
                              xstrmenu.Seek(0,soFromBeginning);
                              if not dm.ds_int3.FieldByName('ico').IsNull then begin
                                 TBlobField(dm.ds_int3.FieldByName('ico')).SaveToStream(xstrmenu);
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
                              end;
                              xmmenu_new.Name:='btmainm_'+IntToStr(imageListAX.count);
                              xmmenu_new2.Name:='btmainm_'+IntToStr(imageListAX.count);
                              imageListAX.codigo[imageListAX.count]:= dm.ds_int3.FieldByName('codigo').AsInteger;
                              imageListAX.descricao[imageListAX.count]:= dm.ds_int3.FieldByName('descricao').AsString;
                              imageListAX.mdl[imageListAX.count]:= dm.ds_int3.FieldByName('mdl').AsString;
                              if StrtoBool(dm.ds_int3.FieldByName('xinit').AsString) then
                                 xinitmdl.Add(InttoStr(imageListAX.count));
                              imageListAX.lastver[imageListAX.count]:= dm.ds_int3.FieldByName('lastver').AsString;
                              imageListAX.verinst[imageListAX.count]:= dm.ds_int3.FieldByName('verinst').AsString;
                              if (((imageListAX.lastver[imageListAX.count] <> imageListAX.verinst[imageListAX.count]) and (imageListAX.mdl[imageListAX.count]<>''))
                                  or ((imageListAX.mdl[imageListAX.count]<>'') and not FileExists('bin\'+imageListAX.mdl[imageListAX.count]))) then begin
                                 xupdatever.codigo[xupdatever.count]:=imageListAX.count;
                                 xupdatever.count:=xupdatever.count+1;
                              end;
                              if (imageListAX.mdl[imageListAX.count]<>'') then begin
                                 xmmenu_new.OnClick:= CapturaClickmenu_Main;
                                 xmmenu_new2.OnClick:= CapturaClickmenu_Main;
                              end;
                              imageListAX.cpt[imageListAX.count]:= StrToBool(dm.ds_int3.FieldByName('cpt').AsString);
                              imageListAX.ico[imageListAX.count]:= TBitmap.Create;
                              if not dm.ds_int3.FieldByName('ico').IsNull then begin
                                 imageListAX.ico[imageListAX.count].Assign(ximgmenu);
                              end else begin
                                 imageListAX.ico[imageListAX.count].Assign(nil);
                              end;
                              imageListAX.count:=imageListAX.count+1;
                          except end;
                          MainMenuHWS.Items[xtotit].Insert(xsubit,xmmenu_new);
                          popmnuGeral.Items[2].Items[xtotit].Insert(xsubit,xmmenu_new2);
                          Inc(xsubit);
                          dm.ds_int3.Next;
                        end;
                        Inc(xtotit);
                     end;
                     dm.ds_int3.Close;
                     Next;
                  end;
                  Close;
               end;
               ximgmenu.Free;
               xjpgmenu.Free;
               xstrmenu.Free;
               xerror:= TStringList.Create;
               xerror.Clear;
               if xupdatever.count > 0 then begin
                  xupdatenow:= True;
                  if not Autoupdate1.Checked then
                  if not hwsf.BtConfirma('HWSupdate encontrou novas versões disponíveis, atualizar agora?') then
                     xupdatenow:= False;
                  if xupdatenow then begin
                    loadx.Progressloading2.Visible:=true;
                    loadx.Progressloading2.Repaint;
                    loadx.lbloading.Caption:='Atualizando módulos';
                    loadx.lbloading.Repaint;
                    xperc:=100/xupdatever.Count;
                    for xtotit:=0 to (xupdatever.Count-1) do begin
                      xpercax:=StrtoInt(formatfloat('0',xperc*xtotit));
                      if xpercax > 100 then xpercax:=100;
                      loadx.Progressloading.Position:=xpercax;
                      //update módulo
                      xverinst_mod:=imageListAX.verinst[xtotit];
                      if updatemod(xupdatever.codigo[xtotit]) then
                         xerror.Add('Módulo: '+imageListAX.mdl[xupdatever.codigo[xtotit]]+' '+xverinst_mod+'->'+imageListAX.lastver[xupdatever.codigo[xtotit]]+' ... Atualizado')
                      else xerror.Add('Módulo: '+imageListAX.mdl[xupdatever.codigo[xtotit]]+' '+xverinst_mod+'->'+imageListAX.lastver[xupdatever.codigo[xtotit]]+' ... Erro');
                    end;
                  end;
               end;
               loadx.Close;
               if (xerror.Count > 0) and not (Autoupdate1.Checked) then hwsf.BtAviso(xerror);
               xerror.Free;
               loadx.Progressloading2.Visible:=false;
            end;
            //atualizaprg_root;
         end;
      end;
end;

procedure Tadm.montascrmenu;
//var btSpeed: TSpeedButton;
    //btYuSoftLabel: TYuSoftLabel;
    //btYuSoftButton: TYuSoftButton;
    //xbt,xbt_x,xbt_y: Integer;
begin
    {  xbt_x:=5;
      xbt_y:=20;
      for xbt:=0 to imageListAX.count-1 do begin
          btSpeed:= TSpeedButton.Create(adm.ScrollBox1);
          With btSpeed do begin
               Parent := adm.ScrollBox1;
               Transparent:=true;
               Layout:=blGlyphLeft;
               Flat:=true;
               height := 32;
               width := 300;
               left := xbt_x;
               top := xbt_y;
               Caption:=imageListAX.descricao[xbt];
               Name:='btspeed_'+InttoStr(xbt);
               Margin:=10;
               Glyph.Assign(nil);
               Glyph.Assign(imageListAX.ico[xbt]);
               OnClick:= CapturaClickmenu_Speed;
          end;
          btYuSoftButton:= TYuSoftButton.Create(adm.ScrollBox1);
          With btYuSoftButton do begin
               Parent := adm.ScrollBox1;
               Transparent:=true;
               height := 16;
               width := 16;
               left := xbt_x;
               top := xbt_y;
               Name:='btysft1_'+InttoStr(xbt);
               //DownImage.Assign(hwsf.DisabledBitmap(imageListAX.ico[xbt],$00F5F5F5));
               DownImage.Assign(imageListAX.ico[xbt]);
               DownImage.Monochrome:=true;
               MouseOverImage.Assign(imageListAX.ico[xbt]);
               UpImage.Assign(imageListAX.ico[xbt]);
               OnClick:= CapturaClickmenu_Speed;
          end;
          btYuSoftLabel:= TYuSoftLabel.Create(adm.ScrollBox1);
          With btYuSoftLabel do begin
               Parent := adm.ScrollBox1;
               Transparent:=true;
               AutoSize:=true;
               left := xbt_x+20;
               top := xbt_y;
               Caption:=imageListAX.descricao[xbt];
               Name:='btysft2_'+InttoStr(xbt);
               //YusoftButton:= TYuSoftButton('btysft1_'+InttoStr(xbt));
          end;
          xbt_y:= xbt_y+25;
      end;                    }
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
              loadx := Tloadx.Create(Application);
              loadx.lbloading.Caption:='Atualizando módulos';
              loadx.Progressloading2.Visible:=true;
              loadx.Show;
              loadx.Update;
              loadx.Progressloading.position:=0;
              updatemod(cod_prog);
              loadx.Close;
           end;
        end;
      finally
        StrLst.Free;
      end;
      open_modulo(imageListAX.mdl[cod_prog],'');
end;

function Tadm.updatemod(cod_listAX: integer): boolean;
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
       With dm.ds_int2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax '+
                       'WHERE cod_mod='+#39+InttoStr(imageListAX.codigo[cod_listAX])+#39' ORDER BY ordem';
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
                   xchr:=HexToInt(imageListAX.mdl[cod_listAX]+fieldbyname('codigo').AsString+imageListAX.lastver[cod_listAX]+Inttostr(imageListAX.codigo[cod_listAX]));
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
       With dm.executa_int do begin
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
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33[1],37249)+' SET verinst=:p0 '+
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
begin
     if FileExists(Application.ExeName+'.BKP') then
        DeleteFile(Application.ExeName+'.BKP');
     initfrm:=false;
     blocksys:=false;
     tblockmouse.x:=0;
     tblockmouse.y:=0;
     timerblock:=0;
     xinitmdl:= TStringList.Create;
     TrayIcon_menu.Icon:=hwsf.HiconToIcon;
     ImageListHWS.AddIcon(hwsf.HiconToIcon);
     popmnuGeral.Items[0].ImageIndex:=ImageListHWS.Count-1;
     Autoupdate1.Checked:=Servercnfg.vrf38;
     conecta_bd;
     With mdlext do begin
          codigo[0]:=0;
          mdl[0]:='HWSserverconfig.exe';
          lastver[0]:='';
          verinst[0]:='';
          cpt[0]:=true;
          param[0]:=false;
          codigo[1]:=0;
          mdl[1]:='HWShelpServer.exe';
          lastver[1]:='';
          verinst[1]:='';
          cpt[1]:=true;
          param[1]:=true;
          count:=2;
     end;
     TrayIcon_menu.Active := True;
     ImageListHWS.GetBitmap(1,bt_conect.Glyph);
     ImageListHWS.GetBitmap(2,bt_desconect.Glyph);
end;

procedure Tadm.FormDestroy(Sender: TObject);
begin
        If TrayIcon_menu <> Nil Then FreeAndNil(TrayIcon_menu);
        adm := Nil;
end;

procedure Tadm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caNone;
        Application.Minimize;
        if Servercnfg.vrf39 then
        if not blocksys then blocksysexecute;
end;

procedure Tadm.ApplicationEvents1Minimize(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tadm.YuSoftLabel1Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm.FormActivate(Sender: TObject);
var xinitax: integer;
begin
     if not initfrm then begin
         adm.Refresh;
         adm.Top:=adm.Top-10;
         initfrm:=true;
         if Servercnfg.vrf40 > 0 then Timer_blocksys.Enabled:=true;
         if xinitmdl.Count>0 then begin
            for xinitax:=0 to (xinitmdl.Count-1) do begin
                open_modulo(imageListAX.mdl[StrtoInt(xinitmdl.Strings[xinitax])],' /h');
            end;
         end;
     end;
end;

//abre módulos do sistema
procedure Tadm.open_modulo(ax_mod,ax_param:string);
var ax_mod2 : string;
begin
     ax_mod2:= ExtractFilePath(Application.ExeName)+'bin\'+ax_mod;
     if FileExists(ax_mod2) then begin
        if (bt_conect.Transparent) or not (dm.gravar_logsys('Módulo: '+ax_mod2)) then begin
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
      if bt_conect.Transparent then conecta_bd
      else hwsf.BtMensagem('Bases já estão conectadas.');
end;

procedure Tadm.Desconectar1Click(Sender: TObject);
begin
      if testblocksys then
      if bt_desconect.Transparent then desconecta_bd
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
      Close;
end;

procedure Tadm.Sair1Click(Sender: TObject);
begin
      if testblocksys then
      if hwsf.BtConfirma('Finalizar HWSwebserver?') then begin
         TrayIcon_menu.Active := False;
         If TrayIcon_menu <> Nil then FreeAndNil(TrayIcon_menu);
         Application.Terminate;
      end;
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
begin
     if testblocksys then
     if hwsf.BtConfirma('Atualizar agora?') then begin
        cofigcnt(0,true);
        cofigcnt(1,true);
        atualizaprg_path(true);
        atualizaprg_sys(ExtractFilePath(Application.ExeName)+'uninstall.exe');
        //atualizaprg_sys(ExtractSystemDir+'HWSsksys.dll');
        //atualizaprg_sys(ExtractSystemDir+'midas.dll');
        //atualizaprg_sys(ExtractSystemDir+'dbexpint.dll');
        //atualizaprg_sys(ExtractSystemDir+'dbexpmysql.dll');
        //atualizaprg_sys(ExtractSystemDir+'gds32.dll');
        //atualizaprg_sys(ExtractSystemDir+'libmySQL.dll');
     end;
end;

procedure Tadm.Autoupdate1Click(Sender: TObject);
begin
    if testblocksys then begin
       if Autoupdate1.Checked then Autoupdate1.Checked:=false
       else Autoupdate1.Checked:=true;
       Servercnfg.vrf38:= Autoupdate1.Checked;
       dm.winsysreg(2);
    end;
end;

procedure Tadm.WebsiteHWS1Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
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
      Result:=true;
      if not blocksys then begin;
         blocksys:=true;
         Bloquear1.Caption:='Desbloquear';
         Bloquear2.Caption:='Desbloquear';
         bloquearmenus(false);
      end else begin
         dgtdados:=hwsf.BtDigitarSenha('Autenticação');
         if dgtdados.confat then begin
            if (xcnt_usr<>dgtdados.usr) or (xcnt_pass<>dgtdados.pass) then begin
               hwsf.BtMensagem('Autenticação inválida!');
               Result:=false;
               exit;
            end;
         end;
         blocksys:=false;
         if Servercnfg.vrf40 > 0 then Timer_blocksys.Enabled:=true;
         Bloquear1.Caption:='Bloquear';
         Bloquear2.Caption:='Bloquear';
         bloquearmenus(true);
      end;
end;

procedure Tadm.bloquearmenus(xblock:boolean);
var xtotit,xprogress:integer;
begin
     loadx := Tloadx.Create(Application);
     if xblock then loadx.lbloading.Caption:='Desbloqueando sistema'
     else loadx.lbloading.Caption:='Bloqueando sistema';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.Max:=(MainMenuHWS.Items.Count-4)+(popmnuGeral.Items[2].Count-1);
     xprogress:=0;
     loadx.Progressloading.position:=xprogress;
     for xtotit:=0 to (MainMenuHWS.Items.Count-4) do begin
         MainMenuHWS.Items[xtotit].Visible:=xblock;
         Inc(xprogress);
         loadx.Progressloading.position:=xprogress;
     end;
     for xtotit:=0 to (popmnuGeral.Items[2].Count-1) do begin
         popmnuGeral.Items[2].Items[xtotit].Visible:=xblock;
         Inc(xprogress);
         loadx.Progressloading.position:=xprogress;
     end;
     loadx.Free;
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
          if timerblock > Servercnfg.vrf40 then begin
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
begin
     if mdlext.verinst[0]='' then xforce:=true;
     if xforce then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Atualizando módulos';
        loadx.Progressloading2.Visible:=true;
        loadx.Show;
        loadx.Update;
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
        With dm.executa_int3 do begin
            CommandText:= 'SELECT DISTINCT codigo,descricao,mdl,lastver,cpt FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+
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
               loadx.Close;
               exit;
            end;
            for xidprog:=0 to mdlext.count-1 do begin
                if mdlext.lastver[xidprog]<>mdlext.verinst[xidprog] then
                if not updatemod2(xidprog,'bin\') then begin
                   StrLst.Free;
                   loadx.Close;
                   hwsf.BtMensagem('Erro na atualização, tente novamente.');
                   exit;
                end;
            end;
        end;
        StrLst.Free;
        loadx.Close;
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
       With dm.ds_int2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax '+
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
begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Inicializando';
        loadx.Progressloading2.Visible:=true;
        loadx.Show;
        loadx.Update;
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
          With dm.executa_int3 do begin
            CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+
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
                  loadx.Close;
                  exit;
               end;
            end;
            if not updatemod_sys(xidprog,xcript,xnamemod,xpathmod,xchavelastver) then begin
               StrLst.Free;
               loadx.Close;
               hwsf.BtMensagem('Erro na atualização, tente novamente.');
               exit;
            end;
        end;
        StrLst.Free;
        loadx.Close;
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
       With dm.ds_int2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax '+
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
begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Inicializando';
        loadx.Progressloading2.Visible:=true;
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        xnamemod:='HWSwebServer.exe';
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
          With dm.executa_int3 do begin
            CommandText:= 'SELECT codigo,descricao,mdl,lastver,cpt FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+
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
                  loadx.Close;
                  exit;
               end;
            end;
            if not updatemod_root(xidprog,xcript,xnamemod,xchavelastver) then begin
               StrLst.Free;
               loadx.Close;
               hwsf.BtMensagem('Erro na atualização, tente novamente.');
               exit;
            end;
        end;
        StrLst.Free;
        loadx.Close;
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
       With dm.ds_int2 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+'_ax '+
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
      if testblocksys then begin
         ShowWindow(Application.Handle,SW_RESTORE);
         SetForegroundWindow(Application.Handle);
      end;
end;

end.
