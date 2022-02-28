{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para websites.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_usrwebsites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  XPMan, AppEvnts;


type
  Tadm_usrwebsites = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    ToolBar5: TToolBar;
    bt_prior3: TSpeedButton;
    bt_next3: TSpeedButton;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label1: TLabel;
    lbcp1: TLabeledEdit;
    lbcp6: TLabeledEdit;
    lbcp3: TComboBox;
    lbcp2: TLabeledEdit;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    DBGrid2: TDBGrid;
    Edit_search: TComboBox;
    rb_filtro1: TRadioButton;
    rb_filtro2: TRadioButton;
    rb_filtro3: TRadioButton;
    rb_filtro4: TRadioButton;
    Label11: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    lbcp7: TLabeledEdit;
    GroupBox3: TGroupBox;
    lbcp_rb1: TRadioButton;
    lbcp_rb2: TRadioButton;
    lbcp_rb3: TRadioButton;
    lbcp4: TLabeledEdit;
    lbcp5: TComboBox;
    Label15: TLabel;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox2: TScrollBox;
    Panel3: TPanel;
    bt_buscacep: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    lbcb1: TLabeledEdit;
    lbcb2: TLabeledEdit;
    lbcb11: TLabeledEdit;
    lbcb12: TLabeledEdit;
    lbcb13: TLabeledEdit;
    lbcb14: TLabeledEdit;
    lbcb15: TLabeledEdit;
    lbcb16: TLabeledEdit;
    lbcb17: TLabeledEdit;
    lbcb18: TComboBox;
    lbcb19: TLabeledEdit;
    lbcb20: TLabeledEdit;
    lbcb21: TMemo;
    lbcb9: TLabeledEdit;
    lbcb10: TDateTimePicker;
    lbcb7: TLabeledEdit;
    lbcb8: TComboBox;
    lbcb5: TLabeledEdit;
    lbcb6: TComboBox;
    ToolBar3: TToolBar;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    Panel7: TPanel;
    swf_logo: TShockwaveFlash;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    lbcp8: TLabeledEdit;
    lbcp_dtcad: TLabel;
    Label12: TLabel;
    Panel6: TPanel;
    Label13: TLabel;
    Label10: TLabel;
    ComboBox_menu: TComboBox;
    mod_combo: TComboBox;
    ToolBar6: TToolBar;
    mod_add: TSpeedButton;
    mod_del: TSpeedButton;
    mod_clear: TSpeedButton;
    SpeedButton2: TSpeedButton;
    bt_acima3: TSpeedButton;
    bt_abaixo3: TSpeedButton;
    Edit_mod: TEdit;
    XPManifest1: TXPManifest;
    add_colaborador: TSpeedButton;
    chk_master: TCheckBox;
    pn_notmaster: TPanel;
    pn_notmaster2: TPanel;
    lb_razaosocial: TLabel;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure lbcp3Change(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure lbcp2KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp2Change(Sender: TObject);
    procedure bt_prior3Click(Sender: TObject);
    procedure bt_next3Click(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchChange(Sender: TObject);
    procedure lbcp4KeyPress(Sender: TObject; var Key: Char);
    procedure lbcb3KeyPress(Sender: TObject; var Key: Char);
    procedure lbcb5KeyPress(Sender: TObject; var Key: Char);
    procedure lbcb7KeyPress(Sender: TObject; var Key: Char);
    procedure lbcb16KeyPress(Sender: TObject; var Key: Char);
    procedure lbcb20KeyPress(Sender: TObject; var Key: Char);
    procedure bt_buscacepClick(Sender: TObject);
    procedure lbcb18Change(Sender: TObject);
    procedure lbcb5Change(Sender: TObject);
    procedure lbcb6Change(Sender: TObject);
    procedure lbcb7Change(Sender: TObject);
    procedure lbcb8Change(Sender: TObject);
    procedure lbcp5Change(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure ComboBox_menuChange(Sender: TObject);
    procedure bt_acima3Click(Sender: TObject);
    procedure mod_addClick(Sender: TObject);
    procedure mod_delClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bt_abaixo3Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mod_clearClick(Sender: TObject);
    procedure add_colaboradorClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    cv : string;
    xlogotmp : TMemoryStream;
    userxmaster,impmodule : Boolean;
    xcodmenu,xcodent,xcodweb : Integer;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure atualiza_modulos;
    procedure atualiza_colaborador;
    procedure addreg;
    procedure addreg2;
    procedure filtrar_reg;
    procedure getLogo;
    procedure abretmplogo;
    procedure marcarmodulo(marcar: boolean; axcod: integer);
    procedure atualizaComboMenu(idxmenu:integer);
    procedure ordmenu(tipoord: byte);
    procedure ordmod(tipoord: byte);
    procedure Remonta_menu(xcod_usr,xcod_menu: Integer);
    function GetMaxorder_menu:Integer;
    function GetMaxorder:Integer;
    procedure Remonta_mod(xcod_ent: Integer);
    procedure atualiza_itens;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_usrwebsites: Tadm_usrwebsites;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tadm_usrwebsites.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     loadx.Progressloading.position:=50;
     dm.ds_sql3.Close;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     loadx.Progressloading.position:=75;
     if userxmaster then begin
        dm.ds_sql5.Filter:='';
        dm.ds_sql5.Filtered:=false;
        dm.ds_sql5.Close;
     end;
     dm.executa3.Close;
     dm.executa4.Close;
     dm.executa6.Close;
     loadx.Progressloading.position:=100;
     dm.executa7.Close;
     dm.executa8.Close;
     loadx.Close;
     Action:=cafree;
end;

procedure Tadm_usrwebsites.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axcodcolaborador: Integer;
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
      loadx.Progressloading.position:=10;
     impmodule:=false;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     adm_usrwebsites.Caption := AxDadosUsr.axtitle;
     xlogotmp:= TMemoryStream.Create;
     DBGrid1.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Usuário');
     cp_search[1]:= 'usuario';
     tp_search[1]:= 1;
     tm_search[1]:= 30;
     ComboBox_search.Items.Add('Website');
     cp_search[2]:= 'cod_web';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('Colaborador');
     cp_search[3]:= 'cod_ent';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.ItemIndex:=2;

     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='stat';
     DBGrid1.Columns.Items[0].Title.Caption:='Status';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='codigo';
     DBGrid1.Columns.Items[1].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='usuario';
     DBGrid1.Columns.Items[2].Title.Caption:='Usuário';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='dt_cad';
     DBGrid1.Columns.Items[3].Title.Caption:='Data de Cadastro';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='website';
     DBGrid1.Columns.Items[4].Title.Caption:='Website';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='nome';
     DBGrid1.Columns.Items[5].Title.Caption:='Colaborador';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[6].FieldName:='descricao';
     DBGrid1.Columns.Items[6].Title.Caption:='Data de cadastro';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,A.stat,A.xconf,A.dt_cad,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao FROM '+
                              EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                              EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                              EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                              EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                              EnDecryptString(Serverconect.vrf29,37249)+' E '+  //website
                              'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web '+
                              'AND A.codigo='+#39+InttoStr(Serverconect.vrf00)+#39+
                              ' ORDER BY A.codigo';
        Open;
        filter:='';
        filtered:=true;
        if RecordCount>0 then begin
           userxmaster:=StrToBool(fieldbyname('xconf').AsString);
           xcodent:=fieldbyname('cod_ent_1').AsInteger;
           xcodweb:=fieldbyname('cod_web').AsInteger;
           axcodcolaborador:=fieldbyname('cod_ent').AsInteger;
           lb_razaosocial.Caption:=fieldbyname('razao_social').AsString;
        end else begin
           hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
           Application.Terminate;
           exit;
        end;
        if userxmaster then begin
           bt_prior.Visible:=true;
           bt_prior2.Visible:=true;
           bt_next.Visible:=true;
           bt_next2.Visible:=true;
           bt_new.Visible:=true;
           bt_new2.Visible:=true;
           bt_del.Visible:=true;
           bt_del2.Visible:=true;
           GroupBox3.Visible:=true;
           chk_master.Visible:=true;
           TabSheet2.TabVisible:=true;
           Panel1.Visible:=true;
           loadx.lbloading.Caption:='Montando usuário master';
           loadx.lbloading.Repaint;
           Close;
           CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,A.stat,A.xconf,A.dt_cad,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao,E.website FROM '+
                              EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                              EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                              EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                              EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                              EnDecryptString(Serverconect.vrf29,37249)+' E '+  //website
                              'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web '+
                              'AND C.codigo='+#39+IntToStr(xcodent)+#39+
                              ' ORDER BY A.codigo';
           Open;
        end else begin
           pn_notmaster.Visible:=true;
           pn_notmaster.Width:=228;
           pn_notmaster2.Visible:=true;
           pn_notmaster2.Width:=228;
           adm_usrwebsites.Width:=345;
        end;
     end;
     With dm.executa4 do begin
        if userxmaster then
           CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                     ' WHERE cod_ent='+#39+IntToStr(xcodent)+#39+
                     ' ORDER BY website'
        else
           CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                     ' WHERE codigo='+#39+IntToStr(xcodweb)+#39+
                     ' ORDER BY website';
        Open;
        First;
        lbcp3.Clear;
        While not Eof do begin
            lbcp3.Items.Add(fieldbyname('website').AsString);
            Next;
        end;
        lbcp3.ItemIndex:=0;
        if (lbcp3.Items.Count=1) or (not userxmaster) then begin
           lbcp2.Enabled:=false;
           lbcp3.Enabled:=false;
        end;
     end;
     loadx.Progressloading.position:=20;
     Edit_search.Items:= lbcp3.Items;
     With dm.executa8 do begin
        if userxmaster then
           CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf34,37249)+
                     ' WHERE cod_ent='+#39+IntToStr(xcodent)+#39+
                     ' ORDER BY nome'
        else
           CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf34,37249)+
                     ' WHERE codigo='+#39+IntToStr(axcodcolaborador)+#39+
                     ' ORDER BY nome';
        Open;
        First;
        lbcp5.Clear;
        While not Eof do begin
            lbcp5.Items.Add(fieldbyname('nome').AsString);
            Next;
        end;
        lbcp5.ItemIndex:=0;
        if not userxmaster then begin
           lbcp4.Enabled:=false;
           lbcp5.Enabled:=false;
        end;
     end;
     loadx.Progressloading.position:=30;
     if userxmaster then begin
     DBGrid2.DataSource:=dm.source_sql4;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='descricao';
     DBGrid2.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='mdl';
     DBGrid2.Columns.Items[2].Title.Caption:='Módulo';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='lastver';
     DBGrid2.Columns.Items[3].Title.Caption:='Versão';
     Remonta_menu(0,0);
     loadx.Progressloading.position:=40;
     With dm.ds_sql5 do begin
        CommandText:= 'SELECT DISTINCT B.codigo,B.descricao,B.mdl,B.lastver,A.obs,A.cod_web FROM '+EnDecryptString(Serverconect.vrf32,37249)+' A, '+
                               EnDecryptString(Serverconect.vrf24,37249)+' B '+
                               'WHERE B.codigo=A.cod_grp ORDER BY B.descricao';
        Open;
        Filter:='cod_web='+#39+'0'+#39;
        Filtered:=true;
     end;
     end;
     loadx.Progressloading.position:=50;
     //cidade
     With dm.executa3 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf27,37249)+' ORDER BY cidade';
        Open;
        First;
        lbcb18.Clear;
        While not Eof do begin
            lbcb18.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=60;
     loadx.Progressloading.position:=70;
     With dm.executa6 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf35,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcb6.Clear;
        While not Eof do begin
            lbcb6.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=80;
     With dm.executa7 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf36,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcb8.Clear;
        While not Eof do begin
            lbcb8.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=90;
     With dm.ds_sql do begin
        CommandText:= 'select codigo,descricao,ordem from '+EnDecryptString(Serverconect.vrf37,37249)+' order by ordem';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     atualizaComboMenu(0);
     if not axshowing then loadx.Close;
end;

procedure Tadm_usrwebsites.DBGrid1CellClick(Column: TColumn);
begin
     if not impmodule then atualiza_grade
     else impmodule:=false;
end;

procedure Tadm_usrwebsites.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade;
end;

procedure Tadm_usrwebsites.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade;
end;

procedure Tadm_usrwebsites.atualiza_grade;
begin
     if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
     end else begin
         with dm.ds_sql3 do begin
            if lbcp1.Text=fieldbyname('codigo').AsString then exit;
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('cod_web').AsString;
            lbcp4.Text:= fieldbyname('cod_ent').AsString;
            lbcp6.Text:= fieldbyname('usuario').AsString;
            lbcp7.Text:= '';
            lbcp8.Text:= '';
            Case fieldbyname('stat').AsInteger of
                1: lbcp_rb1.Checked:=true;
                2: lbcp_rb2.Checked:=true;
                3: lbcp_rb3.Checked:=true;
            end;
            chk_master.Checked:=StrToBool(fieldbyname('xconf').AsString);
            lbcp_dtcad.Caption:= fieldbyname('dt_cad').AsString;
         end;
         if userxmaster then
            TabSheet2.TabVisible:=true;
         ComboBox_menu.ItemIndex:=0;
     end;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     atualiza_colaborador;
     atualiza_modulos;
end;

procedure Tadm_usrwebsites.atualiza_modulos;
begin
     if (lbcp1.Text='novo') or (lbcp1.Text='') then Remonta_menu(0,0)
     else Remonta_menu(StrtoInt(lbcp1.Text),0);
end;

procedure Tadm_usrwebsites.atualiza_colaborador;
begin
     if dm.executa8.Locate('codigo',lbcp4.Text,[]) then begin
        With dm.executa8 do begin
            lbcb1.Text:= fieldbyname('codigo').AsString;
            lbcb2.Text:= fieldbyname('nome').AsString;
            lbcb5.Text:= fieldbyname('cod_set').AsString;
            lbcb7.Text:= fieldbyname('cod_fc').AsString;
            lbcb9.Text:= fieldbyname('email').AsString;
            lbcb10.Date:= fieldbyname('dtnasc').AsDateTime;
            lbcb11.Text:= fieldbyname('telefone1').AsString;
            lbcb12.Text:= fieldbyname('telefone2').AsString;
            lbcb13.Text:= fieldbyname('fax').AsString;
            lbcb14.Text:= fieldbyname('celular').AsString;
            lbcb15.Text:= fieldbyname('endereco').AsString;
            lbcb16.Text:= fieldbyname('numero').AsString;
            lbcb17.Text:= fieldbyname('complemento').AsString;
            if dm.executa3.Locate('codigo',fieldbyname('cod_cidade').AsString,[]) then begin
               lbcb18.Text:=dm.executa3.fieldbyname('cidade').AsString;
               lbcb19.Text:=dm.executa3.fieldbyname('uf').AsString;
            end else begin
               lbcb18.Text:='';
               lbcb19.Text:='';
            end;
            lbcb20.Text:= fieldbyname('cep').AsString;
            lbcb21.Lines.Assign(fieldbyname('obs'));
        end;
     end else addreg2;
     Remonta_mod(xcodent);
     getLogo;
end;

procedure Tadm_usrwebsites.getLogo;
begin
     xlogotmp.Clear;
     With dm.executa do begin
        CommandText:='SELECT codigo,foto FROM '+EnDecryptString(Serverconect.vrf34,37249)+'_ax WHERE codigo='+#39+lbcb1.Text+#39;
        Open;
        if not fields[1].IsNull then begin
           TBlobField(FieldByName('foto')).SaveToStream(xlogotmp);
        end;
        Close;
     end;
     abretmplogo;
end;

procedure Tadm_usrwebsites.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp.Seek(0,soFromBeginning);
    if xlogotmp.Size <= 0 then begin
       swf_logo.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmplog.tmp';
    erro:= true;
    //Try
    //  Image_logo.Picture.Assign(nil);
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
   //Except End;
    try
        xlogotmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo.Visible:=true;
            swf_logo.LoadMovie(0,'lixo');
            swf_logo.LoadMovie(0,ax_filenm);
            //swf_logo.Movie:= ax_filenm;
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo.Visible:=false;
        xlogotmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tadm_usrwebsites.addreg;
begin
     if userxmaster then
        dm.ds_sql5.Filter:='cod_web='+#39+'0'+#39;
     lbcp1.Text:='novo';
     if lbcp3.Enabled then
        lbcp3.ItemIndex:=0;
     lbcp4.Text:= '0';
     lbcp5.Text:= '';
     lbcp6.Text:= '';
     lbcp7.Text:= '';
     lbcp8.Text:= '';
     lbcp_rb1.Checked:=true;
     chk_master.Checked:=false;
     lbcp_dtcad.Caption:= DateToStr(Now)+' '+TimeToStr(Now);
     PageControl2.TabIndex:=0;
     if userxmaster then
        TabSheet2.TabVisible:=false;
     atualiza_colaborador;
end;

procedure Tadm_usrwebsites.addreg2;
begin
     lbcb1.Text:='novo';
     lbcb2.Text:= '';
     lbcb5.Text:= '0';
     lbcb7.Text:= '0';
     lbcb9.Text:= '';
     lbcb10.Date:=Now;
     lbcb11.Text:= '';
     lbcb12.Text:= '';
     lbcb13.Text:= '';
     lbcb14.Text:= '';
     lbcb15.Text:= '';
     lbcb16.Text:= '0';
     lbcb17.Text:= '';
     lbcb18.Text:= '';
     lbcb20.Text:= '0';
     lbcb21.Clear;
     getLogo;
end;

{procedure Tadm_usrwebsites.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;
end;}

procedure Tadm_usrwebsites.FormResize(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_usrwebsites.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp5.SetFocus;
end;

procedure Tadm_usrwebsites.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf19,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_usrwebsites.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if not dm.executa4.Locate('codigo',lbcp2.Text,[]) then begin
        hwsf.BtMensagem('É necessário selecionar um website.');
        lbcp2.SelectAll;
        lbcp2.SetFocus;
        exit;
     end;
     if not dm.executa8.Locate('codigo',lbcp4.Text,[]) then begin
        hwsf.BtMensagem('É necessário selecionar um colaborador.');
        lbcp4.SelectAll;
        lbcp4.SetFocus;
        exit;
     end;
     if Length(lbcp6.Text) < 6 then begin
        hwsf.BtMensagem('O nome do usuário tem que ser maior ou igual a 6 digitos.');
        lbcp6.SelectAll;
        lbcp6.SetFocus;
        exit;
     end;
     if lbcp7.Text<>'' then begin
        if Length(lbcp7.Text) < 6 then begin
           hwsf.BtMensagem('O senha do usuário tem que ser maior ou igual a 6 digitos.');
           lbcp7.SelectAll;
           lbcp7.SetFocus;
           exit;
        end;
        if lbcp7.Text <> lbcp8.Text then begin
           hwsf.BtMensagem('As senhas digitadas não são iguais.');
           lbcp8.SelectAll;
           lbcp8.SetFocus;
           exit;
        end;
     end;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf19,37249),'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf19,37249)+' (codigo,cod_web,cod_ent,usuario,password,stat,dt_cad,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',:p6)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrToInt(lbcp2.Text);
            Params[2].AsInteger:=StrToInt(lbcp4.Text);
            Params[3].AsString:=lbcp6.Text;
            Params[4].AsString:=MD5Hash(lbcp7.Text);       
            if (lbcp_rb1.Checked) then Params[5].AsInteger:= 1
            else if (lbcp_rb2.Checked) then Params[5].AsInteger:= 2
            else Params[5].AsInteger:= 3;
            Params[6].AsString:=BoolToStr(chk_master.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            if lbcp7.Text<>'' then
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf19,37249)+' SET cod_web=:p0,cod_ent=:p1,usuario=:p2,password=:p3,stat=:p4,xconf=:p5 '+
                             'WHERE codigo=:p6'
            else
               CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf19,37249)+' SET cod_web=:p0,cod_ent=:p1,usuario=:p2,stat=:p3,xconf=:p4 '+
                             'WHERE codigo=:p5';
            Params[0].AsInteger:=StrToInt(lbcp2.Text);
            Params[1].AsInteger:=StrToInt(lbcp4.Text);
            Params[2].AsString:=lbcp6.Text;
            if lbcp7.Text<>'' then begin
               Params[3].AsString:=MD5Hash(lbcp7.Text);
               if (lbcp_rb1.Checked) then Params[4].AsInteger:= 1
               else if (lbcp_rb2.Checked) then Params[4].AsInteger:= 2
               else Params[4].AsInteger:= 3;
               Params[5].AsString:=BoolToStr(chk_master.Checked);
               Params[6].AsInteger:=axcod;
            end else begin
               if (lbcp_rb1.Checked) then Params[3].AsInteger:= 1
               else if (lbcp_rb2.Checked) then Params[3].AsInteger:= 2
               else Params[3].AsInteger:= 3;
               Params[4].AsString:=BoolToStr(chk_master.Checked);
               Params[5].AsInteger:=axcod;
            end;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_usrwebsites.lbcp3Change(Sender: TObject);
begin
     if dm.executa4.Locate('website',lbcp3.Text,[]) then begin
        lbcp2.Text:=dm.executa4.fieldbyname('codigo').AsString;
     end else lbcp2.Text:='';
     atualiza_modulos;
end;

procedure Tadm_usrwebsites.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    if dm.executa8.Locate('nome',lbcp5.Text,[]) then begin
       lbcp4.Text:=dm.executa8.fieldbyname('codigo').AsString;
    end else lbcp4.Text:='';
    atualiza_grade;
end;

procedure Tadm_usrwebsites.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    if dm.executa8.Locate('nome',lbcp5.Text,[]) then begin
       lbcp4.Text:=dm.executa8.fieldbyname('codigo').AsString;
    end else lbcp4.Text:='';
    atualiza_grade;
end;

procedure Tadm_usrwebsites.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if ComboBox_search.ItemIndex=2 then begin
           if dm.executa4.Locate('website',Edit_search.Text,[]) then begin
               axsearch:=dm.executa4.fieldbyname('codigo').AsString;
               dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else if ComboBox_search.ItemIndex=3 then begin
           if dm.executa8.Locate('nome',Edit_search.Text,[]) then begin
               axsearch:=dm.executa8.fieldbyname('codigo').AsString;
               dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else begin
           if tp_search[ComboBox_search.ItemIndex]=1 then
              dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
           else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        end;
     end;
end;

procedure Tadm_usrwebsites.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_usrwebsites.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        Case ComboBox_search.ItemIndex of
            2: begin
               Edit_search.Items:= lbcp3.Items;
               Edit_search.ItemIndex:= lbcp3.ItemIndex;
            end;
            3: begin
               Edit_search.Items:= lbcp5.Items;
               Edit_search.ItemIndex:= lbcp5.ItemIndex;
            end;
        end;
        filtrar_reg;
     end;
end;

procedure Tadm_usrwebsites.lbcp2KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcp2Change(Sender: TObject);
begin
     if lbcp2.Text <> '' then
     if dm.executa4.Locate('codigo',lbcp2.Text,[]) then begin
        lbcp3.Text:=dm.executa4.fieldbyname('website').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_usrwebsites.marcarmodulo(marcar: boolean; axcod: integer);
begin
     if mod_combo.Items.Count < 1 then exit;
     if marcar then begin
        With dm.executa do begin
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf33,37249),'codigo','');
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf33,37249)+' (codigo,cod_usr,cod_grp,cod_menu,ordem) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            if dm.ds_sql5.Locate('descricao',mod_combo.Text,[]) then
               Params[2].AsInteger:=dm.ds_sql5.FieldByName('codigo').AsInteger;
            Params[3].AsInteger:=xcodmenu;
            Params[4].AsInteger:=GetMaxorder;
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
        end;
     end else begin
        dm.deleta_reg(EnDecryptString(Serverconect.vrf33,37249),'codigo',InttoStr(axcod),false);
     end;
     dm.ds_sql4.Close;
     dm.ds_sql4.Open;
     atualiza_itens;
