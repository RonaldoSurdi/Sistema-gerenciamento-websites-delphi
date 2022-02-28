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
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin;

type
  Tadm_contador = class(TForm)
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
    bt_executa: TSpeedButton;
    lbcp5: TComboBox;
    lbcp2: TComboBox;
    lbcp3: TComboBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    lbcp6: TDateTimePicker;
    lbcp7: TDateTimePicker;
    lbcp8: TDateTimePicker;
    lbcp9: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    bt_limpar: TSpeedButton;
    bt_atualizar: TSpeedButton;
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure bt_executaClick(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
  private
    //menus
    xinit: Boolean;
    procedure atualiza_grade;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_contador: Tadm_contador;

implementation
uses udm;

{$R *.dfm}

procedure Tadm_contador.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Tadm_contador.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_contador.FormCreate(Sender: TObject);
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
     lbcp6.DateTime:=Now;
     lbcp7.DateTime:=Now;
     lbcp8.DateTime:=Now;
     lbcp9.DateTime:=Now;
     lbcp6.Enabled:=false;
     lbcp7.Enabled:=false;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
     loadx.Progressloading.position:=50;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='cod_web';
     DBGrid1.Columns.Items[1].Title.Caption:='Website';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='cp3';
     DBGrid1.Columns.Items[2].Title.Caption:='Data';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='cp4';
     DBGrid1.Columns.Items[3].Title.Caption:='Hora';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cp1';
     DBGrid1.Columns.Items[4].Title.Caption:='IP';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='cp2';
     DBGrid1.Columns.Items[5].Title.Caption:='Detalhes';
     //logs
     With dm.ds_sql do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf51,37249)+' ORDER BY cp3,cp4';
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

procedure Tadm_contador.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_contador.lb_titleClick(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_contador.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_contador.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_contador.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_contador.Left:= adm_contador.Left-(mv_mouse.x-x);
      adm_contador.Top:= adm_contador.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_contador.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_contador.Left := adm_contador.Left - (mv_mouse.x -x);
      adm_contador.Top := adm_contador.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_contador.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_contador.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_contador.bt_maximizaClick(Sender: TObject);
begin
    if adm_contador.WindowState=wsMaximized then adm_contador.WindowState:=wsNormal
    else adm_contador.WindowState:=wsMaximized;
end;

procedure Tadm_contador.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

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

procedure Tadm_contador.CheckBox1Click(Sender: TObject);
begin
      if CheckBox1.Checked then begin
         CheckBox2.Checked:=false;
         CheckBox3.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_contador.CheckBox2Click(Sender: TObject);
begin
      if CheckBox2.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox3.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_contador.CheckBox3Click(Sender: TObject);
begin
      if CheckBox3.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox2.Checked:=false;
         CheckBox4.Checked:=false;
      end;
end;

procedure Tadm_contador.CheckBox4Click(Sender: TObject);
begin
      if CheckBox4.Checked then begin
         CheckBox1.Checked:=false;
         CheckBox2.Checked:=false;
         CheckBox3.Checked:=false;
      end;
end;

procedure Tadm_contador.RadioButton1Click(Sender: TObject);
begin
     lbcp6.Enabled:=false;
     lbcp7.Enabled:=false;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
end;

procedure Tadm_contador.RadioButton2Click(Sender: TObject);
begin
     lbcp6.Enabled:=true;
     lbcp7.Enabled:=true;
     lbcp8.Enabled:=true;
     lbcp9.Enabled:=true;
end;

procedure Tadm_contador.RadioButton3Click(Sender: TObject);
begin
     lbcp6.Enabled:=true;
     lbcp7.Enabled:=true;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
end;

procedure Tadm_contador.RadioButton4Click(Sender: TObject);
begin
     lbcp6.Enabled:=true;
     lbcp7.Enabled:=true;
     lbcp8.Enabled:=false;
     lbcp9.Enabled:=false;
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
      //periodo
      if RadioButton2.Checked then begin
         if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
         axfiltro:=axfiltro+'(cp3>='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                            'cp3<='+#39+DateToStr(lbcp8.Date)+#39+') AND '+
                            '(cp4>='+#39+TimeToStr(lbcp7.Time)+#39+' AND '+
                            'cp4<='+#39+TimeToStr(lbcp9.Date)+#39+')';
      end else if RadioButton3.Checked then begin
         if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
         axfiltro:=axfiltro+'cp3<='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                            'cp4<='+#39+TimeToStr(lbcp7.Date)+#39;
      end else if RadioButton4.Checked then begin
         if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
         axfiltro:=axfiltro+'cp3>='+#39+DateToStr(lbcp6.Date)+#39+' AND '+
                            'cp4>='+#39+TimeToStr(lbcp7.Date)+#39;
      end;
      //filtrar
      With dm.ds_sql do begin
           Filter:=axfiltro;
      end;
      loadx.Progressloading.Position:=100;
      atualiza_grade;
      loadx.Free;
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
      loadx.Free;
end;

procedure Tadm_contador.atualiza_grade;
begin
      Lb_countreg.Caption:=InttoStr(dm.ds_sql.recordcount);
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
      loadx.Free;
end;

end.


