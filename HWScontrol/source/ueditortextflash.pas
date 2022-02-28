{###############################################################################
Programa: HWSwebClient
Módulo: Editor de textos par flash.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit ueditortextflash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ToolWin, ExtCtrls, Menus, ActnList,
  ImgList, ClipBrd, XPMenu, DB, XPMan;

type
  Teditortextflash = class(TForm)
    pn_status: TPanel;
    Image4: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    biSystemMenu: TImage;
    bt_sobre: TSpeedButton;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_fechar: TSpeedButton;
    tb_mnt: TLabel;
    pn_editor: TPanel;
    CoolBar1: TCoolBar;
    FontDialog1: TFontDialog;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    ToolbarImages: TImageList;
    StandardToolBar: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    FontName: TComboBox;
    ToolButton7: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    Fonte1: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Fontemenu: TMenuItem;
    N3: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton12: TToolButton;
    ToolBar4: TToolBar;
    ToolButton8: TToolButton;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolBar5: TToolBar;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    JustifyAlign: TToolButton;
    BulletsButton: TToolButton;
    XPMenu1: TXPMenu;
    ColorDialog1: TColorDialog;
    ToolButton10: TToolButton;
    Cor1: TMenuItem;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    ToolBar1: TToolBar;
    bt_confirma: TSpeedButton;
    bt_cancelar: TSpeedButton;
    re_editor: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_sobreClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Novo1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure esquerdo1Click(Sender: TObject);
    procedure centro1Click(Sender: TObject);
    procedure direita1Click(Sender: TObject);
    procedure justificado1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure bt_confirmaClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    codigo_ax: Integer;
    FUpdating: Boolean;
    st_stream: TMemoryStream;
    function CurrText: TTextAttributes;
    procedure GetFontNames;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure ConverttoFlash;
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    processoand : boolean;
    xcod_tab,xcod_cp,xcod_ax: integer;
    x_table_form1,x_table_form2 : string;
    x_campo_form, x_cpcod_form : string;
    x_entrafrom : integer;
    { Public declarations }
  end;

var
  editortextflash: Teditortextflash;


implementation

uses hwsfunctions,RichEdit, ShellAPI, udm, uadm_client_tabs;

const
  RulerAdj = 4/3;
  GutterWid = 6;


{$R *.dfm}

procedure Teditortextflash.FormCreate(Sender: TObject);
begin
      //Application.OnMessage := tabtoenterpress;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      //DoubleBuffered:=True;
      //pn_editor.DoubleBuffered:=True;
      //Brush.Style := BsClear;
      GetFontNames;
      SelectionChange(Self);
      SendMessage(re_editor.Handle, EM_LIMITTEXT, 0, $FFFFFF);
      processoand:=false;
      x_entrafrom:=0;
end;

procedure Teditortextflash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Teditortextflash.bt_sobreClick(Sender: TObject);
begin
    hwsf.BtSobre;
end;

procedure Teditortextflash.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Teditortextflash.bt_maximizaClick(Sender: TObject);
begin
    if editortextflash.WindowState=wsMaximized then editortextflash.WindowState:=wsNormal
    else editortextflash.WindowState:=wsMaximized;
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Teditortextflash.bt_fecharClick(Sender: TObject);
begin
    Close;
end;

procedure Teditortextflash.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(editortextflash.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Teditortextflash.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(editortextflash.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Teditortextflash.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      editortextflash.Left:= editortextflash.Left-(mv_mouse.x-x);
      editortextflash.Top:= editortextflash.Top - (mv_mouse.y-y);
  end;
end;

procedure Teditortextflash.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      editortextflash.Left := editortextflash.Left - (mv_mouse.x -x);
      editortextflash.Top := editortextflash.Top - (mv_mouse.y - y);
  end;
end;

procedure Teditortextflash.Novo1Click(Sender: TObject);
begin
     //novo
     re_editor.Clear;
     re_editor.Modified:=true;
end;

procedure Teditortextflash.Abrir1Click(Sender: TObject);
begin
     //abrir
     if OpenDialog.Execute then begin
        re_editor.Lines.LoadFromFile(OpenDialog.FileName);
     end;
end;

procedure Teditortextflash.Salvar1Click(Sender: TObject);
begin
     //salvar
     if SaveDialog.Execute then begin
        re_editor.Lines.SaveToFile(SaveDialog.FileName);
     end;
end;

procedure Teditortextflash.Imprimir1Click(Sender: TObject);
begin
     //imprimir
     if PrintDialog.Execute then begin
        re_editor.Print(re_editor.Lines.Text);
     end;
end;

procedure Teditortextflash.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Teditortextflash.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Teditortextflash.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Teditortextflash.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Teditortextflash.Fonte1Click(Sender: TObject);
begin
     //formatar fontes
     FontDialog1.Font.Assign(re_editor.SelAttributes);
     if FontDialog1.Execute then
        CurrText.Assign(FontDialog1.Font);
     SelectionChange(Self);
     re_editor.SetFocus;
end;

procedure Teditortextflash.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Teditortextflash.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Teditortextflash.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Teditortextflash.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure Teditortextflash.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TNumberingStyle(not BulletsButton.Down);
end;

function Teditortextflash.CurrText: TTextAttributes;
begin
  if re_editor.SelLength > 0 then Result := re_editor.SelAttributes
  else Result := re_editor.DefAttributes;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure Teditortextflash.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Teditortextflash.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Teditortextflash.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor.SelStart);
  CharPos.X := (re_editor.SelStart -
    SendMessage(re_editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
//  StatusBar.Panels[0].Text := Format('Linha: %3d   Coluna: %3d', [CharPos.Y, CharPos.X]);
end;


procedure Teditortextflash.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TRichEdit).SelectAll;
  end;
end;

procedure Teditortextflash.SelectionChange(Sender: TObject);
begin
  if processoand then exit;
  with re_editor.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in re_editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in re_editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in re_editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(re_editor.SelAttributes.Size);
    FontName.Text := re_editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
      3: JustifyAlign.Down := True;
      //iline:=Editor.Perform(EM_LINEFROMCHAR,Editor.SelStart, 0);
      //Editor.lines[iline]:=Justificatxt(Editor.lines[iline],60);
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure Teditortextflash.FormResize(Sender: TObject);
begin
  SetEditRect;
  SelectionChange(Sender);
end;

procedure Teditortextflash.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure Teditortextflash.FormShow(Sender: TObject);
begin
  UpdateCursorPos;
  DragAcceptFiles(Handle, True);
  re_editor.SetFocus;
end;

procedure Teditortextflash.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Teditortextflash.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Teditortextflash.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Teditortextflash.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Teditortextflash.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Teditortextflash.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Teditortextflash.Cor1Click(Sender: TObject);
begin
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Teditortextflash.bt_confirmaClick(Sender: TObject);
begin
     dm.gravar_logsys(tb_mnt.Caption);
     ConverttoFlash;
end;

procedure Teditortextflash.ConverttoFlash;
var xfont,xteste : string;
    xmarcador,xbold,xitalic,xsublinhado,xparagrafo,xhyperlink : boolean;
    xre1,xsize : integer;
    xprogress,xprogress2 : real;
    xalinhamento:TStringList;
    arqtxflash: TextFile;
    xcolor:TColor;
begin
     processoand:=true;
     re_editor.Visible:=false;
     pn_editor.Repaint;
     xalinhamento:= TStringList.Create;
     xalinhamento.Clear;
     xalinhamento.Add('left');
     xalinhamento.Add('right');
     xalinhamento.Add('center');
     xalinhamento.Add('justify');
     xfont:='';
     xsize:=0;
     xbold:=false;
     xitalic:=false;
     xsublinhado:=false;
     xmarcador:=false;
     xparagrafo:=false;
     xhyperlink:=false;
     re_editor.SelStart:=1;
     re_editor.SelLength:=1;
     AssignFile(arqtxflash,'~hwsflash.tmp');
     Rewrite(arqtxflash);
     ProgressBar1.Position:=0;
     ProgressBar1.Max:=100;
     xprogress:=100/Length(re_editor.text);
     for xre1:=0 to Length(re_editor.text)-1 do begin
         xprogress2:=xprogress2+xprogress;
         ProgressBar1.Position:=Strtoint(Formatfloat('0',xprogress2));
         re_editor.SelStart:=xre1;
         re_editor.SelLength:=1;
         if not xparagrafo then begin
            if Boolean(re_editor.Paragraph.Numbering) then begin
               if not xmarcador then begin
                  Write (arqtxflash,'<ul>');
               end;
               Write (arqtxflash,'<li>');
               xmarcador:=true;
            end else begin
               if xparagrafo then begin
                  Write (arqtxflash,'</ul>');
                  xmarcador:=false;
               end;
            end;
            Write (arqtxflash,'<p align="'+xalinhamento.Strings[Ord(re_editor.Paragraph.Alignment)]+'">');
            xparagrafo:=true;
         end;
         xteste:=copy(re_editor.text,xre1,2);
         if xteste = #$D#$A then begin
            Write (arqtxflash,'</font>');
            if xsublinhado then Write (arqtxflash,'</u>');
            if xitalic then Write (arqtxflash,'</i>');
            if xbold then Write (arqtxflash,'</b>');
            if xmarcador then Write (arqtxflash,'</li>')
            else Write (arqtxflash,'</p>');
            WriteLn (arqtxflash);
            xfont:='';
            xsize:=0;
            xbold:=false;
            xitalic:=false;
            xsublinhado:=false;
            xparagrafo:=false;
            xhyperlink:=false;
         end else begin
            if (fsBold in re_editor.SelAttributes.Style) then begin
               if not xbold then begin
                  Write (arqtxflash,'<b>');
                  xbold:=true;
               end;
            end else begin
               if xbold then begin
                  Write (arqtxflash,'</b>');
                  xbold:=false;
               end;
            end;
            if (fsItalic in re_editor.SelAttributes.Style) then begin
               if not xitalic then begin
                  Write (arqtxflash,'<i>');
                  xitalic:=true;
               end;
            end else begin
               if xitalic then begin
                  Write (arqtxflash,'</i>');
                  xitalic:=false;
               end;
            end;
            if (fsUnderline in re_editor.SelAttributes.Style) then begin
               if not xsublinhado then begin
                  Write (arqtxflash,'<u>');
                  xsublinhado:=true;
               end;
            end else begin
               if xsublinhado then begin
                  Write (arqtxflash,'</u>');
                  xsublinhado:=false;
               end;
            end;
            if (xfont<>re_editor.SelAttributes.Name) then begin
               if xfont<>'' then Write (arqtxflash,'</font>');
               xfont:=re_editor.SelAttributes.Name;
               xcolor:=re_editor.SelAttributes.Color;
               xsize:=re_editor.SelAttributes.Size;
               Write (arqtxflash,'<font face="'+xfont+'" size="'+InttoStr(xsize)+'" color="'+Format('#%6.6x',[ColorToHTML(xcolor)])+'">');
            end else begin
               if (xsize<>re_editor.SelAttributes.Size) then begin
                  if xfont<>'' then Write (arqtxflash,'</font>');
                  xsize:=re_editor.SelAttributes.Size;
                  xcolor:=re_editor.SelAttributes.Color;
                  Write (arqtxflash,'<font face="'+xfont+'" size="'+Inttostr(xsize)+'" color="'+Format('#%6.6x',[ColorToHTML(xcolor)])+'">');
               end;
               if (xcolor<>re_editor.SelAttributes.Color) then begin
                  if xfont<>'' then Write (arqtxflash,'</font>');
                  xcolor:=re_editor.SelAttributes.Color;
                  Write (arqtxflash,'<font face="'+xfont+'" size="'+InttoStr(xsize)+'" color="'+Format('#%6.6x',[ColorToHTML(xcolor)])+'">');
               end;
            end;

            Write (arqtxflash,re_editor.SelText);
         end;
     end;
     Write (arqtxflash,'</font>');
     if xsublinhado then Write (arqtxflash,'</u>');
     if xitalic then Write (arqtxflash,'</i>');
     if xbold then Write (arqtxflash,'</b>');
     if xhyperlink then Write (arqtxflash,'</a>');
     if xmarcador then Write (arqtxflash,'</li>)')
     else Write (arqtxflash,'</p>');
     CloseFile ( arqtxflash );
     Case x_entrafrom of
        0:begin
          Try
            st_stream := TMemoryStream.Create;
            dm.executa.SQL.Text:='UPDATE '+EnDecryptString(Clientconect.vrf20,37249)+'_ax SET tmp=:p0 '+
                                 'WHERE codigo=:p1';
            re_editor.Lines.SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            dm.executa.Params[0].LoadFromStream(st_stream,ftBlob);
            dm.executa.Params[1].AsInteger:=codigo_ax;
            dm.executa.ExecSQL;
          Finally
            st_stream.Free;
          End;
          try
            dm.ds_sql.Edit;
            TMemoField(dm.ds_sql.FieldByName(x_campo_form)).LoadFromFile('~hwsflash.tmp');
            dm.ds_sql.Post;
            adm_client_tabs.btnv89(true);
          Finally
            if FileExists('~hwsflash.tmp') then DeleteFile('~hwsflash.tmp');
          End;
        end;
        1:begin
          Try
            st_stream := TMemoryStream.Create;
            dm.executa.SQL.Text:='UPDATE '+x_table_form2+' SET '+x_campo_form+'=:p0 '+
                                 'WHERE '+x_cpcod_form+'=:p1';
            re_editor.Lines.SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            dm.executa.Params[0].LoadFromStream(st_stream,ftBlob);
            dm.executa.Params[1].AsInteger:=xcod_tab;
            dm.executa.ExecSQL;
          Finally
            st_stream.Free;
          End;
          Try
            dm.executa.SQL.Text:='UPDATE '+x_table_form1+' SET '+x_campo_form+'=:p0 '+
                                 'WHERE '+x_cpcod_form+'=:p1';
            dm.executa.Params[0].LoadFromFile('~hwsflash.tmp',ftMemo);
            //TMemoField(dm.executa.Params[0]).LoadFromFile('~hwsflash.tmp');
            dm.executa.Params[1].AsInteger:=xcod_tab;
            dm.executa.ExecSQL;
          Finally
            if FileExists('~hwsflash.tmp') then DeleteFile('~hwsflash.tmp');
          End;
        end;
     end;
     processoand:=false;
     re_editor.Visible:=true;
     Close;
end;

procedure Teditortextflash.bt_cancelarClick(Sender: TObject);
var xxx : integer;
begin
    Close;
end;

procedure Teditortextflash.FormActivate(Sender: TObject);
begin
     Case x_entrafrom of
        0:begin
          With dm.executa do begin
           SQL.Text:= 'select * from '+EnDecryptString(Clientconect.vrf20,37249)+'_ax'+
                      ' WHERE cod_tab = '+#39+InttoStr(xcod_tab)+#39+
                      ' AND cod_cp = '+#39+InttoStr(xcod_cp)+#39+
                      ' AND cod_ax = '+#39+InttoStr(xcod_ax)+#39;
           Open;
           if recordcount>0 then begin
              codigo_ax:=FieldbyName('codigo').AsInteger;
              try
                st_stream := TMemoryStream.Create;
                TBlobField(FieldByName('tmp')).SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                editortextflash.re_editor.Lines.LoadFromStream(st_stream);
              finally
                st_stream.Free;
              end;
              Close;
           end else begin
              Close;
              editortextflash.re_editor.Clear;
              codigo_ax:=dm.GetCodMax(EnDecryptString(Clientconect.vrf20,37249)+'_ax');
              SQL.Text:='INSERT INTO '+EnDecryptString(Clientconect.vrf20,37249)+'_ax (codigo,cod_ax,cod_tab,cod_cp,tmp) '+
                        'VALUES(:p0,:p1,:p2,:p3,:p4)';
              Params[0].AsInteger:=codigo_ax;
              Params[1].AsInteger:=xcod_ax;
              Params[2].AsInteger:=xcod_tab;
              Params[3].AsInteger:=xcod_cp;
              Params[4].AsBlob:='';
              ExecSQL;
           end;
          end;
        end;
        1: begin
           With dm.executa do begin
           SQL.Text:= 'select * from '+x_table_form2+
                      ' WHERE '+x_cpcod_form+' = '+#39+InttoStr(xcod_tab)+#39;
           Open;
           if recordcount>0 then begin
              try
                st_stream := TMemoryStream.Create;
                TBlobField(FieldByName('letra')).SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                editortextflash.re_editor.Lines.LoadFromStream(st_stream);
              finally
                st_stream.Free;
              end;
              Close;
           end else begin
              Close;
              editortextflash.re_editor.Clear;
              codigo_ax:=dm.GetCodMax(x_table_form1);
              SQL.Text:='INSERT INTO '+x_table_form1+' (codigo,'+x_campo_form+','+x_cpcod_form+') '+
                        'VALUES(:p0,:p1,:p2)';
              Params[0].AsInteger:=codigo_ax;
              Params[1].AsInteger:=xcod_tab;
              Params[2].AsMemo:='';
              ExecSQL;

              codigo_ax:=dm.GetCodMax(x_table_form2);
              SQL.Text:='INSERT INTO '+x_table_form2+' (codigo,'+x_cpcod_form+','+x_campo_form+') '+
                        'VALUES(:p0,:p1,:p2)';
              Params[0].AsInteger:=codigo_ax;
              Params[1].AsInteger:=xcod_tab;
              Params[2].AsBlob:='';
              ExecSQL;
           end;
          end;
        end;
     end;
end;

end.

