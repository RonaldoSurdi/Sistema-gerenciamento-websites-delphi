unit umdl_contactlistType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, XPMan;

type
  Tmdl_contactlistType = class(TForm)
    ToolBar_bts: TToolBar;
    Panel6: TPanel;
    bt_new: TSpeedButton;
    bt_update: TSpeedButton;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    Edit_pth: TEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox_IgnoreErros: TCheckBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    CheckBox_auto: TCheckBox;
    Label_csv: TLabel;
    RadioButton_csv1: TRadioButton;
    RadioButton_csv2: TRadioButton;
    Label2: TLabel;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_updateClick(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    PdataImp_Process:Boolean;
    PdataImp_path: String;
    PdataImp_ch1,PdataImp_Auto,PdataImp_IgnoreErros: Boolean;
    { Public declarations }
  end;

var
  mdl_contactlistType: Tmdl_contactlistType;

implementation

uses hwsfunctions;

{$R *.dfm}

procedure Tmdl_contactlistType.BitBtn1Click(Sender: TObject);
var Sxfilname, Sxextarq: String;
    SxextIsCsv: Boolean;
begin
      if (OpenDialog1.Execute) then begin
          Edit_pth.Text:=OpenDialog1.FileName;
          Sxfilname:=Edit_pth.Text;
          Sxextarq:= ExtractFileExt(Sxfilname);
          SxextIsCsv:=(Sxextarq='.csv');
          Label_csv.Enabled:=SxextIsCsv;
          RadioButton_csv1.Enabled:=SxextIsCsv;
          RadioButton_csv2.Enabled:=SxextIsCsv;
          RadioButton_csv2.Checked:=false;
          RadioButton_csv1.Checked:=SxextIsCsv;
      end;
end;

procedure Tmdl_contactlistType.bt_updateClick(Sender: TObject);
begin
      Close;
end;

procedure Tmdl_contactlistType.bt_newClick(Sender: TObject);
var xfilname, xextarq: String;
    xextIsCsv: Boolean;
begin
      xfilname:=Edit_pth.Text;
      if Length(xfilname)<6 then begin
         hwsf.BtMensagem('Arquivo não localizado.');
         Edit_pth.SetFocus;
         Edit_pth.SelectAll;
         exit;
      end;
      if not FileExists(xfilname) then begin
         hwsf.BtMensagem('Arquivo não localizado.');
         Edit_pth.SetFocus;
         Edit_pth.SelectAll;
         exit;
      end;
      xextarq:=ExtractFileExt(xfilname);
     if ((xextarq<>'.csv') and (xextarq<>'.txt')) then begin
         hwsf.BtMensagem('Tipo de arquivo inválido (csv/txt)...');
         Edit_pth.SetFocus;
         Edit_pth.SelectAll;
         exit;
      end;
      if (xextarq='.csv') then xextIsCsv:=RadioButton_csv1.Checked
      else xextIsCsv:=false;
      PdataImp_path:= xfilname;
      PdataImp_ch1:=xextIsCsv;
      PdataImp_Auto:=CheckBox_IgnoreErros.Checked;
      PdataImp_IgnoreErros:=CheckBox_IgnoreErros.Checked;
      PdataImp_Process:=true;
      Close;
end;

procedure Tmdl_contactlistType.FormCreate(Sender: TObject);
begin
      PdataImp_Process:=false;
end;

end.
