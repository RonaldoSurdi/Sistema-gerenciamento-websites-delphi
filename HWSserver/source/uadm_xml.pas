{###############################################################################
Programa: HWSwebServer
Módulo: Gerador de arquivo xml.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_xml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShellCtrls, Buttons, ExtCtrls, OleCtrls,
  FileCtrl, Grids, Outline, JPEG, Menus, yupack, CheckLst, ToolWin, XPMan;

type
  PRecInfo=^TRecInfo;
    Trecinfo=record
    prev:PRecInfo;
    fpathname:string;
    srchrec:Tsearchrec;
  end;
  Tadm_xml = class(TForm)
    panel_arqs: TPanel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    pn_tit: TPanel;
    Image3: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    YuSoftLabel5: TYuSoftLabel;
    biSystemMenu: TImage;
    bt_minimize: TSpeedButton;
    pn_status: TPanel;
    Image4: TImage;
    GroupBox1: TGroupBox;
    lbtitlexml: TLabel;
    editor_xml: TRichEdit;
    ToolBar1: TToolBar;
    bt_novo: TSpeedButton;
    bt_abrir: TSpeedButton;
    bt_salvar: TSpeedButton;
    Bevel1: TBevel;
    OpenDialog_xml: TOpenDialog;
    SaveDialog_xml: TSaveDialog;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    Label5: TLabel;
    bt_selecionar: TSpeedButton;
    ed_url: TEdit;
    Panel2: TPanel;
    Splitter2: TSplitter;
    GroupBox3: TGroupBox;
    bt_selectpath: TSpeedButton;
    lista_arq: TCheckListBox;
    GroupBox4: TGroupBox;
    bt_importlegend: TSpeedButton;
    lista_leg: TStringGrid;
    XPManifest1: TXPManifest;
    function  TamArquivo(Arquivo:string): Real;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_selectpathClick(Sender: TObject);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_abrirClick(Sender: TObject);
    procedure bt_salvarClick(Sender: TObject);
    procedure lista_legClick(Sender: TObject);
    procedure lista_arqClick(Sender: TObject);
    procedure bt_selecionarClick(Sender: TObject);
  private
    procedure gerar_XML;
    function RecurseDirectory(fname:string):tstringlist;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_xml: Tadm_xml;
  dir_abrir:variant;
  x_for, contador_ed5 : integer;

implementation
uses hwsfunctions, udm;

{$R *.dfm}

procedure Tadm_xml.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:= caFree;
end;

function Tadm_xml.TamArquivo(Arquivo: string): Real;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
    try
      Result := Size;
    finally
      Free;
  end;
end;

procedure Tadm_xml.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=50;
     //DoubleBuffered:=True;
     //Brush.Style := BsClear;
     contador_ed5:=1;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Free;
end;

procedure Tadm_xml.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_xml.SpeedButton4Click(Sender: TObject);
begin
     Close;
end;

procedure Tadm_xml.SpeedButton5Click(Sender: TObject);
begin
     hwsf.BtSobre;
end;

procedure Tadm_xml.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_xml.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_xml.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_xml.Left:= adm_xml.Left-(mv_mouse.x-x);
      adm_xml.Top:= adm_xml.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_xml.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_xml.Left := adm_xml.Left - (mv_mouse.x -x);
      adm_xml.Top := adm_xml.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_xml.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_xml.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_xml.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or
  (Screen.ActiveControl is TCustomGrid) or
  (Screen.ActiveForm.ClassName = 'TMessageForm')) then
  begin
  If Msg.message = WM_KEYDOWN then
  begin
  Case Msg.wParam of
  VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
  VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
  end;
  end;
  end;
end;

procedure Tadm_xml.bt_selectpathClick(Sender: TObject);
var
  l1:Tstringlist;
  SR: TSearchRec;
  I,ax_count: integer;
  pathxml:string;

