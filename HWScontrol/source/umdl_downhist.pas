{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_downhist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  ShellAPI, XPMan, AppEvnts;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_downhist = class(TForm)
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    SaveDialog_print: TSaveDialog;
    ApplicationEvents1: TApplicationEvents;
    GroupBox6: TGroupBox;
    ToolBar3: TToolBar;
    Label6: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    DateTimePicker2: TDateTimePicker;
    ToolBar5: TToolBar;
    Label7: TLabel;
    HistDown_CheckBox1: TCheckBox;
    HistDown_CheckBox2: TCheckBox;
    HistDown_CheckBox3: TCheckBox;
    HistDown_CheckBox4: TCheckBox;
    Panel1: TPanel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox5: TGroupBox;
    DBGrid5: TDBGrid;
    ToolBar4: TToolBar;
    Label11: TLabel;
    HistDown_Lb_countreTOTAL1: TLabel;
    GroupBox1: TGroupBox;
    DBGrid6: TDBGrid;
    ToolBar8: TToolBar;
    Label12: TLabel;
    HistDown_Lb_countreTOTAL2: TLabel;
    ToolBar1: TToolBar;
    Label2: TLabel;
    HistDown_Lb_countreTOTALGERAL: TLabel;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    Panel_search: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    bt_search: TSpeedButton;
    ComboBox_search: TComboBox;
    Edit_search: TComboBox;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countregUsrTOTAL: TLabel;
    DBGrid2: TDBGrid;
    Splitter2: TSplitter;
    GroupBox4: TGroupBox;
    ScrollBox3: TScrollBox;
    Panel5: TPanel;
    Panel10: TPanel;
    Label25: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    lbcp_dtcad2: TLabel;
    xcodigo2: TLabeledEdit;
    xcpw6: TLabeledEdit;
    xcpw7: TLabeledEdit;
    xcpw7_ax: TLabeledEdit;
    Panel12: TPanel;
    xcpw9: TLabeledEdit;
    xcpw3: TLabeledEdit;
    xcpw5: TLabeledEdit;
    xcpw22: TLabeledEdit;
    xcpw23: TLabeledEdit;
    Panel13: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    xcpw24: TLabeledEdit;
    xcpw24_ax: TComboBox;
    xcpw25_ax: TComboBox;
    xcpw25: TLabeledEdit;
    Panel14: TPanel;
    Label31: TLabel;
    SpeedButton8: TSpeedButton;
    Label33: TLabel;
    Label32: TLabel;
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
    xcpw31: TCheckBox;
    xcpw33: TCheckBox;
    xcpw27: TMemo;
    Panel11: TPanel;
    xcpw8: TLabeledEdit;
    GroupBox3: TGroupBox;
    lbcp_rb1: TRadioButton;
    lbcp_rb2: TRadioButton;
    lbcp_rb3: TRadioButton;
    SpeedButton1: TSpeedButton;
    ToolBar9: TToolBar;
    Label14: TLabel;
    Lb_countregUsrON: TLabel;
    ToolBar10: TToolBar;
    Label16: TLabel;
    Lb_countregUsrOFF: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    HistDown_ini: TComboBox;
    HistDown_export: TSpeedButton;
    HistDown_export2: TSpeedButton;
    Label9: TLabel;
    ToolBar6: TToolBar;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label13: TLabel;
    CheckBoxdadoscad: TCheckBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    CheckBoxUsrDown: TCheckBox;
    ToolBar7: TToolBar;
    Panel6: TPanel;
    bt_save2: TSpeedButton;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchChange(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xcpw24_axChange(Sender: TObject);
    procedure xcpw24Change(Sender: TObject);
    procedure xcpw25_axChange(Sender: TObject);
    procedure xcpw25Change(Sender: TObject);
    procedure xcpw18_axChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckBoxdadoscadClick(Sender: TObject);
    procedure HistDown_exportClick(Sender: TObject);
    procedure HistDown_export2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBoxUsrDownClick(Sender: TObject);
    procedure ToolBar7Resize(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit, xinitAUX : Boolean;
    xcp18,xcpw18: Integer; //cód. cidade
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    xcodStrFilter: WideString;
    procedure atualiza_grade2;
    procedure addreg2;
    procedure filtrar_reg;
    procedure monta_table2;
    procedure monta_HistDown;
    function retornTypCp(xtpidx:String; axcomb:Integer):String;
    procedure atualiza_xcpw25;
    function StrToHtml(mStr: string; mFont: TFont = nil): string;
    function ColorToHtml(mColor: TColor): string;
    function DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings; mCaption: TCaption = ''): Boolean;
    procedure setDatePicker(xtype:Integer; xdate:TDateTime);
    procedure HistDownEexportRelat(xdbgrid:TDBGrid; xtitleGrd,xtitleGrd_adicional:String);
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_downhist: Tmdl_downhist;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_downhist.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.executa5.Close;
     dm.executa7.Close;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
     Action:=cafree;
end;

procedure Tmdl_downhist.FormCreate(Sender: TObject);
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
     mdl_downhist.Caption := AxDadosUsr.axtitle;
     DBGrid2.DataSource:=dm.source_sql4;
     DBGrid5.DataSource:=dm.source_sql7;
     DBGrid6.DataSource:=dm.source_sql8;
     xcp18:=0;
     xcpw18:=0;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Razão Social');
     cp_search[1]:= 'cp3';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Responsável');
     cp_search[2]:= 'cp5';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('e-mail');
     cp_search[3]:= 'cp13';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.ItemIndex:=1;
     axid_web:=0;
     axid_web2:=0;
     loadx.Progressloading.position:=10;
     setDatePicker(0,Now);
     DateTimePicker1.Time:=strtotime('00:00:00');
     DateTimePicker2.Time:=strtotime('23:59:59');
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
     DBGrid2.Columns.Items[1].Title.Caption:='Razão Social';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='xdown';
     DBGrid2.Columns.Items[2].Title.Caption:='Baixou Arquivo';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='cp32desc';
     DBGrid2.Columns.Items[3].Title.Caption:='Status da Conta';
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
        xcpw18_ax.Clear;
        xtotperc:= 0;
        xtotperc2:= (20 / RecordCount);
        While not Eof do begin
            Inc(xtotperc);
            loadx.Progressloading.position:=60+strtoint(formatfloat('0',xtotperc*xtotperc2));
            xcpw18_ax.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     //Logs
     With DBGrid5 do begin
          Columns.Add;
          Columns.Items[0].FieldName:='codigo';
          Columns.Items[0].Title.Caption:='ID';
          Columns.Items[0].Width := 50;
          Columns.Add;
          Columns.Items[1].FieldName:='xini';
          Columns.Items[1].Title.Caption:='Inicio';
          Columns.Items[1].Width := 125;
          {Columns.Add;
          Columns.Items[2].FieldName:='xend';
          Columns.Items[2].Title.Caption:='Fim';
          Columns.Items[2].Width := 110;}
          Columns.Add;
          Columns.Items[2].FieldName:='resdat';
          Columns.Items[2].Title.Caption:='Duração (seg.)';
          Columns.Items[2].Width := 70;
          Columns.Add;
          Columns.Items[3].FieldName:='cp1';
          Columns.Items[3].Title.Caption:='Menu';
          Columns.Items[3].Width := 100;
          Columns.Add;
          Columns.Items[4].FieldName:='descricao';
          Columns.Items[4].Title.Caption:='Pasta';
          Columns.Items[4].Width := 200;
          Columns.Add;
          Columns.Items[5].FieldName:='descricao_1';
          Columns.Items[5].Title.Caption:='Arquivo';
          Columns.Items[5].Width := 200;
          Columns.Add;
          Columns.Items[6].FieldName:='cp3';
          Columns.Items[6].Title.Caption:='Usuário';
          Columns.Items[6].Width := 130;
          Columns.Add;
          Columns.Items[7].FieldName:='xstatdesc';
          Columns.Items[7].Title.Caption:='Status';
          Columns.Items[7].Width := 130;
          Columns.Items[0].Title.Color:=$00ADADAD;
     end;
     With DBGrid6 do begin
          Columns.Add;
          Columns.Items[0].FieldName:='codigo';
          Columns.Items[0].Title.Caption:='ID';
          Columns.Items[0].Width := 50;
          Columns.Add;
          Columns.Items[1].FieldName:='xini';
          Columns.Items[1].Title.Caption:='Inicio';
          Columns.Items[1].Width := 125;
          Columns.Add;
          Columns.Items[2].FieldName:='resdat';
          Columns.Items[2].Title.Caption:='Duração (seg.)';
          Columns.Items[2].Width := 70;
          Columns.Add;
          Columns.Items[3].FieldName:='cp1';
          Columns.Items[3].Title.Caption:='Menu';
          Columns.Items[3].Width := 100;
          Columns.Add;
          Columns.Items[4].FieldName:='descricao';
          Columns.Items[4].Title.Caption:='Pasta';
          Columns.Items[4].Width := 200;
          Columns.Add;
          Columns.Items[5].FieldName:='cp3';
          Columns.Items[5].Title.Caption:='Usuário';
          Columns.Items[5].Width := 130;
          Columns.Add;
          Columns.Items[6].FieldName:='xstatdesc';
          Columns.Items[6].Title.Caption:='Status';
          Columns.Items[6].Width := 130;
          Columns.Items[0].Title.Color:=$00ADADAD;
     end;
     //ini
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
     //monta_table2;
     monta_HistDown;
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

procedure Tmdl_downhist.atualiza_grade2;
begin
     if dm.ds_sql4.RecordCount <= 0 then begin
         addreg2;
     end else begin
       if CheckBoxUsrDown.Checked then begin
          dm.ds_sql7.Filter:='cod_ent='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
          dm.ds_sql8.Filter:='cod_ent='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
       end;
       if CheckBoxdadoscad.Checked then begin
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
     end;
end;

procedure Tmdl_downhist.addreg2;
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

procedure Tmdl_downhist.FormResize(Sender: TObject);
begin
    if (CheckBoxdadoscad.Checked) then GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width-GroupBox4.Width)/2))
    else GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width/2)));
