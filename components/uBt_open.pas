{###############################################################################
Programa: Bt_path
Módulo: Localizar caminho.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

Unit uBt_open;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ShellCtrls, FileCtrl,
  ToolWin, CheckLst, FileFind, Menus, ShellView, ImgList, ShellAPI;

type
  TBt_open = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Panel4: TPanel;
    ToolBar2: TToolBar;
    Panel2: TPanel;
    barimg: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ToolBar1: TToolBar;
    ShellComboBox1: TShellComboBox;
    ToolBar3: TToolBar;
    Edit_namearq: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    FilterComboBox1: THWSFilterComboBox;
    FileListBox1: TFileListBox;
    ShellTreeView2: TShellTreeView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    procedure ShellComboBox1Change(Sender: TObject);
    procedure ShellComboBox1Click(Sender: TObject);
    procedure ShellComboBox1Exit(Sender: TObject);
    procedure ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure ShellComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    xinit:Boolean;
    procedure atualizaFileList;
    { Private declarations }
  public
    Bt_Confere:Boolean;
    xpathdefault:String;
    xresultStringList: TStringList;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_open: TBt_open;

implementation
Uses hwsfunctions, Math;

{$R *.dfm}

procedure TBt_open.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_open.FormShow(Sender: TObject);
begin
     if xinit then begin
        xinit:=false;
        Bt_Confere:=false;
        if xpathdefault<>'' then begin
           ShellComboBox1.Path:=xpathdefault;
        end;
        atualizaFileList;
     end;
end;

procedure TBt_open.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        if SpeedButton1.Enabled then SpeedButton1.Click;
     end;
end;

procedure TBt_open.SpeedButton1Click(Sender: TObject);
var xindlst: Integer;
begin
     xresultStringList.Clear;
     for xindlst:=0 to FileListBox1.Count-1 do begin
         if FileListBox1.Selected[xindlst] then
            xresultStringList.Add(ShellComboBox1.Path+'\'+FileListBox1.Items.Strings[xindlst]);
     end;
     Bt_Confere:=true;
     Close;
end;

procedure TBt_open.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_open.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_open.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_open.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_open.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_open.Left:= bt_open.Left-(mv_mouse.x-x);
      bt_open.Top:= bt_open.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_open.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_open.Left := bt_open.Left - (mv_mouse.x -x);
      bt_open.Top := bt_open.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_open.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_open.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_open.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      xresultStringList:= TStringList.Create;
      xresultStringList.Clear;
      xpathdefault:='';
      xinit:=true;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

procedure TBt_open.ShellComboBox1Change(Sender: TObject);
begin
      atualizaFileList;
end;

procedure TBt_open.ShellComboBox1Click(Sender: TObject);
begin
      atualizaFileList;
end;

procedure TBt_open.ShellComboBox1Exit(Sender: TObject);
begin
      atualizaFileList;
end;

procedure TBt_open.ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
begin
      atualizaFileList;
end;

procedure TBt_open.atualizaFileList;
begin
     try
         FileListBox1.Directory:=ShellComboBox1.Path;
     except end;
end;

procedure TBt_open.ShellComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
      atualizaFileList;
end;

end.
