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
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin;

type
  Tadm_online = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    lb_title: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    XPManifest1: TXPManifest;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    lbcp1: TLabeledEdit;
    lbcp4: TComboBox;
    ToolBar1: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    lbcp5: TComboBox;
    lbcp2: TComboBox;
    lbcp3: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    bt_atualizar: TSpeedButton;
    bt_limpar: TSpeedButton;
    bt_executa: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure lb_titleClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure bt_executaClick(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
  private
    //menus
    xinit: Boolean;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    procedure atualiza_grade;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_online: Tadm_online;

implementation
uses udm;

{$R *.dfm}

procedure Tadm_online.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql2.Filter:='';
     dm.ds_sql2.Filtered:=false;
     dm.ds_sql2.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     dm.ds_sql5.Filter:='';
     dm.ds_sql5.Filtered:=false;
     dm.ds_sql5.Close;
     Action:=cafree;
end;

procedure Tadm_online.bt_fecharClick(Sender: TObject);
begin
    close;
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
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     xinit:=true;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     DBGrid1.DataSource:=dm.source_sql;
     loadx.Progressloading.position:=50;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cod_web';
     DBGrid1.Columns.Items[1].Title.Caption:='Website';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp1';
     DBGrid1.Columns.Items[2].Title.Caption:='Referência';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cp2';
     DBGrid1.Columns.Items[3].Title.Caption:='IP';
     //logs
     With dm.ds_sql do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf52,37249)+' ORDER BY cod_web,cp1';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=60;
     //entidades
     With dm.ds_sql2 do begin
        CommandText:= 'SELECT codigo,razao_social,cod_cidade FROM '+EnDecryptString(Serverconect.vrf26,37249)+' ORDER BY razao_social';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        lbcp2.Clear;
        While not Eof do begin
            lbcp2.Items.Add(fieldbyname('razao_social').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=70;
     //websites
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT codigo,website,cod_ent FROM '+EnDecryptString(Serverconect.vrf29,37249)+' ORDER BY website';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        lbcp3.Clear;
        While not Eof do begin
            lbcp3.Items.Add(fieldbyname('website').AsString);
            Next;
        end;
     end;
     //cidades
     loadx.Progressloading.position:=80;
     With dm.ds_sql4 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf27,37249)+' ORDER BY cidade';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        lbcp4.Clear;
        While not Eof do begin
            lbcp4.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=90;
     //estados
     With dm.ds_sql5 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf28,37249)+' ORDER BY estado';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        lbcp5.Clear;
        While not Eof do begin
            lbcp5.Items.Add(fieldbyname('estado').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Free;
     atualiza_grade;
end;

procedure Tadm_online.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_online.lb_titleClick(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_online.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_online.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_online.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_online.Left:= adm_online.Left-(mv_mouse.x-x);
      adm_online.Top:= adm_online.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_online.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_online.Left := adm_online.Left - (mv_mouse.x -x);
      adm_online.Top := adm_online.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_online.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_online.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_online.bt_maximizaClick(Sender: TObject);
begin
    if adm_online.WindowState=wsMaximized then adm_online.WindowState:=wsNormal
    else adm_online.WindowState:=wsMaximized;
end;

procedure Tadm_online.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
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

procedure Tadm_online.CheckBox1Click(Sender: TObject);
begin
      if CheckBox1.Checked then begin
         CheckBox2.Checked:=false;
         CheckBox3.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_online.CheckBox2Click(Sender: TObject);
begin
      if CheckBox2.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox3.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_online.CheckBox3Click(Sender: TObject);
begin
      if CheckBox3.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox2.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_online.CheckBox4Click(Sender: TObject);
begin
      if CheckBox4.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox2.Checked:=false;
         CheckBox3.Checked:=false;
      end;
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
      if CheckBox1.Checked then begin
         if dm.ds_sql2.Locate('razao_social',lbcp2.Text,[]) then begin
            dm.ds_sql3.Filter:='cod_ent='+#39+dm.ds_sql2.fieldbyname('codigo').AsString+#39;
            dm.ds_sql3.First;
            While not dm.ds_sql3.Eof do begin
                if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
                axfiltro:=axfiltro+'cod_web='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39;
                dm.ds_sql3.Next;
            end;
            dm.ds_sql3.Filter:='';
         end;
      end else if CheckBox2.Checked then begin
         if dm.ds_sql3.Locate('website',lbcp3.Text,[]) then begin
            axfiltro:='cod_web='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39;
         end;
      end else if CheckBox3.Checked then begin
         if dm.ds_sql4.Locate('cidade',lbcp4.Text,[]) then begin
            dm.ds_sql2.Filter:='cod_cidade='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
            dm.ds_sql2.First;
            While not dm.ds_sql2.Eof do begin
                dm.ds_sql3.Filter:='cod_ent='+#39+dm.ds_sql2.fieldbyname('codigo').AsString+#39;
                dm.ds_sql3.First;
                While not dm.ds_sql3.Eof do begin
                    if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
                    axfiltro:=axfiltro+'cod_web='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39;
                    dm.ds_sql3.Next;
                end;
                dm.ds_sql3.Filter:='';
                dm.ds_sql2.Next;
            end;
            dm.ds_sql2.Filter:='';
         end;
      end else if CheckBox4.Checked then begin
         if dm.ds_sql5.Locate('estado',lbcp5.Text,[]) then begin
            dm.ds_sql4.Filter:='uf='+#39+dm.ds_sql5.fieldbyname('uf').AsString+#39;
            dm.ds_sql4.First;
            While not dm.ds_sql4.Eof do begin
               dm.ds_sql2.Filter:='cod_cidade='+#39+dm.ds_sql4.fieldbyname('codigo').AsString+#39;
               dm.ds_sql2.First;
               While not dm.ds_sql2.Eof do begin
                   dm.ds_sql3.Filter:='cod_ent='+#39+dm.ds_sql2.fieldbyname('codigo').AsString+#39;
                   dm.ds_sql3.First;
                   While not dm.ds_sql3.Eof do begin
                       if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
                       axfiltro:=axfiltro+'cod_web='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39;
                       dm.ds_sql3.Next;
                   end;
                   dm.ds_sql3.Filter:='';
                   dm.ds_sql2.Next;
               end;
               dm.ds_sql2.Filter:='';
            end;
         end;
      end;
      loadx.Progressloading.Position:=50;
      //filtrar
      With dm.ds_sql do begin
           Filter:=axfiltro;
      end;
      loadx.Progressloading.Position:=100;
      atualiza_grade;
      loadx.Free;
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
      loadx.Free;
end;

procedure Tadm_online.atualiza_grade;
begin
      Lb_countreg.Caption:=InttoStr(dm.ds_sql.recordcount);
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
      loadx.Free;
end;

end.