end;

procedure Tmdl_downhist.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql4.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr('%'+Edit_search.Text+'%')
        else dm.ds_sql4.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tmdl_downhist.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_downhist.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_downhist.Edit_searchKeyPress(Sender: TObject;
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

procedure Tmdl_downhist.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_downhist.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_downhist.atualiza_xcpw25;
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

procedure Tmdl_downhist.monta_table2;
var xcodStrFilter_AX,xFilterUsr1,xFilterUsr2: WideString;

begin
     //exibir status baixado
     xcodStrFilter_AX:=copy(xcodStrFilter,2,Length(xcodStrFilter)-2);
     xcodStrFilter_AX:='codigo='+xcodStrFilter_AX;
     xcodStrFilter_AX:=StringReplace(xcodStrFilter_AX,'|',' or codigo=',[rfReplaceall]);
     //Filtrar baixados ou n
     xFilterUsr1:='';
     if (RadioButton5.Checked) then begin
        xFilterUsr1:=' AND ('+xcodStrFilter_AX+')';
     end else if (RadioButton6.Checked) then begin
        xFilterUsr1:=StringReplace(xcodStrFilter_AX,'or','and',[rfReplaceall]);
        xFilterUsr1:=StringReplace(xFilterUsr1,'=','<>',[rfReplaceall]);
        xFilterUsr1:=' AND ('+xFilterUsr1+')';
     end;
     xFilterUsr2:='';
     if (CheckBox1.Checked or CheckBox2.Checked or CheckBox3.Checked) then begin
         if CheckBox1.Checked then xFilterUsr2:='cp32='+#39+'A'+#39;
         if CheckBox2.Checked then begin
            if xFilterUsr2<>'' then xFilterUsr2:=xFilterUsr2+' AND ';
            xFilterUsr2:=xFilterUsr2+'cp32='+#39+'B'+#39;
         end;
         if CheckBox3.Checked then  begin
            if xFilterUsr2<>'' then xFilterUsr2:=xFilterUsr2+' AND ';
            xFilterUsr2:=xFilterUsr2+'cp32='+#39+'X'+#39;
         end;
         xFilterUsr2:=' AND ('+xFilterUsr2+')';
     end;
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cod_ent,cp3,cp4,cp5,'+
                      'cp6,cp10,cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,'+
                      'cp27,cp28,cp29,cp30,cp31,cp32,cp33,'+
                      ' CASE cp32 '+
                      ' WHEN '+#39+'A'+#39+' THEN '+#39+'Ativo'+#39+
                      ' WHEN '+#39+'B'+#39+' THEN '+#39+'Bloqueado'+#39+
                      ' WHEN '+#39+'X'+#39+' THEN '+#39+'Cancelado'+#39+
                      ' END AS cp32desc,'+
                      ' CASE WHEN ('+xcodStrFilter_AX+') THEN "Sim" ELSE "Não" END AS xdown'+
                      ' FROM '+LstTables.Table[5]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      xFilterUsr1+
                      xFilterUsr2+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     Lb_countregUsrTOTAL.Caption:=FormatFloat('###,###,##0',dm.ds_sql4.RecordCount);
     atualiza_grade2;
end;

procedure Tmdl_downhist.monta_HistDown;
var axfiltHist,axfiltHistusr,axordTB: String;
    xcountrg1, xcountrg2, xcountTOT, xcountUSR : Integer;
    axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Localizando registros...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Localizando registros...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
     Panel1.Enabled:=false;
     DBGrid2.Enabled:=false;
     DBGrid5.Enabled:=false;
     DBGrid6.Enabled:=false;
     axfiltHist:='';
     axfiltHistusr:='';
     xcodStrFilter:='|';
     xcountUSR:=0;
     {HistDown_RadioButton1.Checked then
        axfiltHistusr:='A.cod_ent='+#39+xcodigo2.Text+#39;}
     if axfiltHistusr<>'' then
        axfiltHistusr:=' AND ('+axfiltHistusr+')';
     if HistDown_CheckBox1.Checked then
        axfiltHist:='A.xstat='+#39+'0'+#39;
     if HistDown_CheckBox2.Checked then begin
        if axfiltHist<>'' then
           axfiltHist:=axfiltHist+' OR ';
        axfiltHist:=axfiltHist+'A.xstat='+#39+'1'+#39;
     end;
     if HistDown_CheckBox3.Checked then begin
        if axfiltHist<>'' then
           axfiltHist:=axfiltHist+' OR ';
        axfiltHist:=axfiltHist+'A.xstat='+#39+'4'+#39;
     end;
     if HistDown_CheckBox4.Checked then begin
        if axfiltHist<>'' then
           axfiltHist:=axfiltHist+' OR ';
        axfiltHist:=axfiltHist+'A.xstat='+#39+'2'+#39+' OR A.xstat='+#39+'3'+#39;
     end;
     if axfiltHist<>'' then
        axfiltHist:=' AND ('+axfiltHist+')';
     axfiltHist:=axfiltHistusr+axfiltHist;
     axordTB:=retornTypCp('',HistDown_ini.ItemIndex);
     try
          dm.executa.CommandText:='UPDATE '+LstTables.Table[8]+' SET xstat='+#39+'4'+#39+
                                  ' WHERE (xini = xend)';
          dm.executa.Execute;
     except
     end;
     With dm.ds_sql7 do begin
        loadx.Progressloading.position:=20;
        if Active then Close;
        CommandText:= 'SELECT A.codigo,A.cod_img,A.cod_gal,A.cod_web,A.cod_ent,A.xini,A.xend, (A.xend - A.xini) AS resdat,A.xstat,A.xtp,B.descricao,C.descricao,D.cp1,E.cp3'+
                      ', CASE A.xstat '+
                      ' WHEN 0 THEN '+#39+'Download em Andamento'+#39+
                      ' WHEN 1 THEN '+#39+'Download Concluído'+#39+
                      ' WHEN 2 THEN '+#39+'Erro ao criar arquivo'+#39+
                      ' WHEN 3 THEN '+#39+'Falha no download'+#39+
                      ' WHEN 4 THEN '+#39+'Download Cancelado'+#39+
                      ' END AS xstatdesc'+
                      ' FROM '+LstTables.Table[8]+' A,'+
                               LstTables.Table[6]+' B,'+
                               LstTables.Table[7]+' C,'+
                               LstTables.Table[6]+'_ax D,'+
                               LstTables.Table[5]+' E'+
                      ' WHERE E.codigo=A.cod_ent AND A.cod_img>0'+
                      ' AND C.cod_img=A.cod_img AND B.cod_gal = C.cod_gal'+
                      ' AND D.cod_class = B.cod_class '+
                      ' AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND A.xtp='+#39+AxDadosUsr.axparm+#39+axfiltHist+
                      ' AND (A.xini>='+#39+FormatDateTime('yyyymmdd 00:00:00',DateTimePicker1.Date)+#39+
                      ' AND A.xini<='+#39+FormatDateTime('yyyymmdd 23:59:59',DateTimePicker2.Date)+#39+')'+
                      ' ORDER BY '+axordTB;
        Open;
        Filter:='';
        Filtered:=true;
        xcountrg1:=RecordCount;
        HistDown_Lb_countreTOTAL1.Caption:= FormatFloat('###,###,##0',xcountrg1);
        First;
     end;
     With dm.ds_sql8 do begin
        loadx.Progressloading.position:=30;
        if Active then Close;
        CommandText:= 'SELECT DISTINCT(A.codigo),A.cod_img,A.cod_gal,A.cod_web,A.cod_ent,A.xini,A.xend, (A.xend - A.xini) AS resdat,A.xstat,A.xtp,B.descricao,D.cp1,E.cp3'+
                      ', CASE A.xstat '+
                      ' WHEN 0 THEN '+#39+'Download em Andamento'+#39+
                      ' WHEN 1 THEN '+#39+'Download Concluído'+#39+
                      ' WHEN 2 THEN '+#39+'Erro ao criar arquivo'+#39+
                      ' WHEN 3 THEN '+#39+'Falha no download'+#39+
                      ' WHEN 4 THEN '+#39+'Download Cancelado'+#39+
                      ' END AS xstatdesc'+
                      ' FROM '+LstTables.Table[8]+' A,'+
                               LstTables.Table[6]+' B,'+
                               LstTables.Table[7]+' C,'+
                               LstTables.Table[6]+'_ax D,'+
                               LstTables.Table[5]+' E'+
                      ' WHERE E.codigo=A.cod_ent AND A.cod_gal>0'+
                      ' AND B.cod_gal=A.cod_gal'+
                      ' AND D.cod_class = B.cod_class '+
                      ' AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND A.xtp='+#39+AxDadosUsr.axparm+#39+axfiltHist+
                      ' AND (A.xini>='+#39+FormatDateTime('yyyymmdd 00:00:00',DateTimePicker1.Date)+#39+
                      ' AND A.xini<='+#39+FormatDateTime('yyyymmdd 23:59:59',DateTimePicker2.Date)+#39+')'+
                      ' ORDER BY '+axordTB;
        Open;
        Filter:='';
        Filtered:=true;
        xcountrg2:=RecordCount;
        HistDown_Lb_countreTOTAL2.Caption:= FormatFloat('###,###,##0',xcountrg2);
        First;
     end;
     //******************************************
     With dm.ds_sql10 do begin
        loadx.Progressloading.position:=40;
        if Active then Close;//,A.cod_img,A.cod_gal,A.cod_web,A.xini,A.xend,A.xstat,A.xtp,D.cp1,E.cp3
        CommandText:= 'SELECT DISTINCT(A.cod_ent),A.codigo'+
                      ' FROM '+LstTables.Table[8]+' A,'+
                               LstTables.Table[6]+' B,'+
                               LstTables.Table[7]+' C,'+
                               LstTables.Table[6]+'_ax D,'+
                               LstTables.Table[5]+' E'+
                      ' WHERE E.codigo=A.cod_ent AND A.cod_img>0'+
                      ' AND C.cod_img=A.cod_img AND B.cod_gal = C.cod_gal'+
                      ' AND D.cod_class = B.cod_class '+
                      ' AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND A.xtp='+#39+AxDadosUsr.axparm+#39+axfiltHist+
                      ' AND (A.xini>='+#39+FormatDateTime('yyyymmdd 00:00:00',DateTimePicker1.Date)+#39+
                      ' AND A.xini<='+#39+FormatDateTime('yyyymmdd 23:59:59',DateTimePicker2.Date)+#39+')'+
                      ' ORDER BY '+axordTB;
        Open;
        Filter:='';
        Filtered:=true;
        xcountrg1:=RecordCount;
        HistDown_Lb_countreTOTAL1.Caption:= FormatFloat('###,###,##0',xcountrg1);
        loadx.Progressloading.position:=50;
        First;
        While not Eof do begin
             if pos('|'+fieldbyname('cod_ent').AsString+'|', xcodStrFilter)<=0 then begin
                xcodStrFilter:=xcodStrFilter+fieldbyname('cod_ent').AsString+'|';
                Inc(xcountUSR);
             end;
             Next;
        end;
        Close;
     end;
     With dm.ds_sql11 do begin
        loadx.Progressloading.position:=60;
        if Active then Close;//,A.cod_img,A.cod_gal,A.cod_web,A.xini,A.xend,A.xstat,A.xtp,D.cp1,E.cp3
        CommandText:= 'SELECT DISTINCT(A.cod_ent),A.codigo'+
                      ' FROM '+LstTables.Table[8]+' A,'+
                               LstTables.Table[6]+' B,'+
                               LstTables.Table[7]+' C,'+
                               LstTables.Table[6]+'_ax D,'+
                               LstTables.Table[5]+' E'+
                      ' WHERE E.codigo=A.cod_ent AND A.cod_gal>0'+
                      ' AND B.cod_gal=A.cod_gal'+
                      ' AND D.cod_class = B.cod_class '+
                      ' AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND A.xtp='+#39+AxDadosUsr.axparm+#39+axfiltHist+
                      ' AND (A.xini>='+#39+FormatDateTime('yyyymmdd 00:00:00',DateTimePicker1.Date)+#39+
                      ' AND A.xini<='+#39+FormatDateTime('yyyymmdd 23:59:59',DateTimePicker2.Date)+#39+')'+
                      ' ORDER BY '+axordTB;
        Open;
        Filter:='';
        Filtered:=true;
        xcountrg2:=RecordCount;
        HistDown_Lb_countreTOTAL2.Caption:= FormatFloat('###,###,##0',xcountrg2);
        loadx.Progressloading.position:=70;
        First;
        While not Eof do begin
             if pos('|'+fieldbyname('cod_ent').AsString+'|', xcodStrFilter)<=0 then begin
                xcodStrFilter:=xcodStrFilter+fieldbyname('cod_ent').AsString+'|';
                Inc(xcountUSR);
             end;
             Next;
        end;
        Close;
     end;
     //******************************************
     xcountTOT:=xcountrg1+xcountrg2;
     HistDown_Lb_countreTOTALGERAL.Caption:= FormatFloat('###,###,##0',xcountTOT);
     loadx.Progressloading.position:=80;
     monta_table2;
     loadx.Progressloading.position:=90;
     if RadioButton1.Checked then begin
        Lb_countregUsrON.Caption:=FormatFloat('###,###,##0',xcountUSR);
        if (xcountUSR-dm.ds_sql4.RecordCount)<0 then
            Lb_countregUsrOFF.Caption:=FormatFloat('###,###,##0',(dm.ds_sql4.RecordCount-xcountUSR))
        else Lb_countregUsrOFF.Caption:=FormatFloat('###,###,##0',(xcountUSR-dm.ds_sql4.RecordCount));
     end else if RadioButton5.Checked then begin
        Lb_countregUsrON.Caption:=FormatFloat('###,###,##0',xcountUSR);
        Lb_countregUsrOFF.Caption:=FormatFloat('###,###,##0',0);
     end else if RadioButton6.Checked then begin
        Lb_countregUsrON.Caption:=FormatFloat('###,###,##0',0);
        Lb_countregUsrOFF.Caption:=FormatFloat('###,###,##0',dm.ds_sql4.RecordCount);
     end;
     loadx.Progressloading.position:=100;
     Panel1.Enabled:=true;
     DBGrid2.Enabled:=true;
     DBGrid5.Enabled:=true;
     DBGrid6.Enabled:=true;
     try loadx.Close; except end;
end;

function Tmdl_downhist.retornTypCp(xtpidx:String; axcomb:Integer):String;
var axres: String;
begin
     if (xtpidx = '') then begin
       Case axcomb of
          0: axres:='codigo';
          1: axres:='xini';
          2: axres:='resdat';
          3: axres:='cp1';
          4: axres:='descricao';
          5: axres:='cp3';
          6: axres:='xstatdesc';
       End;
     end else if (xtpidx='codigo') then axres:='0'
     else if (xtpidx='xini') then axres:='1'
     else if (xtpidx='resdat') then axres:='2'
     else if (xtpidx='cp1') then axres:='3'
     else if (xtpidx='descricao') then axres:='4'
     else if (xtpidx='cp3') then axres:='5'
     else if (xtpidx='xstatdesc') then axres:='6';//xstat
     Result:= axres;
end;

procedure Tmdl_downhist.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_downhist.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_downhist.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_downhist.xcpw24_axChange(Sender: TObject);
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

procedure Tmdl_downhist.xcpw24Change(Sender: TObject);
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

procedure Tmdl_downhist.xcpw25_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.ds_sql5.Locate('descricao',xcpw25_ax.Text,[]) then begin
         xcpw25.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
       end else xcpw5.Text:='';
     end;
end;

procedure Tmdl_downhist.xcpw25Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcpw25.Text <> '' then
       if dm.ds_sql5.Locate('codigo',xcpw25.Text,[]) then begin
          xcpw25_ax.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
       end else xcpw25_ax.Text:='';
     end;
end;

procedure Tmdl_downhist.xcpw18_axChange(Sender: TObject);
begin
     if dm.executa5.Locate('cidade',xcpw18_ax.Text,[]) then begin
        xcpw18:=dm.executa5.fieldbyname('codigo').AsInteger;
        xcpw18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
     end else begin
        xcpw18:=0;
        xcpw18_axuf.Text:='';
     end;
end;

procedure Tmdl_downhist.FormShow(Sender: TObject);
begin
    if (CheckBoxdadoscad.Checked) then GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width-GroupBox4.Width)/2))
    else GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width/2)));
