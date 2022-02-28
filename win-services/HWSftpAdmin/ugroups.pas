unit ugroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    ToolBar2: TToolBar;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    btnew: Boolean;
    procedure atualizausr;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses umeserver;

{$R *.dfm}

procedure TForm4.atualizausr;
var xidxusr: Integer;
begin
    btnew:=false;
    xidxusr:= ListBox1.ItemIndex;
    LabeledEdit1.Text:= IntToStr(Form1.Hb_groups.vrf01[xidxusr]);
    LabeledEdit2.Text:= Form1.EnDecryptString(Form1.Hb_groups.vrf02[xidxusr],15412);
    LabeledEdit3.Text:= Form1.EnDecryptString(Form1.Hb_groups.vrf03[xidxusr],15432);
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
      Close;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caFree;
end;

procedure TForm4.FormCreate(Sender: TObject);
var xyu: Integer;
begin
    ListBox1.Clear;
    for xyu:=0 to Form1.Hb_groups.vrf00-1 do begin
        ListBox1.Items.Add(Form1.EnDecryptString(Form1.Hb_groups.vrf02[xyu],15412));
    end;
    ListBox1.ItemIndex:=0;
    atualizausr;
end;

procedure TForm4.ListBox1Click(Sender: TObject);
begin
    atualizausr;
end;

procedure TForm4.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualizausr;
end;

procedure TForm4.ListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualizausr;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var xmemfile: TMemoryStream;
begin
      if not CheckBox1.Checked then
        if not Form1.BtConfirma('Salvar alterações?') then exit;
        AssignFile(Form1.reg_Hb_groups,Form1.xfilenameCNFG+'002.tmp');
        Rewrite(Form1.reg_Hb_groups);
        Seek(Form1.reg_Hb_groups,0);
        write(Form1.reg_Hb_groups,Form1.Hb_groups);
        CloseFile(Form1.reg_Hb_groups);
        xmemfile:= TMemoryStream.Create;
        xmemfile.Clear;
        xmemfile.Position:=0;
        xmemfile.LoadFromFile(Form1.xfilenameCNFG+'002.tmp');
        xmemfile.Position:=0;
        xmemfile:= Form1.EnDecryptStream(xmemfile,45622);
        xmemfile.Position:=0;
        if FileExists(Form1.xfilenameCNFG+'002.hws') then DeleteFile(Form1.xfilenameCNFG+'002.hws');
        xmemfile.SaveToFile(Form1.xfilenameCNFG+'002.hws');
        DeleteFile(Form1.xfilenameCNFG+'002.tmp');
        xmemfile.Free;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
      btnew:=true;
      LabeledEdit1.Text:=InttoStr(Form1.Hb_users.vrf00+1);
      LabeledEdit2.Text:='';
      LabeledEdit3.Text:='';
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
var xyu2: Integer;
    xidxusr: Integer;
begin
      if not CheckBox1.Checked then
        if not Form1.BtConfirma('Remover usuário '+LabeledEdit2.Text+'?') then  exit;
      xidxusr:= ListBox1.ItemIndex;
      for xyu2:=xidxusr to Form1.Hb_groups.vrf00-1 do begin
          Form1.Hb_groups.vrf01[xidxusr]:= Form1.Hb_groups.vrf01[xidxusr+1];
          Form1.Hb_groups.vrf02[xidxusr]:= Form1.Hb_groups.vrf02[xidxusr+1];
          Form1.Hb_groups.vrf03[xidxusr]:= Form1.Hb_groups.vrf03[xidxusr+1];
      end;
      Form1.Hb_groups.vrf00:=Form1.Hb_groups.vrf00-1;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var xidxusr: Integer;
begin
    xidxusr:= ListBox1.ItemIndex;
    if btnew then xidxusr:= xidxusr+1;
    Form1.Hb_groups.vrf01[xidxusr]:= StrToInt(LabeledEdit1.Text);
    Form1.Hb_groups.vrf02[xidxusr]:= Form1.EnDecryptString(LabeledEdit2.Text,15412);
    Form1.Hb_groups.vrf03[xidxusr]:= Form1.EnDecryptString(LabeledEdit3.Text,15432);
    if btnew then begin
       Form1.Hb_groups.vrf00:=Form1.Hb_groups.vrf00+1;
       ListBox1.Items.Add(LabeledEdit2.Text);
       ListBox1.ItemIndex:=Form1.Hb_groups.vrf00-1;
       btnew:=false;
    end;
    SpeedButton2.Click;
end;

end.
