unit TransparentListBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TTransparentListBox = class(TListBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure WMEraseBkgnd(var Msg: TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
  published
    { Published declarations }
    property Style default lbOwnerDrawFixed;
    property Ctl3D default False;
    property BorderStyle default bsNone;
  end;

procedure Register;

implementation

constructor TTransparentListBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Ctl3D       := False;
  BorderStyle := bsNone;
  Style       := lbOwnerDrawFixed;
end;

procedure TTransparentListBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

procedure TTransparentListBox.WMEraseBkgnd(var Msg: TWMEraseBkgnd);
begin
  Msg.Result := 1;
end;

procedure TTransparentListBox.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
  tlbVisible: Boolean;
begin
  tlbVisible := (Parent <> nil) and IsWindowVisible(Handle);
  if tlbVisible then ShowWindow(Handle, SW_HIDE);
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
  SetBounds(ALeft, ATop, AWidth, AHeight);
  if tlbVisible then ShowWindow(Handle, SW_SHOW);
end;

procedure TTransparentListBox.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  FoundStyle: TBrushStyle;
  R: TRect;
begin
  FoundStyle := Canvas.Brush.Style;
  R := Rect;
  MapWindowPoints(Handle, Parent.Handle, R, 2);
  InvalidateRect(Parent.Handle, @R, True);
  Parent.Update;
  if not (odSelected in State) then begin
    Canvas.Brush.Style := bsClear;
  end else begin
    Canvas.Brush.Style := bsSolid;
  end;
  inherited DrawItem(Index, Rect, State);
  Canvas.Brush.Style := FoundStyle;
end;

procedure Register;
begin
  RegisterComponents('HWS', [TTransparentListBox]);
end;

end.