end;

procedure Tmdl_downhist.SpeedButton8Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_downhist.HistDownEexportRelat(xdbgrid:TDBGrid; xtitleGrd,xtitleGrd_adicional:String);
var xexphtml : TStringList;
    title_html : string;
begin
     SaveDialog_print.Filter:='Todos os arquivos (*.*)|*.*|HTML publish file (*.html)|*.html';
     SaveDialog_print.DefaultExt:='html';
     SaveDialog_print.FilterIndex:=2;
     if SaveDialog_print.Execute then begin
        Try
          xexphtml:= TStringList.Create;
          xexphtml.Clear;
          title_html:='<p align="center">'+
                      '<font face="Verdana" size="4" color="#0000FF"><b>'+xtitleGrd+'</b></font><br>'+
                      '<font face="Verdana" size="2" color="#000000">Período de <b>'+FormatDateTime('dd/mm/YYY',DateTimePicker1.Date)+'</b> à <b>'+FormatDateTime('dd/mm/YYY',DateTimePicker2.Date)+'</b><br>'+
                      '<font face="Verdana" size="2" color="#000000">Impresso em '+FormatDateTime('dd/mm/YYY hh:nn:ss',Now)+
                      xtitleGrd_adicional+
                      '</font></p>';
          DBGridToHtmlTable(xdbgrid, xexphtml, title_html);//Caption
          xexphtml.SaveToFile(SaveDialog_print.FileName);
          ShellExecute(Handle, nil, PChar(SaveDialog_print.FileName), nil, nil, SW_SHOW);
          dm.gravar_logsys('Relatório Usuários - exporta para html');
        Finally
          xexphtml.Free;
        End;
     end;
