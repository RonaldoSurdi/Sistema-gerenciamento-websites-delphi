{###############################################################################
Programa: Bt_path
Módulo: Localizar caminho.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

Unit uBt_search_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ShellCtrls, FileCtrl,
  ToolWin, CheckLst, FileFind, Spin, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TBt_search_auto = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    ShellTreeView1: TShellTreeView;
    ToolBar1: TToolBar;
    FilterComboBox1: TFilterComboBox;
    FileSearch1: TFileSearch;
    Panel4: TPanel;
    ToolBar3: TToolBar;
    ShellComboBox1: TShellComboBox;
    Label_status: TLabel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    grp_search1: TGroupBox;
    lb_search1: TLabel;
    lb_search2: TLabel;
    rb_search1: TRadioButton;
    rb_search2: TRadioButton;
    ed_search1: TEdit;
    ed_search2: TSpinEdit;
    swf_logo_view: TShockwaveFlash;
    StatusBar1: TStatusBar;
    ToolBar5: TToolBar;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolBar4: TToolBar;
    SpeedButton1: TSpeedButton;
    ToolBar6: TToolBar;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    ToolBar2: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    CheckBox_autoview: TCheckBox;
    CheckListBox1: TCheckListBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure CheckListBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToolBar4Resize(Sender: TObject);
    procedure ToolBar5Resize(Sender: TObject);
    procedure ToolBar1Resize(Sender: TObject);
  private
    xinit:Boolean;
    procedure Selectarqs(xSelectarq:Boolean);
    procedure AutoViewImg;
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
  Bt_search_auto: TBt_search_auto;

implementation
Uses hwsfunctions, Math;

{$R *.dfm}

procedure TBt_search_auto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     filesearch1.stop := true;
     Action:= caHide;
end;

procedure TBt_search_auto.FormShow(Sender: TObject);
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

procedure TBt_search_auto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        if SpeedButton1.Enabled then SpeedButton1.Click; 
     end;
end;

procedure TBt_search_auto.SpeedButton1Click(Sender: TObject);
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

procedure TBt_search_auto.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_search_auto.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_search_auto.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_search_auto.Left:= bt_search_auto.Left-(mv_mouse.x-x);
      bt_search_auto.Top:= bt_search_auto.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_search_auto.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_search_auto.Left := bt_search_auto.Left - (mv_mouse.x -x);
      bt_search_auto.Top := bt_search_auto.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_search_auto.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_search_auto.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_search_auto.FormCreate(Sender: TObject);
begin
      xresultStringList:= TStringList.Create;
      xresultStringList.Clear;
      xpathdefault:='';
      xinit:=true;
      grp_search1.Visible:=false;
end;

procedure TBt_search_auto.SpeedButton3Click(Sender: TObject);
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

procedure TBt_search_auto.SpeedButton4Click(Sender: TObject);
begin
      filesearch1.stop := true;
      Panel1.Enabled:=true;
      SpeedButton1.Enabled:=true;
      SpeedButton3.Enabled:=true;
      SpeedButton4.Enabled:=false;
      Label_status.Caption:='Selecione o diretório inicial e clique em "Iniciar Busca", depois selecione os arquivos e clique em "Selecionar arquivos"';
      Label_status.Font.Color:=$007F7F7F;
end;

procedure TBt_search_auto.Selectarqs(xSelectarq:Boolean);
var xindlb: Integer;
begin
     for xindlb:=0 to CheckListBox1.Count-1 do
         CheckListBox1.Checked[xindlb]:=xSelectarq;
end;

procedure TBt_search_auto.SpeedButton5Click(Sender: TObject);
begin
      Selectarqs(true);
end;

procedure TBt_search_auto.SpeedButton6Click(Sender: TObject);
begin
      Selectarqs(false);
end;

procedure TBt_search_auto.FileSearch1ChangeFolder(fullpath: String;
  info: TSearchRec);
begin
    	Label_status.caption := fullPath;
end;

procedure TBt_search_auto.FileSearch1FileFind(fullpath: String;
  info: TSearchRec);
begin
    	CheckListBox1.items.add(fullPath+info.name);
      CheckListBox1.Checked[CheckListBox1.Count-1]:=true;
end;

procedure TBt_search_auto.FileSearch1Finish(Sender: TObject);
begin
      Panel1.Enabled:=true;
      SpeedButton1.Enabled:=true;
      SpeedButton3.Enabled:=true;
      SpeedButton4.Enabled:=false;
      Label_status.Caption:='Processo concluído';
end;

procedure TBt_search_auto.rb_search2Click(Sender: TObject);
begin
      lb_search1.Enabled:=rb_search2.Checked;
      lb_search2.Enabled:=rb_search2.Checked;
      ed_search1.Enabled:=rb_search2.Checked;
      ed_search2.Enabled:=rb_search2.Checked;
end;

procedure TBt_search_auto.AutoViewImg;
var xfilename:String;
begin
      if CheckListBox1.Items.Count > 0 then begin
        xfilename := CheckListBox1.Items.Strings[CheckListBox1.ItemIndex];
        swf_logo_view.LoadMovie(0,xfilename);
      end;
end;

procedure TBt_search_auto.CheckListBox1Click(Sender: TObject);
begin
      if CheckBox_autoview.Checked then
         AutoViewImg;
end;

procedure TBt_search_auto.SpeedButton2Click(Sender: TObject);
begin
      AutoViewImg;
end;

procedure TBt_search_auto.SpeedButton9Click(Sender: TObject);
begin
      swf_logo_view.LoadMovie(0,'lixo');
end;

procedure TBt_search_auto.ToolBar4Resize(Sender: TObject);
begin
      SpeedButton1.Width:= ToolBar4.Width-2;
end;

procedure TBt_search_auto.ToolBar5Resize(Sender: TObject);
begin
      SpeedButton3.Width:= ToolBar5.Width-102;
end;

procedure TBt_search_auto.ToolBar1Resize(Sender: TObject);
begin
    FilterComboBox1.Width:=ToolBar1.Width-1;
    ShellComboBox1.Width:=ToolBar1.Width-1;
end;

end.
