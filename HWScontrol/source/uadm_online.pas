{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_online;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, yupack,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  Spin, AppEvnts;

type
  Tadm_online = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
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
    Panel2: TPanel;
    ed_geip: TEdit;
    bt_getip: TSpeedButton;
    StatusBar_getip: TStatusBar;
    AddressListBox: TListBox;
    Splitter1: TSplitter;
    ToolBar3: TToolBar;
    Label1: TLabel;
    RadioButton_getip1: TRadioButton;
    RadioButton_getip2: TRadioButton;
    CheckBox_getip: TCheckBox;
    StatusBar1: TStatusBar;
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
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit: Boolean;
    xlstcodweb: TStringList;
    axfiltro_Limit: string;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    procedure monta_tblogs;
    procedure atualiza_grade;
    { Public declarations }
  end;

var
  adm_online: Tadm_online;

implementation
uses udm, WinSock;

{$R *.dfm}

procedure Tadm_online.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Tadm_online.FormCreate(Sender: TObject);
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
     xinit:=true;
     Application.Title := AxDadosUsr.axtitle;
     adm_online.Caption := AxDadosUsr.axtitle;
     DBGrid1.DataSource:=dm.source_sql;
     loadx.Progressloading.position:=40;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     //DBGrid1.Columns.Add;
     //DBGrid1.Columns.Items[1].FieldName:='cod_web';
     //DBGrid1.Columns.Items[1].Title.Caption:='Website';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cp1';
     DBGrid1.Columns.Items[1].Title.Caption:='IP';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp2';
     DBGrid1.Columns.Items[2].Title.Caption:='ID';
     //usuário
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
     monta_tblogs;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
     atualiza_grade;
end;

procedure Tadm_online.FormActivate(Sender: TObject);
begin
      adm_online.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tadm_online.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
end;

procedure Tadm_online.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
end;

procedure Tadm_online.bt_executaClick(Sender: TObject);
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
      //filtrar
      With dm.ds_sql do begin
           Filter:=axfiltro;
      end;
      loadx.Progressloading.Position:=100;
      atualiza_grade;
      loadx.Close;
end;

procedure Tadm_online.bt_limparClick(Sender: TObject);
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

procedure Tadm_online.monta_tblogs;
var xcountid: Integer;
    axfiltro:string;
begin
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
           bt_executa.Visible:=false;
           bt_limpar.Visible:=false;
        end;
        axfiltro:=' WHERE '+axfiltro;
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf52,37249)+
                              axfiltro+
                              ' ORDER BY cod_web,cp1';
        Open;
        Filter:='';
        Filtered:=true;
     end;
end;

procedure Tadm_online.atualiza_grade;
begin
      ed_geip.Text:=dm.ds_sql.fieldbyname('cp1').AsString;
      Lb_countreg.Caption:=InttoStr(dm.ds_sql.recordcount);
      if (CheckBox_getip.Checked) and (bt_getip.Enabled) then
          bt_getip.Click;
end;

procedure Tadm_online.bt_atualizarClick(Sender: TObject);
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

procedure Tadm_online.bt_getipClick(Sender: TObject);
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

procedure Tadm_online.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_online.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_online.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_online.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


