unit uform_usr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ComCtrls, Grids, DBGrids;

type
  Tform_usr = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox_per: TGroupBox;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    Edit_search: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label_usr: TLabel;
    ToolBar2: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualiza_Usr;
  public
    xconf_usr: Boolean;
    xconf_cod: Integer;
    { Public declarations }
  end;

var
  form_usr: Tform_usr;

implementation

uses udm2, DB, hwsfunctions;

{$R *.dfm}

procedure Tform_usr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tform_usr.FormCreate(Sender: TObject);
begin
     DBGrid1.DataSource:=dm2.source_sql7;
     With DBGrid1.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='codigo';
          Add;
          Items[1].Title.Caption:='Nome Completo';
          Items[1].FieldName:='cp3';
          Add;
          Items[2].Title.Caption:='Usuário';
          Items[2].FieldName:='cp6';
          Add;
          Items[3].Title.Caption:='e-mail';
          Items[3].FieldName:='cp13';
     end;
end;

procedure Tform_usr.FormShow(Sender: TObject);
begin
     xconf_usr:= false;
     xconf_cod:= 0;
end;

procedure Tform_usr.Edit_searchChange(Sender: TObject);
begin
     if not dm2.ds_sql7.Active then exit;
     Case ComboBox1.ItemIndex of
        0: dm2.ds_sql7.filter:= 'codigo='+QuotedStr(Edit_search.Text);
        1: dm2.ds_sql7.filter:= 'cp3 LIKE '+QuotedStr(Edit_search.Text+'%');
        2: dm2.ds_sql7.filter:= 'cp6 LIKE '+QuotedStr(Edit_search.Text+'%');
        3: dm2.ds_sql7.filter:= 'cp13 LIKE '+QuotedStr(Edit_search.Text+'%');
     End;
     Atualiza_Usr;
end;

procedure Tform_usr.SpeedButton1Click(Sender: TObject);
begin
    if xconf_cod=0 then begin
       hwsf.BtMensagem('É necessário selecionar um Usuário.');
       exit;
    end;
    xconf_usr:=true;
    Close;
end;

procedure Tform_usr.SpeedButton2Click(Sender: TObject);
begin
    xconf_usr:=false;
    xconf_cod:=0;
    Close;
end;

procedure Tform_usr.Atualiza_Usr;
begin
    if not dm2.ds_sql7.Active then exit;
    xconf_cod:=dm2.ds_sql7.fieldbyname('codigo').AsInteger;
    Label_usr.Caption:='Código: '+dm2.ds_sql7.fieldbyname('codigo').AsString+#13+
                       'Nome: '+dm2.ds_sql7.fieldbyname('cp3').AsString+#13+
                       'Usuário: '+dm2.ds_sql7.fieldbyname('cp6').AsString+#13+
                       'e-mail: '+dm2.ds_sql7.fieldbyname('cp13').AsString;
end;

procedure Tform_usr.DBGrid1CellClick(Column: TColumn);
begin
      Atualiza_Usr;
end;

procedure Tform_usr.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Atualiza_Usr;
end;

procedure Tform_usr.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Atualiza_Usr;
end;

procedure Tform_usr.DBGrid1DblClick(Sender: TObject);
begin
      SpeedButton1.Click;
end;

end.
