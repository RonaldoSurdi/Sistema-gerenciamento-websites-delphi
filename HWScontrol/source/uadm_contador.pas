{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_contador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, yupack,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ShellAPI, ToolWin,
  AppEvnts;

type
  Tadm_contador = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    lbcp6: TDateTimePicker;
    lbcp7: TDateTimePicker;
    lbcp8: TDateTimePicker;
    lbcp9: TDateTimePicker;
    ComboBox_filtrodata: TComboBox;
    ToolBar2: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    lbcp3: TComboBox;
    bt_atualizar: TSpeedButton;
    bt_limpar: TSpeedButton;
    bt_executa: TSpeedButton;
    Label5: TLabel;
    Lb_countreg: TLabel;
    GroupBox1: TGroupBox;
    ToolBar1: TToolBar;
    ed_geip: TEdit;
    bt_getip: TSpeedButton;
    ToolBar3: TToolBar;
    Label1: TLabel;
    RadioButton_getip1: TRadioButton;
    RadioButton_getip2: TRadioButton;
    Panel2: TPanel;
    StatusBar_getip: TStatusBar;
    AddressListBox: TListBox;
    Splitter1: TSplitter;
    CheckBox_getip: TCheckBox;
    StatusBar1: TStatusBar;
    bt_printhtml: TSpeedButton;
    SaveDialog_print: TSaveDialog;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_executaClick(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure ComboBox_filtrodataChange(Sender: TObject);
    procedure bt_getipClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_printhtmlClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit: Boolean;
    xlstcodweb: TStringList;
    axfiltro: string;
    procedure atualiza_grade;
    function StrToHtml(mStr: string; mFont: TFont = nil): string;
    function ColorToHtml(mColor: TColor): string;
    function DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings; mCaption: TCaption = ''): Boolean;
    { Private declarations }
  public
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_contador: Tadm_contador;

implementation
uses udm, WinSock;

{$R *.dfm}

procedure Tadm_contador.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     loadx.Progressloading.position:=50;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tadm_contador.FormCreate(Sender: TObject);
var axshowing: Boolean;
    xcountid: Integer;
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
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     adm_contador.Caption := AxDadosUsr.axtitle;
     xinit:=true;
     DBGrid1.DataSource:=dm.source_sql;
     lbcp6.DateTime:=Now;
     lbcp7.DateTime:=Now;
     lbcp8.DateTime:=Now;
     lbcp9.DateTime:=Now;
     lbcp6.Enabled:=false;
     lbcp7.Enabled:=false;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
     loadx.Progressloading.position:=40;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     //DBGrid1.Columns.Items[1].FieldName:='cod_web';
     //DBGrid1.Columns.Items[1].Title.Caption:='Website';
     //DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cp3';
     DBGrid1.Columns.Items[1].Title.Caption:='Data';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp4';
     DBGrid1.Columns.Items[2].Title.Caption:='Hora';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cp1';
     DBGrid1.Columns.Items[3].Title.Caption:='IP';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cp2';
     DBGrid1.Columns.Items[4].Title.Caption:='Detalhes';
     loadx.Progressloading.position:=50;
     loadx.Progressloading.position:=60;
     //websites
     With dm.ds_sql3 do begin
        xlstcodweb:= TStringList.Create;
        xlstcodweb.Clear;
        if AxDadosUsr.master then begin
           CommandText:= 'SELECT codigo,website,cod_ent FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                                 ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_ent_1)+#39+
                                 ' ORDER BY website';
        end else begin
           CommandText:= 'SELECT codigo,website,cod_ent FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                                 ' WHERE codigo='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                 ' ORDER BY website';
        end;
        Open;
        Filter:='';
        Filtered:=true;
        First;
        lbcp3.Clear;
        if recordcount>1 then begin
           lbcp3.Items.Add('Todos');
           While not Eof do begin
                lbcp3.Items.Add(fieldbyname('website').AsString);
                xlstcodweb.Add(fieldbyname('codigo').AsString);
                Next;
           end;
        end else begin
           lbcp3.Items.Add(fieldbyname('website').AsString);
           xlstcodweb.Add(fieldbyname('codigo').AsString);
        end;
        lbcp3.ItemIndex:=0;
     end;
     loadx.Progressloading.position:=80;
     //logs
     With dm.ds_sql do begin
        axfiltro:='';
        if xlstcodweb.count>1 then begin
           for xcountid:=0 to xlstcodweb.count-1 do begin
               if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
               axfiltro:=axfiltro+'cod_web='+#39+xlstcodweb.Strings[xcountid]+#39;
           end;
        end else begin
           axfiltro:='cod_web='+#39+xlstcodweb.Strings[0]+#39;
        end;
        axfiltro:=' WHERE '+axfiltro;
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf51,37249)+
                              axfiltro+
                              ' ORDER BY cod_web,cp3,cp4';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
     atualiza_grade;
