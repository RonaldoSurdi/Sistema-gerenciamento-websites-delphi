{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de entidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_niveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, MConnect, ObjBrkr, XPMan,
  jpeg;


type
  Tadm_niveis = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    PageControl1: TPageControl;
    bt_maximiza: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    Timer1: TTimer;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    ToolBar5: TToolBar;
    bt_prior2: TSpeedButton;
    bt_next2: TSpeedButton;
    bt_marcar: TSpeedButton;
    bt_desmarcar: TSpeedButton;
    bt_save2: TSpeedButton;
    ScrollBox3: TScrollBox;
    Panel6: TPanel;
    Label11: TLabel;
    lbct1: TMemo;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Label12: TLabel;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    bt_buscacep: TSpeedButton;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp5: TLabeledEdit;
    lbcp4: TLabeledEdit;
    lbcp7: TLabeledEdit;
    lbcp6: TLabeledEdit;
    lbcp10: TLabeledEdit;
    lbcp8: TLabeledEdit;
    lbcp9: TLabeledEdit;
    lbcp11: TLabeledEdit;
    lbcp12: TLabeledEdit;
    lbcp13: TComboBox;
    lbcp14: TLabeledEdit;
    lbcp15: TLabeledEdit;
    lbcp16: TMemo;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    XPManifest1: TXPManifest;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure lbcp13Change(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure lbcp4KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp5KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp11KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure bt_buscacepClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bt_prior2Click(Sender: TObject);
    procedure bt_next2Click(Sender: TObject);
    procedure bt_marcarClick(Sender: TObject);
    procedure bt_desmarcarClick(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    cv : string;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure addreg;
    procedure filtrar_reg;
    procedure marcarmodulo(marcar: boolean; axcod: integer);
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_niveis: Tadm_niveis;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_niveis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.executa3.Close;
     dm.ds_int.Filter:='';
     dm.ds_int.Filtered:=false;
     dm.ds_int.Close;
     dm.ds_int2.Filter:='';
     dm.ds_int2.Filtered:=false;
     dm.ds_int2.Close;
     Action:=cafree;
end;

procedure Tadm_niveis.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_niveis.FormCreate(Sender: TObject);
var axshowing: Boolean;
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
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;  
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     DBGrid1.DataSource:=dm.source_sql;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Razão Social');
     cp_search[1]:= 'razao_social';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Fantasia');
     cp_search[2]:= 'fantasia';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.Items.Add('CNPJ');
     cp_search[3]:= 'cnpj';
     tp_search[3]:= 0;
     tm_search[0]:= 15;
     ComboBox_search.Items.Add('Insc. Estadual');
     cp_search[4]:= 'insc_est';
     tp_search[4]:= 0;
     tm_search[4]:= 9;
     ComboBox_search.Items.Add('Endereço');
     cp_search[5]:= 'endereco';
     tp_search[5]:= 1;
     tm_search[5]:= 255;
     ComboBox_search.Items.Add('Cidade');
     cp_search[6]:= 'cod_cidade';
     tp_search[6]:= 1;
     tm_search[6]:= 255;
     ComboBox_search.Items.Add('UF');
     cp_search[7]:= 'UF';
     tp_search[7]:= 1;
     tm_search[7]:= 2;
     ComboBox_search.Items.Add('CEP');
     cp_search[8]:= 'CEP';
     tp_search[8]:= 0;
     tm_search[8]:= 9;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='razao_social';
     DBGrid1.Columns.Items[1].Title.Caption:='Razão Social';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='fantasia';
     DBGrid1.Columns.Items[2].Title.Caption:='Fantasia';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cnpj';
     DBGrid1.Columns.Items[3].Title.Caption:='CNPJ';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='insc_est';
     DBGrid1.Columns.Items[4].Title.Caption:='Inscrição';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='telefone1';
     DBGrid1.Columns.Items[5].Title.Caption:='Telefone 1';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[6].FieldName:='telefone2';
     DBGrid1.Columns.Items[6].Title.Caption:='Telefone 2';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[7].FieldName:='fax';
     DBGrid1.Columns.Items[7].Title.Caption:='Fax';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[8].FieldName:='celular';
     DBGrid1.Columns.Items[8].Title.Caption:='Celular';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[9].FieldName:='endereco';
     DBGrid1.Columns.Items[9].Title.Caption:='Endereço';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[10].FieldName:='numero';
     DBGrid1.Columns.Items[10].Title.Caption:='Número';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[11].FieldName:='complemento';
     DBGrid1.Columns.Items[11].Title.Caption:='Complemento';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[12].FieldName:='cod_cidade';
     DBGrid1.Columns.Items[12].Title.Caption:='Cód. cidade';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[13].FieldName:='cep';
     DBGrid1.Columns.Items[13].Title.Caption:='CEP';
     With dm.ds_sql do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf26,37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=70;
     With dm.executa3 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf27,37249)+' ORDER BY cidade';
        Open;
        First;
        lbcp13.Clear;
        While not Eof do begin
            lbcp13.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=80;
     DBGrid2.DataSource:=dm.source_int;
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
     With dm.ds_int do begin
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,obs FROM '+EnDecryptString(Serverconect.vrf24[1],37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=90;
     With dm.ds_int2 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf32[1],37249)+' ORDER BY codigo';
        Open;
        Filter:='cod_ent='+#39+'0'+#39;
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_niveis.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_niveis.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_niveis.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_niveis.atualiza_grade;
begin
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('razao_social').AsString;
            lbcp3.Text:= fieldbyname('fantasia').AsString;
            lbcp4.Text:= fieldbyname('cnpj').AsString;
            lbcp5.Text:= fieldbyname('insc_est').AsString;
            lbcp6.Text:= fieldbyname('telefone1').AsString;
            lbcp7.Text:= fieldbyname('telefone2').AsString;
            lbcp8.Text:= fieldbyname('fax').AsString;
            lbcp9.Text:= fieldbyname('celular').AsString;
            lbcp10.Text:= fieldbyname('endereco').AsString;
            lbcp11.Text:= fieldbyname('numero').AsString;
            lbcp12.Text:= fieldbyname('complemento').AsString;
            if dm.executa3.Locate('codigo',fieldbyname('cod_cidade').AsString,[]) then begin
               lbcp13.Text:=dm.executa3.fieldbyname('cidade').AsString;
               lbcp14.Text:=dm.executa3.fieldbyname('uf').AsString;
            end else begin
               lbcp13.Text:='';
               lbcp14.Text:='';
            end;
            lbcp15.Text:= fieldbyname('cep').AsString;
            lbcp16.Lines.Assign(fieldbyname('obs'));
            dm.ds_int2.Filter:='cod_ent='+#39+lbcp1.Text+#39;
            TabSheet2.TabVisible:=true;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
      atualiza_grade2;
end;

procedure Tadm_niveis.addreg;
begin
     dm.ds_int2.Filter:='cod_ent='+#39+'0'+#39;
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.Text:= '0';
     lbcp5.Text:= '0';
     lbcp6.Text:= '';
     lbcp7.Text:= '';
     lbcp8.Text:= '';
     lbcp9.Text:= '';
     lbcp10.Text:= '';
     lbcp11.Text:= '0';
     lbcp12.Text:= '';
     lbcp13.Text:= '';
     lbcp14.Text:= '';
     lbcp15.Text:= '0';
     lbcp16.Clear;
     PageControl2.TabIndex:=0;
     TabSheet2.TabVisible:=false;
end;

procedure Tadm_niveis.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_niveis.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_niveis.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_niveis.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_niveis.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_niveis.Left:= adm_niveis.Left-(mv_mouse.x-x);
      adm_niveis.Top:= adm_niveis.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_niveis.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_niveis.Left := adm_niveis.Left - (mv_mouse.x -x);
      adm_niveis.Top := adm_niveis.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_niveis.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_niveis.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
end;


procedure Tadm_niveis.bt_maximizaClick(Sender: TObject);
begin
    if adm_niveis.WindowState=wsMaximized then adm_niveis.WindowState:=wsNormal
    else adm_niveis.WindowState:=wsMaximized;
end;

procedure Tadm_niveis.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_niveis.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_niveis.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf26,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_niveis.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf26,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf26,37249)+' (codigo,razao_social,fantasia,cnpj,insc_est,telefone1,telefone2,fax,celular,endereco,numero,complemento,cod_cidade,cep,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsString:=lbcp3.Text;
            try
                Params[3].AsFloat:=StrtoFloat(lbcp4.Text);
            except
                Params[3].AsFloat:=0;
            end;
            try
                Params[4].AsFloat:=StrtoFloat(lbcp5.Text);
            except
                Params[4].AsFloat:=0;
            end;
            Params[5].AsString:=lbcp6.Text;
            Params[6].AsString:=lbcp7.Text;
            Params[7].AsString:=lbcp8.Text;
            Params[8].AsString:=lbcp9.Text;
            Params[9].AsString:=lbcp10.Text;
            try
                Params[10].AsInteger:=StrtoInt(lbcp11.Text);
            except
                Params[10].AsInteger:=0;
            end;
            Params[11].AsString:=lbcp12.Text;
            if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
               Params[12].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger;
            end else begin
               Params[12].AsInteger:=0;
            end;
            try
                Params[13].AsInteger:=StrtoInt(lbcp15.Text);
            except
                Params[13].AsInteger:=0;
            end;
            Params[14].Assign(lbcp16.Lines);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf26,37249)+' SET razao_social=:p0,fantasia=:p1,cnpj=:p2,insc_est=:p3,telefone1=:p4,telefone2=:p5,fax=:p6,celular=:p7,endereco=:p8,numero=:p9,complemento=:p10,cod_cidade=:p11,cep=:p12,obs=:p13 '+
                       'WHERE codigo=:p14';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            try
                Params[2].AsFloat:=StrtoFloat(lbcp4.Text);
            except
                Params[2].AsFloat:=0;
            end;
            try
                Params[3].AsFloat:=StrtoFloat(lbcp5.Text);
            except
                Params[3].AsFloat:=0;
            end;
            Params[4].AsString:=lbcp6.Text;
            Params[5].AsString:=lbcp7.Text;
            Params[6].AsString:=lbcp8.Text;
            Params[7].AsString:=lbcp9.Text;
            Params[8].AsString:=lbcp10.Text;
            try
                Params[9].AsInteger:=StrtoInt(lbcp11.Text);
            except
                Params[9].AsInteger:=0;
            end;
            Params[10].AsString:=lbcp12.Text;
            if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
               Params[11].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger;
            end else begin
               Params[11].AsInteger:=0;
            end;
            try
                Params[12].AsInteger:=StrtoInt(lbcp15.Text);
            except
                Params[12].AsInteger:=0;
            end;
            Params[13].Assign(lbcp16.Lines);
            Params[14].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_niveis.lbcp13Change(Sender: TObject);
