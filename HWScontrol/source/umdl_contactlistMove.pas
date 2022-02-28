unit umdl_contactlistMove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, XPMan, Grids,
  DBGrids;

type
  Tmdl_contactlistMove = class(TForm)
    ToolBar_bts: TToolBar;
    Panel6: TPanel;
    bt_new: TSpeedButton;
    bt_update: TSpeedButton;
    StatusBar1: TStatusBar;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    TOTAL_grpreg: TLabel;
    Label6: TLabel;
    procedure bt_updateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    procedure monta_table3;
    { Private declarations }
  public
    PdataMov_Process:Boolean;
    PdataMov_codfile,PdataMov_codGrp: Integer;
    PdataMov_table0,PdataMov_table1: String;
    { Public declarations }
  end;

var
  mdl_contactlistMove: Tmdl_contactlistMove;

implementation

uses hwsfunctions, udm;

{$R *.dfm}

procedure Tmdl_contactlistMove.bt_updateClick(Sender: TObject);
begin
      Close;
end;

procedure Tmdl_contactlistMove.FormCreate(Sender: TObject);
begin
      PdataMov_Process:=false;
end;

procedure Tmdl_contactlistMove.bt_newClick(Sender: TObject);
var axcod,axcodNewGrp: Integer;
begin
      axcod:=PdataMov_codfile;
      axcodNewGrp:=dm.ds_sql6.fieldbyname('codigo').AsInteger;
      with dm.executa do begin
           CommandText:= 'UPDATE '+PdataMov_table0+' SET cod_grp=:p0'+
                         ' WHERE codigo=:cp2';
           Params[0].AsInteger:=axcodNewGrp;
           Params[1].AsInteger:=axcod;
      end;
      try
          dm.executa.Execute;
      except
          hwsf.BtMensagem('Ocorreu ao gravar os dados, tente novamente...');
          exit;
      end;
      PdataMov_Process:=true;
      Close;
end;

procedure Tmdl_contactlistMove.monta_table3;
begin
     DBGrid3.DataSource:=dm.source_sql6;
     DBGrid3.Columns.Clear;
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='descricao';
     DBGrid3.Columns.Items[0].Title.Caption:='Grupo';
     DBGrid3.Columns.Items[0].Width:=300;
     With dm.ds_sql6 do begin
        if Active then Close;                                
        CommandText:= 'SELECT codigo,descricao,textft FROM '+PdataMov_table1+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=false;
     end;
     TOTAL_grpreg.Caption:= Formatfloat('#,###,##0',dm.ds_sql6.RecordCount);
     dm.ds_sql6.Locate('codigo',PdataMov_codGrp,[]);
end;

procedure Tmdl_contactlistMove.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dm.ds_sql6.Active then dm.ds_sql6.Close; 
end;

procedure Tmdl_contactlistMove.FormActivate(Sender: TObject);
begin
      monta_table3;
end;

end.
