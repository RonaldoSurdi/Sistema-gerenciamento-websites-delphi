unit uconfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, ToolWin;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    StatusBar1: TStatusBar;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormatLabelNumbers(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses umeserver;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:= caFree;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
      Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
      Label2.Caption:=IntToStr(Form1.Hb_cnfg.vrf00);
      //LabeledEdit1.Text:= EnDecryptString(Form1.Hb_cnfg.vrf02,13584);
      //LabeledEdit2.Text:= EnDecryptString(Form1.Hb_cnfg.vrf03,26551);
      LabeledEdit3.Text:= Form1.EnDecryptString(Form1.Hb_cnfg.vrf01,13584);
      LabeledEdit4.Text:= Form1.EnDecryptString(Form1.Hb_cnfg.vrf04,13513);
      LabeledEdit5.Text:= Form1.EnDecryptString(Form1.Hb_cnfg.vrf08,13514);
      LabeledEdit7.Text:= Form1.EnDecryptString(Form1.Hb_cnfg.vrf09,13515);
      LabeledEdit6.Text:= Form1.EnDecryptString(Form1.Hb_cnfg.vrf10,21632);
      ComboBox1.ItemIndex:=Form1.Hb_cnfg.vrf07;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
var xmemfile: TMemoryStream;
begin
      if Form1.BtConfirma('Salvar alterações?') then begin
        Form1.Hb_cnfg.vrf00:=Form1.Hb_cnfg.vrf00+1;
        if (LabeledEdit1.Text<>'') and (LabeledEdit2.Text<>'') then begin
            Form1.Hb_cnfg.vrf02:= Form1.EnDecryptString(LabeledEdit1.Text,13584);
            Form1.Hb_cnfg.vrf03:= Form1.EnDecryptString(LabeledEdit2.Text,26551);
        end;
        Form1.Hb_cnfg.vrf01:= Form1.EnDecryptString(LabeledEdit3.Text,13584);
        Form1.Hb_cnfg.vrf04:= Form1.EnDecryptString(LabeledEdit4.Text,13513);
        Form1.Hb_cnfg.vrf05:=0;
        Form1.Hb_cnfg.vrf06:=0;
        Form1.Hb_cnfg.vrf07:=ComboBox1.ItemIndex;
        Form1.Hb_cnfg.vrf08:=Form1.EnDecryptString(LabeledEdit5.Text,13514);
        Form1.Hb_cnfg.vrf09:=Form1.EnDecryptString(LabeledEdit7.Text,13515);
        Form1.Hb_cnfg.vrf10:= Form1.EnDecryptString(LabeledEdit6.Text,21632);
        AssignFile(Form1.reg_Hb_cnfg,Form1.xfilenameCNFG+'001.tmp');
        Rewrite(Form1.reg_Hb_cnfg);
        Seek(Form1.reg_Hb_cnfg,0);
        write(Form1.reg_Hb_cnfg,Form1.Hb_cnfg);
        CloseFile(Form1.reg_Hb_cnfg);                                   
        xmemfile:= TMemoryStream.Create;
        xmemfile.Clear;
        xmemfile.Position:=0;
        xmemfile.LoadFromFile(Form1.xfilenameCNFG+'001.tmp');
        xmemfile.Position:=0;
        xmemfile:= Form1.EnDecryptStream(xmemfile,45621);
        xmemfile.Position:=0;
        if FileExists(Form1.xfilenameCNFG+'001.hws') then DeleteFile(Form1.xfilenameCNFG+'001.hws');
        xmemfile.SaveToFile(Form1.xfilenameCNFG+'001.hws');
        DeleteFile(Form1.xfilenameCNFG+'001.tmp');
        xmemfile.Free;
        Form1.BtMensagem('Configuração atualizadas.');
        Close;
      end;
end;

procedure TForm2.FormatLabelNumbers(Sender: TObject; var Key: Char);
begin
  if (Key <> #8) then
  if (key in ['0'..'9'] = false) then
      Key := #0;
end;


end.
