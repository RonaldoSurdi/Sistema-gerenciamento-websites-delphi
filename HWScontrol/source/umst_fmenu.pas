unit umst_fmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, ToolWin, DBCtrls, Grids,
  DBGrids, DBClient, db, Spin, XPMan, AppEvnts;

type
  Tfmenu = class(TForm)
    GroupBox1: TGroupBox;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    ed_geip: TEdit;
    bt_getip: TSpeedButton;
    ToolBar3: TToolBar;
    Label1: TLabel;
    RadioButton_getip1: TRadioButton;
    RadioButton_getip2: TRadioButton;
    StatusBar_getip: TStatusBar;
    AddressListBox: TListBox;
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    ToolBar2: TToolBar;
    Conectar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBGrid5: TDBGrid;
    DBNavigator6: TDBNavigator;
    DBGrid6: TDBGrid;
    GroupBox3: TGroupBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    ToolBar4: TToolBar;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    CheckBox9: TCheckBox;
    GroupBox4: TGroupBox;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    Panel3: TPanel;
    ProgressBar6: TProgressBar;
    ProgressBar7: TProgressBar;
    ProgressBar8: TProgressBar;
    ProgressBar9: TProgressBar;
    ProgressBar10: TProgressBar;
    Panel4: TPanel;
    ProgressBar11: TProgressBar;
    ProgressBar12: TProgressBar;
    ProgressBar13: TProgressBar;
    ProgressBar14: TProgressBar;
    ProgressBar15: TProgressBar;
    Panel5: TPanel;
    ProgressBar16: TProgressBar;
    ProgressBar17: TProgressBar;
    ProgressBar18: TProgressBar;
    ProgressBar19: TProgressBar;
    ProgressBar20: TProgressBar;
    Panel6: TPanel;
    ProgressBar21: TProgressBar;
    ProgressBar22: TProgressBar;
    ProgressBar23: TProgressBar;
    ProgressBar24: TProgressBar;
    ProgressBar25: TProgressBar;
    Panel7: TPanel;
    ProgressBar26: TProgressBar;
    ProgressBar27: TProgressBar;
    ProgressBar28: TProgressBar;
    ProgressBar29: TProgressBar;
    ProgressBar30: TProgressBar;
    Memo_stat: TMemo;
    XPManifest1: TXPManifest;
    ApplicationEvents1: TApplicationEvents;
    procedure bt_getipClick(Sender: TObject);
    procedure ConectarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator5Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator6Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    inap:integer;
    function getip(xip:Boolean; vhst:String; var axstr:TStringList):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenu: Tfmenu;

implementation

uses WinSock, umst_dm;

{$R *.dfm}

function Tfmenu.getip(xip:Boolean; vhst:String; var axstr:TStringList):Boolean;
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
  axstr.Clear();
  StatusBar_getip.Panels[0].Text := ' Localizando...' ;
  StatusBar_getip.Panels[1].Text:= '0';
  // WinSock initialisation
  WSAStartUp( $101, WSAData );
  try
     if xip then begin
       Host := Trim( vhst );
       axstr.Add( Host );
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
         axstr.Add( inet_ntoa( pptr^[i]^ ) );
         Inc( i );
       end;
     end else begin
       Address := Trim( vhst );
       axstr.Add( Address );
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
       axstr.Add( HostName );
       // Add aliases into list (if aliases are present in host entry)
       pptr := PAPInAddr( HostEntPtr^.h_aliases );
       i := 0;
       while pptr^[i] <> NIL do begin
         axstr.Add( String( pptr^[i] ) );
         Inc( i );
       end;
     end;
     Result:=True;
  except
     on E: Exception do begin
        axstr.Add('Inválido');
        StatusBar_getip.Panels[0].Text:= ( E.Message );
        Result:=False;
     end;
  end;
  AddressListBox.Items.AddStrings(axstr);
  WSACleanUp();
  StatusBar_getip.Panels[0].Text:= 'Processo concluído.';
  StatusBar_getip.Panels[1].Text:= InttoStr(axstr.Count);
  bt_getip.Enabled := True;
end;

procedure Tfmenu.bt_getipClick(Sender: TObject);
var axstr:TstringList;
begin
   axstr:=TstringList.create;
   getip(RadioButton_getip2.Checked,ed_geip.Text,axstr);
   AddressListBox.Items.AddStrings(axstr);
   axstr.free;