end;

procedure Tadm_usrwebsites.bt_prior3Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
end;

procedure Tadm_usrwebsites.bt_next3Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
end;

procedure Tadm_usrwebsites.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_usrwebsites.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_usrwebsites.lbcp4KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcb3KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcb5KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcb7KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcb16KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.lbcb20KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_usrwebsites.bt_buscacepClick(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tadm_usrwebsites.lbcb18Change(Sender: TObject);
begin
     if dm.executa3.Locate('cidade',lbcb18.Text,[]) then begin
        lbcb19.Text:=dm.executa3.fieldbyname('uf').AsString;
     end;
end;

procedure Tadm_usrwebsites.lbcb5Change(Sender: TObject);
begin
     if lbcb5.Text <> '' then
     if dm.executa6.Locate('codigo',lbcb5.Text,[]) then begin
        lbcb6.Text:=dm.executa6.fieldbyname('descricao').AsString;
     end else lbcb6.Text:='';
end;

procedure Tadm_usrwebsites.lbcb6Change(Sender: TObject);
begin
     if dm.executa6.Locate('descricao',lbcb6.Text,[]) then begin
        lbcb5.Text:=dm.executa6.fieldbyname('codigo').AsString;
     end else lbcb5.Text:='';
end;

procedure Tadm_usrwebsites.lbcb7Change(Sender: TObject);
begin
     if lbcb7.Text <> '' then
     if dm.executa7.Locate('codigo',lbcb7.Text,[]) then begin
        lbcb8.Text:=dm.executa7.fieldbyname('descricao').AsString;
     end else lbcb8.Text:='';
end;

procedure Tadm_usrwebsites.lbcb8Change(Sender: TObject);
begin
     if dm.executa7.Locate('descricao',lbcb8.Text,[]) then begin
        lbcb7.Text:=dm.executa7.fieldbyname('codigo').AsString;
     end else lbcb7.Text:='';
end;

procedure Tadm_usrwebsites.lbcp5Change(Sender: TObject);
begin
     if dm.executa8.Locate('nome',lbcp5.Text,[]) then begin
        lbcp4.Text:=dm.executa8.fieldbyname('codigo').AsString;
     end else lbcp4.Text:='';
     atualiza_colaborador;
end;

procedure Tadm_usrwebsites.lbcp4Change(Sender: TObject);
begin
     if lbcp4.Text <> '' then begin
       if dm.executa8.Locate('codigo',lbcp4.Text,[]) then begin
          lbcp5.Text:=dm.executa8.fieldbyname('nome').AsString;
       end else lbcp5.Text:='';
       atualiza_colaborador;
     end;
end;

procedure Tadm_usrwebsites.bt_importClick(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then begin
        try
           impmodule:=true;
           xlogotmp.Clear;
           xlogotmp.LoadFromFile(OpenPictureDialog1.FileName);
        finally
          abretmplogo;
        end;
     end;
end;

procedure Tadm_usrwebsites.bt_clearClick(Sender: TObject);
begin
     Try
       xlogotmp.Clear;
       abretmplogo;
     Except End;
end;

procedure Tadm_usrwebsites.bt_save2Click(Sender: TObject);
var axcod : integer;
    axcolab : string;
begin
     if lbcb1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf34,37249),'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf34,37249)+' (codigo,cod_ent,cod_fc,cod_set,nome,email,dtnasc,telefone1,telefone2,fax,celular,endereco,numero,complemento,cod_cidade,cep,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=xcodent;
            try
                Params[2].AsInteger:=StrToInt(lbcb7.Text);
            except
                Params[2].AsInteger:=0;
            end;
            try
                Params[3].AsInteger:=StrToInt(lbcb5.Text);
            except
                Params[3].AsInteger:=0;
            end;
            Params[4].AsString:= lbcb2.Text;
            Params[5].AsString:= lbcb9.Text;
            Params[6].AsDate:= lbcb10.Date;
            Params[7].AsString:= lbcb11.Text;
            Params[8].AsString:= lbcb12.Text;
            Params[9].AsString:= lbcb13.Text;
            Params[10].AsString:= lbcb14.Text;
            Params[11].AsString:= lbcb15.Text;
            try
                Params[12].AsInteger:=StrToInt(lbcb16.Text);
            except
                Params[12].AsInteger:=0;
            end;
            Params[13].AsString:= lbcb17.Text;
            if dm.executa3.Locate('cidade',lbcb18.Text,[]) then begin
               Params[14].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger;
            end else begin
               Params[14].AsInteger:=0;
            end;
            try
                Params[15].AsInteger:=StrtoInt(lbcb20.Text);
            except
                Params[15].AsInteger:=0;
            end;
            Params[16].Assign(lbcb21.Lines);
        end;
     end else begin
        axcod:=StrtoInt(lbcb1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf34,37249)+' SET cod_fc=:p0,cod_set=:p1,nome=:p2,email=:p3,dtnasc=:p4,telefone1=:p5,telefone2=:p6,fax=:p7,celular=:p8,endereco=:p9,numero=:p10,complemento=:p11,cod_cidade=:p12,cep=:p13,obs=:p14 '+
                       'WHERE codigo=:p15';
            try
                Params[0].AsInteger:=StrToInt(lbcb7.Text);
            except
                Params[0].AsInteger:=0;
            end;
            try
                Params[1].AsInteger:=StrToInt(lbcb5.Text);
            except
                Params[1].AsInteger:=0;
            end;
            Params[2].AsString:= lbcb2.Text;
            Params[3].AsString:= lbcb9.Text;
            Params[4].AsDate:= lbcb10.Date;
            Params[5].AsString:= lbcb11.Text;
            Params[6].AsString:= lbcb12.Text;
            Params[7].AsString:= lbcb13.Text;
            Params[8].AsString:= lbcb14.Text;
            Params[9].AsString:= lbcb15.Text;
            try
                Params[10].AsInteger:=StrToInt(lbcb16.Text);
            except
                Params[10].AsInteger:=0;
            end;
            Params[11].AsString:= lbcb17.Text;
            if dm.executa3.Locate('cidade',lbcb18.Text,[]) then begin
               Params[12].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger;
            end else begin
               Params[12].AsInteger:=0;
            end;
            try
                Params[13].AsInteger:=StrtoInt(lbcb20.Text);
            except
                Params[13].AsInteger:=0;
            end;
            Params[14].Assign(lbcb21.Lines);
            Params[15].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     //gravar logo
     if lbcb1.Text = 'novo' then begin
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf34,37249)+'_ax (codigo,foto) '+
                       'VALUES(:p0,:p1)';
            Params[0].AsInteger:=axcod;
            xlogotmp.Seek(0,soFromBeginning);
            Params[1].LoadFromStream(xlogotmp,ftblob);
        end;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf34,37249)+'_ax SET foto=:p0 '+
                       'WHERE codigo=:p1';
            xlogotmp.Seek(0,soFromBeginning);
            Params[0].LoadFromStream(xlogotmp,ftblob);
            Params[1].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     axcolab:=lbcb2.Text;
     dm.executa8.Close;
     dm.executa8.Open;
     //if lbcb1.Text = 'novo' then begin
        With dm.executa8 do begin
            First;
            lbcp5.Clear;
            While not Eof do begin
                lbcp5.Items.Add(fieldbyname('nome').AsString);
                Next;
            end;
        end;
        lbcp5.Text:=axcolab;
        lbcp4.Text:=InttoStr(axcod);
        lbcb1.Text:=InttoStr(axcod);
        PageControl1.TabIndex:=0;
     //end;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_usrwebsites.bt_new2Click(Sender: TObject);
