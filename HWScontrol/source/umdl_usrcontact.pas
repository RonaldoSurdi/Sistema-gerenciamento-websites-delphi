{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para website.
Data: 17 de outubro de 2005.
By HWS Web Solutions

Relatório de acessos:
17/10/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}
unit umdl_usrcontact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  XPMan, AppEvnts, Menus, ComboSpeedButton;


type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tmdl_usrcontact = class(TForm)
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
    Panel10: TPanel;
    xcodigo2: TLabeledEdit;
    Label27: TLabel;
    lbcp_dtcad2: TLabel;
    Panel12: TPanel;
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
    DBGrid2: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Label2: TLabel;
    class_news: TComboBox;
    Label6: TLabel;
    cp_clss: TComboBox;
    PopupMenu_import: TPopupMenu;
    Campos1: TMenuItem;
    Nomeemail1: TMenuItem;
    email1: TMenuItem;
    N1: TMenuItem;
    Classificao1: TMenuItem;
    Semclassificao1: TMenuItem;
    NewsletterWebsite1: TMenuItem;
    ToolBar1: TToolBar;
    ComboSpeedButton1: TComboSpeedButton;
    SpeedButton1: TSpeedButton;
    bt_delALL: TComboSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Contratantes1: TMenuItem;
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
    procedure xcpw18_axChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure Nomeemail1Click(Sender: TObject);
    procedure email1Click(Sender: TObject);
    procedure Semclassificao1Click(Sender: TObject);
    procedure NewsletterWebsite1Click(Sender: TObject);
    procedure class_newsChange(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure bt_delALLClick(Sender: TObject);
    procedure Contratantes1Click(Sender: TObject);
  private
    xlogotmp : TMemoryStream;
    LstTables: TLstTables;
    xinit, xinitAUX : Boolean;
    xcp18,xcpw18: Integer; //cód. cidade
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    selectClassID: Integer;
    procedure atualiza_grade2;
    procedure addreg2;
    procedure filtrar_reg;
    procedure monta_table2;
    procedure atualiza_xcpw25;
    function selectClassPop(xslctClss:Integer):Boolean;
    function DelRegSelect(xidReg:Integer):Boolean;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_usrcontact: Tmdl_usrcontact;

implementation
uses udm, hwsfunctions, DateUtils, Math, U_Cipher;

{$R *.dfm}

procedure Tmdl_usrcontact.FormClose(Sender: TObject; var Action: TCloseAction);
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
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_usrcontact.FormCreate(Sender: TObject);
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
     mdl_usrcontact.Caption := AxDadosUsr.axtitle;
     DBGrid2.DataSource:=dm.source_sql4;
     selectClassID:=0;
     xcp18:=0;
     xcpw18:=0;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Nome Completo');
     cp_search[1]:= 'cp3';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Empresa');
     cp_search[2]:= 'cp5';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('e-mail');
     cp_search[3]:= 'cp13';
     tp_search[3]:= 1;
     tm_search[3]:= 255;
     ComboBox_search.Items.Add('Cidade');
     cp_search[4]:= 'cp18';
     tp_search[4]:= 1;
     tm_search[4]:= 255;
     ComboBox_search.ItemIndex:=1;
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
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cp3';
     DBGrid2.Columns.Items[1].Title.Caption:='Nome';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='cp5';
     DBGrid2.Columns.Items[2].Title.Caption:='Empresa';
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
     loadx.lbloading.Caption:='Montando tabelas';
     loadx.lbloading.Repaint;
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

procedure Tmdl_usrcontact.atualiza_grade2;
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
            //xcpw6.Text:= fieldbyname('cp6').AsString;
            //xcpw7.Text:= '';
            //xcpw7_ax.Text:= '';
            //xcpw8.Text:= '';
            //xcpw9.Text:= '';
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
            xcpw33.Checked:= StrToBool(fieldbyname('cp33').AsString);
            cp_clss.ItemIndex:=fieldbyname('cp34').AsInteger;
            lbcp_dtcad2.Caption:= fieldbyname('cp28').AsString;
         end;
     end;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
end;

procedure Tmdl_usrcontact.addreg2;
begin
     xcodigo2.Text:='novo';
     xcpw3.Text:= '';
     xcpw4.DateTime:=Now;
     xcpw5.Text:= '';
     //xcpw6.Text:= '';
     //xcpw7.Text:= '';
     //xcpw7_ax.Text:= '';
     //xcpw8.Text:= '';
     //xcpw9.Text:= '';
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

procedure Tmdl_usrcontact.FormResize(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrcontact.filtrar_reg;
var axsearch,axsearch2 : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     axsearch:='';
     if class_news.ItemIndex>0 then begin
        axsearch:= 'cp34='+#39+IntToStr(class_news.ItemIndex)+#39;
     end;
     if Edit_search.Text<>'' then begin
        if axsearch<>'' then axsearch:=axsearch+' AND ';
        if (ComboBox_search.ItemIndex = 4) then begin
           dm.executa5.Filter:='upper(cidade) LIKE upper('+QuotedStr('%'+Edit_search.Text+'%')+')';
           dm.executa5.Filtered:=true;
           dm.executa5.First;
           axsearch2:='';
           While not dm.executa5.Eof do begin
              if axsearch2<>'' then axsearch2:=axsearch2+' AND ';
              axsearch2:=axsearch2+cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(dm.executa5.fieldbyname('codigo').AsString);
              dm.executa5.Next;
           end;
           dm.executa5.Filter:='';
           dm.executa5.Filtered:=false;
           if axsearch2<>'' then axsearch:=axsearch+axsearch2;
        end else begin
          if tp_search[ComboBox_search.ItemIndex]=1 then
             axsearch:= axsearch + 'upper('+cp_search[ComboBox_search.ItemIndex]+') LIKE upper('+QuotedStr('%'+Edit_search.Text+'%')+')'
          else axsearch:= axsearch + cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        end;
     end;
     dm.ds_sql4.Filter:=axsearch;
end;

procedure Tmdl_usrcontact.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrcontact.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        Edit_search.Clear;
        filtrar_reg;
     end;
end;

procedure Tmdl_usrcontact.Edit_searchKeyPress(Sender: TObject;
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

procedure Tmdl_usrcontact.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tmdl_usrcontact.edKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_usrcontact.atualiza_xcpw25;
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

procedure Tmdl_usrcontact.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table2;
             atualiza_grade2;
          end;
      end;
end;

procedure Tmdl_usrcontact.monta_table2;
begin
     With dm.ds_sql4 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cod_ent,cp3,cp4,cp5,'+
                      'cp6,cp10,cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,'+
                      'cp27,cp28,cp29,cp30,cp31,cp32,cp33,cp34 FROM '+LstTables.Table[5]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND cp55='+#39+'0'+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     atualiza_grade2;
end;

procedure Tmdl_usrcontact.bt_prior2Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade2;
end;

procedure Tmdl_usrcontact.bt_next2Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade2;
end;

procedure Tmdl_usrcontact.bt_new2Click(Sender: TObject);
begin
    if (StrtoInt(Lb_countreg2.Caption)>=5000) then begin
        hwsf.BtMensagem('Limite de registros excedido...');
        exit;
    end else begin
        addreg2;
        xcpw3.SetFocus;
    end;
end;

procedure Tmdl_usrcontact.bt_save2Click(Sender: TObject);
var axcod,axsqlid,axforid,axsqlidx1,axsqlidx2,axsqlidx3: integer;
    axmntquy,axmd5pass: String;
    function axsqlidADD():Integer;
    begin
        Result:=axsqlid;
        Inc(axsqlid);
    end;
begin
     {if Length(xcpw6.Text) < 4 then begin
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
     end;}
     if xcpw3.Text='' then begin
        hwsf.BtMensagem('É necessário digitar o nome completo.');
        xcpw3.SelectAll;
        xcpw3.SetFocus;
        exit;
     end;
     {if xcpw5.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a Empresa.');
        xcpw5.SelectAll;
        xcpw5.SetFocus;
        exit;
     end;}
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
           axmntquy := '(cp13 = '+#39+xcpw13.Text+#39+')';
        end else begin
           axmntquy := '';
           if (xcpw13.Text <> dm.ds_sql4.fieldbyname('cp13').AsString) then begin
              if axmntquy <> '' then  axmntquy := axmntquy + ' OR ';
              axmntquy :=  '(cp13 = '+#39+xcpw13.Text+#39+')';
           end;
        end;
        if axmntquy <> '' then begin
          axmntquy := '('+axmntquy +
                       ' AND cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND cp55='+#39+'0'+#39+
                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+')';
          CommandText:= 'SELECT codigo,cp5,cp13 FROM '+LstTables.Table[5]+
                        ' WHERE '+ axmntquy;
          Open;
          if Fields[1].AsString <> '' then begin
             if (Fields[2].AsString = xcpw13.Text) then begin
                 hwsf.BtMensagem('e-mail já cadastrado.');
                 xcpw13.SelectAll;
                 xcpw13.SetFocus;
             end;
             Close;
             exit;
          end else Close;
        end;
     end;
     if xcodigo2.Text = 'novo' then begin
        axcod:=dm.GetCodMax(LstTables.Table[5],'codigo','');
        //cp6,cp7,cp8,cp9,
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_ent,cp3,cp4,cp5,cp10,'+
                          'cp11,cp12,cp13,cp15,cp16,cp17,cp18,cp19,cp22,cp23,cp24,cp25,cp27,cp28,cp29,cp30,cp31,cp32,cp33,cp34,cp55,xtp) '+
                          'VALUES(:p0,:p1,:p2,'+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
                          ':p4,:p5,:p10,:p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22,'+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                          ':p23,:p24,:p25,:p26,:p27,:p28)';
            axsqlid:=0;
            Params[axsqlidADD].AsInteger:=axcod;
            Params[axsqlidADD].AsInteger:=AxDadosUsr.cod_web;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            //Params[axsqlidADD].AsString:=xcpw6.Text;
            //Params[axsqlidADD].AsString:=MD5Hash(xcpw7.Text);
            //Params[axsqlidADD].AsString:=xcpw8.Text;
            //Params[axsqlidADD].AsString:=xcpw9.Text;
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
            Params[axsqlidADD].AsString:= 'A';
            Params[axsqlidADD].AsString:= BoolToStr(false);
            Params[axsqlidADD].AsInteger:= cp_clss.ItemIndex;
            Params[axsqlidADD].AsInteger:= 0;
            Params[axsqlidADD].AsString:=AxDadosUsr.axparm;
        end;
     end else begin
        axcod:=StrtoInt(xcodigo2.Text);
        //,cp6=:p2
        with dm.executa do begin
            axmntquy :='UPDATE '+LstTables.Table[5]+' SET cp3=:p0,'+
            'cp4='+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+','+
            'cp5=:p1,';
            axsqlid:=3;
            {if xcpw7.Text <> '' then
              axmntquy := axmntquy+'cp7=:p'+IntToStr(axsqlidADD)+',';
            if xcpw8.Text <> '' then
              axmntquy := axmntquy+'cp8=:p'+IntToStr(axsqlidADD)+',';
            if xcpw9.Text <> '' then
              axmntquy := axmntquy+'cp9=:p'+IntToStr(axsqlidADD)+',';}
            for axforid:=10 to 13 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=15 to 19 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            for axforid:=22 to 25 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axforid:=27;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axmntquy := axmntquy+'cp30='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',';
            for axforid:=31 to 33 do
                axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD)+',';
            axforid:=34;
            axmntquy := axmntquy+'cp'+IntToStr(axforid)+'=:p'+IntToStr(axsqlidADD);
            axmntquy := axmntquy+' WHERE codigo=:p'+IntToStr(axsqlid);
            CommandText:= axmntquy;
            axsqlid:=0;
            Params[axsqlidADD].AsString:=xcpw3.Text;
            Params[axsqlidADD].AsString:=xcpw5.Text;
            //Params[axsqlidADD].AsString:=xcpw6.Text;
            {if xcpw7.Text <> '' then
              Params[axsqlidADD].AsString:=MD5Hash(xcpw7.Text);
            if xcpw8.Text <> '' then
              Params[axsqlidADD].AsString:=xcpw8.Text;
            if xcpw9.Text <> '' then
              Params[axsqlidADD].AsString:=xcpw9.Text;}
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
            Params[axsqlidADD].AsString:= 'A';
            Params[axsqlidADD].AsString:= BoolToStr(false);
            Params[axsqlidADD].AsInteger:= cp_clss.ItemIndex;
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

procedure Tmdl_usrcontact.DBGrid2CellClick(Column: TColumn);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcontact.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcontact.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     atualiza_grade2;
end;

procedure Tmdl_usrcontact.xcpw24_axChange(Sender: TObject);
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

procedure Tmdl_usrcontact.xcpw24Change(Sender: TObject);
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

procedure Tmdl_usrcontact.xcpw25_axChange(Sender: TObject);
begin
     if (xinitAUX) then begin
       if dm.ds_sql5.Locate('descricao',xcpw25_ax.Text,[]) then begin
         xcpw25.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
       end else xcpw5.Text:='';
     end;
end;

procedure Tmdl_usrcontact.xcpw25Change(Sender: TObject);
begin
     if (xinitAUX) then begin
       if xcpw25.Text <> '' then
       if dm.ds_sql5.Locate('codigo',xcpw25.Text,[]) then begin
          xcpw25_ax.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
       end else xcpw25_ax.Text:='';
     end;
end;

procedure Tmdl_usrcontact.xcpw18_axChange(Sender: TObject);
begin
     if dm.executa5.Locate('cidade',xcpw18_ax.Text,[]) then begin
        xcpw18:=dm.executa5.fieldbyname('codigo').AsInteger;
        xcpw18_axuf.Text:=dm.executa5.fieldbyname('uf').AsString;
     end else begin
        xcpw18:=0;
        xcpw18_axuf.Text:='';
     end;
end;

procedure Tmdl_usrcontact.FormShow(Sender: TObject);
begin
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    Label4.Left:=ComboBox_search.Left+2;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tmdl_usrcontact.SpeedButton8Click(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tmdl_usrcontact.SpeedButton1Click(Sender: TObject);
begin
      dm.ds_sql4.Close;
      dm.ds_sql4.Open;
      atualiza_grade2;
end;

procedure Tmdl_usrcontact.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Tmdl_usrcontact.ComboSpeedButton1Click(Sender: TObject);
var axlistmail,axlistmail_nome,axlistmail_mail,xresulinsert_mail: TStringList;
    xidstrlin, xstrcount, countvirg, countvirg2, xcountreg,
    xidlin, lincount, axcod,axtotalok, xtotperc, updateregID, xerrosadd : Integer;
    xlinetx, xstr_nome, xstr_mail,
    axmntquy: String;
    xnullemail,xerrorinsert,
    axshowing,updateregAdd: Boolean;
    xtotperc2:Real;
    xlimitreg: Integer;
begin
      xlimitreg:=StrtoInt(Lb_countreg2.Caption);
      if (xlimitreg>=5000) then begin
          hwsf.BtMensagem('Limite de registros excedido...');
          exit;
      end;
      if OpenDialog1.Execute then begin
         try
           axshowing:= loadx.Showing;
           if not axshowing then begin
               loadx := Tloadx.Create(Application);
               loadx.lbloading.Caption:='Lendo arquivo';
               loadx.Show;
               loadx.Update;
            end else begin
               loadx.lbloading.Caption:='Lendo arquivo';
               loadx.lbloading.Repaint;
            end;
            axlistmail:= TStringList.Create;
            axlistmail.Clear;
            axlistmail_nome:= TStringList.Create;
            axlistmail_nome.Clear;
            axlistmail_mail:= TStringList.Create;
            axlistmail_mail.Clear;
            xresulinsert_mail:= TStringList.Create;
            xresulinsert_mail.Clear;
            xerrosadd:=0;
            xnullemail:=true;
            axlistmail.LoadFromFile(OpenDialog1.FileName);
            lincount:= axlistmail.Count;
            xlimitreg:=xlimitreg+(lincount-1);
            if (xlimitreg>=5000) then begin
               hwsf.BtMensagem('Limite de registros excedido...');
               exit;
            end;
            if lincount > 1 then begin
              xcountreg:=0;
              for xidlin:=1 to lincount-1 do begin
                  xlinetx:= axlistmail.Strings[xidlin];
                  xlinetx:= StringReplace(xlinetx,'\"\"','',[rfReplaceAll]);
                  xlinetx:= StringReplace(xlinetx,'\"','',[rfReplaceAll]);
                  xlinetx:= StringReplace(xlinetx,' ','',[rfReplaceAll]);
                  xlinetx:= StringReplace(xlinetx,'"','',[rfReplaceAll]);
                  xlinetx:= StringReplace(xlinetx,'\','',[rfReplaceAll]);
                  xlinetx:= StringReplace(xlinetx,chr(39),'',[rfReplaceAll]);
                  xstrcount:= Length(xlinetx);
                  countvirg:=1;
                  countvirg2:=0;
                  xstr_nome:='';
                  xstr_mail:='';
                  for xidstrlin:=1 to xstrcount do begin
                      if copy(xlinetx,xidstrlin,1)=';' then begin
                         Inc(countvirg);
                      end else begin
                        if Nomeemail1.Checked then begin
                            if countvirg = 1 then begin
                               xstr_nome:=xstr_nome+copy(xlinetx,xidstrlin,1);
                            end else if countvirg = 2 then begin
                               xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                            end;
                        end else begin
                            if copy(xlinetx,xidstrlin,1)='@' then countvirg2:=1;
                            if countvirg2=0 then xstr_nome:=xstr_nome+copy(xlinetx,xidstrlin,1);
                            xstr_mail:=xstr_mail+copy(xlinetx,xidstrlin,1);
                        end;
                        if ((Nomeemail1.Checked and (countvirg > 2)) OR (not Nomeemail1.Checked and (countvirg > 1))) then begin
                            hwsf.BtMensagem('Formato de arquivo Inválido!!!');
                            axlistmail.free;
                            axlistmail_nome.Free;
                            axlistmail_mail.Free;
                            xresulinsert_mail.Free;
                            exit;
                        end;
                      end;
                      Application.ProcessMessages;
                  end;
                  if (xstr_mail <> '') then begin
                      if xstr_nome='' then xstr_nome:=xstr_mail;
                      axlistmail_nome.Add(xstr_nome);
                      axlistmail_mail.Add(xstr_mail);
                  end;
              end;
              if axlistmail_nome.Count > 0 then begin
                lincount:=axlistmail_mail.Count;
                xtotperc:= 0;
                xtotperc2:= (100 / lincount);
                for xidlin:=0 to lincount-1 do begin
                    loadx.lbloading.Caption:='Registros '+InttoStr(xidlin+1)+' de '+InttoStr(lincount);
                    loadx.lbloading.Repaint;
                    Inc(xtotperc);
                    loadx.Progressloading.position:=strtoint(formatfloat('0',xtotperc*xtotperc2));
                    xstr_nome:=axlistmail_nome.Strings[xidlin];
                    xstr_mail:=axlistmail_mail.Strings[xidlin];
                    xerrorinsert:=false;
                    updateregAdd:=false;
                    updateregID:=0;
                    Application.ProcessMessages;
                    With dm.executa4 do begin
                         if Active then Close;
                         CommandText:= 'SELECT codigo,cp3,cp55 FROM '+LstTables.Table[5]+
                                       ' WHERE '+ '(cp13 = '+#39+xstr_mail+#39+
                                       ' AND cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                       ' AND xtp='+#39+AxDadosUsr.axparm+#39+')';
                         Open;
                         xerrorinsert:=(Fields[1].AsString<>'');
                         if xerrorinsert then begin
                            updateregID:=Fields[2].AsInteger;
                            if (updateregID = 0) then begin
                               xresulinsert_mail.Add('DUPLICADO: '+xstr_mail+' e-mail já cadastrado.');
                               Inc(xerrosadd);
                            end else if (updateregID = 650) then begin
                               updateregAdd:=true;
                               axcod:=Fields[0].AsInteger;
                            end else begin
                               xresulinsert_mail.Add('E-MAIL INVÁLIDO: '+xstr_mail);
                               Inc(xerrosadd);
                            end;
                         end;
                         Close;
                         if (updateregAdd) then begin
                             CommandText:= 'DELETE FROM FROM '+LstTables.Table[5]+
                                           ' WHERE codigo = '+#39+IntToStr(axcod)+#39;
                             try
                                Execute;
                                xerrorinsert:=false;
                             except
                                xresulinsert_mail.Add('ERRO: '+xstr_mail+' ocorreu um erro ao inserir registro.');
                                Inc(xerrosadd);
                             end;
                         end;
                    end;
                    if not xerrorinsert then begin
                         axcod:=dm.GetCodMax(LstTables.Table[5],'codigo','');
                         with dm.executa do begin
                             CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_ent,cp3,cp4,cp13,'+
                                           'cp28,cp29,cp30,cp31,cp32,cp33,cp34,xtp) '+
                                           'VALUES(:p0,:p1,:p2,'+#39+FormatDateTime('yyyymmdd',xcpw4.Date)+' 00:00:00'+#39+',:p3,'+
                                           #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                                           #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                                           #39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+','+
                                           ':p4,:p5,:p6,:p7,:p8)';
                             Params[0].AsInteger:=axcod;
                             Params[1].AsInteger:=AxDadosUsr.cod_web;
                             Params[2].AsString:=xstr_nome;
                             Params[3].AsString:=xstr_mail;
                             Params[4].AsString:=BoolToStr(true);
                             Params[5].AsString:= 'A';
                             Params[6].AsString := BoolToStr(false);
                             Params[7].AsInteger:= selectClassID;
                             Params[8].AsString:=AxDadosUsr.axparm;
                         end;
                         try
                           dm.executa.Execute;
                           //xresulinsert_mail.Add('e-mail '+xstr_mail+' cadastrado com sucesso.');
                         except
                           xresulinsert_mail.Add('ERRO: '+xstr_mail+' ocorreu um erro ao inserir registro.');
                           Inc(xerrosadd);
                         end;
                    end;
                end;
                dm.ds_sql4.Close;
                dm.ds_sql4.Open;
                Lb_countreg2.Caption:=Inttostr(dm.ds_sql4.RecordCount);
                //dm.ds_sql4.Last;
                xresulinsert_mail.Add('_________________________________________________');
                xresulinsert_mail.Add('TOTAL DE REGISTROS: '+IntToStr(axlistmail_nome.Count));
                if axlistmail_nome.Count>xresulinsert_mail.Count then
                    axtotalok:=axlistmail_nome.Count-xresulinsert_mail.Count
                else axtotalok:=xresulinsert_mail.Count-axlistmail_nome.Count;
                xresulinsert_mail.Add(IntToStr(axtotalok)+' e-mails adicionados.');
                xresulinsert_mail.Add(IntToStr(xerrosadd)+' erros ao adicionar.');
                loadx.Close;
                hwsf.BtAviso(xresulinsert_mail);
                xnullemail:=false;
              end;
            end;
            if xnullemail then begin
               loadx.Close;
               hwsf.BtMensagem('Não há e-mails cadastrados no arquivo importado!');
            end;
         finally
            axlistmail.free;
            axlistmail_nome.Free;
            axlistmail_mail.free;
         end;
      end;
end;

procedure Tmdl_usrcontact.Nomeemail1Click(Sender: TObject);
begin
      Nomeemail1.Checked:= not Nomeemail1.Checked;
end;

procedure Tmdl_usrcontact.email1Click(Sender: TObject);
begin
      email1.Checked:= true;
end;

function Tmdl_usrcontact.selectClassPop(xslctClss:Integer):Boolean;
begin
      selectClassID:= xslctClss;
      Semclassificao1.Checked:= (xslctClss=0);
      NewsletterWebsite1.Checked:= (xslctClss=1);
      Contratantes1.Checked:= (xslctClss=2);
end;

procedure Tmdl_usrcontact.Semclassificao1Click(Sender: TObject);
begin
      selectClassPop(0);
end;

procedure Tmdl_usrcontact.NewsletterWebsite1Click(Sender: TObject);
begin
      selectClassPop(1);
end;

procedure Tmdl_usrcontact.Contratantes1Click(Sender: TObject);
begin
      selectClassPop(2);
end;

procedure Tmdl_usrcontact.class_newsChange(Sender: TObject);
begin
     selectClassPop(class_news.ItemIndex);
     filtrar_reg;
end;

function Tmdl_usrcontact.DelRegSelect(xidReg:Integer):Boolean;
var xresultdel: Boolean;
begin
    with dm.executa do begin
         CommandText:='UPDATE '+LstTables.Table[5]+' SET cp55=:p0,'+
                      'cp30='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+
                      ' WHERE codigo=:p1';
         Params[0].AsString:='650';
         Params[1].AsInteger:=xidReg;
         try
            dm.executa.Execute;
            xresultdel:=true;
         except
            xresultdel:=false;
         end;
    end;
    Result:=xresultdel;
end;

procedure Tmdl_usrcontact.bt_del2Click(Sender: TObject);
var axcoddel:Integer;
    axshowing,xresultdel2: Boolean;
begin
    if (dm.ds_sql4.RecordCount>0) and (xcodigo2.Text<>'novo') then begin
        //if dm.deleta_reg(LstTables.Table[5],'codigo',xcodigo2.Text,true) then begin
        if hwsf.BtConfirma('Excluir Registro ['+xcpw3.Text+']?') then begin
           axshowing:= loadx.Showing;
           if not axshowing then begin
             loadx := Tloadx.Create(Application);
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.Show;
             loadx.Update;
           end else begin
             loadx.lbloading.Caption:='Excluindo registro';
             loadx.lbloading.Repaint;
           end;
           axcoddel:=StrtoInt(xcodigo2.Text);
           xresultdel2:=DelRegSelect(axcoddel);
           if not axshowing then loadx.Close;
           if xresultdel2 then begin
              hwsf.BtMensagem('Registro Excluido com sucesso.');
              dm.ds_sql4.Close;
              dm.ds_sql4.Open;
              atualiza_grade2;
           end else begin
              hwsf.BtMensagem('Ocorreu algum erro.');
           end;
        end;
    end;
end;

procedure Tmdl_usrcontact.bt_delALLClick(Sender: TObject);
var axcoddel:Integer;
    axshowing,xresultdel2: Boolean;
begin
     if hwsf.BtConfirma('Tem certeza que deseja Excluir todos os registros Listados?') then begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
          loadx := Tloadx.Create(Application);
          loadx.lbloading.Caption:='Excluindo Registros';
          loadx.Show;
          loadx.Update;
        end else begin
          loadx.lbloading.Caption:='Excluindo Registros';
          loadx.lbloading.Repaint;
        end;
        dm.ds_sql4.First;
        While not dm.ds_sql4.Eof do begin
            axcoddel:=dm.ds_sql4.fieldbyname('codigo').AsInteger;
            xresultdel2:=DelRegSelect(axcoddel);
            if not xresultdel2 then Break;
            dm.ds_sql4.Next;
        end;
        dm.ds_sql4.Close;
        dm.ds_sql4.Open;
        if not axshowing then loadx.Close;
        if xresultdel2 then hwsf.BtMensagem('Registros Excluidos com sucesso.')
        else hwsf.BtMensagem('Ocorreu um erro ao Excluir Registros.');
        atualiza_grade2;
     end;
end;

end.
