unit uform_restrict2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids, DB;

type
  Tform_restrict2 = class(TForm)
    GroupBox_per: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar4: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    axMountedGrid: Boolean;
    procedure MountedGrid;
    procedure Atualiza_PTR;
    { Private declarations }
  public
    axtypPerm: Integer;
    axVrl_load,axVrl_label: String;
    procedure atualizaReg;
    { Public declarations }
  end;

var
  form_restrict2: Tform_restrict2;

implementation

{$R *.dfm}

uses udm2, hwsfunctions, umdl_filemanager;

procedure Tform_restrict2.MountedGrid;
begin
     if not axMountedGrid then begin
        axMountedGrid:=true;
        Case axtypPerm of
           1: DBGrid1.DataSource:=dm2.source_sql5;
           2: DBGrid1.DataSource:=dm2.source_sql10;
           3: DBGrid1.DataSource:=dm2.source_sql9;
        End;
        With DBGrid1.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Cód. Usr';
          Items[0].FieldName:='cod_usr';
          Add;
          Items[1].Title.Caption:='Nome Completo';
          Items[1].FieldName:='cp3';
          Add;
          Items[2].Title.Caption:='Usuário';
          Items[2].FieldName:='cp6';
        end;
     end;
end;

procedure Tform_restrict2.atualizaReg;
var axshowing: Boolean;
    xnameTitle: String;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:=axVrl_load;
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:=axVrl_load;
         loadx.lbloading.Repaint;
      end;
      MountedGrid;
      Case axtypPerm of
         1: begin
            xnameTitle:=dm2.ds_sql.fieldbyname('descricao').AsString;
            With dm2.ds_sql5 do begin
                 if dm2.ds_sql5.Active then Close;
                 CommandText:= 'SELECT A.codigo,A.cod_it,A.cod_usr,B.codigo,B.cp3,B.cp6,B.cp13,B.xtp FROM '+
                          mdl_filemanager.LstTables.Table[7]+' A, '+ //modulos
                          mdl_filemanager.LstTables.Table[6]+' B '+ //tabelas
                          'WHERE B.codigo=A.cod_usr AND A.cod_it='+#39+InttoStr(mdl_filemanager.axcod_gal)+#39+
                          ' ORDER BY B.cp3';
                 Open;
            end;
         end;
         2: begin
            xnameTitle:=dm2.ds_sql3.fieldbyname('descricao').AsString;
            With dm2.ds_sql10 do begin
                 if dm2.ds_sql10.Active then Close;
                 CommandText:= 'SELECT A.codigo,A.cod_it,A.cod_usr,B.codigo,B.cp3,B.cp6,B.cp13,B.xtp FROM '+
                                mdl_filemanager.LstTables.Table[8]+' A, '+ //modulos
                                mdl_filemanager.LstTables.Table[6]+' B '+ //tabelas
                                'WHERE B.codigo=A.cod_usr AND A.cod_it='+#39+InttoStr(mdl_filemanager.axcod_img)+#39+
                                ' ORDER BY B.cp3';
                 Open;
            end;
         end;
         3: begin
            xnameTitle:=dm2.ds_sql6.fieldbyname('descricao').AsString;
            With dm2.ds_sql9 do begin
                 if dm2.ds_sql9.Active then Close;
                 CommandText:= 'SELECT A.codigo,A.cod_it,A.cod_usr,B.codigo,B.cp3,B.cp6,B.cp13,B.xtp FROM '+
                                mdl_filemanager.LstTables.Table[7]+'_ax'+' A, '+ //modulos
                                mdl_filemanager.LstTables.Table[6]+' B '+ //tabelas
                                'WHERE B.codigo=A.cod_usr AND A.cod_it='+#39+InttoStr(mdl_filemanager.axcod_class)+#39+
                                ' ORDER BY B.cp3';
                 Open;
            end;
         end;
      End;
      form_restrict2.Caption:=axVrl_load+': '+xnameTitle;
      Label1.Caption:='OBS: Somente os usuários listados acima terão acesso '+axVrl_label+#13+xnameTitle;
      try loadx.Close; except end;
end;


