unit DBGridBoolean;

interface

uses
  Windows, Messages, SysUtils, Classes, Extctrls, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Db;

type
  TDBGridBoolean = class(TDBGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
    function  Max(First, Second: LongInt): LongInt;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    procedure DrawCheck(ACanvas: TCanvas; const ARect: TRect; Checked: Boolean);
    procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer; const Text: string; Alignment: TAlignment);
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HWS', [TDBGridBoolean]);
end;

constructor TDBGridBoolean.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
end;

function TDBGridBoolean.Max(First, Second: LongInt): LongInt;
begin
  If First >= Second Then Result := First
  Else Result := Second;
end;

procedure TDBGridBoolean.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var
  ValueStr  : String;
  Value     : Boolean;
  OldActive : Integer;
  DrawColumn: TColumn;
begin
  inherited DrawCell(ACol, ARow,ARect,AState);

  If Not (gdFixed In AState) Then
  begin
    If (ACol <= Columns.Count) and Assigned(Columns[ACol - 1].Field) Then
    begin
      DrawColumn := Columns[ACol - 1];

      If (Columns[ACol - 1].Field.DataType = ftBoolean) Then
      begin
        OldActive := DataLink.ActiveRecord;

        Try
          DataLink.ActiveRecord := ARow - 1;

          If Assigned(DrawColumn.Field) Then
          begin
            Value := DrawColumn.Field.AsBoolean;
            DrawCheck(Canvas,ARect,Value);
          end;
        Finally DataLink.ActiveRecord := OldActive;
        end;
      end
      Else
      begin
        OldActive := DataLink.ActiveRecord;

        Try
          DataLink.ActiveRecord := ARow - 1;

          If Assigned(DrawColumn.Field) Then
          begin
            ValueStr := DrawColumn.Field.AsString;
            WriteText(Canvas,ARect,2,2,ValueStr,Columns[ACol-1].Alignment);
          end;
        Finally DataLink.ActiveRecord := OldActive;
        end;
      end;
    end;
  end;

  With ARect,Canvas do
    If (gdFixed in AState) Then Frame3d(Canvas,ARect,clBtnHighLight,clBtnShadow,1);
end;

procedure TDBGridBoolean.DrawCheck(ACanvas: TCanvas; const ARect: TRect; Checked: Boolean);
var
  TempRect   : TRect;
  OrigRect   : TRect;
  Dimension  : Integer;
  OldColor   : TColor;
  OldPenWidth: Integer;
  OldPenColor: TColor;
  B          : TRect;
  DrawBitmap : TBitmap;
begin
  OrigRect   := ARect;
  DrawBitmap := TBitmap.Create;

  Try
    DrawBitmap.Canvas.Brush.Color := ACanvas.Brush.Color;

    With DrawBitmap,OrigRect Do
    begin
      Height := Max(Height,Bottom - Top);
      Width  := Max(Width,Right - Left);

      B := Rect(0,0,Right - Left,Bottom - Top);
    end;

    With DrawBitmap,OrigRect Do ACanvas.CopyRect(OrigRect,Canvas,B);

    TempRect        := OrigRect;
    TempRect.Top    := TempRect.Top + 1;
    TempRect.Bottom := TempRect.Bottom + 1;

    With TempRect Do
    begin
      Dimension := ACanvas.TextHeight('R')-3;
      Top       := ((Bottom+Top)-Dimension) shr 1;
      Bottom    := Top+Dimension;
      Left      := ((Left+Right)-Dimension) shr 1;
      Right     := Left+Dimension;
    end;

    Frame3d(ACanvas,TempRect,clBtnShadow,clBtnHighLight,1);
    Frame3d(ACanvas,TempRect,clBlack,clBtnFace,1);

    With ACanvas Do
    begin
      OldColor    := Brush.Color;
      OldPenWidth := Pen.Width;
      OldPenColor := Pen.Color;
      Brush.Color := clWindow;
      FillRect(TempRect);
    end;

    If Checked Then
    begin
      With ACanvas,TempRect Do
      begin
        Pen.Color := clBlack;
        Pen.Width := 1;

        MoveTo(Left+1,Top+3);
        LineTo(Left+4,Top+6);
        MoveTo(Left+1,Top+4);
        LineTo(Left+3,Top+6);
        MoveTo(Left+1,Top+5);
        LineTo(Left+3,Top+7);

        MoveTo(Left+2,Top+6);
        LineTo(Left+8,Top);
        MoveTo(Left+3,Top+6);
        LineTo(Left+8,Top+1);
        MoveTo(Left+3,Top+7);
        LineTo(Left+8,Top+2);
      end;
    end;

    ACanvas.Pen.Color   := OldPenColor;
    ACanvas.Pen.Width   := OldPenWidth;
    ACanvas.Brush.Color := OldColor;

  Finally DrawBitmap.Free;
  end;
