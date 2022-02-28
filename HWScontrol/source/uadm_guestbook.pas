{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_guestbook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, yupack,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  jpeg, AppEvnts;

type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  Tadm_guestbook = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    ed_geip: TEdit;
    bt_getip: TSpeedButton;
    ToolBar3: TToolBar;
    Label1: TLabel;
    RadioButton_getip1: TRadioButton;
    RadioButton_getip2: TRadioButton;
    CheckBox_getip: TCheckBox;
    StatusBar_getip: TStatusBar;
    AddressListBox: TListBox;
    GroupBox4: TGroupBox;
    lbcp2: TLabeledEdit;
    lbcp3: TLabeledEdit;
    Label2: TLabel;
    lbcp1: TLabel;
    lbcp4: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    Labelfiltde: TLabel;
    Labelfiltate: TLabel;
    Label3: TLabel;
    lbcp6: TDateTimePicker;
    lbcp7: TDateTimePicker;
    lbcp8: TDateTimePicker;
    lbcp9: TDateTimePicker;
    ComboBox_web: TComboBox;
    ToolBar5: TToolBar;
    pn_notmaster: TPanel;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    Panel4: TPanel;
    Label4: TLabel;
    lbcp5: TRichEdit;
    lbcpdt: TLabel;
    RichEdittmp: TRichEdit;
    PrintDialogtmp: TPrintDialog;
    RadioButton3: TRadioButton;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ToolBar6: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    Label9: TLabel;
    RadioButtontp1: TRadioButton;
    CheckBoxfil: TCheckBox;
    RadioButtontp2: TCheckBox;
    RadioButtontp3: TCheckBox;
    RadioButtontp4: TCheckBox;
    bt_atualizar: TSpeedButton;
    Panel6: TPanel;
    ToolBar2: TToolBar;
    bt_limpar: TSpeedButton;
    bt_executa: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_executaClick(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure bt_getipClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_webChange(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckBoxfilClick(Sender: TObject);
    procedure RadioButtontpClick(Sender: TObject);
    procedure RadioButtontp2Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit: Boolean;
    LstTables: TLstTables;
    xcodunit: Integer;
    procedure monta_table1;
    procedure atualiza_grade;
    procedure addreg;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_guestbook: Tadm_guestbook;

implementation
uses udm, WinSock, DBClient;

{$R *.dfm}

procedure Tadm_guestbook.FormClose(Sender: TObject; var Action: TCloseAction);
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
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
     Action:=cafree;
end;

procedure Tadm_guestbook.FormCreate(Sender: TObject);
var axshowing: Boolean;
    xcountid: Integer;
    axstr_filtro_stream: TMemoryStream;
    axid_web,axid_web2,xforcps: integer;
    xaxparam: string;
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
     xinit:=true;
     xcodunit:=0;
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     adm_guestbook.Caption := AxDadosUsr.axtitle;
     xinit:=true;
     DBGrid1.DataSource:=dm.source_sql;
     lbcp6.DateTime:=Now-30;
     lbcp7.DateTime:=StrToTime('00:00:00');
     lbcp8.DateTime:=Now;
     lbcp9.DateTime:=StrToTime('23:59:59');
     lbcp6.Enabled:=false;
     lbcp7.Enabled:=false;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
     Labelfiltde.Enabled:=false;
     Labelfiltate.Enabled:=false;
     loadx.Progressloading.position:=40;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     //DBGrid1.Columns.Items[1].FieldName:='cod_web';
     //DBGrid1.Columns.Items[1].Title.Caption:='Website';
     //DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cp5';
     DBGrid1.Columns.Items[1].Title.Caption:='Data/Hora';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp1';
     DBGrid1.Columns.Items[2].Title.Caption:='Nome';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cp2';
     DBGrid1.Columns.Items[3].Title.Caption:='e-mail';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cp7';
     DBGrid1.Columns.Items[4].Title.Caption:='IP';
     loadx.Progressloading.position:=40;
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
     if ComboBox_web.Items.Count<2 then begin
        ComboBox_web.Enabled:=false;
        Label3.Enabled:=false;
     end;
     loadx.Progressloading.position:=50;
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;

     RadioButtontp3.Checked:=(AxDadosUsr.axparm = '');
     if AxDadosUsr.axparm <> '' then xaxparam:=' AND A.cp5='+#39+AxDadosUsr.axparm+#39;

     With dm.ds_sql11 do begin
          //CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                xaxparam+
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
     loadx.Progressloading.position:=60;
     monta_table1;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tadm_guestbook.monta_table1;
var axshowing: Boolean;
    axfiltro:string;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando registros';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando registros';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.Position:=10;
     axfiltro := '';
     //periodo
     if CheckBoxfil.Checked then begin
        axfiltro:=' AND ';
        axfiltro:=axfiltro+'(cp5>='+#39+DateToStr(lbcp6.Date)+' '+TimeToStr(lbcp7.Time)+#39+' AND '+
                           'cp5<='+#39+DateToStr(lbcp8.Date)+' '+TimeToStr(lbcp9.Date)+#39+')';
     end;
     if (not RadioButtontp1.Checked) then begin
        if (RadioButtontp2.Checked or RadioButtontp3.Checked or RadioButtontp4.Checked) then begin
           if RadioButtontp2.Checked then begin
              axfiltro:=axfiltro+' AND (';
              axfiltro:= axfiltro + '(cp6='+#39+'0'+#39+')';
           end;
           if RadioButtontp3.Checked then begin
              if RadioButtontp2.Checked then axfiltro:=axfiltro+' OR '
              else axfiltro:=axfiltro+' AND (';
              axfiltro:= axfiltro + '(cp6='+#39+'1'+#39+')';
           end;
           if RadioButtontp4.Checked then begin
              if (RadioButtontp2.Checked or RadioButtontp3.Checked)then axfiltro:=axfiltro+' OR '
              else axfiltro:=axfiltro+' AND ';
              axfiltro:= axfiltro + '(cp6='+#39+'2'+#39+')';
           end;
           axfiltro:=axfiltro+')';
        end;
     end;
     loadx.Progressloading.Position:=50;
     //livro de visitas
     With dm.ds_sql do begin
        if Active then Close;
        CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                      ' WHERE (cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ') AND (xtp='+#39+AxDadosUsr.axparm+#39+
                      ') AND (cp6<>'+#39+'4'+#39+')'+
                      axfiltro+
                      ' ORDER BY cod_web,codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=90;
     atualiza_grade;
     if not axshowing then loadx.Close;
end;

procedure Tadm_guestbook.bt_executaClick(Sender: TObject);
begin
    monta_table1;
end;

{procedure Tadm_guestbook.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_guestbook.FormActivate(Sender: TObject);
begin
      adm_guestbook.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tadm_guestbook.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
end;

procedure Tadm_guestbook.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
end;

procedure Tadm_guestbook.bt_limparClick(Sender: TObject);
var axshowing: Boolean;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.Position:=30;
      //limpar filtro
      CheckBoxfil.Checked:=false;
      RadioButtontp1.Checked:=true;
      RadioButtontp2.Checked:=false;
      RadioButtontp3.Checked:=false;
      RadioButtontp4.Checked:=false;
      monta_table1;
      atualiza_grade;
      if not axshowing then loadx.Close;
end;

procedure Tadm_guestbook.addreg;
begin
    RadioButton1.Checked:=false;
    RadioButton2.Checked:=false;
    RadioButton3.Checked:=false;
    lbcp1.Caption:='0';
    lbcpdt.Caption:='';
    lbcp2.Text:='';
    lbcp3.Text:='';
    lbcp4.Checked:=false;
    lbcp5.Clear;
    ed_geip.Text:='';
    AddressListBox.Clear;
end;

procedure Tadm_guestbook.atualiza_grade;
var axshowing: Boolean;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql do begin
            if xcodunit=fieldbyname('codigo').AsInteger then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            xcodunit:=fieldbyname('codigo').AsInteger;
            lbcp1.Caption:=fieldbyname('codigo').AsString;
            lbcp2.Text:=fieldbyname('cp1').AsString;
            lbcp3.Text:=fieldbyname('cp2').AsString;
            lbcp4.Checked:= StrToBool(fieldbyname('cp4').AsString);
            lbcpdt.Caption:=fieldbyname('cp5').AsString;
            lbcp5.Clear;
            lbcp5.Lines.Assign(fieldbyname('cp3'));
            if (fieldbyname('cp6').AsInteger = 0) then RadioButton1.Checked:=true
            else if (fieldbyname('cp6').AsInteger = 1) then RadioButton2.Checked:=true
            else RadioButton3.Checked:=true;
            ed_geip.Text:=fieldbyname('cp7').AsString;
         end;
      end;
      Lb_countreg.Caption:=InttoStr(dm.ds_sql.recordcount);
      if (CheckBox_getip.Checked) and (bt_getip.Enabled) then
          bt_getip.Click;
      if not axshowing then loadx.Close;
end;

procedure Tadm_guestbook.bt_atualizarClick(Sender: TObject);
var axshowing: Boolean;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.lbloading.Repaint;
      end;
      dm.ds_sql.Close;
      dm.ds_sql.Open;
      atualiza_grade;  
      if not axshowing then loadx.Close;
end;

procedure Tadm_guestbook.bt_getipClick(Sender: TObject);
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

procedure Tadm_guestbook.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_guestbook.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_guestbook.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_guestbook.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
          end;
      end;
end;

procedure Tadm_guestbook.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Caption<>'0') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',lbcp1.Caption,true) then begin
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_guestbook.bt_saveClick(Sender: TObject);
var axshowing: Boolean;
begin
     if lbcp1.Caption = '0' then exit;
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=25;
     bt_save.Enabled:=false;
     bt_del.Enabled:=false;
     with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3,cp6=:p4 '+
                          'WHERE codigo=:p5';
            Params[0].AsString:= lbcp2.Text;
            Params[1].AsString:= lbcp3.Text;
            Params[2].Assign(lbcp5.Lines);
            Params[3].AsString:= BoolToStr(lbcp4.Checked);
            if RadioButton1.Checked then Params[4].AsInteger:=0
            else if RadioButton2.Checked then Params[4].AsInteger:=1
            else Params[4].AsInteger:=2;
            Params[5].AsInteger:=xcodunit;
            try
               loadx.Progressloading.position:=80;
               Execute;
               loadx.Progressloading.position:=90;
            except
               hwsf.BtMensagem('Ocorreu algum erro.');
               bt_save.Enabled:=true;
               bt_del.Enabled:=true;
               exit;
            end;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     if ((RadioButtontp1.Checked) or
         (RadioButton1.Checked and RadioButtontp2.Checked) or
         (RadioButton2.Checked and RadioButtontp3.Checked) or
         (RadioButton3.Checked and RadioButtontp4.Checked)) then
         dm.ds_sql.Locate('codigo',xcodunit,[])
     else atualiza_grade;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     if not axshowing then loadx.Close;
     bt_save.Enabled:=true;
     bt_del.Enabled:=true;
end;

procedure Tadm_guestbook.SpeedButton5Click(Sender: TObject);
var axshowing: Boolean;
    xtipo: String;
begin
      if hwsf.BtConfirma('Imprimir registros selecionados?') then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Gravando dados, aguarde.';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Gravando dados, aguarde.';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=10;
         RichEdittmp.Clear;
         RichEdittmp.Paragraph.LeftIndent:= 20;
         RichEdittmp.Paragraph.RightIndent:= 20;
         RichEdittmp.Lines.Add(' ');
         RichEdittmp.Lines.Add(' ');
         RichEdittmp.Lines.Add(' ');
         RichEdittmp.Lines.Add('L I V R O   DE   V I S I T A S '+AxDadosUsr.website);
         RichEdittmp.Lines.Add(' ');
         RichEdittmp.Lines.Add(' ');
         With dm.ds_sql do begin
              First;
              While not eof do begin
                   RichEdittmp.Lines.Add('Código: '+fieldbyname('codigo').AsString+' - Nome: '+fieldbyname('cp1').AsString+' - e-mail: '+fieldbyname('cp2').AsString);
                   if (fieldbyname('cp6').AsInteger = 0) then xtipo := 'Publicado'
                   else xtipo := 'Avaliação';
                   RichEdittmp.Lines.Add('Data: '+fieldbyname('cp5').AsString+' - Tipo de Mensagem: '+xtipo);
                   RichEdittmp.Lines.Add('Mensagem: '+fieldbyname('cp3').AsString);
                   RichEdittmp.Lines.Add(' ');
                   Next;
              end;
         end;
         if PrintDialogtmp.Execute then
            RichEdittmp.Print('Livro de visitas '+AxDadosUsr.website);
         loadx.Progressloading.position:=100;
         loadx.lbloading.Caption:='Documento impresso sucesso.';
         loadx.lbloading.Repaint;
         Sleep(2000);
         if not axshowing then loadx.Close;
      end;
end;

procedure Tadm_guestbook.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dm.ds_sql.fieldbyname('cp6').AsInteger = 1) then begin
       Dbgrid1.Canvas.Font.Color:= clRed;
       Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
     end else if (dm.ds_sql.fieldbyname('cp6').AsInteger = 2) then begin
       Dbgrid1.Canvas.Font.Color:= clBlue;
       Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
     end;
end;

procedure Tadm_guestbook.CheckBoxfilClick(Sender: TObject);
begin
     lbcp6.Enabled:=CheckBoxfil.Checked;
     lbcp7.Enabled:=CheckBoxfil.Checked;
     lbcp8.Enabled:=CheckBoxfil.Checked;
     lbcp9.Enabled:=CheckBoxfil.Checked;
     Labelfiltde.Enabled:=CheckBoxfil.Checked;
     Labelfiltate.Enabled:=CheckBoxfil.Checked;
end;

procedure Tadm_guestbook.RadioButtontpClick(Sender: TObject);
begin
     if (RadioButtontp1.Checked) then begin
        RadioButtontp2.Checked:=false;
        RadioButtontp3.Checked:=false;
        RadioButtontp4.Checked:=false;
     end;
end;

procedure Tadm_guestbook.RadioButtontp2Click(Sender: TObject);
begin
     if (RadioButtontp2.Checked or RadioButtontp3.Checked or RadioButtontp4.Checked) then
         RadioButtontp1.Checked:=false;
end;

procedure Tadm_guestbook.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