end;

procedure Tfmenu.ConectarClick(Sender: TObject);
begin
      if msdm.mstconnector.Connected then begin
         try
         msdm.mstconnector.Close;
         Conectar.Caption:='Conectar';
         if CheckBox1.Checked then msdm.mstds1.Close;
         if CheckBox2.Checked then msdm.mstds2.Close;
         if CheckBox3.Checked then msdm.mstds3.Close;
         if CheckBox4.Checked then msdm.mstds4.Close;
         if CheckBox5.Checked then msdm.mstds5.Close;
         if CheckBox6.Checked then msdm.mstds6.Close;
         Memo_stat.Lines.Add('Desconectado');
         except
           Memo_stat.Lines.Add('Erro ao desconectar');
         end;
      end else begin
         try
         msdm.mstconnector.Open;
         Conectar.Caption:='Desconectar';
         if CheckBox1.Checked then begin
            msdm.mstds1.DataSet.CommandText:= 'select * from mst1';
            msdm.mstds1.open;
         end;
        if CheckBox2.Checked then begin
            msdm.mstds2.DataSet.CommandText:= 'select * from mst2';
            msdm.mstds2.open;
         end;
        if CheckBox3.Checked then begin
            msdm.mstds3.DataSet.CommandText:= 'select * from mst3';
            msdm.mstds3.open;
         end;
         if CheckBox4.Checked then begin
            msdm.mstds4.DataSet.CommandText:= 'select * from mst4';
            msdm.mstds4.open;
         end;
         if CheckBox5.Checked then begin
            msdm.mstds5.DataSet.CommandText:= 'select * from mst5';
            msdm.mstds5.open;
         end;
         if CheckBox6.Checked then begin
            msdm.mstds6.DataSet.CommandText:= 'select * from mst6';
            msdm.mstds6.open;
         end;
         Memo_stat.Lines.Add('Conectado');
         except
           Memo_stat.Lines.Add('Erro ao conectar');
         end;
      end;

end;

procedure Tfmenu.FormCreate(Sender: TObject);
begin
{      DBGrid1.DataSource:=msdm.ds1;
      DBGrid2.DataSource:=msdm.ds2;
      DBGrid3.DataSource:=msdm.ds3;
      DBGrid4.DataSource:=msdm.ds4;
      DBGrid5.DataSource:=msdm.ds5;
      DBGrid6.DataSource:=msdm.ds6;
      DBNavigator1.DataSource:=msdm.ds1;
      DBNavigator2.DataSource:=msdm.ds2;
      DBNavigator3.DataSource:=msdm.ds3;
      DBNavigator4.DataSource:=msdm.ds4;
      DBNavigator5.DataSource:=msdm.ds5;
      DBNavigator6.DataSource:=msdm.ds6;}
end;

procedure Tfmenu.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
      msdm.mstds1.ApplyUpdates(inap);
end;

procedure Tfmenu.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
      msdm.mstds2.ApplyUpdates(inap);
end;

procedure Tfmenu.DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
begin
      msdm.mstds3.ApplyUpdates(inap);
end;

procedure Tfmenu.DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
begin
      msdm.mstds4.ApplyUpdates(inap);
end;

procedure Tfmenu.DBNavigator5Click(Sender: TObject; Button: TNavigateBtn);
begin
//      msdm.mstds5.ApplyUpdates(inap);
end;

procedure Tfmenu.DBNavigator6Click(Sender: TObject; Button: TNavigateBtn);
begin
//      msdm.mstds6.ApplyUpdates(inap);
end;

procedure Tfmenu.BitBtn1Click(Sender: TObject);
var str1,str2,strtot:String;
    xid1,xid2,strCount,axstrCount1,axstrCount2:Integer;
    xidIni1,xidIni2,xidIni3,xidIni4,xidIni5,xidIni6,xidIni7,xidIni8,xidIni9,xidIni10,
    xidIni11,xidIni12,xidIni13,xidIni14,xidIni15,xidIni16,xidIni17,xidIni18,xidIni19,xidIni20,
    xidIni21,xidIni22,xidIni23,xidIni24,xidIni25,xidIni26,xidIni27,xidIni28,xidIni29,xidIni30:Integer;
    xtr1,xtr2,xtr3,xtr4,xtr5,xtr6,xtr7,xtr8,xtr9,xtr10,
    xtr11,xtr12,xtr13,xtr14,xtr15,xtr16,xtr17,xtr18,xtr19,xtr20,
    xtr21,xtr22,xtr23,xtr24,xtr25,xtr26,xtr27,xtr28,xtr29,xtr30: String;
    axstr,axstrTOT1,axstrTOT2:TstringList;