end;

procedure TDBGridBoolean.WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer; const Text: string; Alignment: TAlignment);
const
  AlignFlags : Array [TAlignment] Of Integer =
    (DT_LEFT Or DT_WORDBREAK Or DT_EXPANDTABS Or DT_NOPREFIX,
     DT_RIGHT Or DT_WORDBREAK Or DT_EXPANDTABS Or DT_NOPREFIX,
     DT_CENTER Or DT_WORDBREAK Or DT_EXPANDTABS Or DT_NOPREFIX);
var
  B, R: TRect;
  I, Left: Integer;
  DrawBitmap : TBitmap;
  OrigRect: TRect;
begin
  OrigRect   := ARect;
  DrawBitmap := TBitmap.Create;

  Try
    I := ColorToRGB(ACanvas.Brush.Color);

    If GetNearestColor(ACanvas.Handle, I) = I Then
    begin
      Case Alignment of
        taLeftJustify:  Left := OrigRect.Left + DX;
        taRightJustify: Left := OrigRect.Right - ACanvas.TextWidth(Text) - 3;
      Else
        Left := OrigRect.Left + (OrigRect.Right - OrigRect.Left) Shr 1 - (ACanvas.TextWidth(Text) shr 1);
      end;

      ExtTextOut(ACanvas.Handle,Left,OrigRect.Top + DY,ETO_OPAQUE Or ETO_CLIPPED,@OrigRect,PChar(Text),Length(Text),Nil);
    end
    Else
    begin
      With DrawBitmap,OrigRect Do
      begin
        Width  := Max(Width,Right - Left);
        Height := Max(Height,Bottom - Top);
        R := Rect(DX,DY,Right - Left - 1,Bottom - Top - 1);
        B := Rect(0,0,Right - Left,Bottom - Top);
      end;

      with DrawBitmap.Canvas do
      begin
        Font        := ACanvas.Font;
        Font.Color  := ACanvas.Font.Color;
        Brush       := ACanvas.Brush;
        Brush.Style := bsSolid;
        FillRect(B);
        SetBkMode(Handle,TRANSPARENT);
        DrawText(Handle,PChar(Text),Length(Text),R,AlignFlags[Alignment]);
      end;

      ACanvas.CopyRect(OrigRect,DrawBitmap.Canvas,B);
    end;
  Finally DrawBitmap.Free;
  end;
end;

procedure TDBGridBoolean.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Rect  : TRect;
  State : Boolean;
  OldCol: Integer;
  OldRow: Integer;
  Cell  : TGridCoord;
begin
  OldCol := Col;
  OldRow := Row;
  Cell   := MouseCoord(X,Y);

  inherited MouseDown(Button,Shift,X,Y);

  If DataLink.Active And (Cell.X = OldCol) And (Cell.Y = OldRow) Then
  begin
    If (DataLink.DataSet.State = dsBrowse) Then DataLink.DataSet.Edit;

    If ((DataLink.DataSet.State = dsEdit) Or (DataLink.DataSet.State = dsInsert)) And
       (Columns[Col - 1].Field.DataType = ftBoolean) Then
    begin
      Rect := BoxRect(Col,Row,Col,Row);

      Columns[Col - 1].Field.AsBoolean := Not Columns[Col - 1].Field.AsBoolean;
      State := Columns[Col - 1].Field.AsBoolean;

      With Canvas,Rect Do DrawCheck(Canvas,Rect,State);

      EditorMode := False;
    end;
  end;
end;

procedure TDBGridBoolean.KeyPress(var Key: Char);
var
  Rect  : TRect;
  State : Boolean;
begin
  If Not (dgAlwaysShowEditor In Options) And DataLink.Active Then
  begin
    If (Columns[Col - 1].Field.DataType = ftBoolean) Then
    begin
      If (DataLink.DataSet.State = dsBrowse) Then DataLink.DataSet.Edit;

      Key  := #0;
      Rect := BoxRect(Col,Row,Col,Row);

      Columns[Col - 1].Field.AsBoolean := Not Columns[Col - 1].Field.AsBoolean;
      State := Columns[Col - 1].Field.AsBoolean;

      With Canvas,Rect Do DrawCheck(Canvas,Rect,State);

      EditorMode := False;
    end;

    inherited KeyPress(Key);
  end;
end;

end.
