{###############################################################################
Programa: HWSwebServer
M�dulo: Cadastro de fun��es.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat�rio de acessos:
27/09/2004 - Ronaldo Surdi //Codigica��o do m�dulo.
###############################################################################}

unit uadm_colfuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan;


type
  Tadm_colfuncoes = class(TForm)
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
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
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
    Label2: TLabel;
    lbcp5: TMemo;
    XPManifest1: TXPManifest;
    lbcp3: TLabeledEdit;
    lbcp4: TComboBox;
    Label1: TLabel;
    Edit_search: TComboBox;
    bt_update: TSpeedButton;
    OpenDialog_update: TOpenDialog;
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
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp3Change(Sender: TObject);
    procedure lbcp3KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp4Change(Sender: TObject);
    procedure bt_updateClick(Sender: TObject);
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
  adm_colfuncoes: Tadm_colfuncoes;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_colfuncoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Close;
     Action:=cafree;
end;

procedure Tadm_colfuncoes.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_colfuncoes.FormCreate(Sender: TObject);
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
     DBGrid1.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('C�digo');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Setor');
     cp_search[1]:= 'cod_set';
     tp_search[1]:= 0;
     tm_search[1]:= 11;
     ComboBox_search.Items.Add('Descri��o');
     cp_search[2]:= 'descricao';
     tp_search[2]:= 1;
     tm_search[2]:= 255;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=30;

     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='C�digo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descri��o';
     loadx.Progressloading.position:=60;
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf36,37249)+' ORDER BY codigo';
        showMessage(EnDecryptString(Serverconect.vrf36,37249));

        Open;
        loadx.Progressloading.position:=80;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=90;
     With dm.ds_sql4 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf35,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcp4.Clear;
        While not Eof do begin
           lbcp4.Items.Add(fieldbyname('descricao').AsString);
           Next;
        end;
        loadx.Progressloading.position:=80;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     Edit_search.Items.Assign(lbcp4.Items);
     Edit_search.MaxLength:=255;
     Edit_search.Text:='';
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_colfuncoes.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_colfuncoes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_colfuncoes.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_colfuncoes.atualiza_grade;
begin
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp3.Text:= fieldbyname('cod_set').AsString;
            lbcp5.Lines.Assign(fieldbyname('obs'));
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tadm_colfuncoes.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp5.Clear;
end;

procedure Tadm_colfuncoes.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_colfuncoes.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_colfuncoes.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_colfuncoes.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_colfuncoes.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_colfuncoes.Left:= adm_colfuncoes.Left-(mv_mouse.x-x);
      adm_colfuncoes.Top:= adm_colfuncoes.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_colfuncoes.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_colfuncoes.Left := adm_colfuncoes.Left - (mv_mouse.x -x);
      adm_colfuncoes.Top := adm_colfuncoes.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_colfuncoes.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_colfuncoes.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_colfuncoes.bt_maximizaClick(Sender: TObject);
begin
    if adm_colfuncoes.WindowState=wsMaximized then adm_colfuncoes.WindowState:=wsNormal
    else adm_colfuncoes.WindowState:=wsMaximized;
end;

procedure Tadm_colfuncoes.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_colfuncoes.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_colfuncoes.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql3.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Serverconect.vrf36,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_colfuncoes.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     try
        StrToInt(lbcp3.Text);
     except
        hwsf.BtMensagem('Selecione um setor v�lido.');
        exit;
     end;
     if StrToInt(lbcp3.Text)<=0 then begin
        hwsf.BtMensagem('Selecione um setor v�lido.');
        exit;
     end;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Serverconect.vrf36,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf36,37249)+' (codigo,cod_set,descricao,obs) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrToInt(lbcp3.Text);
            Params[2].AsString:=lbcp2.Text;
            Params[3].Assign(lbcp5.Lines);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf36,37249)+' SET cod_set=:p0,descricao=:p1,obs=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsInteger:=StrToInt(lbcp3.Text);
            Params[1].AsString:=lbcp2.Text;
            Params[2].Assign(lbcp5.Lines);
            Params[3].AsInteger:=axcod;
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

procedure Tadm_colfuncoes.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_colfuncoes.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_colfuncoes.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_colfuncoes.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if ComboBox_search.ItemIndex=1 then begin
           if dm.ds_sql4.Locate('descricao',Edit_search.Text,[]) then begin
              dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(dm.ds_sql4.fieldbyname('codigo').AsString);
          end else dm.ds_sql3.Filter:='';
        end else begin
           if tp_search[ComboBox_search.ItemIndex]=1 then
              dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
           else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
        end;
     end;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tadm_colfuncoes.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_colfuncoes.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex=1 then begin
        Edit_search.Items.Assign(lbcp4.Items);
        Edit_search.MaxLength:=255;
        Edit_search.Text:='';
        filtrar_reg;
     end else if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.Items.Clear;
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_colfuncoes.Edit_searchKeyPress(Sender: TObject;
  var Key: Char);
begin
      if (tp_search[ComboBox_search.ItemIndex]=0) and (ComboBox_search.ItemIndex<>1) then begin
         Case key of
           '0'..'9' :;
           #13, #8, #27:
         else
           Key := #0;
         end;
      end;
      if key=#13 then bt_search.Click;
