{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_uscnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  XPMan, AppEvnts;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_uscnf = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    GroupBox2: TGroupBox;
    Panel_search: TPanel;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg2: TLabel;
    bt_search: TSpeedButton;
    PageControl2: TPageControl;
    Edit_search: TComboBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    XPManifest1: TXPManifest;
    ComboBox_web: TComboBox;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox3: TScrollBox;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    Panel6: TPanel;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    xcodigo2: TLabeledEdit;
    lbcp_dtcad2: TLabel;
    Label27: TLabel;
    xcpw2: TLabeledEdit;
    xcpw3: TLabeledEdit;
    xcpw5: TLabeledEdit;
    xcpw4: TLabeledEdit;
    xcpw6: TLabeledEdit;
    xcpw7: TLabeledEdit;
    xcpw8: TCheckBox;
    xcpw9: TCheckBox;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchChange(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_webChange(Sender: TObject);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit : Boolean;
    xcp18,xcpw18: Integer; //cód. cidade
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade2;
    procedure addreg2;
    procedure filtrar_reg;
    procedure monta_table2;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  mdl_uscnf: Tmdl_uscnf;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_uscnf.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Finalizando...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Finalizando...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=25;
     xlogotmp.Free;
     loadx.Progressloading.position:=50;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_uscnf.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream;
    axid_web,axid_web2,xforcps,xtotperc: integer;
    xtotperc2: Real;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando ambiente';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=5;
     Application.Title := AxDadosUsr.axtitle;
     mdl_uscnf.Caption := AxDadosUsr.axtitle;
     DBGrid2.DataSource:=dm.source_sql4;
     xcp18:=0;
     xcpw18:=0;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Nome');
     cp_search[2]:= 'cp6';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('e-mail');
     cp_search[3]:= 'cp7';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.ItemIndex:=2;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
        With dm.executa3 do begin
             CommandText:='SELECT codigo,website FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                       ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_ent_1)+#39+
                       ' ORDER BY website';
             Open;
             First;
             While not Eof do begin
                if AxDadosUsr.cod_web=fieldbyname('codigo').AsInteger then axid_web2:=axid_web;
                ComboBox_web.Items.Add(fieldbyname('website').AsString);
                Next;
                Inc(axid_web);
             end;
        end;
     end;
     ComboBox_web.ItemIndex:=axid_web2;
     if ComboBox_web.Items.Count<2 then
        ComboBox_web.Enabled:=false;
     loadx.Progressloading.position:=10;
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;
     With dm.ds_sql11 do begin
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                ' ORDER BY B.codigo';
          Open;
          if RecordCount>0 then begin
             First;
             While not Eof do begin
                LstTables.codigo[LstTables.Count]:=fieldbyname('codigo_1').AsInteger;
                LstTables.Table[LstTables.Count]:=fieldbyname('cp2').AsString;
                //stringgrind Filtro
                LstTables.Tipo[LstTables.Count]:= TStringList.Create;
                LstTables.Tipo[LstTables.Count].Clear;
                LstTables.Tipo[LstTables.Count].Assign(fieldbyname('cp1'));
                dm.executa.Close;
                if LstTables.Tipo[LstTables.Count].Count>0 then begin
                   LstTables.Tipo[LstTables.Count].SaveToStream(axstr_filtro_stream);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   LstTables.Tipo[LstTables.Count].LoadFromStream(axstr_filtro_stream);
                end;
                Inc(LstTables.Count);
                Next;
             end;
          end else begin
             Close;
             if not axshowing then loadx.Close;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.position:=15;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp6';
     DBGrid2.Columns.Items[1].Title.Caption:='Nome';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='cp7';
     DBGrid2.Columns.Items[2].Title.Caption:='e-mail';
     loadx.Progressloading.position:=20;
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
     monta_table2;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_uscnf.atualiza_grade2;
begin
     if dm.ds_sql4.RecordCount <= 0 then begin
         addreg2;
     end else begin
         xcpw18:=0;
         with dm.ds_sql4 do begin
            if xcodigo2.Text=fieldbyname('codigo').AsString then exit;
            xcodigo2.Text:=fieldbyname('codigo').AsString;
            xcpw2.Text:= fieldbyname('cp6').AsString;
            xcpw3.Text:= fieldbyname('cp7').AsString;
            xcpw4.Text:= EnDecryptString(fieldbyname('cp1').AsString,16587);
            xcpw5.Text:= EnDecryptString(fieldbyname('cp3').AsString,16587);
            xcpw6.Text:= EnDecryptString(fieldbyname('cp4').AsString,16587);
            xcpw7.Text:= EnDecryptString(fieldbyname('cp5').AsString,16587);
            xcpw8.Checked:= StrToBool(fieldbyname('cp2').AsString);
            xcpw9.Checked:= StrToBool(fieldbyname('cp8').AsString);
            lbcp_dtcad2.Caption:= fieldbyname('cp9').AsString;
         end;
     end;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_uscnf.addreg2;
begin
     xcodigo2.Text:='novo';
     xcpw2.Text:= '';
     xcpw3.Text:= '';
     xcpw4.Text:= '';
     xcpw5.Text:= '';
     xcpw6.Text:= '';
     xcpw7.Text:= '25';
     //xcpw8.Checked:=false;
     xcpw9.Checked:=false;
     lbcp_dtcad2.Caption:='';
end;

procedure Tmdl_uscnf.FormResize(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_uscnf.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql4.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE %%'+QuotedStr(Edit_search.Text+'%%')
        else dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tmdl_uscnf.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_uscnf.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_uscnf.Edit_searchKeyPress(Sender: TObject;
  var Key: Char);
begin
      if tp_search[ComboBox_search.ItemIndex]=0 then begin
         Case key of
           '0'..'9' :;
           #13, #8, #27:
         else
           Key := #0;
         end;
      end;
end;

procedure Tmdl_uscnf.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_uscnf.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_uscnf.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table2;
             atualiza_grade2;
          end;
      end;
end;

procedure Tmdl_uscnf.monta_table2;
begin
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                      ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     atualiza_grade2;
end;

procedure Tmdl_uscnf.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_uscnf.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_uscnf.bt_new2Click(Sender: TObject);
begin
    addreg2;
    xcpw6.SetFocus;
end;

procedure Tmdl_uscnf.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_sql4.RecordCount>0) and (xcodigo2.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',xcodigo2.Text,true) then begin
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade2;
        end;
    end;
end;

procedure Tmdl_uscnf.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid,axsqlidx1: integer;
    axmntquy,axmd5pass: String;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     if xcpw2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o nome.');
        xcpw2.SelectAll;
        xcpw2.SetFocus;
        exit;
     end;
     if xcpw3.Text='' then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end else if not Verifyemail(xcpw3.Text) then begin
        hwsf.BtMensagem('Formato de ['+xcpw3.Text+'] e-mail inválido.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     if xcpw4.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o Servidor.');
        xcpw4.SelectAll;
        xcpw4.SetFocus;
        exit;
     end;
     if (xcpw8.Checked) then begin
        if xcpw5.Text='' then begin
           hwsf.BtMensagem('É necessário digitar o Usuário.');
           xcpw5.SelectAll;
           xcpw5.SetFocus;
           exit;
        end;
        if (xcpw6.Text='') then begin
           hwsf.BtMensagem('É necessário digitar a Senha.');
           xcpw6.SelectAll;
           xcpw6.SetFocus;
           exit;
        end;
     end;
     try
        axsqlidx1:=StrtoInt(xcpw7.Text);
     except
        hwsf.BtMensagem('A porta digita é inválida, o valor tem que ser numérico.');
        xcpw7.SelectAll;
        xcpw7.SetFocus;
        exit;
     end;
     if ((dm.ds_sql4.RecordCount > 0) and (xcpw9.Checked)) then begin
        with dm.executa do begin
             axmntquy :='UPDATE '+LstTables.Table[0]+' SET cp8=:p0'+
                        ' WHERE cod_web=:p1';
             Params[0].AsString:=BoolToStr(false);
             Params[1].AsInteger:=AxDadosUsr.cod_web;
             try
                Execute;
             except
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
             end;
        end;
     end;
     if xcodigo2.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+')';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=AxDadosUsr.cod_web;
            Params[axsqlidADD].AsString:=xcpw4.Text;
            Params[axsqlidADD].AsString:=BoolToStr(xcpw8.Checked);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw5.Text,16587);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw6.Text,16587);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw7.Text,16587);
            Params[axsqlidADD].AsString:=xcpw2.Text;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=BoolToStr(xcpw9.Checked);
        end;
     end else begin
        axcod:=StrtoInt(xcodigo2.Text);
        with dm.executa do begin
            axmntquy :='UPDATE '+LstTables.Table[0]+' SET '+
                       'cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3,cp5=:p4,cp6=:p5,cp7=:p6,cp8=:p7'+
                       ' WHERE codigo=:p8';
            axsqlid:=0;
            Params[axsqlidADD].AsString:=xcpw4.Text;
            Params[axsqlidADD].AsString:=BoolToStr(xcpw8.Checked);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw5.Text,16587);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw6.Text,16587);
            Params[axsqlidADD].AsString:=EnDecryptString(xcpw7.Text,16587);
            Params[axsqlidADD].AsString:=xcpw2.Text;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=BoolToStr(xcpw9.Checked);
            Params[axsqlidADD].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql4.Close;
     dm.ds_sql4.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
     dm.ds_sql4.Locate('codigo',axcod,[]);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_uscnf.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_uscnf.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_uscnf.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_uscnf.FormShow(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_uscnf.SpeedButton8Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_uscnf.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