begin
     if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
        lbcp14.Text:=dm.executa3.fieldbyname('uf').AsString;
     end;
end;

procedure Tadm_niveis.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tadm_niveis.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tadm_niveis.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_niveis.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql.Filter:='';
     end else begin
        if ComboBox_search.ItemIndex=6 then begin
           if dm.executa3.Locate('cidade',Edit_search.Text,[]) then begin
               axsearch:=dm.executa3.fieldbyname('codigo').AsString;
               dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
           end;
        end else if ComboBox_search.ItemIndex=7 then begin
           axsearch:='';
           dm.executa3.First;
           While not dm.executa3.Eof do begin
              if dm.executa3.fieldbyname('UF').AsString=Edit_search.Text then begin
                 if axsearch<>'' then axsearch:=axsearch+' AND ';
                 axsearch:=axsearch+cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(axsearch);
              end;
              dm.executa3.Next;
           end;
           dm.ds_sql.filter:= axsearch;
        end else begin
           if tp_search[ComboBox_search.ItemIndex]=1 then
              dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
           else dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        end;
     end;
end;

procedure Tadm_niveis.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_niveis.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_niveis.lbcp4KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_niveis.lbcp5KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_niveis.lbcp11KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_niveis.lbcp15KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_niveis.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_niveis.bt_buscacepClick(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tadm_niveis.Timer1Timer(Sender: TObject);
begin
      Application.Terminate;
end;

procedure Tadm_niveis.bt_prior2Click(Sender: TObject);
begin
    dm.ds_int.Prior;
    atualiza_grade2;
end;

procedure Tadm_niveis.bt_next2Click(Sender: TObject);
begin
    dm.ds_int.Next;
    atualiza_grade2;
end;

procedure Tadm_niveis.atualiza_grade2;
begin
    if dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       lbct1.Lines.Assign(dm.ds_int2.fieldbyname('obs'));
       bt_marcar.Enabled:=false;
       bt_desmarcar.Enabled:=true;
    end else begin
       lbct1.Lines.Assign(dm.ds_int2.fieldbyname('obs'));
       bt_marcar.Enabled:=true;
       bt_desmarcar.Enabled:=false;
    end;
    bt_save2.Enabled:=false;
    DBGrid2.Repaint;
end;

procedure Tadm_niveis.marcarmodulo(marcar: boolean; axcod: integer);
begin
     if marcar then begin
        With dm.executa_int do begin
            axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf32[1],37249),2);
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf32[1],37249)+' (codigo,cod_ent,cod_grp,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrtoInt(lbcp1.Text);
            Params[2].AsInteger:=dm.ds_int.FieldByName('codigo').AsInteger;
            Params[3].Assign(dm.ds_int.FieldByName('obs'));
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
        end;
     end else begin
        dm.deleta_reg2(EnDecryptString(Serverconect.vrf32[1],37249),'codigo',InttoStr(axcod),false);
     end;
     dm.ds_int2.Close;
     dm.ds_int2.Open;
     atualiza_grade2;