begin
  pathxml:=hwsf.Btpath;
  if pathxml='' then exit;
  If not DirectoryExists(pathxml) then begin
     hwsf.BtMensagem('Diretório selecionado inválido');
     exit;
  end;
  loadx := Tloadx.Create(Application);
  loadx.lbloading.Caption:='Localizando arquivos';
  loadx.Show;
  loadx.Update;
  loadx.Progressloading.position:=0;
  l1:=tstringlist.create;
  l1:=recursedirectory(pathxml+'\*.mp3');
  I := FindFirst(pathxml+'\*.mp3', faAnyFile, SR);
  while I = 0 do begin
    if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
    else loadx.Progressloading.position:=loadx.Progressloading.position+1;
    if (SR.Attr and faDirectory) <> faDirectory then begin
         l1.Add(pathxml+'\'+SR.Name);
    end;
    I := FindNext(SR);
  end;
  lista_arq.Clear;
  lista_leg.RowCount:=1;
  lista_leg.Cells[0,0]:='';
  for ax_count:=0 to (l1.Count-1) do begin
      if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
      else loadx.Progressloading.position:=loadx.Progressloading.position+1;
      if l1.Strings[ax_count] <> (pathxml+'\') then begin
         lista_arq.Items.Add(copy(l1.Strings[ax_count],Length(pathxml+'\')+1,(Length(l1.Strings[ax_count])-Length(pathxml+'\'))));
         lista_arq.Checked[lista_arq.Items.Count-1] := true;
         lista_leg.RowCount:=lista_arq.Items.Count;
         lista_leg.Cells[0,lista_arq.Items.Count-1]:=(copy(l1.Strings[ax_count],Length(pathxml+'\')+1,(Length(l1.Strings[ax_count])-Length(pathxml+'\'))-4));
      end;
  end;
  freeandnil(l1);
  loadx.Free;
  hwsf.BtMensagem('Processo concluído.');
end;

procedure Tadm_xml.bt_novoClick(Sender: TObject);
begin
     editor_xml.Clear;
     lbtitlexml.Caption:='<Arquivo novo>';
end;

procedure Tadm_xml.bt_abrirClick(Sender: TObject);
begin
     OpenDialog_xml.InitialDir:=  ExtractFilePath(Application.ExeName);
     If OpenDialog_xml.Execute then begin
        editor_xml.Lines.LoadFromFile(OpenDialog_xml.FileName);
        lbtitlexml.Caption:=OpenDialog_xml.FileName;
        dm.gravar_logsys('Abrir arquivo XML --> '+OpenDialog_xml.FileName);
     end;
end;

procedure Tadm_xml.bt_salvarClick(Sender: TObject);
begin
      if editor_xml.Text<>'' then begin
          SaveDialog_xml.InitialDir:= ExtractFilePath(Application.ExeName);
          if SaveDialog_xml.Execute then begin
             SavetoTextFile(editor_xml.Lines,SaveDialog_xml.FileName);
             lbtitlexml.Caption:=SaveDialog_xml.FileName;
             dm.gravar_logsys('Grava arquivo XML --> '+SaveDialog_xml.FileName);
          end;
      end;
end;

function Tadm_xml.RecurseDirectory(fname:string):tstringlist;
var
  f1,f2:Tsearchrec;
  p1,tmp:PRecInfo;
  fwc,fpath:string;
  fbroke1,fbroke2:boolean;
begin
  if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
  else loadx.Progressloading.position:=loadx.Progressloading.position+1;
  result:=tstringlist.create;
  fpath:=extractfilepath(fname);
  fwc:=extractfilename(fname);
  new(p1);
  p1.fpathname:=fpath;
  p1.prev:=nil;
  fbroke1:=false;
  fbroke2:=false;
  while(p1<>nil) do begin
    if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
    else loadx.Progressloading.position:=loadx.Progressloading.position+1;
    if (fbroke1=false) then
    if (fbroke2=false) then begin
        if (findfirst(fpath+'*',faAnyfile,f1)<>0) then break;
      end else if (findnext(f1)<>0) then begin
        repeat
          findclose(f1);
          if (p1=nil) then break;
          fpath:=p1.fpathname;
          f1:=p1.srchrec;
          tmp:=p1.prev;
          dispose(p1);
          p1:=tmp;
          if (p1=nil) then break;
        until (findnext(f1)=0);
        if (p1=nil) then break;
    end;
    if((f1.Name<>'.') and (f1.name<>'..') and ((f1.Attr and fadirectory)=fadirectory)) then begin
         fbroke1:=false;
         new(tmp);
         with tmp^ do begin
            fpathname:=fpath;
            srchrec.Time:=f1.time;
            srchrec.Size:=f1.size;
            srchrec.Attr:=f1.attr;
            srchrec.Name:=f1.name;
            srchrec.ExcludeAttr:=f1.excludeattr;
            srchrec.FindHandle:=f1.findhandle;
            srchrec.FindData:=f1.FindData;
         end;
         tmp.prev:=p1;
         p1:=tmp;
         fpath:=p1.fpathname+f1.name+'\';
         if findfirst(fpath+fwc,faAnyfile,f2)=0 then begin
            result.add(fpath+f2.Name);
            while(findnext(f2)=0) do begin
              result.add(fpath+f2.Name);
              if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
              else loadx.Progressloading.position:=loadx.Progressloading.position+1;
            end;
            findclose(f2);
         end;
         fbroke2:=false;
    end else begin
         if (findnext(f1)<>0) then begin
            findclose(f1);
            fpath:=p1.fpathname;
            f1:=p1.srchrec;
            fbroke1:=false;
            fbroke2:=true;
            tmp:=p1.prev;
            dispose(p1);
            p1:=tmp;
         end else begin
            fbroke1:=true;
            fbroke2:=false;
         end;
    end;
  end;
  fpath:=extractfilepath(fname);
  if findfirst(fname,faAnyfile,f1)=0 then begin
      result.add(fpath+f2.Name);
      while(findnext(f1)=0) do begin
          result.add(fpath+f2.Name);
          if loadx.Progressloading.position = 100 then loadx.Progressloading.position:=0
          else loadx.Progressloading.position:=loadx.Progressloading.position+1;
      end;
      findclose(f1);
  end;
end;

procedure Tadm_xml.lista_legClick(Sender: TObject);
begin
  lista_arq.ItemIndex:=lista_leg.Row;
end;

procedure Tadm_xml.lista_arqClick(Sender: TObject);
begin
    lista_leg.Row:=lista_arq.ItemIndex;
end;

procedure Tadm_xml.gerar_XML;
var x_for:integer;
begin
     editor_xml.Clear;
     editor_xml.Lines.Add('<?xml version="1.0" encoding= "UTF-8" ?>');
     editor_xml.Lines.Add('<audioFiles>');
     for x_for:=0 to lista_arq.Items.Count-1 do begin
         editor_xml.Lines.Add(chr(9)+'<AudioProps path ="'+ed_url.Text+lista_arq.Items.Strings[x_for]+'" songTitle = "'+lista_leg.Cells[0,x_for]+'"/>');
     end;
     editor_xml.Lines.Add('</audioFiles>');
end;

procedure Tadm_xml.bt_selecionarClick(Sender: TObject);
begin
     dm.gravar_logsys('Gerar XML');
     gerar_XML;
end;

end.


