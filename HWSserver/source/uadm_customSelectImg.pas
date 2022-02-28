unit uadm_customSelectImg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, yupack, Buttons, ExtCtrls, Grids, DBGrids, OleCtrls,
  DBClient, ShockwaveFlashObjects_TLB, MPlayer, ComCtrls, ToolWin;

type
  Tadm_customSelectImg = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    Panel1: TPanel;
    Panel_view: TPanel;
    Panel2: TPanel;
    barimg: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGridimg: TDBGrid;
    Panel_search: TPanel;
    Label3: TLabel;
    bt_search: TSpeedButton;
    Edit_search: TEdit;
    swf_logo: TShockwaveFlash;
    pn_mp3player: TPanel;
    bt_playmp3: TSpeedButton;
    bt_stopmp3: TSpeedButton;
    bt_closemp3: TSpeedButton;
    Progress: TProgressBar;
    mp3player: TMediaPlayer;
    ProgresTimer: TTimer;
    ToolBar1: TToolBar;
    SpeedButton3: TSpeedButton;
    CheckBox_view: TCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure bt_fecharClick(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_searchClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure CheckBox_viewClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGridimgCellClick(Column: TColumn);
    procedure DBGridimgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridimgKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ProgresTimerTimer(Sender: TObject);
  private
    xlogotmp: TMemoryStream;
    xtypefile: Integer;
    procedure filtrar_reg;
    procedure atualizaimg;
    procedure getLogo;
    procedure abretmplogo;
    procedure destructionimg;
    { Private declarations }
  public
    xcodimg: Integer;
    xtabela,axfilter: String;
    xdataset: TClientDataSet;
    xexecuta: TClientDataSet;
    mv_mouse: TPoint;
    cp_mouse: bool;
    { Public declarations }
  end;

var
  adm_customSelectImg: Tadm_customSelectImg;

implementation

Uses hwsfunctions, udm, DB, Math;

{$R *.dfm}

procedure Tadm_customSelectImg.bt_fecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tadm_customSelectImg.bt_sobreClick(Sender: TObject);
begin
     hwsf.BtSobre;
end;

procedure Tadm_customSelectImg.SpeedButton1Click(Sender: TObject);
begin
     Close;
end;

procedure Tadm_customSelectImg.FormCreate(Sender: TObject);
var axshowing: Boolean;
begin
      axfilter:='';
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
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     Image3.Picture.Bitmap:= GetImg(1);
     barimg.Picture.Bitmap:= GetImg(1);
     loadx.Progressloading.position:=50;
     xlogotmp:= TMemoryStream.Create;
     xcodimg:=0;
     With DBGridimg do begin
          Columns.Add;
          Columns.Items[0].FieldName:='codigo';
          Columns.Items[0].Title.Caption:='Código';
          Columns.Add;
          Columns.Items[1].FieldName:='descricao';
          Columns.Items[1].Title.Caption:='Descrição';
     end;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Free;
end;

procedure Tadm_customSelectImg.SpeedButton2Click(Sender: TObject);
begin
      if TClientDataSet(xdataset).RecordCount>0 then
         xcodimg:=TClientDataSet(xdataset).fieldbyname('codigo').AsInteger;
      Close;
end;

procedure Tadm_customSelectImg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      xlogotmp.Free;
      Action:= caHide;
end;

procedure Tadm_customSelectImg.filtrar_reg;
begin
     if Edit_search.Text='' then TClientDataSet(xdataset).Filter:=axfilter
     else begin
        if axfilter<>'' then
           TClientDataSet(xdataset).filter:= axfilter+' AND descricao LIKE '+QuotedStr(Edit_search.Text+'%')
        else TClientDataSet(xdataset).filter:= 'descricao LIKE '+QuotedStr(Edit_search.Text+'%');
     end;
end;

procedure Tadm_customSelectImg.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_customSelectImg.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_customSelectImg.CheckBox_viewClick(Sender: TObject);
begin
      if CheckBox_view.Checked then begin
         SpeedButton3.Enabled:=false;
         atualizaimg;
      end else begin
         SpeedButton3.Enabled:=true;
         destructionimg;
      end;
end;

procedure Tadm_customSelectImg.atualizaimg;
begin
      if CheckBox_view.Checked then getLogo;
end;

procedure Tadm_customSelectImg.getLogo;
begin
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Carregando';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     xlogotmp.Clear;
     destructionimg;
     With TClientDataSet(xexecuta) do begin
        loadx.Progressloading.position:=5;
        CommandText:='SELECT img FROM '+xtabela+' WHERE codigo='+#39+TClientDataSet(xdataset).fieldbyname('codigo').AsString+#39;
        loadx.Progressloading.position:=10;
        xtypefile:=TClientDataSet(xdataset).fieldbyname('tp').AsInteger;
        Open;
        loadx.Progressloading.position:=20;
        xlogotmp.Clear;
        xlogotmp.Seek(0,soFromBeginning);
        if not fields[0].IsNull then
           TBlobField(FieldByName('img')).SaveToStream(xlogotmp);
           loadx.Progressloading.position:=25;
        Close;
        loadx.Progressloading.position:=30;
     end;
     abretmplogo;
end;

procedure Tadm_customSelectImg.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
    isshowing: Boolean;
begin
     isshowing:= loadx.Showing;
     if not isshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Carregando';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=20;
     end;
     loadx.Progressloading.position:=35;
     xlogotmp.Seek(0,soFromBeginning);
     erro:= false;
     if xlogotmp.Size <= 0 then begin
        erro:= true;
     end;
     loadx.Progressloading.position:=50;
     if not erro then begin
        if pn_mp3player.Visible then begin
           mp3player.Close;
           pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end;                                
        ax_filenm:= ExtractTempDir + 'tmpdk4d56.mp3';
        if FileExists(ax_filenm) then DeleteFile(ax_filenm);
        try
           xlogotmp.SaveToFile(ax_filenm);
           erro:= false;
        except
           erro:= true;
        end;
     end;
     loadx.Progressloading.position:=75;
     if not erro then begin
        if xtypefile = 1 then begin
           Panel_view.Caption:='Reproduzindo áudio';
           pn_mp3player.Visible:=true;
           ProgresTimer.Enabled:=true;
           Progress.Max:=0;
           mp3player.Close;
           mp3player.FileName:=ax_filenm;
           mp3player.Open;
           Progress.Max := mp3player.Length;
           mp3player.Play;
        end else begin
            try
              Panel_view.Caption:='';
              swf_logo.Visible:=true;
              swf_logo.LoadMovie(0,'lixo');
              swf_logo.LoadMovie(0,ax_filenm);
              erro:= false;
            except
              erro:= true;
            end;
        end;
     end;
     loadx.Progressloading.position:=100;
     if erro then destructionimg
     else loadx.Free;
end;

procedure Tadm_customSelectImg.destructionimg;
var ax_filenm: string;
begin
     Panel_view.Caption:='';
     swf_logo.Visible:=false;
     swf_logo.LoadMovie(0,'lixo');
     mp3player.Close;
     pn_mp3player.Visible:=false;
     ProgresTimer.Enabled:=false;
     ax_filenm:= ExtractTempDir + 'tmpdk4d56.mp3';
     if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

procedure Tadm_customSelectImg.SpeedButton3Click(Sender: TObject);
begin
      getLogo;
end;

procedure Tadm_customSelectImg.DBGridimgCellClick(Column: TColumn);
begin
      atualizaimg;
end;

procedure Tadm_customSelectImg.DBGridimgKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      atualizaimg;
end;

procedure Tadm_customSelectImg.DBGridimgKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      atualizaimg;
end;

procedure Tadm_customSelectImg.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_customSelectImg.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_customSelectImg.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      adm_customSelectImg.Left:= adm_customSelectImg.Left-(mv_mouse.x-x);
      adm_customSelectImg.Top:= adm_customSelectImg.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_customSelectImg.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_customSelectImg.Left := adm_customSelectImg.Left - (mv_mouse.x -x);
      adm_customSelectImg.Top := adm_customSelectImg.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_customSelectImg.ProgresTimerTimer(Sender: TObject);
begin
  if pn_mp3player.Visible then begin
     if Progress.Max<>0 then
        Progress.Position := mp3player.Position;
  end;
end;

end.