end;

procedure Tadm_colfuncoes.lbcp3Change(Sender: TObject);
begin
     if lbcp3.Text <> '' then
     if dm.ds_sql4.Locate('codigo',lbcp3.Text,[]) then begin
        lbcp4.Text:=dm.ds_sql4.fieldbyname('descricao').AsString;
     end else lbcp4.Text:='';
end;

procedure Tadm_colfuncoes.lbcp3KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_colfuncoes.lbcp4Change(Sender: TObject);
begin
     if dm.ds_sql4.Locate('descricao',lbcp4.Text,[]) then begin
        lbcp3.Text:=dm.ds_sql4.fieldbyname('codigo').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_colfuncoes.bt_updateClick(Sender: TObject);
var xpathupdt,xpdtUF,xpdtCidade: String;
    xerrorlst,axupdt: TStringList;
    xcodfnd,xcodcid,xidupdt,xidupdt_crt: Longint;
    xtestechr: Char;
    axshowing: Boolean;
begin
     if not hwsf.BtConfirma('Tem certeza que desejas atualizar todos os registros?'+#13+'Formato: �fun��o">'+#13+'(Nome dos arquivos 00_area.txt)') then exit;
     xpathupdt:=hwsf.Btpath;
     if xpathupdt<>'' then begin
        axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Excluindo registros';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Excluindo registros';
           loadx.lbloading.Repaint;
        end;
        adm_colfuncoes.Refresh;
        loadx.Progressloading.position:=0;
        with dm.executa do begin
             CommandText:= 'DELETE FROM '+EnDecryptString(Serverconect.vrf36,37249);
             try
                  dm.executa.Execute;
             except
                  if not axshowing then loadx.Free;
                  hwsf.BtMensagem('Erro ao limpar registros.');
                  exit;
             end;
        end;
        dm.ds_sql3.Close;
        dm.ds_sql3.Open;
        xpathupdt:=xpathupdt+'\';
        xerrorlst:= TStringList.Create;
        axupdt:= TStringList.Create;
        xcodcid:=0;
        loadx.lbloading.Caption:='Iniciando...';
        loadx.lbloading.Repaint;
        loadx.Progressloading.Max:=dm.ds_sql4.RecordCount;
        dm.ds_sql4.First;
        xerrorlst.Add('Iniciando importa��o dos dados.');
        xerrorlst.Add('Caminho: '+xpathupdt);
        xerrorlst.Add(' ');
        While not dm.ds_sql4.Eof do begin
            loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
            xpdtUF:=dm.ds_sql4.fieldbyname('codigo').AsString+'_area.txt';
            xcodfnd:=dm.ds_sql4.fieldbyname('codigo').AsInteger;
            loadx.lbloading.Caption:='Abrindo '+xpdtUF;
            loadx.lbloading.Repaint;
            axupdt.Clear;
            if FileExists(xpathupdt+xpdtUF) then begin
               axupdt.LoadFromFile(xpathupdt+xpdtUF);
               for xidupdt:=0 to axupdt.Count-1 do begin
                   loadx.lbloading.Caption:=xpdtUF+' '+IntToStr(xidupdt+1)+' de '+IntToStr(axupdt.Count);
                   loadx.lbloading.Repaint;
                   xpdtCidade:=axupdt.Strings[xidupdt];
                   for xidupdt_crt:=1 to Length(xpdtCidade) do begin
                       if(copy(xpdtCidade,xidupdt_crt,1)='�') then begin
                          xpdtCidade:=copy(xpdtCidade,xidupdt_crt+1,Length(xpdtCidade));
                          break;
                       end;
                   end;
                   for xidupdt_crt:=Length(xpdtCidade) downto 1 do begin
                       if (copy(xpdtCidade,xidupdt_crt,2)='">') then begin
                          xpdtCidade:=copy(xpdtCidade,1,xidupdt_crt-1);
                          break;
                       end;
                   end;
                   if Length(xpdtCidade) > 2 then begin
                      Inc(xcodcid);
                      with dm.executa do begin
                           CommandText:= 'INSERT INTO '+EnDecryptString(Serverconect.vrf36,37249)+' (codigo,cod_set,descricao) '+
                                      'VALUES(:p0,:p1,:p2)';
                           Params[0].AsInteger:=xcodcid;
                           Params[1].AsInteger:=xcodfnd;
                           Params[2].AsString:=xpdtCidade;
                           try
                              Execute;
                           except
                               xerrorlst.Add(xpdtUF+' --> erro ao importar fun��o ['+xpdtCidade+'].');
                               xcodcid:=xcodcid-1;
                           end;
                      end;
                   end;
               end;
               xerrorlst.Add(xpdtUF+' --> importado com sucesso.');
            end else xerrorlst.Add(xpdtUF+' --> arquivo n�o localizado.');
            dm.ds_sql4.Next;
        end;
        loadx.lbloading.Caption:='Atualizando...';
        loadx.lbloading.Repaint;
        dm.ds_sql3.Close;
        dm.ds_sql3.Open;
        Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
        loadx.Progressloading.Max:=100;
        if not axshowing then loadx.Free;
        xerrorlst.Add('Importa��o conclu�da.');
        hwsf.BtAviso(xerrorlst);
     end;
end;

end.
