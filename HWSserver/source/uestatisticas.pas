{###############################################################################
Programa: HWSwebServer
Módulo: Estatísticas do sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uestatisticas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, DB, ExtDlgs,
  TeeProcs, TeEngine, Chart, Grids, DBGrids, OleCtrls, Chartfx3, ImgList,
  Series, XPMan;

type
  Testatisticas = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    biSystemMenu: TImage;
    bt_sobre: TSpeedButton;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_fechar: TSpeedButton;
    tb_mnt: TLabel;
    pn_status: TPanel;
    Image4: TImage;
    pn_editor: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    Panel2: TPanel;
    Label1: TLabel;
    Label_visitas: TLabel;
    Label2: TLabel;
    Label_online: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    db_visitas: TDBGrid;
    db_online: TDBGrid;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    XPManifest1: TXPManifest;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
  private
    xfotorefresh: TFileName;
    executachart : boolean;
    { Private declarations }
  public
     mv_mouse : TPoint;
     cp_mouse : bool;
     x_campo_form: string;
    { Public declarations }
  end;

var
  estatisticas: Testatisticas;

implementation

uses hwsfunctions, udm, SimpleDS, SqlExpr;

{$R *.dfm}

procedure Testatisticas.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(estatisticas.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Testatisticas.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(estatisticas.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Testatisticas.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      estatisticas.Left:= estatisticas.Left-(mv_mouse.x-x);
      estatisticas.Top:= estatisticas.Top - (mv_mouse.y-y);
  end;
end;

procedure Testatisticas.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      estatisticas.Left := estatisticas.Left - (mv_mouse.x -x);
      estatisticas.Top := estatisticas.Top - (mv_mouse.y - y);
  end;
end;

procedure Testatisticas.FormCreate(Sender: TObject);
var cod_tab1,cod_tab2:integer;
    tab1,tab2:string;
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
      loadx.Progressloading.position:=10;
      //Application.OnMessage := tabtoenterpress;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
      xfotorefresh:='';
      loadx.Progressloading.position:=30;
      //Brush.Style := BsClear;
      With dm.executa do begin
           CommandText:= 'select * from '+EnDecryptString(Serverconect.vrf23,37249);
           Open;
           First;
           if RecordCount > 0  then begin
              executachart:=true;
              cod_tab1:=fieldbyname('cod_tab1').AsInteger;
              cod_tab2:=fieldbyname('cod_tab2').AsInteger;
           end else executachart:=false;
           Close;
           if executachart then begin
              CommandText:='select * from '+EnDecryptString(Serverconect.vrf20,37249);
              First;
              Open;
              if Locate('codigo',cod_tab1,[]) then tab1:=fieldbyname('tabela').AsString;
              if Locate('codigo',cod_tab2,[]) then tab2:=fieldbyname('tabela').AsString;
              Close;
           end;
      end;
      loadx.Progressloading.position:=60;
      if executachart then begin
         With dm.ds_sql do begin
           CommandText:= 'select timestamp,ip from '+tab1+' order by timestamp';
           Open;
         end;
         db_visitas.DataSource:=dm.source_sql;
         db_visitas.Columns.Clear;
         db_visitas.Columns.Add;
         db_visitas.Columns.Items[0].FieldName:='timestamp';
         db_visitas.Columns.Items[0].Title.Caption:='Código de acesso';
         db_visitas.Columns.Add;
         db_visitas.Columns.Items[1].FieldName:='ip';
         db_visitas.Columns.Items[1].Title.Caption:='IP do usuário';
         With dm.ds_sql3 do begin
           CommandText:= 'select timestamp,ip from '+tab2+' order by timestamp';
           Open;
         end;
         db_online.DataSource:=dm.source_sql3;
         db_online.Columns.Clear;
         db_online.Columns.Add;
         db_online.Columns.Items[0].FieldName:='timestamp';
         db_online.Columns.Items[0].Title.Caption:='Código de acesso';
         db_online.Columns.Add;
         db_online.Columns.Items[1].FieldName:='ip';
         db_online.Columns.Items[1].Title.Caption:='IP do usuário';
         Label_visitas.Caption:=InttoStr(dm.ds_sql.recordcount);
         Label_online.Caption:=InttoStr(dm.ds_sql3.recordcount);
      end;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
end;

procedure Testatisticas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Testatisticas.bt_fecharClick(Sender: TObject);
begin
     Close;
end;

procedure Testatisticas.bt_maximizaClick(Sender: TObject);
begin
    if estatisticas.WindowState=wsMaximized then estatisticas.WindowState:=wsNormal
    else estatisticas.WindowState:=wsMaximized;
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Testatisticas.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Testatisticas.bt_sobreClick(Sender: TObject);
begin
    hwsf.BtSobre;
end;

end.
