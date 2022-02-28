{###############################################################################
Programa: HWSwebServer
Módulo: Dialog localiza Base de dados.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_bases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, ToolWin, ComCtrls,
  XPMan;

type
  TBt_bases = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    ToolBar6: TToolBar;
    Label1: TLabel;
    ed_tabelas: TEdit;
    Panel4: TPanel;
    count_tab: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBGrid2: TDBGrid;
    XPManifest1: TXPManifest;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ed_tabelasKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    Bt_Confere:boolean;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_bases: TBt_bases;

implementation
Uses hwsfunctions, udm;

{$R *.dfm}

procedure TBt_bases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_bases.FormShow(Sender: TObject);
begin
     Bt_Confere:=false;
end;

procedure TBt_bases.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
end;

procedure TBt_bases.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_bases.SpeedButton1Click(Sender: TObject);
begin
     if ed_tabelas.Text='' then begin
        hwsf.BtMensagem('Tabela selecionada inválida.');
        exit;
     end;
     Bt_Confere:=true;
     Close;
end;

procedure TBt_bases.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_bases.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_bases.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_bases.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_bases.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_bases.Left:= Bt_bases.Left-(mv_mouse.x-x);
      Bt_bases.Top:= Bt_bases.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_bases.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_bases.Left := Bt_bases.Left - (mv_mouse.x -x);
      Bt_bases.Top := Bt_bases.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_bases.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_bases.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_bases.FormCreate(Sender: TObject);
begin
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;      
     Image3.Picture.Bitmap:= GetImg(1);
     barimg.Picture.Bitmap:= GetImg(1);
     DBGrid2.DataSource:=dm.source_sql3;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cod_usr';
     DBGrid2.Columns.Items[1].Title.Caption:='Usuário';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='mod';
     DBGrid2.Columns.Items[2].Title.Caption:='Permissões';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='tabela';
     DBGrid2.Columns.Items[3].Title.Caption:='Tabela';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[4].FieldName:='desc_tab';
     DBGrid2.Columns.Items[4].Title.Caption:='Descrição';
     count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
end;

procedure TBt_bases.ed_tabelasKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then SpeedButton1.Click;
end;

procedure TBt_bases.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then SpeedButton1.Click;
end;

procedure TBt_bases.DBGrid2CellClick(Column: TColumn);
begin
      ed_tabelas.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
end;

procedure TBt_bases.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      ed_tabelas.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
end;

procedure TBt_bases.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      ed_tabelas.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
end;

end.
