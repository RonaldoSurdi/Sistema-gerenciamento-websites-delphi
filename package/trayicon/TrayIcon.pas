unit TrayIcon;
{$WARN SYMBOL_DEPRECATED OFF}

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, ShellAPI, Forms,
  Menus, ExtCtrls, Dialogs ;

const WM_TOOLTRAYICON = WM_USER+1;
      WM_RESETTOOLTIP = WM_USER+2;

type
  TTrayIcon = class(TComponent)
  private
    IconData: TNOTIFYICONDATA;
    fAnimate : boolean ;
    fAnimateInterval : integer ;
    fCurrentImage : integer ;
    fIcon : TIcon;
    fOriginalIcon : TIcon ;   
    fToolTip : String;
    fWindowHandle : HWND;
    fActive : boolean;
    fShowDesigning : Boolean;
    fTimer : TTimer ;
    fOnClick     : TNotifyEvent;
    fOnDblClick  : TNotifyEvent;
    fOnRightClick : TMouseEvent;
    fPopupMenu   : TPopupMenu;
    fImages : TImageList ;
    FHint: String;
    FShowHint: Boolean;

    function AddIcon : boolean;
    function ModifyIcon : boolean;
    function DeleteIcon : boolean;

    procedure SetActive(Value : boolean);
    procedure SetAnimate(Value : boolean);
    procedure SetAnimateInterval(Value : integer);
    procedure SetShowDesigning(Value : boolean);
    procedure SetIcon(Value : TIcon);
    procedure SetToolTip(Value : String);
    procedure WndProc(var msg : TMessage);

    procedure FillDataStructure;
    procedure DoRightClick( Sender : TObject );
    procedure ChangeIcon( Sender : TObject ) ;

    procedure SetHint(Value: String);
    procedure SetShowHint(Value: Boolean);

  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override ;

  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;

  published

    property Active : boolean read fActive write SetActive;
    property Animate : boolean read fAnimate write SetAnimate ;
    property AnimateInterval : integer read fAnimateInterval write SetAnimateInterval default 100 ;
    property ShowDesigning : boolean read fShowDesigning write SetShowDesigning;
    property Icon : TIcon read fIcon write SetIcon;
    property Images : TImageList read fImages write fImages ;
    property ToolTip : string read fTooltip write SetToolTip;

    property OnClick     : TNotifyEvent read FOnClick write FOnClick;
    property OnDblClick  : TNotifyEvent read FOnDblClick write FOnDblClick;
    property OnRightClick : TMouseEvent  read FOnRightClick write FonRightClick;
    property PopupMenu : TPopupMenu read fPopupMenu write fPopupMenu;

    property Hint: String read FHint write SetHint;
    property ShowHint: Boolean read FShowHint write SetShowHint;
  end;

procedure Register;

implementation

//{$R TrayIcon.res}

procedure TTrayIcon.Notification(AComponent: TComponent; Operation: TOperation);
begin
   if (AComponent = FImages) and (Operation = opRemove) then begin
      Animate := False ;
      FImages := nil ;
   end ;
end ;

procedure TTrayIcon.SetActive(Value : boolean);
begin
   if value <> fActive then begin
     fActive := Value;
     if not (csdesigning in ComponentState) then begin
        if Value then
           AddIcon
        else
           DeleteIcon;
     end;
  end;
end;

procedure TTrayIcon.SetShowDesigning(Value : boolean);
begin
  if csdesigning in ComponentState then begin
     if value <> fShowDesigning then begin
        fShowDesigning := Value;
        if Value then
           AddIcon
        else
           DeleteIcon ;
     end;
  end;
end;

procedure TTrayIcon.SetIcon(Value : Ticon);
begin
  if Value <> fIcon then begin
     fIcon.Assign(value);
     ModifyIcon;
  end;
end;

procedure TTrayIcon.SetAnimate(Value : boolean);
begin
   if (not Value) or ((fImages <> nil) and (fImages.Count > 0) and fActive) then begin
      fAnimate := Value ;
      if Value then begin
         fOriginalIcon.Assign(fIcon) ;
         fCurrentImage := 0 ;
      end ;
      fTimer.Enabled := Value ;
      if not Value then
         SetIcon(fOriginalIcon) ;
   end ;
end ;

