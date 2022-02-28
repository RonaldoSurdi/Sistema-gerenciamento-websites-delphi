unit uusers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, CheckLst;

type
  TForm3 = class(TForm)
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    ListBox1: TListBox;
    LabeledEdit7: TLabeledEdit;
    ToolBar2: TToolBar;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox1: TCheckBox;
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
  Form3: TForm3;

implementation

uses umeserver, Math;

{$R *.dfm}

procedure TForm3.atualizausr;
var xidxusr: Integer;
begin
    btnew:=false;
    xidxusr:= ListBox1.ItemIndex;
    LabeledEdit1.Text:= IntToStr(Form1.Hb_users.vrf01[xidxusr]);
    LabeledEdit2.Text:= Form1.EnDecryptString(Form1.Hb_users.vrf02[xidxusr],53214);
    //LabeledEdit3.Text:= EnDecryptString(Form1.Hb_users.vrf03[xidxusr],13285);
    LabeledEdit3.Text:='';
    LabeledEdit4.Text:= Form1.EnDecryptString(Form1.Hb_users.vrf04[xidxusr],21654);
    LabeledEdit5.Text:= Form1.EnDecryptString(Form1.Hb_users.vrf05[xidxusr],12333);
    LabeledEdit6.Text:= Form1.EnDecryptString(Form1.Hb_users.vrf06[xidxusr],18578);
    LabeledEdit7.Text:= IntToStr(Form1.Hb_users.vrf07[xidxusr]);
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
      Close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caFree;
end;

procedure TForm3.FormCreate(Sender: TObject);
var xyu: Integer;
begin
    ListBox1.Clear;
    for xyu:=0 to Form1.Hb_users.vrf00-1 do begin
        ListBox1.Items.Add(Form1.EnDecryptString(Form1.Hb_users.vrf02[xyu],53214));
    end;
    ListBox1.ItemIndex:=0;
    atualizausr;
end;

procedure TForm3.ListBox1Click(Sender: TObject);
begin
    atualizausr;
end;

procedure TForm3.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualizausr;
end;

procedure TForm3.ListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualizausr;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
var xmemfile: TMemoryStream;
begin
      if not CheckBox1.Checked then
        if not Form1.BtConfirma('Salvar alterações?') then exit;
        AssignFile(Form1.reg_Hb_users,Form1.xfilenameCNFG+'003.tmp');
        Rewrite(Form1.reg_Hb_users);
        Seek(Form1.reg_Hb_users,0);
        write(Form1.reg_Hb_users,Form1.Hb_users);
        CloseFile(Form1.reg_Hb_users);
        xmemfile:= TMemoryStream.Create;
        xmemfile.Clear;
        xmemfile.Position:=0;
        xmemfile.LoadFromFile(Form1.xfilenameCNFG+'003.tmp');
        xmemfile.Position:=0;
        xmemfile:= Form1.EnDecryptStream(xmemfile,45623);
        xmemfile.Position:=0;
        if FileExists(Form1.xfilenameCNFG+'003.hws') then DeleteFile(Form1.xfilenameCNFG+'003.hws');
        xmemfile.SaveToFile(Form1.xfilenameCNFG+'003.hws');
        DeleteFile(Form1.xfilenameCNFG+'003.tmp');
        xmemfile.Free;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
      btnew:=true;
      LabeledEdit1.Text:=InttoStr(Form1.Hb_users.vrf00+1);
      LabeledEdit2.Text:='';
      LabeledEdit3.Text:='';
      LabeledEdit4.Text:='';
      LabeledEdit5.Text:='';
      LabeledEdit6.Text:='';
      //LabeledEdit7.Text:='';
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
var xyu2: Integer;
    xidxusr: Integer;
begin
      if not CheckBox1.Checked then
        if not Form1.BtConfirma('Remover usuário '+LabeledEdit2.Text+'?') then  exit;
      xidxusr:= ListBox1.ItemIndex;
      for xyu2:=xidxusr to Form1.Hb_users.vrf00-1 do begin
          Form1.Hb_users.vrf01[xidxusr]:= Form1.Hb_users.vrf01[xidxusr+1];
          Form1.Hb_users.vrf02[xidxusr]:= Form1.Hb_users.vrf02[xidxusr+1];
          Form1.Hb_users.vrf03[xidxusr]:= Form1.Hb_users.vrf03[xidxusr+1];
          Form1.Hb_users.vrf04[xidxusr]:= Form1.Hb_users.vrf04[xidxusr+1];
          Form1.Hb_users.vrf05[xidxusr]:= Form1.Hb_users.vrf05[xidxusr+1];
          Form1.Hb_users.vrf06[xidxusr]:= Form1.Hb_users.vrf06[xidxusr+1];
          Form1.Hb_users.vrf07[xidxusr]:= Form1.Hb_users.vrf07[xidxusr+1];
      end;
      Form1.Hb_users.vrf00:=Form1.Hb_users.vrf00-1;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var xidxusr: Integer;
begin
    xidxusr:= ListBox1.ItemIndex;
    if btnew then xidxusr:= xidxusr+1;
    Form1.Hb_users.vrf01[xidxusr]:= StrToInt(LabeledEdit1.Text);
    Form1.Hb_users.vrf02[xidxusr]:= Form1.EnDecryptString(LabeledEdit2.Text,53214);
    if LabeledEdit3.Text<>'' then
       Form1.Hb_users.vrf03[xidxusr]:= Form1.EnDecryptString(LabeledEdit3.Text,13285);
    Form1.Hb_users.vrf04[xidxusr]:= Form1.EnDecryptString(LabeledEdit4.Text,21654);
    Form1.Hb_users.vrf05[xidxusr]:= Form1.EnDecryptString(LabeledEdit5.Text,12333);
    Form1.Hb_users.vrf06[xidxusr]:= Form1.EnDecryptString(LabeledEdit6.Text,18578);
    Form1.Hb_users.vrf07[xidxusr]:= StrToInt(LabeledEdit7.Text);
    if btnew then begin
       Form1.Hb_users.vrf00:=Form1.Hb_users.vrf00+1;
       ListBox1.Items.Add(LabeledEdit2.Text);
       ListBox1.ItemIndex:=Form1.Hb_users.vrf00-1;
       btnew:=false;
    end;
    SpeedButton2.Click;
end;

end.


