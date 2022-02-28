{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_usrinst;

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
  Tmdl_usrinst = class(TForm)
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
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    Edit_search: TComboBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    XPManifest1: TXPManifest;
    ComboBox_web: TComboBox;
    Label1: TLabel;
    pn_notmaster: TPanel;
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
    Panel3: TPanel;
    xcodigo: TLabeledEdit;
    lbcp_dtcad: TLabel;
    Label12: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    xcp1: TLabeledEdit;
    Panel4: TPanel;
    xcp2: TLabeledEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    xcp21: TLabeledEdit;
    xcp20: TLabeledEdit;
    xcp10: TLabeledEdit;
    xcp11: TLabeledEdit;
    xcp12: TLabeledEdit;
    xcp13: TLabeledEdit;
    xcp14: TLabeledEdit;
    xcp15: TLabeledEdit;
    xcp16: TLabeledEdit;
    xcp17: TLabeledEdit;
    xcp18_ax: TComboBox;
    Label14: TLabel;
    xcp18_axuf: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    xcp19: TLabeledEdit;
    xcp31: TCheckBox;
    xcp27: TMemo;
    Label15: TLabel;
    xcp24: TLabeledEdit;
    xcp24_ax: TComboBox;
    Label2: TLabel;
    xcp25_ax: TComboBox;
    Label7: TLabel;
    xcp25: TLabeledEdit;
    Panel9: TPanel;
    xcp26_ax: TComboBox;
    xcp26: TLabeledEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    lbcp_rb1: TRadioButton;
    lbcp_rb2: TRadioButton;
    lbcp_rb3: TRadioButton;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    ToolBar3: TToolBar;
    Label8: TLabel;
    Lb_countreg2: TLabel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    Panel10: TPanel;
    xcodigo2: TLabeledEdit;
    xcpw6: TLabeledEdit;
    xcpw7: TLabeledEdit;
    Label25: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    lbcp_dtcad2: TLabel;
    xcpw7_ax: TLabeledEdit;
    Panel12: TPanel;
    xcpw9: TLabeledEdit;
    xcpw3: TLabeledEdit;
    xcpw5: TLabeledEdit;
    xcpw22: TLabeledEdit;
    xcpw23: TLabeledEdit;
    Panel13: TPanel;
    xcpw24: TLabeledEdit;
    xcpw24_ax: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    xcpw25_ax: TComboBox;
    xcpw25: TLabeledEdit;
    Panel14: TPanel;
    Label31: TLabel;
    xcpw4: TDateTimePicker;
    xcpw10: TLabeledEdit;
    xcpw11: TLabeledEdit;
    xcpw12: TLabeledEdit;
    xcpw13: TLabeledEdit;
    xcpw16: TLabeledEdit;
    xcpw15: TLabeledEdit;
    xcpw17: TLabeledEdit;
    xcpw18_axuf: TLabeledEdit;
    xcpw18_ax: TComboBox;
    xcpw19: TLabeledEdit;
    SpeedButton8: TSpeedButton;
    xcpw31: TCheckBox;
    xcpw33: TCheckBox;
    xcpw27: TMemo;
    Label33: TLabel;
    Label32: TLabel;
    Panel11: TPanel;
    xcpw8: TLabeledEdit;
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
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchChange(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure xcp19KeyPress(Sender: TObject; var Key: Char);
    procedure xcp26Change(Sender: TObject);
    procedure xcp26_axChange(Sender: TObject);
    procedure xcp24Change(Sender: TObject);
    procedure xcp24_axChange(Sender: TObject);
    procedure xcp25Change(Sender: TObject);
    procedure xcp25_axChange(Sender: TObject);
    procedure xcp18_axChange(Sender: TObject);
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure xcpw24_axChange(Sender: TObject);
    procedure xcpw24Change(Sender: TObject);
    procedure xcpw25_axChange(Sender: TObject);
    procedure xcpw25Change(Sender: TObject);
    procedure xcpw18_axChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit, xinitAUX : Boolean;
    xcp18,xcpw18: Integer; //cód. cidade
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure addreg;
    procedure addreg2;
    procedure filtrar_reg;
    procedure monta_table1;
    procedure monta_table2(xcodent:string);
    procedure atualiza_pfj(xtppj:boolean);
    procedure atualiza_xcp25;
    procedure atualiza_xcpw25;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_usrinst: Tmdl_usrinst;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_usrinst.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.executa3.Close;
     loadx.Progressloading.position:=50;
     dm.ds_sql5.Filter:='';
     dm.ds_sql5.Filtered:=false;
     dm.ds_sql5.Close;
     dm.executa5.Close;
     dm.executa6.Close;
     dm.executa7.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_usrinst.FormCreate(Sender: TObject);
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
      loadx.Progressloading.position:=5;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     mdl_usrinst.Caption := AxDadosUsr.axtitle;
     atualiza_pfj(true);
     DBGrid1.DataSource:=dm.source_sql3;
     DBGrid2.DataSource:=dm.source_sql4;
     xcp18:=0;
     xcpw18:=0;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Razão Social');
     cp_search[1]:= 'cp1';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Nome');
     cp_search[2]:= 'cp3';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('CNPJ');
     cp_search[3]:= 'cp20';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.Items.Add('Insc. Estadual');
     cp_search[4]:= 'cp21';
     tp_search[4]:= 1;
     tm_search[4]:= 255;
     ComboBox_search.Items.Add('RG');
     cp_search[5]:= 'cp22';
     tp_search[5]:= 1;
     tm_search[5]:= 255;
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
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cp1';
     DBGrid1.Columns.Items[1].Title.Caption:='Razão Social';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp3';
     DBGrid1.Columns.Items[2].Title.Caption:='Nome';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cp28';
     DBGrid1.Columns.Items[3].Title.Caption:='Data de cadastro';

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
          xcp24_ax.Clear;
          xcpw24_ax.Clear;
          xtotperc:= 0;
          xtotperc2:= (20 / RecordCount);
          While not Eof do begin
              Inc(xtotperc);
              loadx.Progressloading.position:=20+strtoint(formatfloat('0',xtotperc*xtotperc2));
              xcp24_ax.Items.Add(fieldbyname('descricao').AsString);
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
          xcp25_ax.Clear;
          xcpw25_ax.Clear;
          xtotperc:= 0;
          xtotperc2:= (20 / RecordCount);
          While not Eof do begin
              Inc(xtotperc);
              loadx.Progressloading.position:=40+strtoint(formatfloat('0',xtotperc*xtotperc2));
              xcp25_ax.Items.Add(fieldbyname('descricao').AsString);
              xcpw25_ax.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
        end;
     end else begin
        Panel2.Height:=653;
        Panel9.Visible:=false;
        Panel8.Visible:=false;
        Panel11.Visible:=false;
        Panel13.Visible:=false;
        Panel5.Height:=752;
     end;
     //cidades
     loadx.lbloading.Caption:='Lista de cidades';
     loadx.lbloading.Repaint;
      With dm.executa5 do begin
        CommandText:='SELECT codigo,cidade,uf FROM '+LstTables.Table[3]+' ORDER BY cidade';
        Open;
        First;
        xcp18_ax.Clear;
        xcpw18_ax.Clear;
        xtotperc:= 0;
        xtotperc2:= (20 / RecordCount);
        While not Eof do begin
            Inc(xtotperc);
            loadx.Progressloading.position:=60+strtoint(formatfloat('0',xtotperc*xtotperc2));
            xcp18_ax.Items.Add(fieldbyname('cidade').AsString);
            xcpw18_ax.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     //áreas de atuação
     if (xinitAUX) then begin
        loadx.lbloading.Caption:='Lista de áreas';
       loadx.lbloading.Repaint;
        With dm.executa6 do begin
          CommandText:='SELECT codigo,descricao FROM '+LstTables.Table[4]+' ORDER BY descricao';
          Open;
          First;
          xcp26_ax.Clear;
          xtotperc:= 0;
          xtotperc2:= (20 / RecordCount);
          While not Eof do begin
              Inc(xtotperc);
              loadx.Progressloading.position:=80+strtoint(formatfloat('0',xtotperc*xtotperc2));
              xcp26_ax.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
       end;
     end;
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
     monta_table1;
     atualiza_grade;
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

procedure Tmdl_usrinst.DBGrid1CellClick(Column: TColumn);
begin
     atualiza_grade;
end;

procedure Tmdl_usrinst.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade;
end;

procedure Tmdl_usrinst.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade;
end;

procedure Tmdl_usrinst.atualiza_grade;
begin
     if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
     end else begin
         xcp18:=0;
         with dm.ds_sql3 do begin
            if xcodigo.Text=fieldbyname('codigo').AsString then exit;
            xcodigo.Text:=fieldbyname('codigo').AsString;
            xcp1.Text:= fieldbyname('cp1').AsString;
            xcp2.Text:= fieldbyname('cp2').AsString;
            if StrToBool(fieldbyname('cp3').AsString) then begin
               atualiza_pfj(true);
               RadioButton1.Checked:=true;
            end else begin
               atualiza_pfj(false);
               RadioButton2.Checked:=true;
            end;
            xcp10.Text:= fieldbyname('cp10').AsString;
            xcp11.Text:= fieldbyname('cp11').AsString;
            xcp12.Text:= fieldbyname('cp12').AsString;
            xcp13.Text:= fieldbyname('cp13').AsString;
            xcp14.Text:= fieldbyname('cp14').AsString;
            xcp15.Text:= fieldbyname('cp15').AsString;
            xcp16.Text:= fieldbyname('cp16').AsString;
            xcp17.Text:= fieldbyname('cp17').AsString;
            xcp18:= fieldbyname('cp18').AsInteger;
            if dm.executa5.Locate('codigo',xcp18,[]) then begin
               xcp18_ax.Text:=dm.executa5.fieldbyname('cidade').AsString;
               xcp18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
            end else begin
               xcp18_ax.Text:='';
               xcp18_axuf.Text:='';
            end;
            xcp19.Text:= fieldbyname('cp19').AsString;
            xcp20.Text:= fieldbyname('cp20').AsString;
            xcp21.Text:= fieldbyname('cp21').AsString;
            xcp24.Text:= fieldbyname('cp24').AsString;
            xcp25.Text:= fieldbyname('cp25').AsString;
            xcp26.Text:= fieldbyname('cp26').AsString;
            xcp27.Lines.Assign(fieldbyname('cp27'));
            xcp31.Checked:= StrToBool(fieldbyname('cp31').AsString);
            lbcp_dtcad.Caption:= fieldbyname('cp28').AsString;
            TabSheet2.TabVisible:=true;
            monta_table2(xcodigo.Text);
         end;
     end;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tmdl_usrinst.atualiza_grade2;
begin
     if dm.ds_sql4.RecordCount <= 0 then begin
         addreg2;
     end else begin
         xcpw18:=0;
         with dm.ds_sql4 do begin
            if xcodigo2.Text=fieldbyname('codigo').AsString then exit;
            xcodigo2.Text:=fieldbyname('codigo').AsString;
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
            xcpw18:= fieldbyname('cp18').AsInteger;
            if dm.executa5.Locate('codigo',xcpw18,[]) then begin
               xcpw18_ax.Text:=dm.executa5.fieldbyname('cidade').AsString;
               xcpw18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
            end else begin
               xcpw18_ax.Text:='';
               xcpw18_axuf.Text:='';
            end;
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
         end;
     end;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_usrinst.addreg;
begin
     xcodigo.Text:='novo';
     xcp1.Text:= '';
     xcp2.Text:= '';
     xcp10.Text:= '';
     xcp11.Text:= '';
     xcp12.Text:= '';
     xcp13.Text:= '';
     xcp14.Text:= '';
     xcp15.Text:= '';
     xcp16.Text:= '';
     xcp17.Text:= '';
     xcp18:= 0;
     xcp18_ax.Text:= '';
     xcp18_axuf.Text:= '';
     xcp19.Text:= '';
     xcp20.Text:= '';
     xcp21.Text:= '';
     xcp24.Text:= '';
     xcp25.Text:= '';
     xcp26.Text:= '';
     xcp27.Text:= '';
     monta_table2('0');
     TabSheet2.TabVisible:=false;
end;

procedure Tmdl_usrinst.addreg2;
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
     xcpw18:= 0;
     xcpw18_ax.Text:= '';
     xcpw18_axuf.Text:= '';
     xcpw19.Text:= '';
     xcpw22.Text:= '';
     xcpw23.Text:= '';
     xcpw24.Text:= '';
     xcpw25.Text:= '';
     xcpw27.Text:= '';
     lbcp_rb1.Checked:=true;
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

procedure Tmdl_usrinst.FormResize(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrinst.bt_newClick(Sender: TObject);
begin
    addreg;
    xcp1.SetFocus;
end;

procedure Tmdl_usrinst.bt_delClick(Sender: TObject);
begin
    if dm.ds_sql4.RecordCount>0 then begin
       hwsf.BtMensagem('Existem usuários cadastrados para esta entidade.');
       PageControl2.TabIndex:=1;
       Exit;
    end;
    if (dm.ds_sql3.RecordCount>0) and (xcodigo.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',xcodigo.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tmdl_usrinst.bt_saveClick(Sender: TObject);
var axcod,axsqlidx1,axsqlidx2,axsqlidx3,axsqlidx4 : integer;
begin
     if xcp1.Text='' then begin
        if RadioButton1.Checked then
           hwsf.BtMensagem('É necessário digitar a Razão social.')
        else hwsf.BtMensagem('É necessário digitar o nome do responsável.');
        xcp1.SelectAll;
        xcp1.SetFocus;
        exit;
     end;
     if xcp13.Text='' then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        xcp13.SelectAll;
        xcp13.SetFocus;
        exit;
     end else if not Verifyemail(xcp13.Text) then begin
        xcp13.SelectAll;
        xcp13.SetFocus;
        exit;
     end;
     try
        axsqlidx1:=StrtoInt(xcp16.Text);
     except
        axsqlidx1:=0;
     end;
     try
        axsqlidx2:=StrtoInt(xcp26.Text);
     except
        axsqlidx2:=0;
     end;
     try
        axsqlidx3:=StrtoInt(xcp24.Text);
     except
        axsqlidx3:=0;
     end;
     try
        axsqlidx4:=StrtoInt(xcp25.Text);
     except
        axsqlidx4:=0;
     end;
     if xcodigo.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cp1,cp2,cp3,cp10,cp11,'+
                          'cp12,cp13,cp14,cp15,cp16,cp17,cp18,cp19,cp20,cp21,cp24,cp25,cp26,'+
                          'cp27,cp28,cp29,cp30,cp31,xtp) '+
                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,'+
                          ':p15,:p16,:p17,:p18,:p19,:p20,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          ':p21,:p22)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=AxDadosUsr.cod_web;
            Params[2].AsString:=xcp1.Text;
            Params[3].AsString:=xcp2.Text;
            Params[4].AsString:=BoolToStr(RadioButton1.Checked);
            Params[5].AsString:=xcp10.Text;
            Params[6].AsString:=xcp11.Text;
            Params[7].AsString:=xcp12.Text;
            Params[8].AsString:=xcp13.Text;
            Params[9].AsString:=xcp14.Text;
            Params[10].AsString:=xcp15.Text;
            Params[11].AsInteger:=axsqlidx1;
            Params[12].AsString:=xcp17.Text;
            Params[13].AsInteger:=xcp18;
            Params[14].AsString:=xcp19.Text;
            Params[15].AsString:=xcp20.Text;
            Params[16].AsString:=xcp21.Text;
            if RadioButton1.Checked then begin
               Params[17].AsInteger:=0;
               Params[18].AsInteger:=0;
               Params[19].AsInteger:=axsqlidx2;
            end else begin
               Params[17].AsInteger:=axsqlidx3;
               Params[18].AsInteger:=axsqlidx4;
               Params[19].AsInteger:=0;
            end;
            Params[20].Assign(xcp27.Lines);
            Params[21].AsString:=BoolToStr(xcp31.Checked);
            Params[22].AsString:=AxDadosUsr.axparm;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp10=:p3,cp11=:p4,'+
                          'cp12=:p5,cp13=:p6,cp14=:p7,cp15=:p8,cp16=:p9,cp17=:p10,cp18=:p11,cp19=:p12,'+
                          'cp20=:p13,cp21=:p14,cp24=:p15,cp25=:p16,cp26=:p17,cp27=:p18,'+
                          'cp30='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          'cp31=:p19 WHERE codigo=:p20';
            Params[0].AsString:=xcp1.Text;
            Params[1].AsString:=xcp2.Text;
            Params[2].AsString:=BoolToStr(RadioButton1.Checked);
            Params[3].AsString:=xcp10.Text;
            Params[4].AsString:=xcp11.Text;
            Params[5].AsString:=xcp12.Text;
            Params[6].AsString:=xcp13.Text;
            Params[7].AsString:=xcp14.Text;
            Params[8].AsString:=xcp15.Text;
            Params[9].AsInteger:=axsqlidx1;
            Params[10].AsString:=xcp17.Text;
            Params[11].AsInteger:=xcp18;
            Params[12].AsString:=xcp19.Text;
            Params[13].AsString:=xcp20.Text;
            Params[14].AsString:=xcp21.Text;
            if RadioButton1.Checked then begin
               Params[15].AsInteger:=0;
               Params[16].AsInteger:=0;
               Params[17].AsInteger:=axsqlidx2;
            end else begin
               Params[15].AsInteger:=axsqlidx3;
               Params[16].AsInteger:=axsqlidx4;
               Params[17].AsInteger:=0;
            end;
            Params[18].Assign(xcp27.Lines);
            Params[19].AsString:=BoolToStr(xcp31.Checked);
            Params[20].AsInteger:=axcod;
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
     dm.ds_sql3.Locate('codigo',axcod,[]);
     hwsf.BtMensagem('Dados gravados com sucesso.');
     TabSheet2.TabVisible:=true;
end;

procedure Tmdl_usrinst.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tmdl_usrinst.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tmdl_usrinst.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr('%'+Edit_search.Text+'%')
        else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tmdl_usrinst.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrinst.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_usrinst.Edit_searchKeyPress(Sender: TObject;
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

procedure Tmdl_usrinst.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrinst.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_usrinst.SpeedButton1Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_usrinst.xcp19KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27, '.', '-':
     else
       Key := #0;
     end;
end;

procedure Tmdl_usrinst.xcp26Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcp26.Text <> '' then
       if dm.executa6.Locate('codigo',xcp26.Text,[]) then begin
          xcp26_ax.Text:=dm.executa6.fieldbyname('descricao').AsString;
       end else xcp26_ax.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcp26_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.executa6.Locate('descricao',xcp26_ax.Text,[]) then begin
        xcp26.Text:=dm.executa6.fieldbyname('codigo').AsString;
       end else xcp26.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcp24Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcp24.Text <> '' then
       if dm.executa7.Locate('codigo',xcp24.Text,[]) then begin
          xcp24_ax.Text:=dm.executa7.fieldbyname('descricao').AsString;
          dm.ds_sql5.Filter := 'cod_set='+#39+dm.executa7.fieldbyname('codigo').AsString+#39;
       end else begin
          xcp24_ax.Text:='';
          dm.ds_sql5.Filter := '';
       end;
       atualiza_xcp25;
     end;
end;

procedure Tmdl_usrinst.xcp24_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.executa7.Locate('descricao',xcp24_ax.Text,[]) then begin
          xcp24.Text:=dm.executa7.fieldbyname('codigo').AsString;
          dm.ds_sql5.Filter := 'cod_set='+#39+dm.executa7.fieldbyname('codigo').AsString+#39;
       end else begin
          xcp24.Text:='';
          dm.ds_sql5.Filter := '';
       end;
       atualiza_xcp25;
     end;
end;

procedure Tmdl_usrinst.atualiza_xcp25;
begin
     with dm.ds_sql5 do begin
       First;
       xcp25_ax.Clear;
       While not Eof do begin
           xcp25_ax.Items.Add(fieldbyname('descricao').AsString);
           Next;
       end;
     end;
end;

procedure Tmdl_usrinst.atualiza_xcpw25;
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

procedure Tmdl_usrinst.xcp25Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcp25.Text <> '' then
       if dm.ds_sql5.Locate('codigo',xcp25.Text,[]) then begin
          xcp25_ax.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
       end else xcp25_ax.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcp25_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.ds_sql5.Locate('descricao',xcp25_ax.Text,[]) then begin
         xcp25.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
       end else xcp25.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcp18_axChange(Sender: TObject);
begin
     if dm.executa5.Locate('cidade',xcp18_ax.Text,[]) then begin
        xcp18:=dm.executa5.fieldbyname('codigo').AsInteger;
        xcp18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
     end else begin
        xcp18:=0;
        xcp18_axuf.Text:='';
     end;
end;

procedure Tmdl_usrinst.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
             atualiza_grade;
          end;
      end;
end;

procedure Tmdl_usrinst.monta_table1;
begin
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT codigo,cod_web,cp1,cp2,cp3,cp10,cp11,'+
                      'cp12,cp13,cp14,cp15,cp16,cp17,cp18,cp19,cp20,cp21,cp24,cp25,cp26,'+
                      'cp27,cp28,cp29,cp30,cp31 FROM '+LstTables.Table[0]+
                      ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
end;

procedure Tmdl_usrinst.monta_table2(xcodent:string);
begin
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cod_ent,cp3,cp4,cp5,'+
                      'cp6,cp10,cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,'+
                      'cp27,cp28,cp29,cp30,cp31,cp32,cp33 FROM '+LstTables.Table[5]+
                      ' WHERE cod_ent='+#39+xcodent+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     atualiza_grade2;
end;

procedure Tmdl_usrinst.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_usrinst.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_usrinst.bt_new2Click(Sender: TObject);
begin
    addreg2;
    xcpw6.SetFocus;
end;

procedure Tmdl_usrinst.bt_del2Click(Sender: TObject);
begin
    if (dm.ds_sql4.RecordCount>0) and (xcodigo2.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[5],'codigo',xcodigo2.Text,true) then begin
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade2;
        end;
    end;
end;

procedure Tmdl_usrinst.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid,axsqlidx1,axsqlidx2,axsqlidx3: integer;
    axmntquy: String;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     if Length(xcpw6.Text) < 4 then begin
        hwsf.BtMensagem('O nome do usuário tem que ser maior ou igual a 4 digitos.');
        xcpw6.SelectAll;
        xcpw6.SetFocus;
        exit;
     end;
     if xcodigo2.Text = 'novo' then begin
        if Length(xcpw7.Text) < 4 then begin
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
        hwsf.BtMensagem('As senhas digitadas não são iguais.');
        xcpw7.SelectAll;
        xcpw7.SetFocus;
        exit;
     end;
     if xcpw3.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o nome do responsável.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     if xcpw5.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o apelido.');
        xcpw5.SelectAll;
        xcpw5.SetFocus;
        exit;
     end;
     if xcpw13.Text='' then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end else if not Verifyemail(xcpw13.Text) then begin
        hwsf.BtMensagem('Formato de ['+xcpw13.Text+'] e-mail inválido.');
        xcpw13.SelectAll;
        xcpw13.SetFocus;
        exit;
     end;
     try
        axsqlidx1:=StrtoInt(xcpw16.Text);
     except
        axsqlidx1:=0;
     end;
     try
        axsqlidx2:=StrtoInt(xcpw24.Text);
     except
        axsqlidx2:=0;
     end;
     try
        axsqlidx3:=StrtoInt(xcpw25.Text);
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
          CommandText:= 'SELECT codigo,cp5,cp13 FROM '+LstTables.Table[5]+
                            ' WHERE '+ axmntquy;
          Open;
          if Fields[1].AsString <> '' then begin
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
     if xcodigo2.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[5],'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_ent,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,'+
                          'cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,cp27,cp28,cp29,cp30,cp31,cp32,cp33,xtp) '+
                          'VALUES(:p0,:p1,:p2,'+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
                          ':p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          ':p23,:p24,:p25,:p26)';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=StrToInt(xcodigo.text);
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
            Params[axsqlidADD].AsInteger:=xcpw18;
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
            Params[axsqlidADD].AsString := BoolToStr(xcpw33.Checked);
            Params[axsqlidADD].AsString:=AxDadosUsr.axparm;
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
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD);
            axmntquy := axmntquy+' WHERE codigo=:p'+IntToStr(axsqlid);
            CommandText:= axmntquy;
            axsqlid:=0;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            Params[axsqlidADD].AsString:=xcpw6.Text;
            if xcpw7.Text <> '' then
              Params[axsqlidADD].AsString:=xcpw7.Text;
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
            Params[axsqlidADD].AsInteger:=xcpw18;
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
            Params[axsqlidADD].AsInteger:=axcod;
            axcod:=axsqlidADD;
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

procedure Tmdl_usrinst.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrinst.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrinst.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrinst.RadioButton1Click(Sender: TObject);
begin
      atualiza_pfj(RadioButton1.Checked);
end;

procedure Tmdl_usrinst.RadioButton2Click(Sender: TObject);
begin
      atualiza_pfj(RadioButton1.Checked);
end;

procedure Tmdl_usrinst.atualiza_pfj(xtppj:boolean);
begin
      if RadioButton1.Checked then begin
         xcp1.EditLabel.Caption:='Razão Social';
         Panel4.Visible:=true;
         if (xinitAUX) then begin
            Panel9.Visible:=true;
            Panel8.Visible:=false;
         end;
         xcp21.EditLabel.Caption:='Insc. Estadual';
         xcp20.EditLabel.Caption:='CNPJ';
      end else begin
         xcp1.EditLabel.Caption:='Nome do responsável';
         Panel4.Visible:=false;
         if (xinitAUX) then begin
            Panel9.Visible:=false;
            Panel8.Visible:=true;
         end;
         xcp21.EditLabel.Caption:='RG';
         xcp20.EditLabel.Caption:='CPF';
      end;
end;

procedure Tmdl_usrinst.xcpw24_axChange(Sender: TObject);
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

procedure Tmdl_usrinst.xcpw24Change(Sender: TObject);
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

procedure Tmdl_usrinst.xcpw25_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.ds_sql5.Locate('descricao',xcpw25_ax.Text,[]) then begin
         xcpw25.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
       end else xcpw5.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcpw25Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcpw25.Text <> '' then
       if dm.ds_sql5.Locate('codigo',xcpw25.Text,[]) then begin
          xcpw25_ax.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
       end else xcpw25_ax.Text:='';
     end;
end;

procedure Tmdl_usrinst.xcpw18_axChange(Sender: TObject);
begin
     if dm.executa5.Locate('cidade',xcpw18_ax.Text,[]) then begin
        xcpw18:=dm.executa5.fieldbyname('codigo').AsInteger;
        xcpw18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
     end else begin
        xcpw18:=0;
        xcpw18_axuf.Text:='';
     end;
end;

procedure Tmdl_usrinst.FormShow(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrinst.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
