{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_usrcentral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  AppEvnts, CheckLst;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_usrcentral = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    GroupBox2: TGroupBox;
    ToolBar_grid1: TToolBar;
    Label5: TLabel;
    Lb_countreg2: TLabel;
    PageControl2: TPageControl;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    btatualizar: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    ToolBar4: TToolBar;
    Panel_resize2: TPanel;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    GroupBox_cad9: TGroupBox;
    lbcp_rb1: TRadioButton;
    lbcp_rb2: TRadioButton;
    lbcp_rb3: TRadioButton;
    TabSheet1: TTabSheet;
    GroupBox_cad1: TGroupBox;
    ScrollBox1: TScrollBox;
    GroupBox_cad2: TGroupBox;                                                   
    xcpcod_class: TComboBox;
    xcodigo2: TLabeledEdit;
    Label27: TLabel;
    lbcp_dtcad2: TLabel;
    xcpw33: TCheckBox;
    GroupBox_cad3: TGroupBox;
    xcpw6: TLabeledEdit;
    xcpw7: TLabeledEdit;
    xcpw7_ax: TLabeledEdit;
    Label25: TLabel;
    Label24: TLabel;
    xcpw9: TLabeledEdit;
    GroupBox_cad5: TGroupBox;
    GroupBox_cad6: TGroupBox;
    GroupBox_cad4: TGroupBox;
    xcpw3: TLabeledEdit;
    xcpw5: TLabeledEdit;
    xcpw22: TLabeledEdit;
    xcpw23: TLabeledEdit;
    GroupBox_cad7: TGroupBox;
    xcpw24: TLabeledEdit;
    xcpw24_ax: TComboBox;
    xcpw25: TLabeledEdit;
    xcpw25_ax: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    xcpw31: TCheckBox;
    xcpw19: TLabeledEdit;
    SpeedButton8: TSpeedButton;
    Label32: TLabel;
    xcpw17: TLabeledEdit;
    xcpw16: TLabeledEdit;
    xcpw15: TLabeledEdit;
    xcpw13: TLabeledEdit;
    xcpw12: TLabeledEdit;
    xcpw11: TLabeledEdit;
    xcpw10: TLabeledEdit;
    xcpw4: TDateTimePicker;
    Label31: TLabel;
    GroupBox_cad8: TGroupBox;
    xcpw27: TMemo;
    xcpw36: TLabeledEdit;
    xcpy1: TLabeledEdit;
    xcpy5: TLabeledEdit;
    xcpy6: TLabeledEdit;
    xcpy7: TLabeledEdit;
    xcpy8: TLabeledEdit;
    xcpy3: TLabeledEdit;
    xcpy4: TLabeledEdit;
    Label2: TLabel;
    xcpy9: TComboBox;
    DBGrid4: TDBGrid;
    GroupBox11: TGroupBox;
    xcpz1: TLabeledEdit;
    xcodigo4: TLabeledEdit;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    GroupBox10: TGroupBox;
    xcpx1: TLabeledEdit;
    xcodigo3: TLabeledEdit;
    Panel_Web: TGroupBox;
    Panel_search: TGroupBox;
    ComboBox_web: TComboBox;
    Edit_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox_search: TComboBox;
    xcpw39: TComboBox;
    Label1: TLabel;
    ToolBar5: TToolBar;
    Lb_countreg4: TLabel;
    Label8: TLabel;
    xcpx_idstat1: TRadioButton;
    xcpx_idstat2: TRadioButton;
    xcpx_idstat3: TRadioButton;
    xcpx_idview: TCheckBox;
    Panel_filter: TGroupBox;
    filter_class: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    filter_rb1: TCheckBox;
    filter_rb2: TCheckBox;
    filter_rb3: TCheckBox;
    Panel_redim_Grid1: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    filter_oculto: TCheckBox;
    xcpw18_axuf: TComboBox;
    xcpw18_ax: TComboBox;
    Label11: TLabel;
    xcpw8: TEdit;
    xcpx_idadd: TCheckBox;
    Label12: TLabel;
    xcpx_permissoes: TCheckListBox;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    bt_new4: TSpeedButton;
    bt_del4: TSpeedButton;
    bt_save4: TSpeedButton;
    ToolBar3: TToolBar;
    Panel4: TPanel;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    bt_save3: TSpeedButton;
    xcpz_cat1: TRadioButton;
    xcpz_cat2: TRadioButton;
    xcpz_cat_select: TComboBox;
    GroupBox1: TGroupBox;
    filter_class2: TComboBox;
    GroupBox3: TGroupBox;
    Edit_search3: TComboBox;
    GroupBox4: TGroupBox;
    Edit_search4: TComboBox;
    xcpy2: TLabeledEdit;
    xcpx2: TLabeledEdit;
    ToolBar6: TToolBar;
    Panel3: TPanel;
    Lb_countreg3: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
    procedure xcpw24_axChange(Sender: TObject);
    procedure xcpw24Change(Sender: TObject);
    procedure xcpw25_axChange(Sender: TObject);
    procedure xcpw25Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btatualizarClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_new4Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure bt_del4Click(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure xcpcod_classChange(Sender: TObject);
    procedure filter_BtsClick(Sender: TObject);
    procedure xcpw18_axufChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure xcpz_cat_sct(Sender: TObject);
    procedure filter_class2Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure Edit_search3Change(Sender: TObject);
    procedure Edit_search4Change(Sender: TObject);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit, xinitAUX : Boolean;
    axlocatcatLast,axlocatcatLast2,axlocatareatLast: String;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    xcpcod_class_IdCod,xcpcod_class_IdStat,xcpcod_class_IdView,xcpy9_IdCod: TStringList;
    xcpcod_class_Insert: Boolean;
    procedure ResizeComponentesFrm();
    procedure atualiza_grade2;
    procedure atualiza_grade2_ADD;
    procedure atualiza_grade3;
    procedure atualiza_grade4;
    procedure addreg2;
    procedure addreg2_ADD;
    procedure addreg3;
    procedure addreg4;
    procedure filtrar_reg;
    procedure filtrar_reg3;
    procedure filtrar_reg4;
    procedure monta_table2;
    procedure atualiza_xcpw25;
    function resultID_xcpcod_class(xcpclassCod:String):Integer;
    function resultStat_xcpcod_class(xcpclassId:Integer):Boolean;
    function update_xcpcod_class():Boolean;
    function resultID_xcpy9(xcpy9Cod:String):Integer;
    function update_xcpy9():Boolean;
    procedure monta_uf(xselect:Boolean; xufdefault:string);
    procedure monta_cid(xuf,xciddefault:String);
    procedure getUFCit(xauxCodCit:Integer; var xauxUF,xauxCit:String);
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_usrcentral: Tmdl_usrcentral;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_usrcentral.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.executa3.Close;
     loadx.Progressloading.position:=50;
     dm.ds_sql5.Filter:='';
     dm.ds_sql5.Filtered:=false;
     dm.ds_sql5.Close;
     dm.ds_sql6.Close;
     dm.ds_sql7.Close;
     dm.ds_sql8.Close;
     dm.ds_sql9.Close;
     dm.ds_sql10.Close;
     dm.executa7.Close;

     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_usrcentral.FormCreate(Sender: TObject);
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
     xinitAUX:= (StrToInt(ParamStr(4)) > 1000);
     xcpcod_class_IdCod:= TStringList.Create;
     xcpcod_class_IdStat:= TStringList.Create;
     xcpcod_class_IdView:= TStringList.Create;
     xcpy9_IdCod:= TStringList.Create;
     loadx.Progressloading.position:=5;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     mdl_usrcentral.Caption := AxDadosUsr.axtitle;
     DBGrid2.DataSource:=dm.source_sql4;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Nome');
     cp_search[1]:= 'cp3';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Apelido');
     cp_search[2]:= 'cp5';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('e-mail');
     cp_search[3]:= 'cp13';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.ItemIndex:=3;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
        Panel_Web.Visible:=false;
        xcpx_idview.Visible:=false;
        bt_del2.Visible:=false;
        Panel_resize2.Width:=(Panel_resize2.Width+bt_del2.Width);
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
          //CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                ' AND A.cp5='+#39+AxDadosUsr.axparm+#39+
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
     DBGrid2.Columns.Items[1].FieldName:='cp3';
     DBGrid2.Columns.Items[1].Title.Caption:='Nome';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='cp5';
     DBGrid2.Columns.Items[2].Title.Caption:='Apelido';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='cp32';
     DBGrid2.Columns.Items[3].Title.Caption:='Status (A-Ativo/B-bloqueado/X-cancelado)';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[4].FieldName:='cp28';
     DBGrid2.Columns.Items[4].Title.Caption:='Data de cadastro';
     loadx.Progressloading.position:=20;
     if (xinitAUX) then begin
        //setores
        loadx.lbloading.Caption:='Lista de setores';        
        loadx.lbloading.Repaint;
        With dm.executa7 do begin
          CommandText:='SELECT codigo,descricao FROM '+LstTables.Table[1]+' ORDER BY descricao';
          Open;
          First;
          xcpw24_ax.Clear;
          xtotperc:= 0;
          xtotperc2:= (20 / RecordCount);
          While not Eof do begin
              Inc(xtotperc);
              loadx.Progressloading.position:=20+strtoint(formatfloat('0',xtotperc*xtotperc2));
              xcpw24_ax.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
        end;
        //funções
        loadx.lbloading.Caption:='Lista de funções';
        loadx.lbloading.Repaint;
        With dm.ds_sql5 do begin
          CommandText:='SELECT codigo,descricao FROM '+LstTables.Table[2]+' ORDER BY descricao';
          Open;
          Filtered:=true;
          Filter:= '';
          First;
          xcpw25_ax.Clear;
          xtotperc:= 0;
          xtotperc2:= (20 / RecordCount);
          While not Eof do begin
              Inc(xtotperc);
              loadx.Progressloading.position:=40+strtoint(formatfloat('0',xtotperc*xtotperc2));
              xcpw25_ax.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
        end;
     end else begin
        GroupBox_cad4.Visible:=false;
        GroupBox_cad7.Visible:=false;
     end;
     //Categorias
     DBGrid3.DataSource:=dm.source_sql6;
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='descricao';
     DBGrid3.Columns.Items[0].Title.Caption:='Categoria (Singular)';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[1].FieldName:='descricao2';
     DBGrid3.Columns.Items[1].Title.Caption:='Categoria (Plural)';
     loadx.lbloading.Caption:='Lista de Categorias';
     loadx.lbloading.Repaint;
     With dm.ds_sql6 do begin
          CommandText:='SELECT codigo,cod_class,idstat,idview,idadd,descricao,descricao2,perm0,perm1,perm2,perm3,perm4,perm5,perm6,perm7,perm8,perm9'+
                       ' FROM '+LstTables.Table[5]+'_ax'+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                       ' ORDER BY cod_class,codigo';
          Open;
          Filtered:=true;
          Filter:='';
     end;
     update_xcpcod_class();
     //Áreas de Atuação
     DBGrid4.DataSource:=dm.source_sql7;
     DBGrid4.Columns.Add;
     DBGrid4.Columns.Items[0].FieldName:='descricao';
     DBGrid4.Columns.Items[0].Title.Caption:='Descrição';
     loadx.lbloading.Caption:='Lista de Áreas de Atuação';
     loadx.lbloading.Repaint;
     With dm.ds_sql7 do begin
          CommandText:='SELECT codigo,cod_class,descricao FROM '+LstTables.Table[5]+'_az'+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                       ' ORDER BY descricao';
          Open;
          Filtered:=true;
          Filter:='';
     end;
     update_xcpy9();
     loadx.lbloading.Caption:='Concluindo...';
     loadx.lbloading.Repaint;
     monta_uf(false,'');
     monta_table2;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
{codigo
cod_web
cp1-Razão Social
cp2-Fantasia
cp3-Nome
cp4-Data de nascimento
cp5-Apelido
cp6-Usuário
cp7-Senha
cp8-Frase secreta
cp9-Dica para senha
cp10-Telefone 1
cp11-Telefone 2
cp12-Celular
cp13-e-mail
cp14-Website
cp15-Endereço
cp16-Número
cp17-Complemento
cp18-Cidade/UF
cp19-Cep
cp20-CNPJ
cp21-Inscrição Estadual
cp22-RG
cp23-CPF
cp24-Setor
cp25-Função
cp26-Área de atuação da Empresa
cp27-Dados adicionais
cp28-Data de cadastro
cp29-Data do último acesso
cp30-Data última atualização
cp31-Receber noticias
cp32-status


codigo
cod_web
cp1  Razão Social
cp2  Fantasia
cp21 Inscrição Estadual
cp20 CNPJ
cp26 Área de atuação da Empresa
cp3  Nome
cp22 RG
cp23 CPF
cp24 Setor
cp25 Função
cp4  Data de nascimento
cp5  Apelido
cp6  Usuário
cp7  Senha
cp8  Frase secreta
cp9  Dica para senha
cp10 Telefone 1
cp11 Telefone 2
cp12 Celular
cp13 e-mail
cp14 Website
cp15 Endereço
cp16 Número
cp17 Complemento
cp18 Cidade/UF
cp19 Cep
cp31 Receber noticias
cp27 Dados adicionais
cp32 status
cp28 Data de cadastro
cp29 Data do último acesso
cp30 Data última atualização


codigo,cod_web,cp1,cp2,cp21,cp20,cp26,cp3,cp22,cp23,cp24,cp25,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp12,cp13,cp14,cp15,cp16,cp17,cp18,cp19,cp31,cp27,cp32,cp28,cp29,cp30


cp1,cp2,cp21,cp20,cp26,cp3,cp22,cp23,cp24,cp25,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp12,cp13,cp14,cp15,cp16,cp17,cp18,cp19,cp31,cp27,cp32,cp30
codigo
}
end;

procedure Tmdl_usrcentral.ResizeComponentesFrm();
begin
    Edit_search.Width:= Panel_search.Width-136;
    if Panel_Web.Visible then
       ComboBox_web.Width:=Panel_Web.Width-16;
    Panel_redim_Grid1.Width:=ToolBar_grid1.Width-(Lb_countreg2.Width+Label5.Width+btatualizar.Width);
end;

procedure Tmdl_usrcentral.FormShow(Sender: TObject);
begin
    ResizeComponentesFrm();
end;

procedure Tmdl_usrcentral.FormResize(Sender: TObject);
begin
    ResizeComponentesFrm();
end;

procedure Tmdl_usrcentral.atualiza_grade2;
var ax_cod_cid: Integer;
    ax_uf_name, ax_cit_name: String;
begin
     if dm.ds_sql4.RecordCount <= 0 then begin
         addreg2;
     end else begin
         with dm.ds_sql4 do begin
            if xcodigo2.Text=fieldbyname('codigo').AsString then exit;
            xcodigo2.Text:=fieldbyname('codigo').AsString;
            xcpcod_class.ItemIndex:=resultID_xcpcod_class(fieldbyname('cod_class').AsString);
            xcpw3.Text:= fieldbyname('cp3').AsString;
            xcpw4.Date:= fieldbyname('cp4').AsDateTime;
            xcpw5.Text:= fieldbyname('cp5').AsString;
            xcpw6.Text:= fieldbyname('cp6').AsString;
            xcpw7.Text:= '';
            xcpw7_ax.Text:= '';
            xcpw8.Text:= '';
            xcpw9.Text:= '';
            xcpw10.Text:= fieldbyname('cp10').AsString;
            xcpw11.Text:= fieldbyname('cp11').AsString;
            xcpw12.Text:= fieldbyname('cp12').AsString;
            xcpw13.Text:= fieldbyname('cp13').AsString;
            xcpw15.Text:= fieldbyname('cp15').AsString;
            xcpw16.Text:= fieldbyname('cp16').AsString;
            xcpw17.Text:= fieldbyname('cp17').AsString;
            ax_cod_cid:= fieldbyname('cp18').AsInteger;
            ax_uf_name:='';
            ax_cit_name:='';
            getUFCit(ax_cod_cid,ax_uf_name,ax_cit_name);
            xcpw18_axuf.Text:=ax_uf_name;
            monta_cid(ax_uf_name,ax_cit_name);
            xcpw19.Text:= fieldbyname('cp19').AsString;
            xcpw22.Text:= fieldbyname('cp22').AsString;
            xcpw23.Text:= fieldbyname('cp23').AsString;
            xcpw24.Text:= fieldbyname('cp24').AsString;
            xcpw25.Text:= fieldbyname('cp25').AsString;
            xcpw27.Lines.Assign(fieldbyname('cp27'));
            xcpw31.Checked:= StrToBool(fieldbyname('cp31').AsString);
            if fieldbyname('cp32').AsString = 'B' then lbcp_rb2.Checked:=true
            else if fieldbyname('cp32').AsString = 'X' then lbcp_rb3.Checked:=true
            else lbcp_rb1.Checked:=true;
            xcpw33.Checked:= StrToBool(fieldbyname('cp33').AsString);
            lbcp_dtcad2.Caption:= fieldbyname('cp28').AsString;
            xcpw36.Text:= fieldbyname('cp36').AsString;
            xcpw39.ItemIndex:= fieldbyname('cp39').AsInteger;
            atualiza_grade2_ADD;
         end;
     end;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_usrcentral.atualiza_grade2_ADD;
var axcod_Cat:Integer;
    GroupBox_cad6_View:Boolean;
begin
     try
         axcod_Cat:=StrToInt(xcpcod_class_IdCod[xcpcod_class.ItemIndex]);
     except
         axcod_Cat:=-1;
         xcpcod_class.ItemIndex:=axcod_Cat;
     end;
     GroupBox_cad6_View:=(axcod_Cat>0);
     GroupBox_cad6.Visible:=GroupBox_cad6_View;
     addreg2_ADD;
     if GroupBox_cad6_View then begin
        With dm.ds_sql8 do begin
             CommandText:='SELECT codigo,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9 FROM '+LstTables.Table[5]+'_ay'+
                          ' WHERE cod_usr='+#39+xcodigo2.Text+#39;
             Open;
             xcpcod_class_Insert:=(recordcount<1);
             if not xcpcod_class_Insert then begin
                xcpy1.Text:=fieldbyname('cp1').AsString;
                xcpy2.Text:=fieldbyname('cp2').AsString;
                xcpy3.Text:=fieldbyname('cp3').AsString;
                xcpy4.Text:=fieldbyname('cp4').AsString;
                xcpy5.Text:=fieldbyname('cp5').AsString;
                xcpy6.Text:=fieldbyname('cp6').AsString;
                xcpy7.Text:=fieldbyname('cp7').AsString;
                xcpy8.Text:=fieldbyname('cp8').AsString;
                xcpy9.ItemIndex:=resultID_xcpy9(fieldbyname('cp9').AsString);
             end;
             Close;
        end;
     end;
end;

procedure Tmdl_usrcentral.atualiza_grade3;
var axidPerm: Integer;
begin
     if dm.ds_sql6.RecordCount <= 0 then begin
         addreg3;
     end else begin
         with dm.ds_sql6 do begin
            if xcodigo3.Text=fieldbyname('codigo').AsString then exit;
            xcodigo3.Text:=fieldbyname('codigo').AsString;
            xcpx1.Text:= fieldbyname('descricao').AsString;
            xcpx2.Text:= fieldbyname('descricao2').AsString;
            axlocatcatLast:= xcpx1.Text;
            axlocatcatLast2:= xcpx2.Text;
            if fieldbyname('idstat').AsString = 'B' then xcpx_idstat2.Checked:=true
            else if fieldbyname('idstat').AsString = 'X' then xcpx_idstat3.Checked:=true
            else xcpx_idstat1.Checked:=true;
            xcpx_idview.Checked:=StrToBool(fieldbyname('idview').AsString);
            //Permissões
            xcpx_idadd.Checked:=StrToBool(fieldbyname('idadd').AsString);
            for axidPerm:=0 to xcpx_permissoes.Items.Count-1 do
                xcpx_permissoes.Checked[axidPerm]:=StrToBool(fieldbyname('perm'+IntToStr(axidPerm)).AsString);
         end;
     end;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
end;

procedure Tmdl_usrcentral.atualiza_grade4;
var catselect:Boolean;
begin
     if dm.ds_sql7.RecordCount <= 0 then begin
         addreg4;
     end else begin
         with dm.ds_sql7 do begin
            if xcodigo4.Text=fieldbyname('codigo').AsString then exit;
            xcodigo4.Text:=fieldbyname('codigo').AsString;
            xcpz1.Text:= fieldbyname('descricao').AsString;
            axlocatareatLast:= xcpz1.Text;
            catselect:=(fieldbyname('cod_class').AsInteger=0);
            if (catselect) then begin
               if not xcpz_cat1.Checked then begin
                  xcpz_cat_select.ItemIndex:=-1;
                  xcpz_cat_select.Enabled:=false;
                  xcpz_cat1.Checked:=true;
               end;
            end else begin
               if not xcpz_cat2.Checked then begin
                  xcpz_cat2.Checked:=true;
                  xcpz_cat_select.Enabled:=true;
               end;
               xcpz_cat_select.ItemIndex:=resultID_xcpcod_class(fieldbyname('cod_class').AsString);
            end;
         end;
     end;
     Lb_countreg4.Caption:=Inttostr(dm.ds_sql6.RecordCount);
end;

procedure Tmdl_usrcentral.addreg2;
begin
     xcodigo2.Text:='novo';
     xcpw3.Text:= '';
     xcpw4.DateTime:=Now;
     xcpw5.Text:= '';
     xcpw6.Text:= '';
     xcpw7.Text:= '';
     xcpw7_ax.Text:= '';
     xcpw8.Text:= '';
     xcpw9.Text:= '';
     xcpw10.Text:= '';
     xcpw11.Text:= '';
     xcpw12.Text:= '';
     xcpw13.Text:= '';
     xcpw15.Text:= '';
     xcpw16.Text:= '';
     xcpw17.Text:= '';
     xcpw18_ax.Text:= '';
     xcpw18_axuf.Text:= '';
     xcpw19.Text:= '';
     xcpw22.Text:= '';
     xcpw23.Text:= '';
     xcpw24.Text:= '';
     xcpw25.Text:= '';
     xcpw27.Text:= '';
     lbcp_rb1.Checked:=true;
     xcpcod_class.ItemIndex:=-1;
     GroupBox_cad6.Visible:=false;
     addreg2_ADD;
end;

procedure Tmdl_usrcentral.addreg2_ADD;
var axidPerm: Integer;
begin
     xcpcod_class_Insert:=true;
     xcpy1.Text:='';
     xcpy2.Text:='';
     xcpy3.Text:='';
     xcpy4.Text:='';
     xcpy5.Text:='';
     xcpy6.Text:='';
     xcpy7.Text:='';
     xcpy8.Text:='';
     xcpy9.ItemIndex:=-1;
end;

procedure Tmdl_usrcentral.addreg3;
var axidPerm: Integer;
begin
     xcodigo3.Text:='novo';
     xcpx1.Text:= '';
     xcpx2.Text:= '';
     axlocatcatLast:= '';
     axlocatcatLast2:= '';
     xcpx_idstat1.Checked:=false;
     xcpx_idstat2.Checked:=false;
     xcpx_idstat3.Checked:=false;
     xcpx_idview.Checked:=false;
     xcpx_idadd.Checked:=true;
     for axidPerm:=0 to xcpx_permissoes.Items.Count-1 do
         xcpx_permissoes.Checked[axidPerm]:=(axidPerm<4);
end;

procedure Tmdl_usrcentral.addreg4;
var axidPerm: Integer;
begin
     xcodigo4.Text:='novo';
     xcpz1.Text:= '';
     axlocatareatLast:= '';
     if (filter_class2.ItemIndex>0) then begin
        if not xcpz_cat2.Checked then begin
           xcpz_cat2.Checked:=true;
           xcpz_cat_select.Enabled:=true;
           if xcpz_cat_select.Items<>xcpcod_class.Items then begin
              xcpz_cat_select.Clear;
              xcpz_cat_select.Items:=xcpcod_class.Items;
           end;
        end;
        xcpz_cat_select.ItemIndex:=(filter_class2.ItemIndex-1);
     end else if not xcpz_cat1.Checked then begin
        xcpz_cat_select.ItemIndex:=-1;
        xcpz_cat_select.Enabled:=false;
        xcpz_cat1.Checked:=true;
     end;
end;

{procedure Tmdl_usrinst.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
end;     }

procedure Tmdl_usrcentral.filtrar_reg;
var ax_filterReg,axsearch:String;
    procedure add_filterReg(exec_filterReg:Boolean;tx_filterReg,op_filterReg:String);
    begin
         if exec_filterReg then begin
            if ((ax_filterReg<>'') and (op_filterReg<>'')) then ax_filterReg:=ax_filterReg+' '+op_filterReg+' ';
            ax_filterReg:=ax_filterReg+tx_filterReg;
         end;
    end;
begin
     ax_filterReg:='';
     if (filter_rb1.Checked or filter_rb2.Checked or filter_rb3.Checked) then begin
        add_filterReg(filter_rb1.Checked,'cp32='+#39+'A'+#39,'');
        add_filterReg(filter_rb2.Checked,'cp32='+#39+'B'+#39,'OR');
        add_filterReg(filter_rb3.Checked,'cp32='+#39+'X'+#39,'OR');
     end else add_filterReg(true,'cp32='+#39+''+#39,'');
     ax_filterReg:='('+ax_filterReg+')';
     if (filter_class.ItemIndex>0) then
        add_filterReg((filter_class.ItemIndex>0),'(cod_class='+#39+xcpcod_class_IdCod[filter_class.ItemIndex-1]+#39+')','AND');
     add_filterReg(not filter_oculto.Checked,'(cp33<>'+#39+'-1'+#39+')','AND');
     axsearch:='';
     if ((ComboBox_search.ItemIndex>=0) and (Edit_search.Text<>'')) then begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           axsearch:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr('%'+Edit_search.Text+'%')
        else axsearch:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        add_filterReg(true,'('+axsearch+')','AND');
     end;
     if dm.ds_sql4.Filter<>ax_filterReg then begin
        dm.ds_sql4.Filter:=ax_filterReg;
        Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
     end;
end;

procedure Tmdl_usrcentral.filtrar_reg3;
var ax_filterReg:String;
begin
     ax_filterReg:='';
     if Edit_search3.Text<>'' then begin
        ax_filterReg:= '(descricao LIKE '+QuotedStr('%'+Edit_search3.Text+'%')+') OR (descricao2 LIKE '+QuotedStr('%'+Edit_search3.Text+'%')+')';
     end;
     if dm.ds_sql6.Filter<>ax_filterReg then begin
        dm.ds_sql6.Filter:=ax_filterReg;
        Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
     end;
end;

procedure Tmdl_usrcentral.filtrar_reg4;
var ax_filterReg:String;
    procedure add_filterReg(exec_filterReg:Boolean;tx_filterReg,op_filterReg:String);
    begin
         if exec_filterReg then begin
            if ((ax_filterReg<>'') and (op_filterReg<>'')) then ax_filterReg:=ax_filterReg+' '+op_filterReg+' ';
            ax_filterReg:=ax_filterReg+tx_filterReg;
         end;
    end;
begin
     ax_filterReg:='';
     if Edit_search4.Text<>'' then begin
        ax_filterReg:= '('+'descricao LIKE '+QuotedStr('%'+Edit_search4.Text+'%')+')';
     end;
     if (filter_class2.ItemIndex>0) then
        add_filterReg((filter_class2.ItemIndex>0),'(cod_class='+#39+xcpcod_class_IdCod[filter_class2.ItemIndex-1]+#39+')','AND');
     if dm.ds_sql7.Filter<>ax_filterReg then begin
        dm.ds_sql7.Filter:=ax_filterReg;
        Lb_countreg4.Caption:=Inttostr(dm.ds_sql7.RecordCount);
        if ((xcodigo4.Text = 'novo') and (filter_class2.ItemIndex>0)) then begin
           if not xcpz_cat2.Checked then begin
              xcpz_cat2.Checked:=true;
              xcpz_cat_select.Enabled:=true;
              if xcpz_cat_select.Items<>xcpcod_class.Items then begin
                 xcpz_cat_select.Clear;
                 xcpz_cat_select.Items:=xcpcod_class.Items;
              end;
           end;
           xcpz_cat_select.ItemIndex:=(filter_class2.ItemIndex-1);
        end;
     end;
end;

procedure Tmdl_usrcentral.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_usrcentral.Edit_searchKeyPress(Sender: TObject;
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

procedure Tmdl_usrcentral.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrcentral.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_usrcentral.atualiza_xcpw25;
begin
     with dm.ds_sql5 do begin
       First;
       xcpw25_ax.Clear;
       While not Eof do begin
           xcpw25_ax.Items.Add(fieldbyname('descricao').AsString);
           Next;
       end;
     end;
end;

procedure Tmdl_usrcentral.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table2;
             atualiza_grade2;
          end;
      end;
end;

procedure Tmdl_usrcentral.monta_table2;
begin
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cod_ent,cp3,cp4,cp5,'+
                      'cp6,cp10,cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,'+
                      'cp27,cp28,cp29,cp30,cp31,cp32,cp33,cp36,cp39,cod_class FROM '+LstTables.Table[5]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
        filtrar_reg;
     end;
     atualiza_grade2;
end;

procedure Tmdl_usrcentral.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_usrcentral.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_usrcentral.bt_new2Click(Sender: TObject);
begin
    addreg2;
    xcpw6.SetFocus;
end;

procedure Tmdl_usrcentral.bt_del2Click(Sender: TObject);
var axcod: Integer;
    axshowing: Boolean;
begin
     if hwsf.BtConfirma('Exluir Usuário '+xcpw3.Text+' ?') then begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Gravando dados...';
            loadx.Show;
            loadx.Update;
        end else begin
            loadx.lbloading.Caption:='Gravando dados...';
            loadx.lbloading.Repaint;
        end;
        loadx.Progressloading.Position:=0;
        axcod:=StrtoInt(xcodigo2.Text);
        loadx.Progressloading.Position:=50;
        with dm.executa do begin
            CommandText:='UPDATE '+LstTables.Table[5]+' SET cp32=:p0,cp33=:p1'+
                         ' WHERE codigo=:p2';
            Params[0].AsString:=BoolToStr(False);
            Params[1].AsString:='Z';
            Params[2].AsInteger:=axcod;
        end;
        try
            dm.executa.Execute;
        except
            hwsf.BtMensagem('Ocorreu um Erro ao gravar os dados.');
            exit;
        end;
        loadx.Progressloading.Position:=75;
        dm.ds_sql4.Close;
        dm.ds_sql4.Open;
        Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
        dm.ds_sql4.Locate('codigo',axcod,[]);
        loadx.Progressloading.Position:=100;
        loadx.lbloading.Caption:='Usuário removido com sucesso.';
        loadx.lbloading.Repaint;
        Application.ProcessMessages;
        loadx.Close;
        hwsf.BtMensagem('Usuário removido.');
     end;
    {if (dm.ds_sql4.RecordCount>0) and (xcodigo2.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[5],'codigo',xcodigo2.Text,true) then begin
           dm.deleta_reg(LstTables.Table[5]+'_ay','cod_usr',xcodigo2.Text,false);
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade2;
        end;
    end;}
end;

procedure Tmdl_usrcentral.bt_save2Click(Sender: TObject);
var axcod,axcod_Cat,axcod_add,axsqlid,axforid,axsqlidx1,axsqlidx2,axsqlidx3,xcpw39id,xcpy9id,ax_cod_cid: integer;
    axmntquy,axmd5pass: String;
    xexecincusr: Boolean;
    axshowing: Boolean;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.Position:=0;
     //categoria
     try
         axcod_Cat:=StrToInt(xcpcod_class_IdCod[xcpcod_class.ItemIndex]);
     except
         axcod_Cat:=-1;
         xcpcod_class.ItemIndex:=axcod_Cat;
     end;
     if (axcod_Cat<0) then begin
         loadx.Close;
         hwsf.BtMensagem('É necessário selecionar a Categoria do Usuário.');
         xcpcod_class.SetFocus;
         exit;
     end;
     loadx.Progressloading.Position:=25;
     //sexo
     xcpw39id:=xcpw39.ItemIndex;
     if (xcpw39id<0) then xcpw39id:=0;
     //area atuação _ay
     try
         xcpy9id:=StrToInt(xcpy9_IdCod[xcpy9.ItemIndex]);
     except
         xcpy9id:=0;
     end;
     if (xcpy9id<0) then xcpy9id:=0;
     //...
     if Length(xcpw6.Text) < 4 then begin
        loadx.Close;
        hwsf.BtMensagem('O nome do usuário tem que ser maior ou igual a 4 digitos.');
        xcpw6.SelectAll;
        xcpw6.SetFocus;
        exit;
     end;
     if xcodigo2.Text = 'novo' then begin
        if Length(xcpw7.Text) < 4 then begin
           loadx.Close;
           hwsf.BtMensagem('O senha do usuário tem que ser maior ou igual a 4 digitos.');
           xcpw7.SelectAll;
           xcpw7.SetFocus;
           exit;
        end;
     end else begin
        if xcpw7.Text <> '' then
        if not hwsf.BtConfirma('Tem certeza que deseja mudar a senha do usuário?') then
           xcpw7.Text:='';
     end;
     if xcpw7.Text <> '' then
     if xcpw7.Text <> xcpw7_ax.Text then begin
        loadx.Close;
        hwsf.BtMensagem('As senhas digitadas não são iguais.');
        xcpw7.SelectAll;
        xcpw7.SetFocus;
        exit;
     end;
     if xcpw3.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar o nome completo.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     if xcpw5.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar o apelido.');
        xcpw5.SelectAll;
        xcpw5.SetFocus;
        exit;
     end;
     if xcpw13.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end else if not Verifyemail(xcpw13.Text) then begin
        loadx.Close;
        hwsf.BtMensagem('Formato de ['+xcpw13.Text+'] e-mail inválido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end;
     try
        if (xcpw16.Text = '') then axsqlidx1:=0
        else axsqlidx1:=StrtoInt(xcpw16.Text);
     except
        axsqlidx1:=0;
     end;
     try
        if (xcpw24.Text = '') then axsqlidx1:=0
        else axsqlidx2:=StrtoInt(xcpw24.Text);
     except
        axsqlidx2:=0;
     end;
     try
        if (xcpw25.Text = '') then axsqlidx1:=0
        else axsqlidx3:=StrtoInt(xcpw25.Text);
     except
        axsqlidx3:=0;
     end;
     With dm.executa4 do begin
        if Active then Close;
        if xcodigo2.Text = 'novo' then begin
           axmntquy := '(cp6 = '+#39+xcpw6.Text+#39+')'+
                       ' OR (cp13 = '+#39+xcpw13.Text+#39+')'+
                       ' OR (cp5 = '+#39+xcpw5.Text+#39+')';
        end else begin
           axmntquy := '';
           if (xcpw6.Text <> dm.ds_sql4.FieldByName('cp6').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy := '(cp6 = '+#39+xcpw6.Text+#39+')';
           end;
           if (xcpw5.Text <> dm.ds_sql4.fieldbyname('cp5').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy :=  '(cp5 = '+#39+xcpw5.Text+#39+')';
           end;
           if (xcpw13.Text <> dm.ds_sql4.fieldbyname('cp13').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy :=  '(cp13 = '+#39+xcpw13.Text+#39+')';
           end;
        end;
        if axmntquy <> '' then begin
           axmntquy := '(('+axmntquy +')'+ // AND (xtp='+#39+AxDadosUsr.axparm+#39+
                                  ' AND cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+')';

          CommandText:= 'SELECT codigo,cp5,cp13 FROM '+LstTables.Table[5]+
                            ' WHERE '+ axmntquy;
          Open;
          if Fields[1].AsString <> '' then begin
             loadx.Close;
             if (Fields[2].AsString = xcpw13.Text) then begin
                 hwsf.BtMensagem('e-mail já cadastrado.');
                 xcpw13.SelectAll;
                 xcpw13.SetFocus;
             end else if (Fields[1].AsString = xcpw5.Text) then begin
                 hwsf.BtMensagem('Apelido já cadastrado.');
                 xcpw13.SelectAll;
                 xcpw13.SetFocus;
             end else begin
                 hwsf.BtMensagem('Usuário já cadastrado.');
                 xcpw6.Text := '';
                 xcpw7.Text := '';
                 xcpw6.SetFocus;
             end;
             Close;
             exit;
          end else Close;
        end;
     end;
     loadx.Progressloading.Position:=50;
     ax_cod_cid:=0;
     if dm.ds_sql10.Active then begin
        if dm.ds_sql10.Locate('cidade',xcpw18_ax.Text,[]) then
           ax_cod_cid:=dm.ds_sql10.fieldbyname('codigo').AsInteger;
     end;
     if xcodigo2.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[5],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_ent,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,'+
                          'cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,cp27,cp28,cp29,cp30,cp31,cp32,cp33,xtp,cp36,cp39,cod_class) '+
                          'VALUES(:p0,:p1,:p2,'+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
                          ':p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          ':p23,:p24,:p25,:p26,:p27,:p28,:p29)';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=AxDadosUsr.cod_web;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            Params[axsqlidADD].AsString:=xcpw6.Text;
            Params[axsqlidADD].AsString:=MD5Hash(xcpw7.Text);
            Params[axsqlidADD].AsString:=xcpw8.Text;
            Params[axsqlidADD].AsString:=xcpw9.Text;
            Params[axsqlidADD].AsString:=xcpw10.Text;
            Params[axsqlidADD].AsString:=xcpw11.Text;
            Params[axsqlidADD].AsString:=xcpw12.Text;
            Params[axsqlidADD].AsString:=xcpw13.Text;
            Params[axsqlidADD].AsString:=xcpw15.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx1;
            Params[axsqlidADD].AsString:=xcpw17.Text;
            Params[axsqlidADD].AsInteger:=ax_cod_cid;
            Params[axsqlidADD].AsString:=xcpw19.Text;
            Params[axsqlidADD].AsString:=xcpw22.Text;
            Params[axsqlidADD].AsString:=xcpw23.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx2;
            Params[axsqlidADD].AsInteger:=axsqlidx3;
            Params[axsqlidADD].Assign(xcpw27.Lines);
            Params[axsqlidADD].AsString:=BoolToStr(xcpw31.Checked);
            if (lbcp_rb1.Checked) then Params[axsqlidADD].AsString:= 'A'
            else if (lbcp_rb2.Checked) then Params[axsqlidADD].AsString:= 'B'
            else Params[axsqlidADD].AsString:= 'X';
            Params[axsqlidADD].AsString:= BoolToStr(xcpw33.Checked);
            Params[axsqlidADD].AsString:=AxDadosUsr.axparm;
            Params[axsqlidADD].AsString:=xcpw36.Text;
            Params[axsqlidADD].AsInteger:=xcpw39id;
            Params[axsqlidADD].AsInteger:=axcod_Cat;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo2.Text);
        with dm.executa do begin
            axmntquy :='UPDATE '+LstTables.Table[5]+' SET cp3=:p0,'+
            'cp4='+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
            'cp5=:p1,cp6=:p2,';
            axsqlid:=3;
            if xcpw7.Text <> '' then
              axmntquy := axmntquy+'cp7=:p'+IntToStr(axsqlidADD)+',';
            if xcpw8.Text <> '' then
              axmntquy := axmntquy+'cp8=:p'+IntToStr(axsqlidADD)+',';
            if xcpw9.Text <> '' then
              axmntquy := axmntquy+'cp9=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=10 to 13 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=15 to 19 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=22 to 25 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axforid:=27;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cp30='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',';
            for axforid:=31 to 32 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axforid:=33;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cp36=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cp39=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cod_class=:p'+IntToStr(axsqlidADD);
            axmntquy := axmntquy+' WHERE codigo=:p'+IntToStr(axsqlid);
            CommandText:= axmntquy;
            axsqlid:=0;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            Params[axsqlidADD].AsString:=xcpw6.Text;
            if xcpw7.Text <> '' then
              Params[axsqlidADD].AsString:=MD5Hash(xcpw7.Text);
            if xcpw8.Text <> '' then
              Params[axsqlidADD].AsString:=xcpw8.Text;
            if xcpw9.Text <> '' then
              Params[axsqlidADD].AsString:=xcpw9.Text;
            Params[axsqlidADD].AsString:=xcpw10.Text;
            Params[axsqlidADD].AsString:=xcpw11.Text;
            Params[axsqlidADD].AsString:=xcpw12.Text;
            Params[axsqlidADD].AsString:=xcpw13.Text;
            Params[axsqlidADD].AsString:=xcpw15.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx1;
            Params[axsqlidADD].AsString:=xcpw17.Text;
            Params[axsqlidADD].AsInteger:=ax_cod_cid;
            Params[axsqlidADD].AsString:=xcpw19.Text;
            Params[axsqlidADD].AsString:=xcpw22.Text;
            Params[axsqlidADD].AsString:=xcpw23.Text;
            Params[axsqlidADD].AsInteger:=axsqlidx2;
            Params[axsqlidADD].AsInteger:=axsqlidx3;
            Params[axsqlidADD].Assign(xcpw27.Lines);
            Params[axsqlidADD].AsString:=BoolToStr(xcpw31.Checked);
            if (lbcp_rb1.Checked) then Params[axsqlidADD].AsString:= 'A'
            else if (lbcp_rb2.Checked) then Params[axsqlidADD].AsString:= 'B'
            else Params[axsqlidADD].AsString:= 'X';
            Params[axsqlidADD].AsString:= BoolToStr(xcpw33.Checked);
            Params[axsqlidADD].AsString:=xcpw36.Text;
            Params[axsqlidADD].AsInteger:=xcpw39id;
            Params[axsqlidADD].AsInteger:=axcod_Cat;
            Params[axsqlidADD].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
          xexecincusr:=true;
     except
          loadx.Close;
          hwsf.BtMensagem('Ocorreu um Erro ao gravar os dados.');
          exit;
     end;
     loadx.Progressloading.Position:=75;
     //Dados adicionais
     if ((xexecincusr) and (axcod_Cat>0)) then begin
         with dm.executa do begin
              axsqlid:=0;
              if xcpcod_class_Insert then begin
                 axcod_add:=dm.GetCodMax(LstTables.Table[5]+'_ay','codigo','');
                 CommandText:= 'INSERT INTO '+LstTables.Table[5]+'_ay (codigo,cod_web,cod_usr,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,xtp) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12)';
                 Params[axsqlidADD].AsInteger:=axcod_add;
                 Params[axsqlidADD].AsInteger:=AxDadosUsr.cod_web;
                 Params[axsqlidADD].AsInteger:=axcod;
                 Params[axsqlidADD].AsString:=xcpy1.Text;
                 Params[axsqlidADD].AsString:=xcpy2.Text;
                 Params[axsqlidADD].AsString:=xcpy3.Text;
                 Params[axsqlidADD].AsString:=xcpy4.Text;
                 Params[axsqlidADD].AsString:=xcpy5.Text;
                 Params[axsqlidADD].AsString:=xcpy6.Text;
                 Params[axsqlidADD].AsString:=xcpy7.Text;
                 Params[axsqlidADD].AsString:=xcpy8.Text;
                 Params[axsqlidADD].AsInteger:=xcpy9id;
              end else begin
                 CommandText:= 'UPDATE '+LstTables.Table[5]+'_ay SET cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3,cp5=:p4,cp6=:p5,cp7=:p8,cp8=:p9,cp9=:p10 '+
                               'WHERE cod_usr=:p11';
                 Params[axsqlidADD].AsString:=xcpy1.Text;
                 Params[axsqlidADD].AsString:=xcpy2.Text;
                 Params[axsqlidADD].AsString:=xcpy3.Text;
                 Params[axsqlidADD].AsString:=xcpy4.Text;
                 Params[axsqlidADD].AsString:=xcpy5.Text;
                 Params[axsqlidADD].AsString:=xcpy6.Text;
                 Params[axsqlidADD].AsString:=xcpy7.Text;
                 Params[axsqlidADD].AsString:=xcpy8.Text;
                 Params[axsqlidADD].AsInteger:=xcpy9id;
                 Params[axsqlidADD].AsInteger:=axcod;
              end;
         end;
         try
             dm.executa.Execute;
         except
             hwsf.BtMensagem('Ocorreu um Erro ao gravar os dados.');
             xexecincusr:=false;
         end;
     end;
     dm.ds_sql4.Close;
     dm.ds_sql4.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
     dm.ds_sql4.Locate('codigo',axcod,[]);
     if xexecincusr then begin
        loadx.Progressloading.Position:=100;
        loadx.lbloading.Caption:='Dados gravados com sucesso.';
        loadx.lbloading.Repaint;
        Application.ProcessMessages;
        Sleep(2000);
        loadx.Close;
     end;
end;

procedure Tmdl_usrcentral.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcentral.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcentral.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcentral.xcpw24_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.executa7.Locate('descricao',xcpw24_ax.Text,[]) then begin
          xcpw24.Text:=dm.executa7.fieldbyname('codigo').AsString;
          dm.ds_sql5.Filter := 'cod_set='+#39+dm.executa7.fieldbyname('codigo').AsString+#39;
       end else begin
          xcpw24.Text:='';
          dm.ds_sql5.Filter := '';
       end;
       atualiza_xcpw25;
     end;
end;

procedure Tmdl_usrcentral.xcpw24Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcpw24.Text <> '' then
       if dm.executa7.Locate('codigo',xcpw24.Text,[]) then begin
          xcpw24_ax.Text:=dm.executa7.fieldbyname('descricao').AsString;
          dm.ds_sql5.Filter := 'cod_set='+#39+dm.executa7.fieldbyname('codigo').AsString+#39;
       end else begin
          xcpw24_ax.Text:='';
          dm.ds_sql5.Filter := '';
       end;
       atualiza_xcpw25;
     end;
end;

procedure Tmdl_usrcentral.xcpw25_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.ds_sql5.Locate('descricao',xcpw25_ax.Text,[]) then begin
         xcpw25.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
       end else xcpw5.Text:='';
     end;
end;

procedure Tmdl_usrcentral.xcpw25Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcpw25.Text <> '' then
       if dm.ds_sql5.Locate('codigo',xcpw25.Text,[]) then begin
          xcpw25_ax.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
       end else xcpw25_ax.Text:='';
     end;
end;

procedure Tmdl_usrcentral.SpeedButton8Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_usrcentral.btatualizarClick(Sender: TObject);
begin
      dm.ds_sql4.Close;
      dm.ds_sql4.Open;
      atualiza_grade2;
end;

procedure Tmdl_usrcentral.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Tmdl_usrcentral.DBGrid3CellClick(Column: TColumn);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrcentral.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrcentral.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade3;
end;

procedure Tmdl_usrcentral.DBGrid4CellClick(Column: TColumn);
begin
     atualiza_grade4;
end;

procedure Tmdl_usrcentral.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tmdl_usrcentral.DBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade4;
end;

procedure Tmdl_usrcentral.bt_new3Click(Sender: TObject);
begin
    addreg3;
    xcpx1.SetFocus;
end;

procedure Tmdl_usrcentral.bt_new4Click(Sender: TObject);
begin
    addreg4;
    xcpz1.SetFocus;
end;

function Tmdl_usrcentral.resultID_xcpcod_class(xcpclassCod:String):Integer;
var axforid,xidClass:Integer;
begin
    xidClass:=-1;
    for axforid:=0 to xcpcod_class_IdCod.Count-1 do
    if xcpcod_class_IdCod[axforid] = xcpclassCod then begin
       xidClass:=axforid;
       break;
    end;
    Result:=xidClass;
end;

function Tmdl_usrcentral.resultStat_xcpcod_class(xcpclassId:Integer):Boolean;
var xstatsetrb: String;
    axcod_Cat:Integer;
begin
    try
        axcod_Cat:=StrToInt(xcpcod_class_IdCod[xcpclassId]);
    except
        axcod_Cat:=-1;
    end;
    xstatsetrb:=xcpcod_class_IdStat[xcpclassId];
    if xstatsetrb = 'B' then lbcp_rb2.Checked:=true
    else if xstatsetrb = 'X' then lbcp_rb3.Checked:=true
    else lbcp_rb1.Checked:=true;
    xcpw33.Checked:=StrToBool(xcpcod_class_IdView[xcpclassId]);
    GroupBox_cad6.Visible:=(axcod_Cat>0);
    Result:=True;
end;

function Tmdl_usrcentral.update_xcpcod_class():Boolean;
var ax_filterapp: TStringList;
    ax_filterExec: Boolean;
begin
    With dm.ds_sql6 do begin
         ax_filterapp:=TStringList.Create;
         ax_filterapp.Clear;
         xcpcod_class.Clear;
         xcpcod_class_IdCod.Clear;
         xcpcod_class_IdStat.Clear;
         xcpcod_class_IdView.Clear;
         ax_filterapp.Add('Exibir Todos');
         ax_filterapp.Add('Visitantes');
         xcpcod_class.Items.Add('Visitante');
         xcpcod_class_IdCod.Add('0');
         xcpcod_class_IdStat.Add('A');
         xcpcod_class_IdView.Add('0');
         First;
         While not Eof do begin
             ax_filterapp.Add(fieldbyname('descricao2').AsString);
             xcpcod_class.Items.Add(fieldbyname('descricao').AsString);
             xcpcod_class_IdCod.Add(fieldbyname('codigo').AsString);
             xcpcod_class_IdStat.Add(fieldbyname('idstat').AsString);
             xcpcod_class_IdView.Add(fieldbyname('idview').AsString);
             Next;
         end;
         if ax_filterapp<>filter_class.Items then begin
            ax_filterExec:= (filter_class.ItemIndex>0);
            filter_class.Clear;
            filter_class.Items:=ax_filterapp;
            filter_class.ItemIndex:=0;
            filter_class2.Clear;
            filter_class2.Items:=ax_filterapp;
            filter_class2.ItemIndex:=0;
            if ax_filterExec then filtrar_reg;
         end;
         ax_filterapp.Free;
    end;
    Result:=true;
end;

function Tmdl_usrcentral.resultID_xcpy9(xcpy9Cod:String):Integer;
var axforid,xidxcpy9:Integer;
begin
    xidxcpy9:=-1;
    for axforid:=0 to xcpy9_IdCod.Count-1 do
    if xcpy9_IdCod[axforid] = xcpy9Cod then begin
       xidxcpy9:=axforid;
       break;
    end;
    Result:=xidxcpy9;
end;

function Tmdl_usrcentral.update_xcpy9():Boolean;
begin
    With dm.ds_sql7 do begin
         First;
         xcpy9.Clear;
         xcpy9_IdCod.Clear;
         While not Eof do begin
             xcpy9.Items.Add(fieldbyname('descricao').AsString);
             xcpy9_IdCod.Add(fieldbyname('codigo').AsString);
             Next;
         end;
    end;
    Result:=true;
end;

procedure Tmdl_usrcentral.bt_del3Click(Sender: TObject);
var axcodelid: Integer;
begin
    if (dm.ds_sql6.RecordCount>0) and (xcodigo3.Text<>'novo') then begin
        axcodelid:=dm.ds_sql6.fieldbyname('codigo').AsInteger;
        With dm.ds_sql8 do begin
             CommandText:='SELECT codigo FROM '+LstTables.Table[5]+
                          ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                          ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                          ' AND cod_class='+#39+IntToStr(axcodelid);
             Open;
             if recordcount>0 then begin
                hwsf.BtMensagem('Não é possível excluir a Categoria, pois existem Usuários utilizando.');
                Close;
                exit;
             end;
             Close;
             CommandText:='SELECT codigo FROM '+LstTables.Table[5]+'_az'+
                          ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                          ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                          ' AND cod_class='+#39+IntToStr(axcodelid);
             Open;
             if recordcount>0 then begin
                hwsf.BtMensagem('Não é possível excluir a Categoria, pois existem Áreas de Atuações utilizando.');
                Close;
                exit;
             end;
             Close;
        end;
        if dm.deleta_reg(LstTables.Table[5]+'_ax','codigo',xcodigo3.Text,true) then begin
           dm.ds_sql6.Close;
           dm.ds_sql6.Open;
           update_xcpcod_class();
           atualiza_grade3;
        end;
    end;
end;

procedure Tmdl_usrcentral.bt_del4Click(Sender: TObject);
var axcodelid: Integer;
begin
    if (dm.ds_sql7.RecordCount>0) and (xcodigo4.Text<>'novo') then begin
        axcodelid:=dm.ds_sql7.fieldbyname('codigo').AsInteger;
        With dm.ds_sql8 do begin
             CommandText:='SELECT codigo,cp9 FROM '+LstTables.Table[5]+'_ay'+
                          ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                          ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                          ' AND cp9='+#39+IntToStr(axcodelid);
             Open;
             if recordcount>0 then begin
                hwsf.BtMensagem('Não é possível excluir a Área de Atuação, pois existem vínculos.');
                Close;
                exit;
             end else Close;
        end;
        if dm.deleta_reg(LstTables.Table[5]+'_az','codigo',xcodigo4.Text,true) then begin
           dm.ds_sql7.Close;
           dm.ds_sql7.Open;
           update_xcpy9();
           atualiza_grade4;
        end;
    end;
end;

procedure Tmdl_usrcentral.bt_save3Click(Sender: TObject);
var axcod,axcod_class: integer;
    xcpx_idstatSet,axlocatcat: String;
    axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.Position:=0;
     if xcpx1.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar o nome da Categoria no Singular.');
        xcpx1.SelectAll;
        xcpx1.SetFocus;
        exit;
     end;
      if xcpx2.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar o nome da Categoria no Plural.');
        xcpx2.SelectAll;
        xcpx2.SetFocus;
        exit;
     end;
     loadx.Progressloading.Position:=25;
     xcpx_idstatSet:= '';
     if (xcpx_idstat1.Checked) then xcpx_idstatSet:= 'A'
     else if (xcpx_idstat2.Checked) then xcpx_idstatSet:= 'B'
     else if (xcpx_idstat3.Checked) then xcpx_idstatSet:= 'X';
     if xcpx_idstatSet='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário selecionar o status inicial para novos cadastros.');
        xcpx_idstat1.SetFocus;
        exit;
     end;
     if xcodigo3.Text = 'novo' then axlocatcat:=''
     else axlocatcat:= ' AND ((descricao<>'+#39+axlocatcatLast+#39+') AND (descricao2<>'+#39+axlocatcatLast2+#39+'))';
     With dm.ds_sql8 do begin
          CommandText:='SELECT codigo,descricao,descricao2 FROM '+LstTables.Table[5]+'_ax'+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                       ' AND (descricao LIKE '+QuotedStr('%'+xcpx1.Text+'%')+')'+
                       ' AND (descricao2 LIKE '+QuotedStr('%'+xcpx2.Text+'%')+')'+
                       axlocatcat;
          Open;
          if recordcount>0 then begin
             loadx.Close;
             Close;
             hwsf.BtMensagem('Categoria já cadastrada, utilize outro nome.');
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.Position:=50;
     if xcodigo3.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[5]+'_ax','codigo','');
        axcod_class:=axcod;
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[5]+'_ax (codigo,cod_web,cod_class,idstat,idview,idadd,descricao,descricao2,perm0,perm1,perm2,perm3,perm4,perm5,perm6,perm7,perm8,perm9,xtp) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=AxDadosUsr.cod_web;  
            Params[2].AsInteger:=axcod_class;
            Params[3].AsString:=xcpx_idstatSet;
            Params[4].AsString:=BoolToStr(xcpx_idview.Checked);
            Params[5].AsString:=BoolToStr(xcpx_idadd.Checked);
            Params[6].AsString:=xcpx1.Text;
            Params[7].AsString:=xcpx2.Text;
            Params[8].AsString:=BoolToStr(xcpx_permissoes.Checked[0]);
            Params[9].AsString:=BoolToStr(xcpx_permissoes.Checked[1]);
            Params[10].AsString:=BoolToStr(xcpx_permissoes.Checked[2]);
            Params[11].AsString:=BoolToStr(xcpx_permissoes.Checked[3]);
            Params[12].AsString:=BoolToStr(xcpx_permissoes.Checked[4]);
            Params[13].AsString:=BoolToStr(xcpx_permissoes.Checked[5]);
            Params[14].AsString:=BoolToStr(xcpx_permissoes.Checked[6]);
            Params[15].AsString:=BoolToStr(xcpx_permissoes.Checked[7]);
            Params[16].AsString:=BoolToStr(xcpx_permissoes.Checked[8]);
            Params[17].AsString:=BoolToStr(xcpx_permissoes.Checked[9]);
            Params[18].AsString:=AxDadosUsr.axparm;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo3.Text);
        with dm.executa do begin
            CommandText :='UPDATE '+LstTables.Table[5]+'_ax SET descricao=:p0,descricao2=:p1,idstat=:p2,idview=:p3,idadd=:p4,perm0=:p5,perm1=:p6,perm2=:p7,perm3=:p8,perm4=:p9,perm5=:p10,perm6=:p11,perm7=:p12,perm8=:p13,perm9=:p14'+
                          ' WHERE codigo=:p15';
            Params[0].AsString:=xcpx1.Text;
            Params[1].AsString:=xcpx2.Text;
            Params[2].AsString:=xcpx_idstatSet;
            Params[3].AsString:=BoolToStr(xcpx_idview.Checked);
            Params[4].AsString:=BoolToStr(xcpx_idadd.Checked);
            Params[5].AsString:=BoolToStr(xcpx_permissoes.Checked[0]);
            Params[6].AsString:=BoolToStr(xcpx_permissoes.Checked[1]);
            Params[7].AsString:=BoolToStr(xcpx_permissoes.Checked[2]);
            Params[8].AsString:=BoolToStr(xcpx_permissoes.Checked[3]);
            Params[9].AsString:=BoolToStr(xcpx_permissoes.Checked[4]);
            Params[10].AsString:=BoolToStr(xcpx_permissoes.Checked[5]);
            Params[11].AsString:=BoolToStr(xcpx_permissoes.Checked[6]);
            Params[12].AsString:=BoolToStr(xcpx_permissoes.Checked[7]);
            Params[13].AsString:=BoolToStr(xcpx_permissoes.Checked[8]);
            Params[14].AsString:=BoolToStr(xcpx_permissoes.Checked[9]);
            Params[15].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          loadx.Close;
          hwsf.BtMensagem('Erro ao atualizar Categoria.');
          exit;
     end;
     loadx.Progressloading.Position:=75;
     DBGrid3.Enabled:=false;
     dm.ds_sql6.Close;
     dm.ds_sql6.Open;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
     update_xcpcod_class();
     dm.ds_sql6.Locate('codigo',axcod,[]);
     DBGrid3.Enabled:=true;
     loadx.Progressloading.Position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Application.ProcessMessages;
     Sleep(2000);
     loadx.Close;
end;

procedure Tmdl_usrcentral.bt_save4Click(Sender: TObject);
var axcod,axcod_class: integer;
    axAreatt: String;
    axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Gravando dados...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.Position:=0;
     if xcpz1.Text='' then begin
        loadx.Close;
        hwsf.BtMensagem('É necessário digitar a Descrição.');
        xcpz1.SelectAll;
        xcpz1.SetFocus;
        exit;
     end;
     axcod_class:=0;
     if xcpz_cat2.Checked then begin
        if xcpz_cat_select.ItemIndex<0 then begin
           loadx.Close;
           hwsf.BtMensagem('É necessário Selecionar a Categoria.');
           xcpz_cat_select.SetFocus;
           exit;
        end;
        axcod_class:=StrToInt(xcpcod_class_IdCod[xcpz_cat_select.ItemIndex]);
     end;
     loadx.Progressloading.Position:=25;
     if xcodigo4.Text = 'novo' then axAreatt:=''
     else axAreatt:= ' AND descricao<>'+#39+axlocatareatLast+#39;
     With dm.ds_sql8 do begin
          CommandText:='SELECT codigo,descricao FROM '+LstTables.Table[5]+'_az'+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                       ' AND descricao LIKE '+QuotedStr('%'+xcpz1.Text+'%')+
                       axAreatt;
          Open;
          if recordcount>0 then begin
             Close;
             loadx.Close;
             hwsf.BtMensagem('Categoria já cadastrada, utilize outra descrição.');
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.Position:=50;
     if xcodigo4.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[5]+'_az','codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[5]+'_az (codigo,cod_web,cod_class,descricao,xtp) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=AxDadosUsr.cod_web;
            Params[2].AsInteger:=axcod_class;
            Params[3].AsString:=xcpz1.Text;
            Params[4].AsString:=AxDadosUsr.axparm;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo4.Text);
        with dm.executa do begin
            CommandText :='UPDATE '+LstTables.Table[5]+'_az SET cod_class=:p0,descricao=:p1'+
                          ' WHERE codigo=:p2';
            Params[0].AsInteger:=axcod_class;
            Params[1].AsString:=xcpz1.Text;
            Params[2].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          loadx.Close;
          hwsf.BtMensagem('Ocorreu um Erro ao gravar os dados.');
          exit;
     end;
     loadx.Progressloading.Position:=75;
     DBGrid4.Enabled:=false;
     dm.ds_sql7.Close;
     dm.ds_sql7.Open;
     Lb_countreg4.Caption:=Inttostr(dm.ds_sql7.RecordCount);
     update_xcpy9();
     dm.ds_sql7.Locate('codigo',axcod,[]);
     DBGrid4.Enabled:=true;
     loadx.Progressloading.Position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Application.ProcessMessages;
     Sleep(2000);
     loadx.Close;
end;

procedure Tmdl_usrcentral.xcpcod_classChange(Sender: TObject);
begin
     resultStat_xcpcod_class(xcpcod_class.ItemIndex);
end;

procedure Tmdl_usrcentral.filter_BtsClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrcentral.monta_uf(xselect:Boolean; xufdefault:string);
var ix_xufdefault,ix_xufcount:Integer;
begin
    With dm.ds_sql9 do begin
        if Active then Close;
        CommandText:='SELECT uf FROM '+LstTables.Table[6]+
        ' ORDER BY uf';
        Open;
        First;
        ix_xufdefault:=0;
        ix_xufcount:=0;
        xcpw18_axuf.Clear;
        While not Eof do begin
            if (xufdefault = fieldbyname('uf').AsString) then begin
               ix_xufdefault:=ix_xufcount;
            end;
            xcpw18_axuf.Items.Add(fieldbyname('uf').AsString);
            Inc(ix_xufcount);
            Next;
        end;
     end;
     xcpw18_axuf.ItemIndex:=ix_xufdefault;
     if xselect then monta_cid(xcpw18_axuf.text,'')
     else begin
        xcpw18_axuf.text:='';
        xcpw18_ax.Clear;
        xcpw18_ax.text:='';
     end;
end;

procedure Tmdl_usrcentral.monta_cid(xuf,xciddefault:String);
var ix_xciddefault,ix_xcidcount: Integer;
begin
     With dm.ds_sql10 do begin
        if Active then Close;
        CommandText:='SELECT codigo,cidade FROM '+LstTables.Table[3]+
        ' Where uf='+#39+xuf+#39+
        ' ORDER BY cidade';
        Open;
        First;
        ix_xciddefault:=0;
        ix_xcidcount:=0;
        xcpw18_ax.Clear;
        While not Eof do begin
            if (xciddefault = fieldbyname('cidade').AsString) then begin
               ix_xciddefault:=ix_xcidcount;
            end;
            xcpw18_ax.Items.Add(fieldbyname('cidade').AsString);
            Inc(ix_xcidcount);
            Next;
        end;
     end;
     if (xciddefault<>'') and (ix_xciddefault = 0) then
        xcpw18_ax.Text:=xciddefault
     else xcpw18_ax.ItemIndex:=ix_xciddefault;
end;

procedure Tmdl_usrcentral.getUFCit(xauxCodCit:Integer; var xauxUF,xauxCit:String);
begin
     With dm.ds_sql8 do begin
          CommandText:='SELECT codigo,cidade,uf FROM '+LstTables.Table[3]+
                       ' Where codigo='+#39+IntToStr(xauxCodCit)+#39;
          Open;
          if recordcount>0 then begin
             xauxUF:=fieldbyname('uf').AsString;
             xauxCit:=fieldbyname('cidade').AsString;
          end;
          Close;
     end;
end;

procedure Tmdl_usrcentral.xcpw18_axufChange(Sender: TObject);
begin
     monta_cid(xcpw18_axuf.text,'');
end;

procedure Tmdl_usrcentral.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if dm.ds_sql4.RecordCount>0 then begin
      if dm.ds_sql4.fieldbyname('cp32').AsString = 'B' then begin
         DBGrid2.Canvas.Brush.Color := clRed;
         DBGrid2.Canvas.Font.Color:= clYellow;
      end else if dm.ds_sql4.fieldbyname('cp32').AsString = 'X' then begin
         DBGrid2.Canvas.Brush.Color := clGray;
         DBGrid2.Canvas.Font.Color:= clBlack;
      end else if StrToBool(dm.ds_sql4.fieldbyname('cp33').AsString) then begin
         DBGrid2.Canvas.Brush.Color := clGreen;
         DBGrid2.Canvas.Font.Color:= clWhite;
      end;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure Tmdl_usrcentral.xcpz_cat_sct(Sender: TObject);
begin
      if xcpz_cat1.Checked then begin
         xcpz_cat_select.ItemIndex:=-1;
         xcpz_cat_select.Enabled:=false;
      end else begin
         xcpz_cat_select.Enabled:=true;
         if xcpz_cat_select.Items<>xcpcod_class.Items then begin
            xcpz_cat_select.Clear;
            xcpz_cat_select.Items:=xcpcod_class.Items;
         end;
         if ((xcodigo4.Text = 'novo') and (filter_class2.ItemIndex>0)) then
            xcpz_cat_select.ItemIndex:=(filter_class2.ItemIndex-1);
      end;
end;

procedure Tmdl_usrcentral.filter_class2Click(Sender: TObject);
begin
     filtrar_reg4;
end;

procedure Tmdl_usrcentral.PageControl2Change(Sender: TObject);
begin
     if ((PageControl2.TabIndex<2) and (filter_class2.ItemIndex>=0)) then begin
        filter_class2.ItemIndex:=-1;
        dm.ds_sql7.Filter:='';
     end else if ((PageControl2.TabIndex<1) or (PageControl2.TabIndex>1)) then begin
        dm.ds_sql6.Filter:='';
     end;
     Case PageControl2.TabIndex of
        0:atualiza_grade2;
        1:atualiza_grade3;
        2:atualiza_grade4;
     End;
end;

procedure Tmdl_usrcentral.Edit_search3Change(Sender: TObject);
begin
     filtrar_reg3;
end;

procedure Tmdl_usrcentral.Edit_search4Change(Sender: TObject);
begin
     filtrar_reg4;
end;

end.