end;

function Tmdl_downhist.StrToHtml(mStr: string; mFont: TFont = nil): string;
var
  vLeft, vRight: string;
begin
  Result := mStr;
  Result := StringReplace(Result, '&', '&AMP;', [rfReplaceAll]);
  Result := StringReplace(Result, '<', '&LT;', [rfReplaceAll]);
  Result := StringReplace(Result, '>', '&GT;', [rfReplaceAll]);
  if not Assigned(mFont) then Exit;
  vLeft := Format('<FONT FACE="%s" COLOR="%s">',
    [mFont.Name, ColorToHtml(mFont.Color)]);
  vRight := '</FONT>';
  if fsBold in mFont.Style then begin
    vLeft := vLeft + '<B>';
    vRight := '</B>' + vRight;
  end;
  if fsItalic in mFont.Style then begin
    vLeft := vLeft + '<I>';
    vRight := '</I>' + vRight;
  end;
  if fsUnderline in mFont.Style then begin
    vLeft := vLeft + '<U>';
    vRight := '</U>' + vRight;
  end;
  if fsStrikeOut in mFont.Style then begin
    vLeft := vLeft + '<S>';
    vRight := '</S>' + vRight;
  end;
  Result := vLeft + Result + vRight;
end;

function Tmdl_downhist.ColorToHtml(mColor: TColor): string;
begin
  mColor := ColorToRGB(mColor);
  Result := Format('#%.2x%.2x%.2x',
    [GetRValue(mColor), GetGValue(mColor), GetBValue(mColor)]);