procedure Tform_restrict2.Atualiza_PTR;
begin
    with dm2.executa do begin
         Case axtypPerm of
             1: begin
                if dm2.ds_sql5.Active then Close;
                dm2.ds_sql5.Open;
                CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+' SET prt=:p0 '+
                              'WHERE cod_gal=:p1';
                Params[0].AsInteger:=dm2.ds_sql5.RecordCount;
                Params[1].AsInteger:=mdl_filemanager.axcod_gal;
                try
                    Execute;
                except
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
                mdl_filemanager.monta_tableclass(mdl_filemanager.axcod_gal);
                mdl_filemanager.monta_table1(mdl_filemanager.ax_ab_cod);
             end;
             2: begin
                dm2.ds_sql10.Close;
                dm2.ds_sql10.Open;
                CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET prt=:p0 '+
                              'WHERE cod_img=:p1';
                Params[0].AsInteger:=dm2.ds_sql10.RecordCount;
                Params[1].AsInteger:=mdl_filemanager.axcod_img;
                try
                    Execute;
                except
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
                mdl_filemanager.monta_table2(False,True, mdl_filemanager.ax_ms_cod);
             end;
             3: begin
                dm2.ds_sql9.Close;
                dm2.ds_sql9.Open;
                CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[0]+'_ax SET prt=:p0 '+
                              'WHERE cod_class=:p1';
                Params[0].AsInteger:=dm2.ds_sql9.RecordCount;
                Params[1].AsInteger:=mdl_filemanager.axcod_class;
                try
                    Execute;
                except
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
                mdl_filemanager.monta_tableclass(mdl_filemanager.ax_cl_cod);
             end;
         end;
    end;
end;

procedure Tform_restrict2.SpeedButton1Click(Sender: TObject);
var axcodIT: Integer;
    axshowing: Boolean;
begin
     Case axtypPerm of
          1: begin
             if not dm2.ds_sql5.Active then exit;
             if not mdl_filemanager.form_usr.Showing then mdl_filemanager.form_usr.ShowModal;
             if mdl_filemanager.form_usr.xconf_usr then begin
                if dm2.ds_sql5.Locate('cod_usr',mdl_filemanager.form_usr.xconf_cod,[]) then begin
                   hwsf.BtMensagem('Usuário já Incluido.');
                   exit;
                end;
                axshowing:= loadx.Showing;
                if not axshowing then begin
                   loadx := Tloadx.Create(Application);
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.Show;
                   loadx.Update;
                end else begin
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.lbloading.Repaint;
                end;
                axcodIT:=dm2.GetCodMax(mdl_filemanager.LstTables.Table[7],'codigo','');
                with dm2.executa do begin
                     CommandText:= 'INSERT INTO '+mdl_filemanager.LstTables.Table[7]+' (codigo,cod_it,cod_usr) '+
                                   'VALUES(:p0,:p1,:p2)';
                     Params[0].AsInteger:=axcodIT;
                     Params[1].AsInteger:=mdl_filemanager.axcod_gal;
                     Params[2].AsInteger:=mdl_filemanager.form_usr.xconf_cod;
                     try
                        Execute;
                        loadx.Progressloading.position:=50;
                     except
                        try loadx.Close; except end;
                        hwsf.BtMensagem('Ocorreu algum erro.');
                        exit;
                     end;
                end;
                Atualiza_PTR;
                try loadx.Close; except end;
             end;
          end;
          2: begin
             if not dm2.ds_sql10.Active then exit;
             if not mdl_filemanager.form_usr.Showing then mdl_filemanager.form_usr.ShowModal;
             if mdl_filemanager.form_usr.xconf_usr then begin
                if dm2.ds_sql10.Locate('cod_usr',mdl_filemanager.form_usr.xconf_cod,[]) then begin
                   hwsf.BtMensagem('Usuário já Incluido.');
                   exit;
                end;
                axshowing:= loadx.Showing;
                if not axshowing then begin
                   loadx := Tloadx.Create(Application);
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.Show;
                   loadx.Update;
                end else begin
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.lbloading.Repaint;
                end;
                axcodIT:=dm2.GetCodMax(mdl_filemanager.LstTables.Table[8],'codigo','');
                with dm2.executa do begin
                     CommandText:= 'INSERT INTO '+mdl_filemanager.LstTables.Table[8]+' (codigo,cod_it,cod_usr) '+
                                   'VALUES(:p0,:p1,:p2)';
                     Params[0].AsInteger:=axcodIT;
                     Params[1].AsInteger:=mdl_filemanager.axcod_img;
                     Params[2].AsInteger:=mdl_filemanager.form_usr.xconf_cod;
                     try
                        Execute;
                        loadx.Progressloading.position:=50;
                     except
                        try loadx.Close; except end;
                        hwsf.BtMensagem('Ocorreu algum erro.');
                        exit;
                     end;
                end;
                try loadx.Close; except end;
             end;
          end;
          3: begin
             if not dm2.ds_sql9.Active then exit;
             if not mdl_filemanager.form_usr.Showing then mdl_filemanager.form_usr.ShowModal;
             if mdl_filemanager.form_usr.xconf_usr then begin
                if dm2.ds_sql9.Locate('cod_usr',mdl_filemanager.form_usr.xconf_cod,[]) then begin
                   hwsf.BtMensagem('Usuário já Incluido.');
                   exit;
                end;
                axshowing:= loadx.Showing;
                if not axshowing then begin
                   loadx := Tloadx.Create(Application);
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.Show;
                   loadx.Update;
                end else begin
                   loadx.lbloading.Caption:='Atribuindo Permissões para Usuário';
                   loadx.lbloading.Repaint;
                end;
                axcodIT:=dm2.GetCodMax(mdl_filemanager.LstTables.Table[7]+'_ax','codigo','');
                with dm2.executa do begin
                     CommandText:= 'INSERT INTO '+mdl_filemanager.LstTables.Table[7]+'_ax (codigo,cod_it,cod_usr) '+
                                   'VALUES(:p0,:p1,:p2)';
                     Params[0].AsInteger:=axcodIT;
                     Params[1].AsInteger:=mdl_filemanager.axcod_class;
                     Params[2].AsInteger:=mdl_filemanager.form_usr.xconf_cod;
                     try
                        Execute;
                        loadx.Progressloading.position:=50;
                     except
                        try loadx.Close; except end;
                        hwsf.BtMensagem('Ocorreu algum erro.');
                        exit;
                     end;
                end;
                try loadx.Close; except end;
             end;
          end;
     End;
