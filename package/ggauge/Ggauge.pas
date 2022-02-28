unit Ggauge;

interface

uses
  Windows, Messages, Sysutils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls;

type

	TAutoTextStyle = (atsPercent, atsPosOfTotal, atsPosBarTotal, atsNone);

	TGradientGauge = class(TGraphicControl)
	private
		FBmp: TBitmap;
		FColorBkg: TColor;
    FColorStart: TColor;
    FColorEnd: TColor;
		FProgress: Integer;
    FMax: Integer;
    FMin: Integer;
		FAutoText: Boolean;
		FText: String;
    FShowBorder: Boolean;
    FFlat: Boolean;
    FAutoTextStyle: TAutoTextStyle;
	protected
		procedure SetColorStart(Value: TColor);
		procedure SetColorEnd(Value: TColor);
		procedure SetColorBkg(Value: TColor);
		procedure SetMin(Value: Integer);
		procedure SetMax(Value: Integer);
		procedure SetProgress(Value: Integer);
		procedure SetText(Value: String);
		procedure SetAutoText(Value: Boolean);
    procedure SetShowBorder(Value: Boolean);
    procedure SetFlat(Value: Boolean);
    procedure SetAutoTextStyle(Value: TAutoTextStyle);
		procedure DrawGradient(StartColor, EndColor: TColor; TheBitmap: TBitmap);
		procedure Paint; override;
    function CalculatePercent: Integer;
	public
		constructor Create(AOwner: Tcomponent); override;
		destructor Destroy; override;
		procedure StepIt;
		procedure StepOut;
    property Percent: Integer read CalculatePercent;
	published
  	property Align;
    property Anchors;
    property AutoText: Boolean read FAutoText write SetAutoText;
    property AutoTextStyle: TAutoTextStyle read FAutoTextStyle write SetAutoTextStyle;
    property ColorBack: TColor read FColorBkg write SetColorBkg;
    property ColorStart: TColor read FColorStart write SetColorStart;
    property ColorEnd: TColor read FColorEnd write SetColorEnd;
    property Flat: Boolean read FFlat write SetFlat;
    property Min: Integer read FMin write SetMin;
    property Max: Integer read FMax write SetMax;
    property Position: Integer read FProgress write SetProgress;
    property Text: String read FText write SetText;
    property ShowBorder: Boolean read FShowBorder write SetShowBorder;
    property Visible;
    property Font;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property Hint;
		property ShowHint;
	end;

	procedure Register;

implementation

{ TGradientGauge }

procedure Register;
begin
  Registercomponents('HWS', [TGradientGauge]);
end;


constructor TGradientGauge.Create(AOwner: TComponent);
begin

	inherited Create(AOwner);

	Width := 150;
	Height := 20;
	FMin := 0;
	FMax := 100;
	FProgress := FMin;
  FAutoText := True;
  FShowBorder := True;
  FFlat := True;
  FAutoTextStyle := atsPercent;

  FColorStart := clWhite;
  FColorEnd := clNavy;
  FColorBkg := clWhite;

  FBmp := TBitmap.Create;
  FBmp.Width := Width;
  FBmp.Height := Height - 5;
	DrawGradient(FColorStart, FColorEnd, FBmp);

end;


destructor TGradientGauge.Destroy;
begin
  FBmp.Free;
  inherited Destroy;
end;


procedure TGradientGauge.DrawGradient(StartColor, EndColor: TColor; TheBitmap: TBitmap);
var
  RgbFrom: array[0..2] of Byte;
  RgbDiff: array[0..2] of Integer;
  I: Integer;
  R, G, B: Byte;
begin

	// extract from RGB values
	RgbFrom[0] := GetRValue(ColorToRGB(StartColor));
	RgbFrom[1] := GetGValue(ColorToRGB(StartColor));
	RgbFrom[2] := GetBValue(ColorToRGB(StartColor));

	// calculate difference of from and to RGB values
  RgbDiff[0] := GetRValue(ColorToRGB(EndColor)) - RgbFrom[0];
  RgbDiff[1] := GetGValue(ColorToRGB(EndColor)) - RgbFrom[1];
  RgbDiff[2] := GetBValue(ColorToRGB(EndColor)) - RgbFrom[2];

	// set pen sytle and mode
  TheBitmap.Canvas.Pen.Style := psSolid;
  TheBitmap.Canvas.Pen.Mode := pmCopy;

	for I := 0 to Height do
  begin
		// calculate line color
    R := RgbFrom[0] + MulDiv(I, RgbDiff[0], Height);
    G := RgbFrom[1] + MulDiv(I, RgbDiff[1], Height);
    B := RgbFrom[2] + MulDiv(I, RgbDiff[2], Height);
		// select brush and paint color band
    TheBitmap.Canvas.Pen.Color := RGB(R, G, B);
    TheBitmap.Canvas.MoveTo(0, I);
    TheBitmap.Canvas.LineTo(TheBitmap.Width, I);
  end;
  
end;


procedure TGradientGauge.Paint;
var
  Rp: Integer;
  tmpRect: TRect;
  tmpPerc: Integer;
  x: Byte;