begin
     addreg2;
     lbcb2.SetFocus;
end;

procedure Tadm_usrwebsites.bt_prior2Click(Sender: TObject);
begin
     if lbcp5.ItemIndex > 0 then begin
        lbcp5.ItemIndex:=lbcp5.ItemIndex-1;
        if dm.executa8.Locate('nome',lbcp5.Text,[]) then begin
           lbcp4.Text:=dm.executa8.fieldbyname('codigo').AsString;
        end else lbcp4.Text:='';
        atualiza_colaborador;
     end;
end;

procedure Tadm_usrwebsites.bt_next2Click(Sender: TObject);
begin
     if lbcp5.ItemIndex < lbcp5.Items.Count-1 then begin
        lbcp5.ItemIndex:=lbcp5.ItemIndex+1;
        if dm.executa8.Locate('nome',lbcp5.Text,[]) then begin
           lbcp4.Text:=dm.executa8.fieldbyname('codigo').AsString;
        end else lbcp4.Text:='';
        atualiza_colaborador;
     end;
end;

procedure Tadm_usrwebsites.bt_del2Click(Sender: TObject);
begin
    if (dm.executa8.RecordCount>0) and (lbcb1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf34,37249),'codigo',lbcb1.Text,true) then begin
           dm.executa8.Close;
           dm.executa8.Open;
           lbcp5.DeleteSelected;
           atualiza_colaborador;
        end;
    end;
