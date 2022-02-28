{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_richgalery_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, 
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, DBClient;

type
  TTableImage = record
      xcp_cod: String;
      xcp_descricao: String;
      xcp_img: String;
      xcp_tableimg: String;
      xcp_codimg: String;
      xcp_table: TClientDataSet;
  End;
  Tmdl_richgalery_view = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    swf_Imagem: TShockwaveFlash;
    StatusBar1: TStatusBar;
    bt_img: TPanel;
    bt_img3: TToolBar;
    bt_imgIni: TSpeedButton;
    bt_imgPrior: TSpeedButton;
    bt_imgNext: TSpeedButton;
    bt_imgEnd: TSpeedButton;
    bt_imgUpd: TSpeedButton;
    lb_namearq: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure bt_imgUpdClick(Sender: TObject);
    procedure bt_imgIniClick(Sender: TObject);
    procedure bt_imgPriorClick(Sender: TObject);
    procedure bt_imgNextClick(Sender: TObject);
    procedure bt_imgEndClick(Sender: TObject);
  private
    //menus
    xinit: Boolean;
    xImagem_tmp: TMemoryStream;
    ax_codImagem: Integer;
    procedure atualiza_Imagem;
    procedure limpaImagem;
    procedure getImagem;
    procedure abretmpImagem;
    { Private declarations }
  public
    TableImage: TTableImage;
    { Public declarations }
  end;

var
  mdl_richgalery_view: Tmdl_richgalery_view;

implementation
uses udm;

{$R *.dfm}

procedure Tmdl_richgalery_view.FormCreate(Sender: TObject);
var axshowing: Boolean;
    websitedefault,cv2,xcodent,xcodweb:string;
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
     ax_codImagem:=0;
     loadx.Progressloading.position:=10;
     mdl_richgalery_view.Caption:='Visualizar imagem';
     loadx.Progressloading.position:=40;
     xinit:=true;
     loadx.Progressloading.position:=50;
     loadx.Progressloading.position:=70;
     loadx.Progressloading.position:=90;
     xImagem_tmp:= TMemoryStream.Create;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_richgalery_view.FormActivate(Sender: TObject);
begin
      mdl_richgalery_view.Refresh;
      if xinit then begin
         atualiza_Imagem;
         xinit:=false;
      end;
end;

procedure Tmdl_richgalery_view.atualiza_Imagem;
var axshowing: Boolean;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Abrindo imagem';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Abrindo imagem';
         loadx.lbloading.Repaint;
      end;
      if TableImage.xcp_table.RecordCount > 0 then begin
         with TableImage.xcp_table do begin
            loadx.Progressloading.position:=60;
            {if ax_codImagem=fieldbyname(TableImage.xcp_cod).AsInteger then begin
               if not axshowing then loadx.Close;
               exit;
            end;}
            limpaImagem;
            loadx.Progressloading.position:=70;
            ax_codImagem:=fieldbyname(TableImage.xcp_cod).AsInteger;
            loadx.Progressloading.position:=80;
            lb_namearq.Caption:=fieldbyname(TableImage.xcp_descricao).AsString;
            loadx.Progressloading.position:=90;
            loadx.Progressloading.position:=100;
         end;
         getImagem;
      end;
      if not axshowing then loadx.Close;
      Application.ProcessMessages;
      mdl_richgalery_view.Repaint;
end;

procedure Tmdl_richgalery_view.limpaImagem;
begin
     xImagem_tmp.Clear;
     xImagem_tmp.Seek(0,soFromBeginning);
     swf_Imagem.Visible:=false;
     swf_Imagem.LoadMovie(0,'lixo');
end;

procedure Tmdl_richgalery_view.getImagem;
begin
     xImagem_tmp.Clear;
     xImagem_tmp.Position:=0;
     xImagem_tmp := dm.GetBinaryStreamPH(TableImage.xcp_tableimg,TableImage.xcp_codimg,TableImage.xcp_img,IntToStr(ax_codImagem));
     xImagem_tmp.Seek(0,soFromBeginning);
     abretmpImagem;
end;

procedure Tmdl_richgalery_view.abretmpImagem;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xImagem_tmp.Seek(0,soFromBeginning);
    if xImagem_tmp.Size <= 0 then begin
       swf_Imagem.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfile3.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xImagem_tmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_Imagem.Visible:=true;
            swf_Imagem.LoadMovie(0,'lixo');
            swf_Imagem.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_Imagem.Visible:=false;
        xImagem_tmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tmdl_richgalery_view.FormResize(Sender: TObject);
var axImgNum: Real;
    axImgInt: Integer;
begin
      axImgNum:=(Panel1.Width-bt_img.Width)/2;
      axImgInt:= strtoint(formatfloat('0',axImgNum));
      bt_img.Left:=axImgInt;
      axImgNum:=(Panel1.Height-bt_img.Height)-4;
      axImgInt:= strtoint(formatfloat('0',axImgNum));
      bt_img.Top:=axImgInt;
      Application.ProcessMessages;
      mdl_richgalery_view.Repaint;
end;

procedure Tmdl_richgalery_view.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_richgalery_view.bt_imgUpdClick(Sender: TObject);
begin
      bt_imgIni.Enabled:=true;
      bt_imgPrior.Enabled:=true;
      bt_imgEnd.Enabled:=true;
      bt_imgNext.Enabled:=true;
      atualiza_Imagem;
end;

procedure Tmdl_richgalery_view.bt_imgIniClick(Sender: TObject);
begin
      bt_imgIni.Enabled:=false;
      bt_imgPrior.Enabled:=false;
      TableImage.xcp_table.First;
      if ax_codImagem<>TableImage.xcp_table.fieldbyname(TableImage.xcp_cod).AsInteger then begin
          bt_imgEnd.Enabled:=true;
          bt_imgNext.Enabled:=true;
          atualiza_Imagem;
      end;
end;

procedure Tmdl_richgalery_view.bt_imgPriorClick(Sender: TObject);
begin
      TableImage.xcp_table.Prior;
      if ax_codImagem=TableImage.xcp_table.fieldbyname(TableImage.xcp_cod).AsInteger then begin
          bt_imgIni.Enabled:=false;
          bt_imgPrior.Enabled:=false;
      end else begin
          bt_imgEnd.Enabled:=true;
          bt_imgNext.Enabled:=true;
          atualiza_Imagem;
      end;
end;

procedure Tmdl_richgalery_view.bt_imgNextClick(Sender: TObject);
begin
      TableImage.xcp_table.Next;
      if ax_codImagem=TableImage.xcp_table.fieldbyname(TableImage.xcp_cod).AsInteger then begin
          bt_imgEnd.Enabled:=false;
          bt_imgNext.Enabled:=false;
      end else begin
          bt_imgIni.Enabled:=true;
          bt_imgPrior.Enabled:=true;
          atualiza_Imagem;
      end;
end;

procedure Tmdl_richgalery_view.bt_imgEndClick(Sender: TObject);
begin
      bt_imgEnd.Enabled:=false;
      bt_imgNext.Enabled:=false;
      TableImage.xcp_table.Last;
      if ax_codImagem<>TableImage.xcp_table.fieldbyname(TableImage.xcp_cod).AsInteger then begin
          bt_imgIni.Enabled:=true;
          bt_imgPrior.Enabled:=true;
          atualiza_Imagem;
      end;
end;

end.