begin

  if not Visible then Exit;

 	x := 0;

	// draw border
  if FShowBorder then begin
		tmpRect := Rect(0, 0, Width, Height);
		Canvas.Pen.Width := 1;
		Canvas.Pen.Color := clBlack;
		Canvas.Pen.Style := psSolid;
		Canvas.Brush.Style := bsClear;
    if FFlat then
			Frame3d(Canvas, tmpRect, clBtnShadow, clBtnHighLight, 1)
    else
			Canvas.Rectangle(0, 0, Width, Height);
    x := 1;
  end;

	tmpPerc := CalculatePercent;
  Rp := tmpPerc * (Width - 3) div 100;

	if Rp <> 0 then
    Canvas.CopyRect(Rect(x, x, Rp + 1, Height - x), FBmp.Canvas,
      Rect(0, 0, FBmp.Width, FBmp.Height));

	// draw the clean part of gauge
	if tmpPerc < 100 then
  begin
  	if FFlat then
	    Canvas.Brush.Color := clBtnFace
    else
	    Canvas.Brush.Color := FColorBkg;
    Canvas.Brush.Style := bsSolid;
    Canvas.Pen.Style := psClear;
    Canvas.Pen.Width := 1;
    Canvas.Rectangle(Rp + 1, x, Width - x, Height - x);
  end;

	// show the text centralized in rectangle
  tmpRect := Rect(0, 0, Width, Height);
  Canvas.Brush.Style := bsClear;
  Canvas.Font := Font;
  DrawText(Canvas.Handle, PChar(FText), -1,
  	tmpRect, DT_CENTER or DT_VCENTER or DT_SINGLELINE);

end;


procedure TGradientGauge.SetColorBkg(Value: TColor);
begin
  if FColorBkg <> Value then
  begin
    FColorBkg := Value;
    Invalidate;
  end;
end;


procedure TGradientGauge.SetColorStart(Value: TColor);
begin
  if FColorStart <> Value then
  begin
    FColorStart := Value;
    DrawGradient(FColorStart, FColorEnd, FBmp);
    Invalidate;
  end;
end;


procedure TGradientGauge.SetColorEnd(Value: TColor);
begin
  if FColorEnd <> Value then
  begin
    FColorEnd := Value;
    DrawGradient(FColorStart, FColorEnd, FBmp);
    Invalidate;
  end;
end;


procedure TGradientGauge.SetText(Value: String);
begin
	if FAutoText then Exit;
	if FText <> Value then
	begin
		FText := Value;
		Invalidate;
	end;
end;


procedure TGradientGauge.SetMin(Value: Integer);
begin
	if Value < 0 then Value := 0;
	if (FMin <> Value) and (Value < FMax) then
  begin
		FMin := Value;
		if FProgress < FMin then FProgress := FMin;
		SetProgress(FProgress);
    Invalidate;
  end;
end;


procedure TGradientGauge.SetMax(Value: Integer);
begin
	if Value < 0 then Value := FMax;
	if (FMax <> Value) and (Value > FMin) then
	begin
		FMax := Value;
		if FProgress > FMax then FProgress := FMax;
		SetProgress(FProgress);
    Invalidate;
	end;
end;


procedure TGradientGauge.SetProgress(Value: Integer);
var
	Percent: Integer;
  CanSet: Boolean;
begin

 	CanSet := (Value <= FMax) and (Value >= FMin);
	if not (csDesigning in ComponentState) then
  	CanSet := CanSet and (FProgress <> Value);

	if CanSet then
  begin
    FProgress := Value;
    if FAutoText then
    begin
    	Percent := CalculatePercent;
    	case FAutoTextStyle of
        atsPercent:
					FText := IntToStr(Percent) + ' %';
        atsPosOfTotal:
					FText := IntToStr(FProgress) + ' of ' + IntToStr(FMax);
        atsPosBarTotal:
					FText := IntToStr(FProgress) + ' / ' + IntToStr(FMax);
        atsNone:
					FText := '';
      end;
    end;
		Invalidate;
  end;

end;


procedure TGradientGauge.SetAutoText(Value: Boolean);
begin
	if FAutoText <> Value then
	begin
		FAutoText := Value;
		SetProgress(FProgress);
    Invalidate;
	end;
end;


procedure TGradientGauge.SetShowBorder(Value: Boolean);
begin
	if FShowBorder <> Value then
	begin
		FShowBorder := Value;
		Invalidate;
	end;
end;


procedure TGradientGauge.SetFlat(Value: Boolean);
begin
	if FFlat <> Value then
	begin
		FFlat := Value;
		Invalidate;
	end;
end;


procedure TGradientGauge.SetAutoTextStyle(Value: TAutoTextStyle);
begin
	if FAutoTextStyle <> Value then
	begin
		FAutoTextStyle := Value;
    SetProgress(FProgress);
    Invalidate;
	end;
end;


procedure TGradientGauge.StepIt;
var
  tmp: Integer;
begin
	if FProgress < FMax then
  begin
		tmp := FProgress + 1;
		SetProgress(tmp);
    Invalidate;
  end;
end;


procedure TGradientGauge.StepOut;
var
  tmp: Integer;
begin
	if FProgress > FMin then
  begin
		tmp := FProgress - 1;
		SetProgress(tmp);
    Invalidate;
  end;
end;


function TGradientGauge.CalculatePercent: Integer;
begin
	Result := Round(((FProgress - FMin) / (FMax - FMin)) * 100);
end;


end.