end;

procedure Tadm_niveis.bt_marcarClick(Sender: TObject);
begin
    if not dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       marcarmodulo(true,0);
    end;
end;

procedure Tadm_niveis.bt_desmarcarClick(Sender: TObject);
begin
    if dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       marcarmodulo(false,dm.ds_int2.FieldByName('codigo').AsInteger);
    end;
end;

procedure Tadm_niveis.bt_save2Click(Sender: TObject);
begin
    if dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       With dm.executa_int do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf32[1],37249)+' SET obs=:p0 '+
                       'WHERE codigo=:p1';
            Params[0].Assign(lbct1.Lines);
            Params[1].AsInteger:=dm.ds_int2.FieldByName('codigo').AsInteger;
            Try
               Execute;
            Except
               hwsf.BtMensagem('Ocorreu algum erro');
            End;
        end;
        dm.ds_int2.Close;
        dm.ds_int2.Open;
        atualiza_grade2;
    end;
end;

procedure Tadm_niveis.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tadm_niveis.DBGrid2DblClick(Sender: TObject);
begin
    if dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       marcarmodulo(false,dm.ds_int2.FieldByName('codigo').AsInteger);
    end else begin
       marcarmodulo(true,0);
    end;
end;

procedure Tadm_niveis.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dm.ds_int2.Locate('cod_grp',dm.ds_int.FieldByName('codigo').AsInteger,[]) then begin
       Dbgrid2.Canvas.Font.Color:= $00C08000;
       Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
    end;
end;

procedure Tadm_niveis.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tadm_niveis.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

end.
