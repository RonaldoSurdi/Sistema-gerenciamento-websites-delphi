
unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,ExtCtrls, Buttons, Mask, Menus, ComCtrls, spBina;

type
  TMainSpBina = class(TForm)
    Detector2: TTimer;
    PopupMenu1: TPopupMenu;
    AtivarSuperBina1: TMenuItem;
    Desativar1: TMenuItem;
    Configurar1: TMenuItem;
    Ajuda1: TMenuItem;
    Sai1: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    ListBox2: TListBox;
    ListBox1: TListBox;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    procedure Detector2Timer(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AtivarSuperBina1Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure Desativar1Click(Sender: TObject);
    procedure Sai1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    texto, porta, vDDD : string;
    segundos, ativo, p3, p4 : integer;

    { Public declarations }
  end;
var
  MainSpBina: TMainSpBina;
  SP : TspBina;
implementation

uses spBinaSetup;


{$R *.DFM}

procedure TMainSpBina.Detector2Timer(Sender: TObject);
var
status : string;
begin

 // se estiver ativo
 if ativo = 1 then
    inc(segundos);

 // Falta resistor
 if FormConfig.varOcupado > 0 then begin
    ListBox1.Clear;
    ListBox2.Clear;
    Panel2.Caption := 'Falta o Resistor';
    PageControl1.ActivePage := TabSheet4;
    Detector2.Enabled := false;
    ShowMessage('A Chave não está na posição BINA, ou o RESISTOR '+
              'não está presente!'+#13+' O SuperBina será desativado!');
              // O desativamento ocorrera no FormConfig
  end;
  // mensagem de envio dos comandos
 if (FormConfig.estagio = 1) and (p4 = 0)  then begin
     Label1.Caption := 'Enviando o '+
                       IntToStr(FormConfig.ListBox1.ItemIndex+1)+
                       'º Comando...';
     ListBox1.Clear;
     ListBox2.clear;
     ListBox1.Items.add(FormConfig.chave);
     ListBox2.Items.add(trim(FormConfig.cmdResult));
 end;
 //Mensagens do painel do Status e no Título do Form
 case FormConfig.estagio  of
      0: status := 'Desativado';
      1: status := 'Ativando...';
      2: status := 'Fone Detectado';
      4: status := 'Ativado';
 end;

 Panel2.Caption := status;
 MainSpBina.Caption := 'spBina 1.02 - '+status;
 if FormConfig.Detectado = 2 then
    MainSpBina.Caption := 'spBina 1.02 - Fone Detectado';

 // Mostrar painel de Status
 if (FormConfig.estagio = 4) and (p4 = 0)  then begin
      ListBox1.Clear;
      ListBox2.Clear;
      Panel2.Font.Color :=  clBlue;
      Label1.Caption := 'Ultimo comando enviado: '+
      IntToStr(FormConfig.ListBox1.ItemIndex+1);
      ListBox1.Items.add(FormConfig.cmd[FormConfig.cmdAT]);
      ListBox2.Items.add(FormConfig.cmdResult);
      PageControl1.ActivePage := TabSheet4;
      p4 := 1;
 end;

 //Fone Detectado
 if FormConfig.Detectado = 2 then
    begin
      ListBox1.Items.Clear;
      ListBox2.Items.Clear;
      Panel2.Font.Color :=  clNavy;
      Label1.Caption := 'Ultimo comando enviado: '+IntToStr(FormConfig.cmdAT+1);
      ListBox1.Items.add(FormConfig.cmd[FormConfig.cmdAT]);
      edit1.Text         := FormConfig.Tipo;
      edit2.text         := FormConfig.vDDD;
      MaskEdit1.EditMask := FormConfig.mascara;
      MaskEdit1.text     := FormConfig.Fone;
      PageControl1.ActivePage := Tabsheet3;
   end;

  // Resseta  o timer para evitar estouro na var 'segundos'
 if segundos > 60  then
    segundos := 10;
end;

procedure TMainSpBina.SpeedButton3Click(Sender: TObject);
begin

 if ativo = 1 then begin
  //Desativar
  segundos := 0;
  ativo := 0;
  Detector2.Enabled := false;
  FormConfig.Button3.Click;

  AtivarSuperBina1.Enabled := true;
  Configurar1.Enabled := true;
  Desativar1.Enabled := false;
  SpeedButton1.Enabled := true;
  SpeedButton2.Enabled := true;
  SpeedButton3.Enabled := false;
  Panel2.Font.Color := clRed;
  PageControl1.ActivePage := TabSheet4;
end;
end;
procedure TMainSpBina.SpeedButton2Click(Sender: TObject);
begin
 // Se estiver destivado...
 if ativo = 0 then begin
    //Setup
    segundos := 0;
    AtivarSuperBina1.Enabled := true;
    Configurar1.Enabled := true;
    Desativar1.Enabled := false;

    SpeedButton1.Enabled := true;
    SpeedButton2.Enabled := true;
    SpeedButton3.Enabled := false;

    //Desliga o Detector
    Detector2.Enabled := false;

    //Chama Setup
    SP.ShowATComandSetup(true,false,false,porta, vDDD);
    SpeedButton2.Enabled := true;
  end;
end;
procedure TMainSpBina.SpeedButton1Click(Sender: TObject);
begin
 //Ativar
 if ativo = 0 then begin
   Panel2.Font.Color := clGreen;
   segundos:= 0;
   Ativo   := 1;
   p4      := 0;
   AtivarSuperBina1.Enabled := false;
   Configurar1.Enabled := false;
   Desativar1.Enabled := true;

   SpeedButton1.Enabled := false;
   SpeedButton2.Enabled := false;
   SpeedButton3.Enabled := true;

   Detector2.Enabled := true;

   //Ativar SuperBina    
  // Setup=não, Ativar=SIM, Desativar=não, porta=porta, DDD=vDDD;
   SP.ShowATComandSetup(false,true,false, porta, vDDD);
   PageControl1.ActivePage := TabSheet2;
 end;
end;

procedure TMainSpBina.SpeedButton5Click(Sender: TObject);
begin
 if ativo = 1 then
   begin
    SpeedButton3.Click;
    close;
   end
  else
    close;
end;

procedure TMainSpBina.AtivarSuperBina1Click(Sender: TObject);
begin
ShowMessage('Desculpe, não há arquivo de ajuda disponível!');
end;

procedure TMainSpBina.Configurar1Click(Sender: TObject);
begin
SpeedButton2.Click;
end;

procedure TMainSpBina.Desativar1Click(Sender: TObject);
begin
SpeedButton3.Click;
end;

procedure TMainSpBina.Sai1Click(Sender: TObject);
begin
SpeedButton5.Click;
end;

procedure TMainSpBina.Panel2Click(Sender: TObject);
begin
 PageControl1.ActivePage := TabSheet1;
end;

procedure TMainSpBina.FormPaint(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
end;

procedure TMainSpBina.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
end;

procedure TMainSpBina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

end.