end;

function Tmdl_downhist.DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings; mCaption: TCaption = ''): Boolean;
const
  cAlignText: array[TAlignment] of string = ('LEFT', 'RIGHT', 'CENTER');
var
  vColFormat: string;
  vColText: string;
  vAllWidth: Integer;
  vWidths: array of Integer;
  vBookmark: string;
  I, J: Integer;
begin
  Result := False;
  if not Assigned(mStrings) then Exit;
  if not Assigned(mDBGrid) then Exit;
  if not Assigned(mDBGrid.DataSource) then Exit;
  if not Assigned(mDBGrid.DataSource.DataSet) then Exit;
  if not mDBGrid.DataSource.DataSet.Active then Exit;
  vBookmark := mDBGrid.DataSource.DataSet.Bookmark;
  mDBGrid.DataSource.DataSet.DisableControls;
  try
    J := 0;
    vAllWidth := 0;
    for I := 0 to mDBGrid.Columns.Count - 1 do
      if mDBGrid.Columns[I].Visible then begin
        Inc(J);
        SetLength(vWidths, J);
        vWidths[J - 1] := mDBGrid.Columns[I].Width;
        Inc(vAllWidth, mDBGrid.Columns[I].Width);
      end;
    if J <= 0 then Exit;
    mStrings.Clear;
    mStrings.Add(Format('<TABLE BGCOLOR="%s" BORDER=1 WIDTH="100%%">',
      [ColorToHtml(mDBGrid.Color)]));
    if mCaption <> '' then
      mStrings.Add(Format('<CAPTION>%s</CAPTION>', [mCaption])); //StrToHtml(mCaption)

    vColFormat := '';
    vColText := '';
    vColFormat := vColFormat + '<TR>'#13#10;
    vColText := vColText + '<TR>'#13#10;
    J := 0;
    for I := 0 to mDBGrid.Columns.Count - 1 do
      if mDBGrid.Columns[I].Visible then begin
          vColFormat := vColFormat + Format('  <TD BGCOLOR="%s" ALIGN=%s WIDTH="%d%%">DisplayText%d</TD>'#13#10,
          [ColorToHtml(mDBGrid.Columns[I].Color),
          cAlignText[mDBGrid.Columns[I].Alignment],
          Round(vWidths[J] / vAllWidth * 100), J]);
          vColText := vColText + Format('  <TD BGCOLOR="%s" ALIGN=%s WIDTH="%d%%">%s</TD>'#13#10,
          [ColorToHtml(mDBGrid.Columns[I].Title.Color),
          cAlignText[mDBGrid.Columns[I].Alignment],
          Round(vWidths[J] / vAllWidth * 100),
          StrToHtml(mDBGrid.Columns[I].Title.Caption,
          mDBGrid.Columns[I].Title.Font)]);
          Inc(J);
      end;
    vColFormat := vColFormat + '</TR>'#13#10;
    vColText := vColText + '</TR>'#13#10;
    mStrings.Text := mStrings.Text + vColText;
    mDBGrid.DataSource.DataSet.First;
    while not mDBGrid.DataSource.DataSet.Eof do begin
      J := 0;
      vColText := vColFormat;
      for I := 0 to mDBGrid.Columns.Count - 1 do
        if mDBGrid.Columns[I].Visible then begin
          vColText := StringReplace(vColText, Format('>DisplayText%d<', [J]),
             Format('>%s<', [StrToHtml(mDBGrid.Columns[I].Field.DisplayText,
               mDBGrid.Columns[I].Font)]),
            [rfReplaceAll]);
          Inc(J);
        end;
      mStrings.Text := mStrings.Text + vColText;
      mDBGrid.DataSource.DataSet.Next;
    end;
    mStrings.Add('</TABLE>');
    mStrings.Add('');
    //mStrings.Add('<p align="center"><a href="http://www.hws.com.br"><font size="2" face="Verdana">Desenvolvido por HWS Web Solution Ltda</font></a></p>');
  finally
    mDBGrid.DataSource.DataSet.Bookmark := vBookmark;
    mDBGrid.DataSource.DataSet.EnableControls;
    vWidths := nil;
  end;
  Result := True;