end;

{procedure Tadm_contador.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_contador.FormActivate(Sender: TObject);
begin
      adm_contador.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tadm_contador.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
end;

procedure Tadm_contador.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
end;

procedure Tadm_contador.bt_executaClick(Sender: TObject);
var axfiltro:string;
begin
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Executando filtro';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.Position:=0;
      axfiltro:='';
      loadx.Progressloading.Position:=10;
      if lbcp3.ItemIndex>0 then begin
         if dm.ds_sql3.Locate('website',lbcp3.Text,[]) then
            axfiltro:='cod_web='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39;
      end;
      loadx.Progressloading.Position:=50;
      //periodo
      Case ComboBox_filtrodata.ItemIndex of
           1: begin
              if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
              axfiltro:=axfiltro+'(cp3>='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                                 'cp3<='+#39+DateToStr(lbcp8.Date)+#39+') AND '+
                                 '(cp4>='+#39+TimeToStr(lbcp7.Time)+#39+' AND '+
                                 'cp4<='+#39+TimeToStr(lbcp9.Date)+#39+')';
           end;
           2: begin
              if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
              axfiltro:=axfiltro+'cp3<='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                                 'cp4<='+#39+TimeToStr(lbcp7.Date)+#39;
           end;
           3: begin
              if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
              axfiltro:=axfiltro+'cp3>='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                                 'cp4>='+#39+TimeToStr(lbcp7.Date)+#39;
           end;
      End;
      //filtrar
      With dm.ds_sql do begin
           Filter:=axfiltro;
      end;
      loadx.Progressloading.Position:=100;
      atualiza_grade;
      loadx.Close;
end;

procedure Tadm_contador.bt_limparClick(Sender: TObject);
begin
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Atualizando dados';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.Position:=30;
      //limpar filtro
      With dm.ds_sql do begin
           Filter:='';
      end;
      loadx.Progressloading.Position:=60;
      atualiza_grade;
      loadx.Progressloading.Position:=100;
      loadx.Close;
end;

procedure Tadm_contador.atualiza_grade;
begin
      ed_geip.Text:=dm.ds_sql.fieldbyname('cp1').AsString;
      Lb_countreg.Caption:=InttoStr(dm.ds_sql.recordcount);
      if (CheckBox_getip.Checked) and (bt_getip.Enabled) then
          bt_getip.Click;
end;

procedure Tadm_contador.bt_atualizarClick(Sender: TObject);
begin
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Atualizando dados';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.Position:=30;
      dm.ds_sql.Close;
      dm.ds_sql.Open;
      loadx.Progressloading.Position:=60;
      atualiza_grade;
      loadx.Progressloading.Position:=100;
      loadx.Close;
end;

procedure Tadm_contador.ComboBox_filtrodataChange(Sender: TObject);
begin
      Case ComboBox_filtrodata.ItemIndex of
           0:begin
             lbcp6.Enabled:=false;
             lbcp7.Enabled:=false;
             lbcp8.Enabled:=false;
             lbcp9.Enabled:=false;
           end;
           1:begin
             lbcp6.Enabled:=true;
             lbcp7.Enabled:=true;
             lbcp8.Enabled:=true;
             lbcp9.Enabled:=true;
           end;
           2:begin
             lbcp6.Enabled:=true;
             lbcp7.Enabled:=true;
             lbcp8.Enabled:=false;
             lbcp9.Enabled:=false;
           end;
           3:begin
             lbcp6.Enabled:=true;
             lbcp7.Enabled:=true;
             lbcp8.Enabled:=false;
             lbcp9.Enabled:=false;
           end;
      End;
end;

procedure Tadm_contador.bt_getipClick(Sender: TObject);
type
  TAPInAddr = Array[0..100] of PInAddr;
  PAPInAddr = ^TAPInAddr;
var
  //ip
  WSAData: TWSAData;
  Host: String;
  HostEntPtr: PHostEnt;
  pptr: PAPInAddr;
  i: Integer;
  //name
  Address: String;
  InetAddr: u_long;
  HostEnt: THostEnt;
  HostName: String;
  len, struct: Integer;
begin
  bt_getip.Enabled := False;
  //Cursor := crHourGlass;
  AddressListBox.Clear();
  StatusBar_getip.Panels[0].Text := ' Localizando...' ;
  StatusBar_getip.Panels[1].Text:= '0';
  // WinSock initialisation
  WSAStartUp( $101, WSAData );
  try
     if RadioButton_getip2.Checked then begin
       Host := Trim( ed_geip.Text );
       if Host = '' then
         raise Exception.Create( 'Servidor não encontrado' );
       // Get host entry by hostname
       HostEntPtr := GetHostByName( PChar( Host ) );
       if HostEntPtr = NIL then
         raise Exception.Create( 'Erro de sintaxe ' );//+ IntToStr( WSAGetLastError() ) );
       // Make list of host IPs
       pptr := PAPInAddr( HostEntPtr^.h_addr_list );
       i := 0;
       while pptr^[i] <> NIL do begin
         AddressListBox.Items.Add( inet_ntoa( pptr^[i]^ ) );
         Inc( i );
       end;
     end else begin
       Address := Trim( ed_geip.Text );
       if Address = '' then
         raise Exception.Create( 'Endereço IP off-line' );
       // Convert textual IP address to binary format
       InetAddr := inet_addr( PChar(Address) );
       if InetAddr = SOCKET_ERROR then
         raise Exception.Create( 'Nome inválido' );
       // Get hist entry by IP
       HostEntPtr := GetHostByAddr( @InetAddr, len, struct );
       if HostEntPtr = NIL then
         raise Exception.Create( 'Erro de sintaxe ' );//+ IntToStr( WSAGetLastError() ) );
       // Insert hostname into list
       HostName := String( HostEntPtr^.h_name );
       AddressListBox.Items.Add( HostName );
       // Add aliases into list (if aliases are present in host entry)
       pptr := PAPInAddr( HostEntPtr^.h_aliases );
       i := 0;
       while pptr^[i] <> NIL do begin
         AddressListBox.Items.Add( String( pptr^[i] ) );
         Inc( i );
       end;
     end;
  except
     on E: Exception do begin
        Beep();
        StatusBar_getip.Panels[0].Text:= ( E.Message );
     end;
  end;
  WSACleanUp();
  StatusBar_getip.Panels[0].Text:= 'Processo concluído.';
  StatusBar_getip.Panels[1].Text:= InttoStr(AddressListBox.Count);
  bt_getip.Enabled := True;
end;

procedure Tadm_contador.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_contador.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_contador.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

function Tadm_contador.DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings;
  mCaption: TCaption = ''): Boolean;
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
    mStrings.Add('<p align="center"><a href="http://www.hws.com.br"><font size="2" face="Verdana">Desenvolvido por HWS Web Solution Ltda</font></a></p>');
  finally
    mDBGrid.DataSource.DataSet.Bookmark := vBookmark;
    mDBGrid.DataSource.DataSet.EnableControls;
    vWidths := nil;
  end;
  Result := True;
end; { DBGridToHtmlTable }

procedure Tadm_contador.bt_printhtmlClick(Sender: TObject);
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
          title_html:='<p align="center"><b><font face="Verdana" size="4" color="#0000FF">'+
                      'Relatório '+InttoStr(AxDadosUsr.cod_web)+' | '+lbcp3.Text+
                      '</font></b></p>';
          DBGridToHtmlTable(DBGrid1, xexphtml, title_html);//Caption
          xexphtml.SaveToFile(SaveDialog_print.FileName);
          ShellExecute(Handle, nil, PChar(SaveDialog_print.FileName), nil, nil, SW_SHOW);
        Finally
          xexphtml.Free;
        End;
     end;
end;

function Tadm_contador.StrToHtml(mStr: string; mFont: TFont = nil): string;
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
end; { StrToHtml }

function Tadm_contador.ColorToHtml(mColor: TColor): string;
begin
  mColor := ColorToRGB(mColor);
  Result := Format('#%.2x%.2x%.2x',
    [GetRValue(mColor), GetGValue(mColor), GetBValue(mColor)]);
end; { ColorToHtml }


procedure Tadm_contador.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