end;

procedure Tadm_usrwebsites.atualizaComboMenu(idxmenu:integer);
begin
     dm.ds_sql.First;
     ComboBox_menu.Clear;
     ComboBox_menu.Items.Add('<Selecione o tópico do menu>');
     While not dm.ds_sql.Eof do begin
          ComboBox_menu.Items.Add(dm.ds_sql.fieldbyname('descricao').AsString);
          dm.ds_sql.Next;
     end;
     ComboBox_menu.ItemIndex:=0;
     if idxmenu = 0 then dm.ds_sql.First
     else dm.ds_sql.Locate('codigo',idxmenu,[]);
end;

procedure Tadm_usrwebsites.ordmenu(tipoord: byte);
var ax_ord1, ax_ord2: integer;
begin
     with dm.executa do begin
          if dm.ds_sql.RecordCount > 1 then begin
             Case tipoord of
                1: begin
                   ax_ord1:=dm.ds_sql.Fieldbyname('ordem').AsInteger;
                   ax_ord2:=ax_ord1-1;
                   if ax_ord2 = 0 then exit;
                end;
                2: begin
                   ax_ord1:=dm.ds_sql.Fieldbyname('ordem').AsInteger;
                   ax_ord2:=ax_ord1+1;
                   if ax_ord2 = dm.ds_sql.RecordCount+1 then exit;
                end;
             end;
             CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf37,37249)+' SET ordem=:p0 '+
                        'WHERE ordem=:p1';
             Params[0].AsInteger:=ax_ord1;
             Params[1].AsInteger:=ax_ord2;
             try
                Execute;
             except
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
             end;
             CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf37,37249)+' SET ordem=:p0 '+
                        'WHERE codigo=:p1';
             Params[0].AsInteger:=ax_ord2;
             Params[1].AsInteger:=dm.ds_sql.Fieldbyname('codigo').AsInteger;
             try
                Execute;
             except
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
             end;
             dm.ds_sql.Close;
             dm.ds_sql.Open;
          end;
     end;