procedure TTrayIcon.SetAnimateInterval(Value : integer);
begin
   if Value > 0 then begin
      fAnimateInterval := Value ;
      fTimer.Interval := Value ;
   end ;
end ;

procedure TTrayIcon.SetToolTip(Value : string);
begin

   if length( Value ) > 62 then
      Value := copy(Value,1,62);
   fToolTip := value;
   ModifyIcon;

end;

constructor TTrayIcon.Create(AOwner : TComponent);
begin
  inherited ;
  FWindowHandle := AllocateHWnd( WndProc );
  FIcon := TIcon.Create;
  FOriginalIcon := TIcon.Create ;
  FAnimateInterval := 100 ;
  FTimer := TTimer.Create(self) ;
  FTimer.Enabled := False ;
  FTimer.OnTimer := ChangeIcon ;
end;

destructor TTrayIcon.Destroy;
begin
  if (not (csDesigning in ComponentState) and fActive)
     or ((csDesigning in ComponentState) and fShowDesigning) then
        DeleteIcon ;

  FTimer.Free ;
  FIcon.Free;
  FOriginalIcon.Free ;
  DeAllocateHWnd( FWindowHandle );
  inherited ;
end;

procedure TTrayIcon.FillDataStructure;
begin
  with IconData do begin
     cbSize := sizeof(TNOTIFYICONDATA);
     wnd := FWindowHandle;
     uID := 0;
     uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
     hIcon := fIcon.Handle;
     StrPCopy(szTip,fToolTip);
     StrLCopy(szTip, PChar(FHint), SizeOf(szTip));
     uCallbackMessage := WM_TOOLTRAYICON;
  end;
end;

function TTrayIcon.AddIcon : boolean;
begin
   FillDataStructure;
   result := Shell_NotifyIcon(NIM_ADD,@IconData);

   if fToolTip = '' then
      PostMessage( fWindowHandle, WM_RESETTOOLTIP,0,0 );
end;

function TTrayIcon.ModifyIcon : boolean;
begin
   FillDataStructure;
   if fActive then
      result := Shell_NotifyIcon(NIM_MODIFY,@IconData)
   else
      result := True;
end;

procedure TTrayIcon.DoRightClick( Sender : TObject );
var MouseCo: Tpoint;
begin

   GetCursorPos(MouseCo);

   if assigned( fPopupMenu ) then begin
      SetForegroundWindow( Application.Handle );
      Application.ProcessMessages;
      fPopupmenu.Popup( Mouseco.X, Mouseco.Y );
   end;

   if assigned( FOnRightClick ) then
      begin
         FOnRightClick(self,mbRight,[],MouseCo.x,MouseCo.y);
      end;
end;

function TTrayIcon.DeleteIcon : boolean;
begin
   result := Shell_NotifyIcon(NIM_DELETE,@IconData);
end;

procedure TTrayIcon.WndProc(var msg : TMessage);
begin
   with msg do
     if (msg = WM_RESETTOOLTIP) then
        SetToolTip( fToolTip )
     else if (msg = WM_TOOLTRAYICON) then begin
        case lParam of
           WM_LBUTTONDBLCLK   : if assigned (FOnDblClick) then FOnDblClick(self);
           WM_LBUTTONUP       : if assigned(FOnClick)then FOnClick(self);
           WM_RBUTTONUP       : DoRightClick(self);
        end;
     end
     else 
        Result := DefWindowProc(FWindowHandle, Msg, wParam, lParam);

end;

procedure TTrayIcon.ChangeIcon( Sender : TObject ) ;
var
   TempIcon : TIcon ;
begin
    TempIcon := TIcon.Create ;
    if fCurrentImage = fImages.Count - 1 then
       fCurrentImage := 0
    else
       Inc(fCurrentImage) ;
    fImages.GetIcon(fCurrentImage, TempIcon) ;
    SetIcon(TempIcon) ;
    TempIcon.Free ;

end;

procedure TTrayIcon.SetHint(Value: String);
begin
  FHint := Value;
  ModifyIcon;
end;


procedure TTrayIcon.SetShowHint(Value: Boolean);
begin
  FShowHint := Value;
  ModifyIcon;
end;

procedure Register;
begin
    RegisterComponents('HWS', [TTrayIcon]);
end;

end.