end;

procedure Tform_restrict2.SpeedButton7Click(Sender: TObject);
begin
     Case axtypPerm of
          1: begin
             if not dm2.ds_sql5.Active then exit;
             if dm2.ds_sql5.RecordCount=0 then exit;
             if hwsf.BtConfirma('Tem certeza que desejas remover as Permissões para o Usuário '+dm2.ds_sql5.fieldbyname('cp3').AsString+'?') then begin
                if dm2.deleta_reg(mdl_filemanager.LstTables.Table[7],'codigo',dm2.ds_sql5.fieldbyname('codigo').AsString,false) then
                   Atualiza_PTR;
             end;
          end;
          2: begin
             if not dm2.ds_sql10.Active then exit;
             if dm2.ds_sql10.RecordCount=0 then exit;
             if hwsf.BtConfirma('Tem certeza que desejas remover as Permissões para o Usuário '+dm2.ds_sql10.fieldbyname('cp3').AsString+'?') then begin
                if dm2.deleta_reg(mdl_filemanager.LstTables.Table[8],'codigo',dm2.ds_sql10.fieldbyname('codigo').AsString,false) then
                   Atualiza_PTR;
             end;
          end;
          3: begin
             if not dm2.ds_sql9.Active then exit;
             if dm2.ds_sql9.RecordCount=0 then exit;
             if hwsf.BtConfirma('Tem certeza que desejas remover as Permissões para o Usuário '+dm2.ds_sql9.fieldbyname('cp3').AsString+'?') then begin
                if dm2.deleta_reg(mdl_filemanager.LstTables.Table[7]+'_ax','codigo',dm2.ds_sql9.fieldbyname('codigo').AsString,false) then
                   Atualiza_PTR;
             end;
          end;
     End;
end;

procedure Tform_restrict2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tform_restrict2.FormShow(Sender: TObject);
begin
      if mdl_filemanager.axformInit then atualizaReg;
end;

procedure Tform_restrict2.FormCreate(Sender: TObject);
begin
      axMountedGrid:=false;
end;

end.