end;

procedure Tadm_usrwebsites.ordmod(tipoord: byte);
var ax_ord1, ax_ord2, ax_cod1, ax_cod2: integer;
begin
     with dm.executa do begin
          if dm.ds_sql4.RecordCount > 1 then begin
             Case tipoord of
                1: begin
                   ax_ord1:=dm.ds_sql4.Fieldbyname('ordem').AsInteger;
                   if ax_ord1 = 1 then exit;
                   ax_ord2:=ax_ord1-1;
                   ax_cod1:=dm.ds_sql4.Fieldbyname('codigo').AsInteger;
                   dm.ds_sql4.Prior;
                   ax_cod2:=dm.ds_sql4.Fieldbyname('codigo').AsInteger;
                   dm.ds_sql4.Next;
                end;
                2: begin
                   ax_ord1:=dm.ds_sql4.Fieldbyname('ordem').AsInteger;
                   if ax_ord1 = dm.ds_sql4.RecordCount then exit;
                   ax_ord2:=ax_ord1+1;
                   ax_cod1:=dm.ds_sql4.Fieldbyname('codigo').AsInteger;
                   dm.ds_sql4.Next;
                   ax_cod2:=dm.ds_sql4.Fieldbyname('codigo').AsInteger;
                   dm.ds_sql4.Prior;
                end;
             end;

             CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33,37249)+' SET ordem=:p0 '+
                        'WHERE codigo=:p1';
             Params[0].AsInteger:=ax_ord1;
             Params[1].AsInteger:=ax_cod2;
             try
                Execute;
             except
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
             end;
             CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33,37249)+' SET ordem=:p0 '+
                        'WHERE codigo=:p1';
             Params[0].AsInteger:=ax_ord2;
             Params[1].AsInteger:=ax_cod1;
             try
                Execute;
             except
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
             end;
             dm.ds_sql4.Close;
             dm.ds_sql4.Open;
          end;
     end;