end; { DBGridToHtmlTable }

procedure Tmdl_downhist.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Tmdl_downhist.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      Case dm.ds_sql7.FieldByName('xstat').AsInteger of
         0: begin
            DBGrid5.Canvas.Brush.Color := clWhite;
            //Column.Field.AsString:= 'Download em Andamento';
         end;
         1: begin
            DBGrid5.Canvas.Brush.Color := clGreen;
            //Column.Field.AsString:= 'Download Concluído';
         end;
         2: begin
            DBGrid5.Canvas.Brush.Color := clRed;
            //Column.Field.AsString:= 'Erro ao criar arquivo';
         end;
         3: begin
            DBGrid5.Canvas.Brush.Color := clRed;
            //Column.Field.AsString:= 'Falha ao baixar arquivo';
         end;
         4: begin
            DBGrid5.Canvas.Brush.Color := clPurple;
            //Column.Field.AsString:= 'Download Cancelado';
         end;
      End;
      if (dm.ds_sql7.FieldByName('xstat').AsInteger>0) then
         DBGrid5.Canvas.Font.Color:= clWhite;
      DBGrid5.Canvas.FillRect(Rect);
      DBGrid5.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure Tmdl_downhist.DBGrid6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      Case dm.ds_sql8.FieldByName('xstat').AsInteger of
         0: begin
            DBGrid6.Canvas.Brush.Color := clWhite;
            //Column.Field.AsString:= 'Download em Andamento';
         end;
         1: begin
            DBGrid6.Canvas.Brush.Color := clGreen;
            //Column.Field.AsString:= 'Download Concluído';
         end;
         2: begin
            DBGrid6.Canvas.Brush.Color := clRed;
            //Column.Field.AsString:= 'Erro ao criar arquivo';
         end;
         3: begin
            DBGrid6.Canvas.Brush.Color := clRed;
            //Column.Field.AsString:= 'Falha ao baixar arquivo';
         end;
         4: begin
            DBGrid6.Canvas.Brush.Color := clPurple;
            //Column.Field.AsString:= 'Download Cancelado';
         end;
      End;
      if (dm.ds_sql8.FieldByName('xstat').AsInteger>0) then
         DBGrid6.Canvas.Font.Color:= clWhite;
      DBGrid6.Canvas.FillRect(Rect);
      DBGrid6.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure Tmdl_downhist.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_downhist.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_downhist.SpeedButton1Click(Sender: TObject);
