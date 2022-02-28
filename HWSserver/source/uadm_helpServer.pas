{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_helpServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan, ExtDlgs, RxRichEd,
  ClipView,hwsfunctions, FileFind, ImgList, backup, Menus, ComboSpeedButton,
  MPlayer, Tradutor, BmpToJpg, JpgToBmp, Jpeg;


type
  PmenuRec = ^TmenuRec;
  TmenuRec = record
    Ftypemdl: byte;
    Fcoditem: integer;
    Fcodmdl: integer;
  End;
  Tmenutmp = record
    treeview : TMemoryStream;
    data : TStringList;
  End;
  Teditorlng = record
    tmpimglst : TStringList;
  End;
  TplayList = record
    codigo: array[0..200] of Integer;
    descricao: array[0..200] of String[255];
    linha: array[0..200] of Integer;
    position: Integer;
    count: Integer;
  End;
  Tadm_helpServer = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    lb_title: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    GroupBox_menu: TGroupBox;
    XPManifest1: TXPManifest;
    barra: TSplitter;
    bt_barra: TPanel;
    barra_img2: TSpeedButton;
    barra_img1: TSpeedButton;
    CompressStream: TBackupFile;
    ProgresTimer: TTimer;
    ImageList_menuweb: TImageList;
    JpegToBmp1: TJpegToBmp;
    Panel2: TPanel;
    pn_mp3player: TPanel;
    bt_playmp3: TSpeedButton;
    bt_stopmp3: TSpeedButton;
    bt_closemp3: TSpeedButton;
    Progress: TProgressBar;
    mp3player: TMediaPlayer;
    swf_logo: TShockwaveFlash;
    re_editor1: TRxRichEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    xmn_montamenus1: TTreeView;
    xmn_montamenus2: TTreeView;
    ToolBar8: TToolBar;
    Edit_search: TEdit;
    bt_search: TSpeedButton;
    Lb_countreg4: TLabel;
    FindDialog1: TFindDialog;
    PageScroller1: TPageScroller;
    Panel3: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    xmn_mdl: TComboBox;
    CheckBox3: TCheckBox;
    ToolBar1: TToolBar;
    Label_title: TLabel;
    SpeedButton1: TSpeedButton;
    re_editor_tmp: TRxRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure lb_titleClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure barraMoved(Sender: TObject);
    procedure bt_barraClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure ProgresTimerTimer(Sender: TObject);
    procedure bt_playmp3Click(Sender: TObject);
    procedure bt_stopmp3Click(Sender: TObject);
    procedure bt_closemp3Click(Sender: TObject);
    procedure xmn_montamenus1Change(Sender: TObject; Node: TTreeNode);
    procedure xmn_montamenus1Click(Sender: TObject);
    procedure re_editorURLClick(Sender: TObject; const URLText: String;
      Button: TMouseButton);
    procedure FindDialog1Find(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure xmn_montamenus2Change(Sender: TObject; Node: TTreeNode);
    procedure xmn_montamenus2Click(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
  private
    //menus
    xinit: Boolean;
    xnoteselect: TTreeNode;
    xnoteselect_index: Integer;
    menutmp: Tmenutmp;
    editorlng: Teditorlng;
    xupxmenumn: Boolean;
    xmn_mdl_ext: TStringList;
    //banco de imagens
    xlogotmp: TMemoryStream;
    playList: TplayList;
    //menus
    procedure montalng_menus;
    procedure atualiza_xmenumnt;
    function xmn_montamenus_treeview:Boolean;
    procedure atualiza_nitens;

    procedure xmn_montamenusEditar;
    function localiza_mdl(xcodmdl:Integer):Integer;

    //editor
    procedure incluiimgeditor(xcodimg,xlinha: Integer);
    procedure executamultimedia(xinitcount: Integer);
    function BitmapToRtf(graph:TBitmap):string;
    //banco de imagens
    procedure filtrar_reg;
    procedure destructionimg;
    function retorna_ImgStream(xcodref: Integer; aximgstr: TMemoryStream): Integer;
    procedure abretmplogo;
    //tradução
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    xcod_lng: integer;
    xtypefile:Integer;
    ax_searh: Boolean;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_helpServer: Tadm_helpServer;

implementation
uses udm, RichEdit, ShellAPI, ReInit;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tadm_helpServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xmn_mdl_ext.Free;
     dm.ds_int5.Filter:='';
     dm.ds_int5.Filtered:=false;
     dm.ds_int5.Close;
     dm.executa_int3.Close;
     dm.executa_int5.Close;
     Action:=cafree;
end;

procedure Tadm_helpServer.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_helpServer.FormCreate(Sender: TObject);
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
      ax_searh:=false;
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     xinit:=true;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     xmn_mdl_ext:= TStringList.Create;
     xlogotmp:= TMemoryStream.Create;
     menutmp.treeview:=TMemoryStream.Create;
     menutmp.data:= TStringList.Create;
     editorlng.tmpimglst:= TStringList.Create;
     playList.count:=0;
     loadx.Progressloading.position:=50;
     //módulos
     With dm.ds_int5 do begin
        CommandText:= 'SELECT codigo,mdl FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        xmn_mdl_ext.Clear;
        xmn_mdl_ext.Add('selecione o módulo');
        While not Eof do begin
            xmn_mdl.Items.Add(copy(fieldbyname('mdl').AsString,1,Length(fieldbyname('mdl').AsString)-4));
            xmn_mdl_ext.Add(fieldbyname('mdl').AsString);
            Next;
        end;
        xmn_mdl.ItemIndex:=0;
     end;
     loadx.Progressloading.position:=90;
     //banco de imagens
     With dm.executa_int3 do begin
        CommandText:='SELECT tp FROM '+EnDecryptString(HelpSys.vrf03[1],37249)+' ORDER BY codigo';
        Open;
     end;
     loadx.Progressloading.position:=100;
     re_editor1.Justify;
     re_editor_tmp.Justify;
     if not axshowing then loadx.Close;
end;

procedure Tadm_helpServer.montalng_menus;
begin
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Criando ambiente';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.Max:=100;
     loadx.Progressloading.position:=0;
     With dm.executa_int5 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+EnDecryptString(HelpSys.vrf01[1],37249)+
                     ' WHERE cod_lng='+#39+InttoStr(xcod_lng)+#39+
                     ' ORDER BY codigo';
          Open;
          First;
          loadx.Progressloading.position:=10;
          xmn_montamenus1.Items.Clear;
          xmn_montamenus2.Items.Clear;
          if RecordCount=0 then begin
             hwsf.BtMensagem('Erro de sintaxe');
             adm_helpServer.Destroy;
             exit;
          end;
          menutmp.treeview.Clear;
          menutmp.treeview.Seek(0,soFromBeginning);
          TBlobField(FieldByName('tvw')).SaveToStream(menutmp.treeview);
          menutmp.data.Assign(fieldbyname('obs'));
          lb_title.Caption:=fieldbyname('descricao').asstring;
     end;
     atualiza_xmenumnt;
     loadx.Close;
     if xmn_montamenus1.Items.Count>0 then begin
        xnoteselect:= xmn_montamenus1.Items.Item[0];
        xnoteselect_index:= 0;
        xmn_montamenus1.Select(xnoteselect);
     end;
end;

procedure Tadm_helpServer.atualiza_xmenumnt;
begin
     //monta menu
     xmn_montamenus_treeview;
     atualiza_nitens;
end;

function Tadm_helpServer.xmn_montamenus_treeview:Boolean;
var xformn: Integer;
    MenuRecPtr: PmenuRec;
begin
    Result:=False;
    menutmp.treeview.Seek(0,soFromBeginning);
    xmn_montamenus1.LoadFromStream(menutmp.treeview);
    for xformn:=0 to xmn_montamenus1.Items.Count-1 do begin
        New(MenuRecPtr);
        MenuRecPtr^.Ftypemdl:= StrtoInt(copy(menutmp.data.Strings[xformn],1,1));
        MenuRecPtr^.Fcodmdl:= StrtoInt(copy(menutmp.data.Strings[xformn],2,11));
        MenuRecPtr^.Fcoditem:= StrtoInt(copy(menutmp.data.Strings[xformn],13,11));
        xmn_montamenus1.Items.Item[xformn].Data:=MenuRecPtr;
        Case StrtoInt(copy(menutmp.data.Strings[xformn],1,1)) of
              1: begin
                 xmn_montamenus1.Items.Item[xformn].ImageIndex:=0;
                 xmn_montamenus1.Items.Item[xformn].SelectedIndex:=1;
              end;
              2: begin
                 xmn_montamenus1.Items.Item[xformn].ImageIndex:=2;
                 xmn_montamenus1.Items.Item[xformn].SelectedIndex:=3;
              end;
        end;
    end;
    xmn_montamenus1.Repaint;
    Result:=True;
end;

procedure Tadm_helpServer.atualiza_nitens;
begin
     Lb_countreg4.Caption:=IntToStr(xmn_montamenus1.Items.Count);
end;

procedure Tadm_helpServer.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_helpServer.lb_titleClick(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_helpServer.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_helpServer.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_helpServer.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_helpServer.Left:= adm_helpServer.Left-(mv_mouse.x-x);
      adm_helpServer.Top:= adm_helpServer.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_helpServer.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_helpServer.Left := adm_helpServer.Left - (mv_mouse.x -x);
      adm_helpServer.Top := adm_helpServer.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_helpServer.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_helpServer.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_helpServer.bt_maximizaClick(Sender: TObject);
begin
    if adm_helpServer.WindowState=wsMaximized then adm_helpServer.WindowState:=wsNormal
    else adm_helpServer.WindowState:=wsMaximized;
end;

procedure Tadm_helpServer.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    bt_barra.Top:=StrtoInt(formatfloat('0',(barra.Height-bt_barra.Height)/2));
    bt_barra.Left:=barra.Left;
    Label_title.Width:=ToolBar1.Width-87;
end;

procedure Tadm_helpServer.barraMoved(Sender: TObject);
begin
      bt_barra.Left:=barra.Left;
      bt_search.Width:= ToolBar8.Width-24;
      Label_title.Width:=ToolBar1.Width-87;
      if GroupBox_menu.Width=0 then begin
         barra_img1.Visible:=false;
         barra_img2.Visible:=true;
      end;
end;

procedure Tadm_helpServer.bt_barraClick(Sender: TObject);
begin
     if bt_barra.Left=2 then begin
        bt_barra.Left:=210;
        barra.Left:=210;
        GroupBox_menu.Width:=208;
        barra_img1.Visible:=true;
        barra_img2.Visible:=false;
     end else begin
        bt_barra.Left:=2;
        barra.Left:=2;
        GroupBox_menu.Width:=0;
        barra_img1.Visible:=false;
        barra_img2.Visible:=true;
     end;
end;

procedure Tadm_helpServer.Localizar1Click(Sender: TObject);
begin
      //localizar
      FindDialog1.Execute;
end;

procedure Tadm_helpServer.filtrar_reg;
begin
     //filtrar e localizar intens
     xmn_montamenus2.Items.Clear;
end;

procedure Tadm_helpServer.destructionimg;
var ax_filenm: string;
begin
     swf_logo.LoadMovie(0,'lixo');
     mp3player.Close;
     pn_mp3player.Visible:=false;
     ProgresTimer.Enabled:=false;
     ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
     if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

function Tadm_helpServer.retorna_ImgStream(xcodref: Integer; aximgstr: TMemoryStream): Integer;
begin
     Result:=-1;
     With dm.executa do begin
        CommandText:='SELECT img FROM '+EnDecryptString(HelpSys.vrf03[1],37249)+' WHERE codigo='+#39+InttoStr(xcodref)+#39;
        Open;
        TMemoryStream(aximgstr).Clear;
        TMemoryStream(aximgstr).Seek(0,soFromBeginning);
        if not FieldByName('img').IsNull then
           TBlobField(FieldByName('img')).SaveToStream(TMemoryStream(aximgstr));
        Close;
     end;
end;

procedure Tadm_helpServer.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
    isshowing: Boolean;
begin
     isshowing:= loadx.Showing;
     if not isshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Carregando';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=20;
     end;
     loadx.Progressloading.position:=35;
     xlogotmp.Seek(0,soFromBeginning);
     erro:= false;
     if xlogotmp.Size <= 0 then begin
        erro:= true;
     end;
     loadx.Progressloading.position:=50;
     if not erro then begin
        if pn_mp3player.Visible then begin
           mp3player.Close;
           pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end;                                
        ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
        if FileExists(ax_filenm) then DeleteFile(ax_filenm);
        try
           xlogotmp.SaveToFile(ax_filenm);
           erro:= false;
        except
           erro:= true;
        end;
     end;
     loadx.Progressloading.position:=75;
     if not erro then begin
        if xtypefile = 1 then begin
           pn_mp3player.Visible:=true;
           ProgresTimer.Enabled:=true;
           Progress.Max:=0;
           mp3player.Close;
           mp3player.FileName:=ax_filenm;
           mp3player.Open;
           Progress.Max := mp3player.Length;
           mp3player.Play;
        end else begin
            try
              swf_logo.LoadMovie(0,'lixo');
              swf_logo.LoadMovie(0,ax_filenm);
              erro:= false;
            except
              erro:= true;
            end;
        end;
     end;
     loadx.Progressloading.position:=100;
     if erro then destructionimg
     else loadx.Close;
end;

procedure Tadm_helpServer.ProgresTimerTimer(Sender: TObject);
begin
  if pn_mp3player.Visible then begin
     if Progress.Max<>0 then
        Progress.Position := mp3player.Position;
     if Progress.Position=Progress.Max then begin
        if playList.position<playList.count-1 then
           executamultimedia(playList.position+1);
     end;
  end;
end;

procedure Tadm_helpServer.bt_playmp3Click(Sender: TObject);
begin
      mp3player.Play;
end;

procedure Tadm_helpServer.bt_stopmp3Click(Sender: TObject);
begin
      mp3player.Stop;
end;

procedure Tadm_helpServer.bt_closemp3Click(Sender: TObject);
var ax_filenm: string;
begin
      mp3player.Close;
      pn_mp3player.Visible:=false;
      ProgresTimer.Enabled:=false;
      ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

procedure Tadm_helpServer.xmn_montamenusEditar;
var xmnmenu,xcoditem,xcod_mdl,xforimg,xforimg_lin,xforimg_cod,countlng: Integer;
    xerror: Bool;
    axtxtcod: string;
    axtxtstr: TMemoryStream;
begin
    if ax_searh then exit;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='Montando item';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=0;
    loadx.Progressloading.Max:=100;
    try
        playList.count:=0;
        loadx.Progressloading.position:=10;
        Case PageControl1.TabIndex of
             0: begin
                xcod_mdl:=localiza_mdl(PmenuRec(xmn_montamenus1.Selected.Data)^.Fcodmdl);
                xcoditem:=PmenuRec(xmn_montamenus1.Selected.Data)^.Fcoditem;
             end;
             1: begin
                xcod_mdl:=localiza_mdl(PmenuRec(xmn_montamenus2.Selected.Data)^.Fcodmdl);
                xcoditem:=PmenuRec(xmn_montamenus2.Selected.Data)^.Fcoditem;
             end;
        End;
        re_editor1.ReadOnly:=false;
        re_editor1.Clear;
        editorlng.tmpimglst.Clear;
        loadx.Progressloading.position:=20;
        if xcoditem>0 then begin
           axtxtstr:= TMemoryStream.Create;
           With dm.executa4 do begin
                if Active then Close;
                CommandText:= 'SELECT * FROM '+EnDecryptString(HelpSys.vrf02[1],37249)+
                           ' WHERE cod_item='+#39+IntToStr(xcoditem)+#39+
                           ' AND cod_lng='+#39+IntToStr(xcod_lng)+#39;
                Open;
                loadx.Progressloading.position:=30;
                First;
                axtxtstr.Clear;
                axtxtstr.Seek(0,soFromBeginning);
                if not fieldbyname('tx').IsNull then
                   TBlobField(FieldByName('tx')).SaveToStream(axtxtstr);
                loadx.Progressloading.position:=40;
                axtxtstr.Seek(0,soFromBeginning);
                re_editor1.Lines.LoadFromStream(axtxtstr);
                loadx.Progressloading.position:=50;
                editorlng.tmpimglst.Assign(fieldbyname('img'));
                for xforimg:=0 to editorlng.tmpimglst.Count-1 do begin
                    axtxtcod:=editorlng.tmpimglst.Strings[xforimg];
                    xforimg_lin:=StrtoInt(copy(axtxtcod,1,11));
                    xforimg_cod:=StrtoInt(copy(axtxtcod,12,22));
                    if dm.executa_int3.Locate('codigo',xforimg,[]) then begin
                       if dm.executa_int3.FieldByName('tp').AsInteger=2 then
                          incluiimgeditor(xforimg_cod,xforimg_lin)
                       else begin
                          if playList.count <=200 then begin
                             playList.codigo[playList.count]:=xforimg_cod;
                             playList.descricao[playList.count]:=dm.executa_int3.fieldbyname('descricao').asstring;
                             playList.linha[playList.count]:=xforimg_lin;
                             Inc(playList.count);
                          end;
                       end;
                    end;
                end;
                loadx.Progressloading.position:=70;
                re_editor1.ClearUndo;
                Close;
           end;
           axtxtstr.Free;
        end;
        re_editor1.ReadOnly:=true;
        loadx.Progressloading.position:=100;
        xerror:=false;
    Except
        xerror:=true;
    End;
    loadx.Progressloading.position:=100;
    if xerror then begin
       re_editor1.Clear;
    end;
    loadx.Close;
    if playList.count>0 then executamultimedia(0);
end;

function Tadm_helpServer.localiza_mdl(xcodmdl:Integer):Integer;
var x_descmod: string;
    x_indmdl: Integer;
begin
      if dm.ds_int5.Locate('codigo',xcodmdl,[]) then begin
         x_descmod:=dm.ds_int5.fieldbyname('mdl').AsString;
         for x_indmdl:=1 to xmn_mdl_ext.Count-1 do begin
             if xmn_mdl_ext.Strings[x_indmdl]=x_descmod then begin
                Result:=x_indmdl;
                break;
             end;
         end;
      end else Result:=0;
end;

procedure Tadm_helpServer.xmn_montamenus1Change(Sender: TObject;
  Node: TTreeNode);
begin
      if ax_searh then exit;
      xnoteselect:= Node;
      xnoteselect_index:= Node.AbsoluteIndex;
      xmn_montamenusEditar;
end;

procedure Tadm_helpServer.xmn_montamenus1Click(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

function Tadm_helpServer.BitmapToRtf(graph:TBitmap):string;
var bi, bb, rtf:string;
    bis, bbs:cardinal;
    achar:ShortString;
    HexGraph:string;
    I:Integer;
begin
    GetDIBSizes(graph.Handle, bis, bbs);
    SetLength(bi,bis);
    SetLength(bb,bbs);
    GetDIB(graph.Handle, graph.Palette, PChar(bi)^, PChar(bb)^);
    rtf:='{\rtf1 {\pict\dibitmap ';
    SetLength(HexGraph,(Length(bb) + Length(bi)) * 2);
    I:=2;
    for bis:=1 to Length(bi) do begin
        achar:=Format('%x',[Integer(bi[bis])]);
        if Length(achar)=1 then achar:='0'+achar;
        HexGraph[I-1]:=achar[1];
        HexGraph[I]:=achar[2];
        Inc(I,2);
    end;
    for bbs:=1 to Length(bb) do begin
        achar:=Format('%x',[Integer(bb[bbs])]);
        if Length(achar)=1 then achar:='0'+achar;
        HexGraph[I-1]:=achar[1];
        HexGraph[I]:=achar[2];
        Inc(I,2);
    end;
    rtf:=rtf + HexGraph + ' }}';
    Result:=rtf;
end;

procedure Tadm_helpServer.incluiimgeditor(xcodimg,xlinha: Integer);
var SS: TStringStream;
    axstrbmp: TMemoryStream;
    axbmp: TBitmap;
begin
    try
        axstrbmp:= TMemoryStream.Create;
        retorna_ImgStream(xcodimg,axstrbmp);
        JpegToBmp1.SaveToStream(axstrbmp,axstrbmp);
        axstrbmp.Seek(0,soFromBeginning);
        axbmp:= TBitmap.Create;
        axbmp.LoadFromStream(axstrbmp);
        //incluir imagem
        re_editor1.SelStart:=xlinha;
        SS:=TStringStream.Create(BitmapToRtf(axbmp));
        re_editor1.PlainText:=False;
        re_editor1.StreamMode:=[smSelection];
        SS.Position:=0;
        re_editor1.Lines.LoadFromStream(SS);
        re_editor1.SelStart:=xlinha+1;
    finally
        SS.Free;
        axbmp.Free;
        axstrbmp.Free;
    end;
end;

procedure Tadm_helpServer.executamultimedia(xinitcount: Integer);
begin
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='Carregando';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=0;
    retorna_ImgStream(playList.codigo[xinitcount],xlogotmp);
    playList.position:=xinitcount;
    abretmplogo;
end;

procedure Tadm_helpServer.re_editorURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
var axURLText: String;
begin
      if copy(URLText,1,7)='http://' then axURLText:=copy(URLText,8,Length(URLText))
      else axURLText:=URLText;
      JumpTo(axURLText);
end;

procedure Tadm_helpServer.FindDialog1Find(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with re_editor1 do begin
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

procedure Tadm_helpServer.FormActivate(Sender: TObject);
begin
      adm_helpServer.Refresh;
      if xinit then begin
         montalng_menus;
         xinit:=false;
      end;
end;

procedure Tadm_helpServer.bt_searchClick(Sender: TObject);
var xsearsh,xsearsh2,xsearsh3,xsearsh4,
    xcodmod,xtypemod,xitemmod,
    axcountinc: Integer;
    xsearsh_chave,xsearsh_chave_soma,xsearsh_chave_copy,
    xsearsh_chave2,xsearsh_chave_soma2,xsearsh_chave_copy2: string;
    xsearsh_list: TStringList;
    xincitem,xedtmp: Boolean;
    MenuRecPtr: PmenuRec;
    xnode:TTreeNode;
    axtxtstr: TMemoryStream;
begin
      if Length(Edit_search.Text)<=1 then exit;
      ax_searh:=true;
      xsearsh_chave:=Edit_search.Text;
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Localizando, aguarde...';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.position:=0;
      loadx.Progressloading2.Visible:=true;
      loadx.Progressloading2.position:=0;
      loadx.Repaint;
      loadx.Progressloading.Max:=100;
      loadx.Progressloading.position:=10;
      if CheckBox3.Checked and (xmn_mdl.ItemIndex<1) then
         CheckBox3.Checked:=false;
      xsearsh_list:= TStringList.Create;
      xsearsh_list.Clear;
      xsearsh_chave_soma:='';
      loadx.Progressloading2.Max:=Length(xsearsh_chave);
      loadx.Progressloading.position:=20;
      for xsearsh:=1 to Length(xsearsh_chave) do begin
          loadx.Progressloading2.position:=loadx.Progressloading2.position+1;
          xsearsh_chave_copy:=copy(xsearsh_chave,xsearsh,1);
          if (xsearsh_chave_copy = ' ') or (xsearsh=Length(xsearsh_chave)) then begin
             if (Length(xsearsh_chave_soma)>1) or
                ((xsearsh=Length(xsearsh_chave)) and (Length(xsearsh_chave_soma)>0)) then begin
                if xsearsh=Length(xsearsh_chave) then
                   xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
                xsearsh_list.Add(xsearsh_chave_soma);
             end;
             xsearsh_chave_soma:='';
          end else if (xsearsh_chave_copy<>'.') and
                (xsearsh_chave_copy<>',') and
                (xsearsh_chave_copy<>'?') and
                (xsearsh_chave_copy<>'!') and
                (xsearsh_chave_copy<>'#') and
                (xsearsh_chave_copy<>')') and
                (xsearsh_chave_copy<>'(') and
                (xsearsh_chave_copy<>'*') then begin
                xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
          end;
      end;
      loadx.Progressloading.position:=30;
      loadx.Progressloading2.Position:=0;
      loadx.Progressloading2.Max:=xmn_montamenus1.Items.Count;
      loadx.Progressloading.position:=40;
      //xmn_montamenus2.Items.Assign(xmn_montamenus1.Items);
      xmn_montamenus2.Items.Clear;
      axcountinc:=0;
      for xsearsh:=0 to xmn_montamenus1.Items.Count-1 do begin
          loadx.Progressloading2.position:=loadx.Progressloading2.position+1;
          xincitem:=false;
          xsearsh_chave:=xmn_montamenus1.Items.Item[xsearsh].Text;
          xsearsh_chave_soma:='';
          //Dados adicionais do módulo
          xtypemod:= StrtoInt(copy(menutmp.data.Strings[xsearsh],1,1));
          xcodmod:= StrtoInt(copy(menutmp.data.Strings[xsearsh],2,11));
          xitemmod:= StrtoInt(copy(menutmp.data.Strings[xsearsh],13,11));
          if xtypemod=2 then begin
             //pesquisa no código do módulo
             if (CheckBox3.Checked) and (xcodmod>0) then begin
                if localiza_mdl(xcodmod)=xmn_mdl.ItemIndex then
                   xincitem:=true;
             end;
             //pesquisa nas palavras dos itens <Text>
             if not xincitem then
             for xsearsh2:=1 to Length(xsearsh_chave) do begin
                 xsearsh_chave_copy:=copy(xsearsh_chave,xsearsh2,1);
                 if (xsearsh_chave_copy = ' ') or (xsearsh2=Length(xsearsh_chave)) then begin
                    if (Length(xsearsh_chave_soma)>1) or
                       ((xsearsh=Length(xsearsh_chave)) and (Length(xsearsh_chave_soma)>0)) then begin
                       if xsearsh2=Length(xsearsh_chave) then
                          xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
                       for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                           if LowerCase(xsearsh_chave_soma)=LowerCase(xsearsh_list.Strings[xsearsh3]) then begin
                              xincitem:=true;
                              Break;
                           end;
                       end;
                       if xsearsh2=Length(xsearsh_chave) then
                       if CheckBox2.Checked then begin
                         for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                           if Length(xsearsh_chave_soma)>=Length(xsearsh_list.Strings[xsearsh3]) then begin
                              for xsearsh4:=1 to Length(xsearsh_chave_soma) do begin
                                  if LowerCase(xsearsh_list.Strings[xsearsh3])=LowerCase(copy(xsearsh_chave_soma,xsearsh4,Length(xsearsh_list.Strings[xsearsh3]))) then begin
                                     xincitem:=true;
                                     Break;
                                  end;
                              end;
                           end;
                           if xincitem then Break;
                         end;
                       end;
                    end;
                    xsearsh_chave_soma:='';
                 end else if (xsearsh_chave_copy<>'.') and
                    (xsearsh_chave_copy<>',') and
                    (xsearsh_chave_copy<>'?') and
                    (xsearsh_chave_copy<>'!') and
                    (xsearsh_chave_copy<>'#') and
                    (xsearsh_chave_copy<>')') and
                    (xsearsh_chave_copy<>'(') and
                    (xsearsh_chave_copy<>'*') then begin
                    xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
                    if CheckBox2.Checked then begin
                       for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                           if Length(xsearsh_chave_soma)>=Length(xsearsh_list.Strings[xsearsh3]) then begin
                              for xsearsh4:=1 to Length(xsearsh_chave_soma) do begin
                                  if LowerCase(xsearsh_list.Strings[xsearsh3])=LowerCase(copy(xsearsh_chave_soma,xsearsh4,Length(xsearsh_list.Strings[xsearsh3]))) then begin
                                     xincitem:=true;
                                     Break;
                                  end;
                              end;
                           end;
                           if xincitem then Break;
                       end;
                    end;
                 end;
             end;
             loadx.Progressloading2.Position:=0;
             //pesquisar no conteúdo do módulo
             if (not xincitem) and (not CheckBox1.Checked) and (xtypemod=2) then begin
                re_editor_tmp.Clear;
                axtxtstr:= TMemoryStream.Create;
                With dm.executa4 do begin
                     if Active then Close;
                     CommandText:= 'SELECT * FROM '+EnDecryptString(HelpSys.vrf02[1],37249)+
                                ' WHERE cod_item='+#39+IntToStr(xitemmod)+#39+
                                ' AND cod_lng='+#39+IntToStr(xcod_lng)+#39;
                     Open;
                     First;
                     axtxtstr.Clear;
                     axtxtstr.Seek(0,soFromBeginning);
                     if not fieldbyname('tx').IsNull then begin
                        TBlobField(FieldByName('tx')).SaveToStream(axtxtstr);
                         xedtmp:=true;
                     end else xedtmp:=false;
                     axtxtstr.Seek(0,soFromBeginning);
                     re_editor_tmp.Lines.LoadFromStream(axtxtstr);
                     Close;
                end;
                if xedtmp then begin
                   xsearsh_chave_soma:='';
                   loadx.Progressloading2.Max:=Length(re_editor_tmp.Text);
                   for xsearsh2:=1 to Length(re_editor_tmp.Text) do begin
                       loadx.Progressloading2.position:=loadx.Progressloading2.position+1;
                       xsearsh_chave_copy:=copy(re_editor_tmp.Text,xsearsh2,1);
                       if (xsearsh_chave_copy = ' ') or (xsearsh2=Length(xsearsh_chave)) then begin
                          if (Length(xsearsh_chave_soma)>1) or
                             ((xsearsh=Length(xsearsh_chave)) and (Length(xsearsh_chave_soma)>0)) then begin
                             if xsearsh2=Length(xsearsh_chave) then
                                xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
                             for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                                 if LowerCase(xsearsh_chave_soma)=LowerCase(xsearsh_list.Strings[xsearsh3]) then begin
                                    xincitem:=true;
                                    Break;
                                 end;
                             end;
                             if xsearsh2=Length(xsearsh_chave) then
                             if CheckBox2.Checked then begin
                               for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                                 if Length(xsearsh_chave_soma)>=Length(xsearsh_list.Strings[xsearsh3]) then begin
                                    for xsearsh4:=1 to Length(xsearsh_chave_soma) do begin
                                        if LowerCase(xsearsh_list.Strings[xsearsh3])=LowerCase(copy(xsearsh_chave_soma,xsearsh4,Length(xsearsh_list.Strings[xsearsh3]))) then begin
                                           xincitem:=true;
                                           Break;
                                        end;
                                    end;
                                 end;
                                 if xincitem then Break;
                               end;
                             end;
                          end;
                          xsearsh_chave_soma:='';
                       end else if (xsearsh_chave_copy<>'.') and
                          (xsearsh_chave_copy<>',') and
                          (xsearsh_chave_copy<>'?') and
                          (xsearsh_chave_copy<>'!') and
                          (xsearsh_chave_copy<>'#') and
                          (xsearsh_chave_copy<>')') and
                          (xsearsh_chave_copy<>'(') and
                          (xsearsh_chave_copy<>'*') then begin
                          xsearsh_chave_soma:=xsearsh_chave_soma+xsearsh_chave_copy;
                          if CheckBox2.Checked then begin
                             for xsearsh3:=0 to xsearsh_list.Count-1 do begin
                                 if Length(xsearsh_chave_soma)>=Length(xsearsh_list.Strings[xsearsh3]) then begin
                                    for xsearsh4:=1 to Length(xsearsh_chave_soma) do begin
                                        if LowerCase(xsearsh_list.Strings[xsearsh3])=LowerCase(copy(xsearsh_chave_soma,xsearsh4,Length(xsearsh_list.Strings[xsearsh3]))) then begin
                                           xincitem:=true;
                                           Break;
                                        end;
                                    end;
                                 end;
                                 if xincitem then Break;
                             end;
                          end;
                       end;
                   end;
                end;
             end;
             //inclui item na lista
             if xincitem then begin
                New(MenuRecPtr);
                MenuRecPtr^.Ftypemdl:= xtypemod;
                MenuRecPtr^.Fcodmdl:= xcodmod;
                MenuRecPtr^.Fcoditem:= xitemmod;
                xnode:=TTreeNode.Create(xmn_montamenus2.Items);
                xnoteselect:=xmn_montamenus2.Items.AddObject(xnode,xsearsh_chave,MenuRecPtr);
                xmn_montamenus2.Select(xnoteselect);
                xmn_montamenus2.Items.Item[axcountinc].ImageIndex:=2;
                xmn_montamenus2.Items.Item[axcountinc].SelectedIndex:=3;
                xmn_montamenus2.Refresh;
                Inc(axcountinc);
             end;
          end;
      end;
      loadx.Progressloading.position:=80;
      //finalizando
      loadx.Progressloading.position:=100;
      loadx.lbloading.Caption:='Concluido';
      loadx.lbloading.Repaint;
      Sleep(400);
      xsearsh_list.Free;
      loadx.Close;
      ax_searh:=false;
end;

procedure Tadm_helpServer.SpeedButton1Click(Sender: TObject);
begin
      FindDialog1.Execute;
end;

procedure Tadm_helpServer.xmn_montamenus2Change(Sender: TObject;
  Node: TTreeNode);
begin
      if ax_searh then exit;
      xnoteselect:= Node;
      xnoteselect_index:= Node.AbsoluteIndex;
      xmn_montamenusEditar;
end;

procedure Tadm_helpServer.xmn_montamenus2Click(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_helpServer.Edit_searchKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then bt_search.Click;
end;

end.