end;

procedure Tadm_usrwebsites.Remonta_menu(xcod_usr,xcod_menu: Integer);
begin
     if not userxmaster then exit;
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:='SELECT A.codigo, A.ordem, A.obs, B.descricao FROM '+EnDecryptString(Serverconect.vrf33,37249)+' A, '+
                             EnDecryptString(Serverconect.vrf24,37249)+' B '+
                             ' WHERE B.codigo=A.cod_grp '+' AND A.cod_usr='+#39+IntToStr(xcod_usr)+#39+' AND A.cod_menu='+#39+IntToStr(xcod_menu)+#39+
                             ' ORDER BY A.ordem';
        Open;
     end;
end;

function Tadm_usrwebsites.GetMaxorder_menu:Integer;
begin
     With dm.ds_sql2 do begin
        if Active then Close;
        CommandText:='SELECT MAX(ordem) from '+EnDecryptString(Serverconect.vrf37,37249);
        Open;
        If RecordCount>0 then Result:= (Fields[0].AsInteger+1)
        else Result:=1;
        Close;
     end;
end;

procedure Tadm_usrwebsites.Remonta_mod(xcod_ent: Integer);
begin
     if not userxmaster then exit;
     With dm.ds_sql5 do begin
        Filter:='cod_web='+#39+InttoStr(xcod_ent)+#39;
        mod_combo.Clear;
        First;
        While not Eof do begin
            mod_combo.Items.Add(FieldByName('descricao').AsString);
            Next;
        end;
     end;
