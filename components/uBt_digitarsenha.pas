{###############################################################################
Programa: Bt_mensagem
Módulo: Dialog de acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_Digitarsenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Buttons;

type
  TBt_digitarsenha = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    lb_autenticacao_title: TLabel;
    procedure Bitbtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    fautenticasn : boolean;
    fautentica_usr,fautentica_pass:string;
    { Public declarations }
  end;

var
  Bt_digitarsenha: TBt_digitarsenha;

implementation
Uses hwsfunctions;

{$R *.dfm}

procedure TBt_digitarsenha.Bitbtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_digitarsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Edit1.Text:='';
     Edit2.Text:='';
     Action:= caHide;
end;

procedure TBt_digitarsenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then SpeedButton2.Click;
end;

procedure TBt_digitarsenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then close;
end;

procedure TBt_digitarsenha.SpeedButton2Click(Sender: TObject);
begin
     fautenticasn := True;
     { Pega só letras e números }
     fautentica_usr:=FilterCharsHWS(Edit1.Text,['A'..'Z', 'a'..'z', '0'..'9']);
     fautentica_pass:=FilterCharsHWS(Edit2.Text,['A'..'Z', 'a'..'z', '0'..'9']);
     Close;
end;

procedure TBt_digitarsenha.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_digitarsenha.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_digitarsenha.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_digitarsenha.Left:= Bt_digitarsenha.Left-(mv_mouse.x-x);
      Bt_digitarsenha.Top:= Bt_digitarsenha.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_digitarsenha.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_digitarsenha.Left := Bt_digitarsenha.Left - (mv_mouse.x -x);
      Bt_digitarsenha.Top := Bt_digitarsenha.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_digitarsenha.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_digitarsenha.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_digitarsenha.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_digitarsenha.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then SpeedButton2.Click;
end;

procedure TBt_digitarsenha.FormShow(Sender: TObject);
begin
     Edit1.Text:='';
     Edit2.Text:='';
     fautenticasn := false;
     Edit1.SetFocus;
end;

procedure TBt_digitarsenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then Edit2.SetFocus;
end;

procedure TBt_digitarsenha.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

end.