begin
     monta_HistDown;
end;

procedure Tmdl_downhist.RadioButton2Click(Sender: TObject);
begin
    setDatePicker(0,Now);
end;

procedure Tmdl_downhist.RadioButton3Click(Sender: TObject);
begin
    setDatePicker(1,Now);
end;

procedure Tmdl_downhist.RadioButton4Click(Sender: TObject);
begin
    setDatePicker(2,Now);
end;

procedure Tmdl_downhist.setDatePicker(xtype:Integer; xdate:TDateTime);
var dweeknow: Integer;
    dweekdata: TDateTime;
    dweekAno, dweekMes, dweekDia: Word;
begin
    Case xtype of
      0: begin
         dweeknow:=DayOfWeek(xdate);
         dweeknow:=dweeknow-1;
         DateTimePicker1.Date:=xdate-dweeknow;
         DateTimePicker2.Date:=xdate;
      end;
      1: begin
         dweekdata:= xdate;
         DecodeDate(dweekdata, dweekAno, dweekMes, dweekDia);
         dweekdata:=StrToDate('01/'+FormatFloat('00',dweekMes)+'/'+InttoStr(dweekAno));
         DateTimePicker1.Date:=dweekdata;
         DateTimePicker2.Date:=xdate;
      end;
      2: begin
         dweekdata:= xdate;
         DecodeDate(dweekdata, dweekAno, dweekMes, dweekDia);
         dweekdata:=StrToDate('01/01/'+InttoStr(dweekAno));
         DateTimePicker1.Date:=dweekdata;
         DateTimePicker2.Date:=xdate;
      end;
    End;
