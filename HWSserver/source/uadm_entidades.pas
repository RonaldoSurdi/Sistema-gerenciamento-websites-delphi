{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de entidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_entidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, MConnect, ObjBrkr, XPMan;


type
  Tadm_entidades = class(TForm)
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
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
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
    Label1: TLabel;
    lbcp14: TLabeledEdit;
    lbcp15: TLabeledEdit;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    lbcp16: TMemo;
    Label2: TLabel;
    bt_maximiza: TSpeedButton;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
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
    bt_buscacep: TSpeedButton;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    tp_emp: TComboBox;
    Label6: TLabel;
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
  private
    cv : string;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure addreg;
    procedure filtrar_reg;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_entidades: Tadm_entidades;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_entidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.executa3.Close;
     Action:=cafree;
end;

procedure Tadm_entidades.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_entidades.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=20;
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
     loadx.Progressloading.position:=80;
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
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_entidades.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_entidades.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_entidades.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_entidades.atualiza_grade;
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
            tp_emp.ItemIndex:=fieldbyname('tp').AsInteger;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
end;

procedure Tadm_entidades.addreg;
begin
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
     tp_emp.ItemIndex:=0;
end;

procedure Tadm_entidades.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_entidades.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_entidades.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_entidades.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_entidades.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_entidades.Left:= adm_entidades.Left-(mv_mouse.x-x);
      adm_entidades.Top:= adm_entidades.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_entidades.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_entidades.Left := adm_entidades.Left - (mv_mouse.x -x);
      adm_entidades.Top := adm_entidades.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_entidades.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_entidades.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_entidades.bt_maximizaClick(Sender: TObject);
begin
    if adm_entidades.WindowState=wsMaximized then adm_entidades.WindowState:=wsNormal
    else adm_entidades.WindowState:=wsMaximized;
end;

procedure Tadm_entidades.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_entidades.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_entidades.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf26,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_entidades.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf26,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf26,37249)+' (codigo,razao_social,fantasia,cnpj,insc_est,telefone1,telefone2,fax,celular,endereco,numero,complemento,cod_cidade,cep,obs,tp) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15)';
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
            Params[15].AsInteger:=tp_emp.ItemIndex;
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf26,37249)+' SET razao_social=:p0,fantasia=:p1,cnpj=:p2,insc_est=:p3,telefone1=:p4,telefone2=:p5,fax=:p6,celular=:p7,endereco=:p8,numero=:p9,complemento=:p10,cod_cidade=:p11,cep=:p12,obs=:p13,tp=:p14 '+
                       'WHERE codigo=:p15';
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
            Params[14].AsInteger:=tp_emp.ItemIndex;
            Params[15].AsInteger:=axcod;
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

procedure Tadm_entidades.lbcp13Change(Sender: TObject);
begin
     if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
        lbcp14.Text:=dm.executa3.fieldbyname('uf').AsString;
     end;
end;

procedure Tadm_entidades.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tadm_entidades.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tadm_entidades.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_entidades.filtrar_reg;
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

procedure Tadm_entidades.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_entidades.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_entidades.lbcp4KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp5KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp11KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp15KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_entidades.bt_buscacepClick(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tadm_entidades.Timer1Timer(Sender: TObject);
begin
      Application.Terminate;
end;

end.
