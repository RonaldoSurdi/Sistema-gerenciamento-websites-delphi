unit umdl_contactlistGrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, XPMan;

type
  Tmdl_contactlistGrp = class(TForm)
    ToolBar_bts: TToolBar;
    Panel6: TPanel;
    bt_new: TSpeedButton;
    bt_update: TSpeedButton;
    StatusBar1: TStatusBar;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    lb_desc: TLabeledEdit;
    Label1: TLabel;
    lb_text: TMemo;
    procedure bt_updateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
  private
    { Private declarations }
  public
    PdataGrp_Process:Boolean;
    PdataGrp_cod: Integer;
    PdataGrp_table: String;
    { Public declarations }
  end;

var
  mdl_contactlistGrp: Tmdl_contactlistGrp;

implementation

uses hwsfunctions, udm;

{$R *.dfm}

procedure Tmdl_contactlistGrp.bt_updateClick(Sender: TObject);
begin
      Close;
end;

procedure Tmdl_contactlistGrp.FormCreate(Sender: TObject);
begin
      PdataGrp_Process:=false;
end;

procedure Tmdl_contactlistGrp.bt_newClick(Sender: TObject);
var axcod: Integer;
begin
      if (lb_desc.Text='') then begin
         hwsf.BtMensagem('É necessário digitar a descrição.');
         lb_desc.SetFocus;
         exit;
      end;
      if (PdataGrp_cod = 0) then begin
         axcod:=dm.GetCodMax(PdataGrp_table,'codigo','');
         with dm.executa do begin
              CommandText:= 'INSERT INTO '+PdataGrp_table+' (codigo,cod_ent,descricao,textft,xtp) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4)';
              Params[0].AsInteger:=axcod;
              Params[1].AsInteger:=AxDadosUsr.cod_web;
              Params[2].AsString:=lb_desc.Text;
              Params[3].AsString:=lb_text.Text;
              Params[4].AsString:=AxDadosUsr.axparm;
         end;
      end else begin
         axcod:=PdataGrp_cod;
         with dm.executa do begin
              CommandText:= 'UPDATE '+PdataGrp_table+' SET descricao=:p0,textft=:p1'+
                            ' WHERE codigo=:cp2';
              Params[0].AsString:=lb_desc.Text;
              Params[1].AsString:=lb_text.Text;
              Params[2].AsInteger:=axcod;
         end;
      end;
      try
          dm.executa.Execute;
      except
          hwsf.BtMensagem('Ocorreu ao gravar os dados, tente novamente...');
          exit;
      end;
      PdataGrp_cod:=axcod;
      PdataGrp_Process:=true;
      Close;
end;

end.