end;

procedure Tmdl_downhist.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if pos('|'+dm.ds_sql4.fieldbyname('codigo').AsString+'|', xcodStrFilter)>0 then begin
         DBGrid2.Canvas.Brush.Color := clGreen;
         DBGrid2.Canvas.Font.Color:= clWhite;
      end else begin
         DBGrid2.Canvas.Brush.Color := clRed;
         DBGrid2.Canvas.Font.Color:= clYellow;
      end;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure Tmdl_downhist.CheckBoxdadoscadClick(Sender: TObject);
begin
     if (CheckBoxdadoscad.Checked and not GroupBox4.Visible) then begin
        GroupBox4.Visible:=true;
        GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width-GroupBox4.Width)/2));
        atualiza_grade2;
     end else if (not CheckBoxdadoscad.Checked and GroupBox4.Visible) then begin
        GroupBox4.Visible:=false;
        GroupBox7.Width:=strtoint(formatfloat('0',(Panel1.Width/2)));
     end;
end;

procedure Tmdl_downhist.HistDown_exportClick(Sender: TObject);
begin
      HistDownEexportRelat(DBGrid5,GroupBox5.Caption,'');
end;

procedure Tmdl_downhist.HistDown_export2Click(Sender: TObject);
begin
      HistDownEexportRelat(DBGrid6,GroupBox1.Caption,'');
end;

procedure Tmdl_downhist.SpeedButton2Click(Sender: TObject);
begin
      HistDownEexportRelat(DBGrid2,GroupBox2.Caption,'<br><font face="Verdana" size="2" color="#000000"><b>'+Lb_countregUsrTOTAL.Caption+'</b> Usuários Cadastrados<br><b>'+Lb_countregUsrON.Caption+'</b> Baixaram Arquivos<br><b>'+Lb_countregUsrOFF.Caption+'</b> Não Baixaram Arquivos');
end;

procedure Tmdl_downhist.CheckBoxUsrDownClick(Sender: TObject);
begin
      if CheckBoxUsrDown.Checked then begin
         dm.ds_sql7.Filter:='cod_ent='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
         dm.ds_sql8.Filter:='cod_ent='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
      end else begin
         dm.ds_sql7.Filter:='';
         dm.ds_sql8.Filter:='';
      end;
end;

procedure Tmdl_downhist.ToolBar7Resize(Sender: TObject);
begin
      Panel2.Width:=ToolBar1.Width-(bt_prior2.Width+bt_next2.Width+bt_save2.Width);
end;

procedure Tmdl_downhist.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid,axsqlidx1,axsqlidx2,axsqlidx3: integer;
    axmntquy,axmd5pass: String;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     if (xcodigo2.Text = 'novo') then begin
        hwsf.BtMensagem('Código inválido.');
        exit;
     end;
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
        hwsf.BtMensagem('É necessário digitar a Razão Social.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     if xcpw5.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o nome do Responsável.');
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
        hwsf.BtMensagem('Formato do e-mail ['+xcpw13.Text+'] inválido.');
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
           if axmntquy <> '' then  axmntquy := '('+axmntquy+') AND';
           axmntquy := axmntquy + '(xtp='+#39+AxDadosUsr.axparm+#39+
                                  ' AND cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+')';

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
     dm.ds_sql4.Locate('codigo',axcod,[]);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

end.