begin
      axstr:=TstringList.create;
      axstrTOT1:=TstringList.create;
      axstrTOT2:=TstringList.create;
      //init
      str1:= 'abcdefghijklmnopqrstuvwxyz';//26
      str2:= '1234567890';//10
      strtot:='';
      if CheckBox7.Checked then strtot:=str1;
      if CheckBox8.Checked then strtot:=strtot+str2;
      if CheckBox9.Checked then strtot:=strtot+Edit1.Text;
      strCount:= Length(strtot);
      xid1:= SpinEdit1.Value;
      xid2:= SpinEdit2.Value;
      ProgressBar1.Max:=strCount;
      ProgressBar2.Max:=strCount;
      ProgressBar3.Max:=strCount;
      ProgressBar4.Max:=strCount;
      ProgressBar5.Max:=strCount;
      ProgressBar6.Max:=strCount;
      ProgressBar7.Max:=strCount;
      ProgressBar8.Max:=strCount;
      ProgressBar9.Max:=strCount;
      ProgressBar10.Max:=strCount;
      ProgressBar11.Max:=strCount;
      ProgressBar12.Max:=strCount;
      ProgressBar13.Max:=strCount;
      ProgressBar14.Max:=strCount;
      ProgressBar15.Max:=strCount;
      ProgressBar16.Max:=strCount;
      ProgressBar17.Max:=strCount;
      ProgressBar18.Max:=strCount;
      ProgressBar19.Max:=strCount;
      ProgressBar20.Max:=strCount;
      ProgressBar21.Max:=strCount;
      ProgressBar22.Max:=strCount;
      ProgressBar23.Max:=strCount;
      ProgressBar24.Max:=strCount;
      ProgressBar25.Max:=strCount;
      ProgressBar26.Max:=strCount;
      ProgressBar27.Max:=strCount;
      ProgressBar28.Max:=strCount;
      ProgressBar29.Max:=strCount;
      ProgressBar30.Max:=strCount;
      for xidIni1:=1 to (strCount-1) do begin
          ProgressBar1.Position:=xidIni1;
          Application.ProcessMessages;
          xtr1:= Copy(strtot,xidIni1,1);
          for xidIni2:=1 to (strCount-1) do begin
              ProgressBar2.Position:=xidIni2;
              Application.ProcessMessages;
              xtr2:= xtr1+Copy(strtot,xidIni2,1);
              if getip(true,xtr2+'.com.br',axstr) then axstrTOT1.AddStrings(axstr)
              else axstrTOT2.AddStrings(axstr);
              for xidIni3:=1 to (strCount-1) do begin
                  ProgressBar3.Position:=xidIni3;
                  Application.ProcessMessages;
                  xtr3:= xtr2+Copy(strtot,xidIni3,1);
                  if getip(true,xtr3+'.com.br',axstr) then axstrTOT1.AddStrings(axstr)
                  else axstrTOT2.AddStrings(axstr);
                  for xidIni4:=1 to (strCount-1) do begin
                      ProgressBar4.Position:=xidIni4;
                      Application.ProcessMessages;
                      xtr4:= xtr3+Copy(strtot,xidIni4,1);
                      if getip(true,xtr4+'.com.br',axstr) then axstrTOT1.AddStrings(axstr)
                      else axstrTOT2.AddStrings(axstr);
                      {for xidIni5:=1 to (strCount-1) do begin
                          ProgressBar5.Position:=xidIni5;
                          Application.ProcessMessages;
                          xtr5:= xtr4+Copy(strtot,xidIni5,1);
                          //getip(true,xtr5+'.com.br',axstr);
                          axstrTOT.Add(xtr5);//Strings(axstr);
                          for xidIni6:=1 to (strCount-1) do begin
                              ProgressBar6.Position:=xidIni6;
                              Application.ProcessMessages;
                              xtr6:= xtr5+Copy(strtot,xidIni6,1);
                              //getip(true,xtr6+'.com.br',axstr);
                              axstrTOT.Add(xtr6);//Strings(axstr);
                              for xidIni7:=1 to (strCount-1) do begin
                                  ProgressBar7.Position:=xidIni7;
                                  Application.ProcessMessages;
                                  xtr7:= xtr6+Copy(strtot,xidIni7,1);
                                  //getip(true,xtr7+'.com.br',axstr);
                                  axstrTOT.Add(xtr7);//Strings(axstr);
                                  for xidIni8:=1 to (strCount-1) do begin
                                      ProgressBar8.Position:=xidIni8;
                                      Application.ProcessMessages;
                                      xtr8:= xtr7+Copy(strtot,xidIni8,1);
                                      //getip(true,xtr8+'.com.br',axstr);
                                      axstrTOT.Add(xtr8);//Strings(axstr);
                                      for xidIni9:=1 to (strCount-1) do begin
                                          ProgressBar9.Position:=xidIni9;
                                          Application.ProcessMessages;
                                          xtr9:= xtr8+Copy(strtot,xidIni9,1);
                                          //getip(true,xtr9+'.com.br',axstr);
                                          axstrTOT.Add(xtr9);//Strings(axstr);
                                          for xidIni10:=1 to (strCount-1) do begin
                                              ProgressBar10.Position:=xidIni10;
                                              Application.ProcessMessages;
                                              xtr10:= xtr9+Copy(strtot,xidIni10,1);
                                              //getip(true,xtr10+'.com.br',axstr);
                                              axstrTOT.Add(xtr10);//Strings(axstr);
                                          end;
                                      end;
                                  end;
                              end;
                              axstrTOT.Add('*');
                              axstrCount:=axstrTOT.Count;
                              axstrTOT.Add(IntToStr(axstrCount));
                              axstrTOT.SaveToFile('wresultFind/webfind_'+xtr6+'.txt');
                              axstrTOT.Clear;
                          end;
                      end;}
                  end;
              end;
          end;
          axstrTOT1.Add('*');
          axstrTOT2.Add('*');
          axstrCount1:=axstrTOT1.Count;
          axstrCount2:=axstrTOT2.Count;
          axstrTOT1.Add(IntToStr(axstrCount1));
          axstrTOT1.SaveToFile('wresultFind/webfind_Autenticado_'+xtr1+'.txt');
          axstrTOT1.Clear;
          axstrTOT2.Add(IntToStr(axstrCount2));
          axstrTOT2.SaveToFile('wresultFind/webfind_Indefinido_'+xtr1+'.txt');
          axstrTOT2.Clear;
      end;
      axstrCount1:=axstrTOT1.Count;
      axstrCount2:=axstrTOT2.Count;
      axstrTOT1.Add(IntToStr(axstrCount1));
      axstrTOT1.SaveToFile('wresultFind/webfind_Autenticado.txt');
      axstrTOT1.Free;
      axstrTOT2.Add(IntToStr(axstrCount2));
      axstrTOT2.SaveToFile('wresultFind/webfind_Indefinido.txt');
      axstrTOT2.Free;
end;

procedure Tfmenu.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      ShowMessage('AVISO: Falha na conexão.');
end;

end.


{var str1,str2,strtot:String;
    xid1,xid2,xidIni,xidIni2,strCount:Integer;
    xtr2,xtr1: String;
begin
      //init
      str1:= 'abcdefghijklmnopqrstuvwxyz';//26
      str2:= '1234567890';//10
      strtot:='';
      if CheckBox7.Checked then strtot:=str1;
      if CheckBox8.Checked then strtot:=strtot+str2;
      strCount:= Length(strtot);
      xid1:= SpinEdit1.Value;
      xid2:= SpinEdit2.Value;
      for xidIni:=1 to (strCount-1) do begin
          xtr2:= Copy(strtot,xidIni,1);
          for xidIni2:=1 to (strCount-1) do begin
              //if (Pos(xtr2,xtr2) = 0) then
                xtr1 := xtr2 + Copy(strtot,1,xidIni2);
          end;
      end;
      //getip}
