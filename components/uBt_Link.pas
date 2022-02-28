{###############################################################################
Programa: Bt_desc
Módulo: Dialog Digitação de campo.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_Link;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TBt_Link = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_getip: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Edit_desc: TEdit;
    Label1: TLabel;
    RadioButton_getip2: TRadioButton;
    RadioButton_getip1: TRadioButton;
    AddressListBox: TListBox;
    StatusBar_getip: TStatusBar;
    CheckBox_oplnk: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_getipClick(Sender: TObject);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    xlinkok:Boolean;
    { Private declarations }
  public
    bt_desctx: string;
    AX_oplnk: Boolean;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_Link: TBt_Link;

implementation
Uses hwsfunctions, WinSock;

{$R *.dfm}

procedure TBt_Link.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     AX_oplnk:= CheckBox_oplnk.Checked;
     if xlinkok then bt_desctx:=Edit_desc.Text
     else bt_desctx:='';
     Action:= caHide;
end;

procedure TBt_Link.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then bt_getip.Click;
end;

procedure TBt_Link.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then bt_getip.Click;
end;

procedure TBt_Link.bt_getipClick(Sender: TObject);
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
  xlinkok:=false;
  bt_getip.Enabled := False;
  //Cursor := crHourGlass;
  AddressListBox.Clear();
  StatusBar_getip.Panels[0].Text := ' Localizando...' ;
  StatusBar_getip.Panels[1].Text:= '0';
  // WinSock initialisation
  WSAStartUp( $101, WSAData );
  try
     if RadioButton_getip2.Checked then begin
       Host := Trim( Edit_desc.Text );
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
       Address := Trim( Edit_desc.Text );
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
     xlinkok:=true;
  except
     on E: Exception do begin
        Beep();
        StatusBar_getip.Panels[0].Text:= ( E.Message );
     end;
  end;
  WSACleanUp();
  StatusBar_getip.Panels[0].Text:= 'Processo concluído.';
  StatusBar_getip.Panels[1].Text:= InttoStr(AddressListBox.Count);
  if xlinkok then begin
     Application.ProcessMessages;
     Sleep(2000);
     Close;
  end else begin
      hwsf.BtMensagem('Domínio inválido');
      Edit_desc.SetFocus;
      Edit_desc.SelectAll;
  end;
  bt_getip.Enabled := True;
end;

procedure TBt_Link.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_Link.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_link.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Link.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_link.Left:= bt_link.Left-(mv_mouse.x-x);
      bt_link.Top:= bt_link.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_Link.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_link.Left := bt_link.Left - (mv_mouse.x -x);
      bt_link.Top := bt_link.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_Link.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_link.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Link.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

end.
