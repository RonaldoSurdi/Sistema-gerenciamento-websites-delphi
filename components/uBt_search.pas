{###############################################################################
Programa: Bt_path
Módulo: Localizar caminho.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

Unit uBt_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ShellCtrls, FileCtrl,
  ToolWin, CheckLst, FileFind, Spin;

type
  TBt_search = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Panel3: TPanel;
    ShellTreeView1: TShellTreeView;
    ToolBar1: TToolBar;
    FilterComboBox1: TFilterComboBox;
    FileSearch1: TFileSearch;
    Panel2: TPanel;
    barimg: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel4: TPanel;
    CheckListBox1: TCheckListBox;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ShellComboBox1: TShellComboBox;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label_status: TLabel;
    grp_search1: TGroupBox;
    rb_search1: TRadioButton;
    rb_search2: TRadioButton;
    lb_search1: TLabel;
    ed_search1: TEdit;
    lb_search2: TLabel;
    ed_search2: TSpinEdit;
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FileSearch1ChangeFolder(fullpath: String; info: TSearchRec);
    procedure FileSearch1FileFind(fullpath: String; info: TSearchRec);
    procedure FileSearch1Finish(Sender: TObject);
    procedure rb_search2Click(Sender: TObject);
  private
    xinit:Boolean;
    procedure Selectarqs(xSelectarq:Boolean);
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
  Bt_search: TBt_search;

implementation
Uses hwsfunctions, Math;

{$R *.dfm}

procedure TBt_search.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     filesearch1.stop := true;
     Action:= caHide;
end;

procedure TBt_search.FormShow(Sender: TObject);
begin
     if xinit then begin
        xinit:=false;
        Bt_Confere:=false;
        if xpathdefault<>'' then begin
           ShellComboBox1.Path:=xpathdefault;
           ShellTreeView1.Path:=xpathdefault;
        end;
     end;
end;

procedure TBt_search.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        if SpeedButton1.Enabled then SpeedButton1.Click; 
     end;
end;

procedure TBt_search.SpeedButton1Click(Sender: TObject);
var xindlst: Integer;
begin
     xresultStringList.Clear;
     for xindlst:=0 to CheckListBox1.Count-1 do begin
         if CheckListBox1.Checked[xindlst] then
            xresultStringList.Add(CheckListBox1.Items.Strings[xindlst]);
     end;
     Bt_Confere:=true;
     Close;
end;

procedure TBt_search.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_search.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_search.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_search.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_search.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_search.Left:= bt_search.Left-(mv_mouse.x-x);
      bt_search.Top:= bt_search.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_search.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_search.Left := bt_search.Left - (mv_mouse.x -x);
      bt_search.Top := bt_search.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_search.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_search.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_search.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      xresultStringList:= TStringList.Create;
      xresultStringList.Clear;
      xpathdefault:='';
      xinit:=true;
      grp_search1.Visible:=false;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

procedure TBt_search.SpeedButton3Click(Sender: TObject);
var axmask: TStringList;
    axmask_txt,axmask_tmp: String;
    axmask_id: Integer;
begin
      Label_status.Font.Color:=clRed;
      Label_status.Caption:='Iniciando busca...';
      Label_status.Repaint;
      SpeedButton4.Enabled:=true;
      SpeedButton1.Enabled:=false;
      SpeedButton3.Enabled:=false;
      Panel1.Enabled:=false;
      CheckListBox1.Clear;
      axmask:= TStringList.Create;
      axmask.Clear;
      axmask_txt:=FilterComboBox1.Mask;
      axmask_tmp:='';
      for axmask_id:=1 to Length(axmask_txt) do begin
          if copy(axmask_txt,axmask_id,1) = ';' then begin
             axmask.Add(axmask_tmp);
             axmask_tmp:='';
          end else axmask_tmp:=axmask_tmp+copy(axmask_txt,axmask_id,1);
      end;
      axmask.Add(axmask_tmp);
      for axmask_id:=0 to axmask.Count-1 do begin
          xpathdefault:=ShellTreeView1.Path;
          filesearch1.SearchFile := ShellTreeView1.Path+'\'+axmask.Strings[axmask_id];
    	    filesearch1.Start;
      end;
end;

procedure TBt_search.SpeedButton4Click(Sender: TObject);
begin
      filesearch1.stop := true;
      Panel1.Enabled:=true;
      SpeedButton1.Enabled:=true;
      SpeedButton3.Enabled:=true;
      SpeedButton4.Enabled:=false;
      Label_status.Caption:='Selecione o diretório inicial e clique em "Iniciar Busca", depois selecione os arquivos e clique em "Selecionar arquivos"';
      Label_status.Font.Color:=$007F7F7F;
end;

procedure TBt_search.Selectarqs(xSelectarq:Boolean);
var xindlb: Integer;
begin
     for xindlb:=0 to CheckListBox1.Count-1 do
         CheckListBox1.Checked[xindlb]:=xSelectarq;
end;

procedure TBt_search.SpeedButton5Click(Sender: TObject);
begin
      Selectarqs(true);
end;

procedure TBt_search.SpeedButton6Click(Sender: TObject);
begin
      Selectarqs(false);
end;

procedure TBt_search.FileSearch1ChangeFolder(fullpath: String;
  info: TSearchRec);
begin
    	Label_status.caption := fullPath;
end;

procedure TBt_search.FileSearch1FileFind(fullpath: String;
  info: TSearchRec);
begin
    	CheckListBox1.items.add(fullPath+info.name);
      CheckListBox1.Checked[CheckListBox1.Count-1]:=true;
end;

procedure TBt_search.FileSearch1Finish(Sender: TObject);
begin
      Panel1.Enabled:=true;
      SpeedButton1.Enabled:=true;
      SpeedButton3.Enabled:=true;
      SpeedButton4.Enabled:=false;
      Label_status.Caption:='Processo concluído';
end;

procedure TBt_search.rb_search2Click(Sender: TObject);
begin
      lb_search1.Enabled:=rb_search2.Checked;
      lb_search2.Enabled:=rb_search2.Checked;
      ed_search1.Enabled:=rb_search2.Checked;
      ed_search2.Enabled:=rb_search2.Checked;
end;

end.