end;

function Tadm_usrwebsites.GetMaxorder:Integer;
begin
     With dm.ds_sql2 do begin
        if Active then Close;
        CommandText:='SELECT MAX(ordem) from '+EnDecryptString(Serverconect.vrf33[0],37249)+
                             ' WHERE cod_usr='+#39+lbcp1.Text+#39+' AND cod_menu='+#39+InttoStr(xcodmenu)+#39;
        Open;
        If RecordCount>0 then Result:= (Fields[0].AsInteger+1)
        else Result:=1;
        Close;
     end;
end;

procedure Tadm_usrwebsites.ComboBox_menuChange(Sender: TObject);
begin
     if dm.ds_sql.Locate('descricao',ComboBox_menu.Text,[]) then begin
        xcodmenu:=dm.ds_sql.fieldbyname('codigo').asinteger;
        Remonta_menu(StrtoInt(lbcp1.Text),xcodmenu);
        atualiza_itens;
     end else begin
        xcodmenu:=0;
        Remonta_menu(StrtoInt(lbcp1.Text),xcodmenu);
        atualiza_itens;
     end;
end;

procedure Tadm_usrwebsites.bt_acima3Click(Sender: TObject);
begin
     if dm.ds_sql4.RecordCount > 0 then begin
        ordmod(1);
        dm.ds_sql4.Prior;
     end;
end;

procedure Tadm_usrwebsites.mod_addClick(Sender: TObject);
begin
    if mod_combo.ItemIndex < 0 then
       hwsf.BtMensagem('Selecione o módulo a ser incluído')
    else marcarmodulo(true,0);
end;

procedure Tadm_usrwebsites.mod_delClick(Sender: TObject);
begin
    if dm.ds_sql4.RecordCount > 0 then
       marcarmodulo(false,dm.ds_sql4.FieldByName('codigo').AsInteger);
end;

procedure Tadm_usrwebsites.SpeedButton2Click(Sender: TObject);
var ax_ord: Longint;
begin
     if dm.ds_sql4.RecordCount > 0 then
     if hwsf.BtConfirma('Reorganizar itens?') then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Atualizando';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        ax_ord:=1;
        Try
          With dm.ds_sql2 do begin
               CommandText:='SELECT A.codigo, A.ordem, B.descricao FROM '+EnDecryptString(Serverconect.vrf33,37249)+' A, '+
                             EnDecryptString(Serverconect.vrf24,37249)+' B '+
                             ' WHERE B.codigo=A.cod_grp '+' AND A.cod_usr='+#39+lbcp1.Text+#39+' AND A.cod_menu='+#39+InttoStr(xcodmenu)+#39+
                             ' ORDER BY B.descricao';
               Open;
               loadx.Progressloading.Max:=RecordCount;
               First;
               While not Eof do begin
                    loadx.Progressloading.position:= ax_ord;
                    dm.executa.CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf33,37249)+' SET ordem=:p0 '+
                                          'WHERE codigo=:p1';
                    dm.executa.Params[0].AsInteger:=ax_ord;
                    dm.executa.Params[1].AsInteger:=fieldbyname('codigo').AsInteger;
                    try
                        dm.executa.Execute;
                    except end;
                    Inc(ax_ord);
                    Next;
               end;
               Close;
          end;
        Except
          hwsf.BtMensagem('Ocorreu algum erro');
        End;
        loadx.Close;
        dm.ds_sql4.Close;
        dm.ds_sql4.Open;
        atualiza_itens;
     end;
end;

procedure Tadm_usrwebsites.bt_abaixo3Click(Sender: TObject);
begin
     if dm.ds_sql4.RecordCount > 0 then begin
        ordmod(2);
        dm.ds_sql4.Next;
     end;
end;

procedure Tadm_usrwebsites.atualiza_itens;
begin
      With dm.ds_sql4 do begin
           if recordCount > 0 then
              Edit_mod.text:=fieldbyname('codigo').AsString+'-'+fieldbyname('descricao').AsString
           else Edit_mod.text:='nenhum item adicionado';
      end;
end;

procedure Tadm_usrwebsites.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_itens;
end;

procedure Tadm_usrwebsites.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_itens;
end;

procedure Tadm_usrwebsites.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_itens;
end;

procedure Tadm_usrwebsites.mod_clearClick(Sender: TObject);
var countreg : integer;
begin
     if dm.ds_sql4.RecordCount = 0 then exit;
     if not hwsf.BtConfirma('Limpar todos os itens?') then exit;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Eliminando';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     With dm.ds_sql4 do begin
          loadx.Progressloading.Max:=RecordCount;
          countreg:=1;
          First;
          While not Eof do begin
              loadx.Progressloading.Position:=countreg;
              dm.deleta_reg(EnDecryptString(Serverconect.vrf33,37249),'codigo',fieldbyname('codigo').AsString,false);
              Next;
              Inc(countreg);
          end;
          Close;
          Open;
          atualiza_itens;
     end;
     loadx.Close;
     if countreg>1 then hwsf.BtMensagem('Registros eliminados com sucesso.');
end;

procedure Tadm_usrwebsites.add_colaboradorClick(Sender: TObject);
begin
      lbcp4.Text:='0';
      PageControl2.TabIndex:=1;
end;

procedure Tadm_usrwebsites.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
