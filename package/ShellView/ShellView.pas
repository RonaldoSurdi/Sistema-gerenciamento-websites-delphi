unit ShellView;
{$WARN UNIT_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Graphics, Classes, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, FileCtrl, ShellCtrls;

type
  THWSShellListView = class(TShellListView)
  private
    procedure SetFileEdit(Value: TEdit);
  protected
    FMask: string;
    FFileEdit: TEdit;
    function OwnerDataFetch(Item: TListItem; Request: TItemRequest): Boolean; override;
    procedure SetMask(AValue: string);
    function GetFileName: string;

  published
    property Mask: string read FMask write SetMask;
    property FileEdit: TEdit read FFileEdit write SetFileEdit;
  end;

  THWSFilterComboBox = class(TFilterComboBox)
  protected
    FShellListView: THWSShellListView;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Change; override;
    procedure SetShellListView(AValue: THWSShellListView);
  published
    property ShellListView: THWSShellListView read FShellListView write SetShellListView;
  end;

procedure Register;

  {============================================}

implementation

procedure Register;
begin
  RegisterComponents('HWS', [THWSShellListView,
    THWSFilterComboBox]);
end;

{============================================}

function THWSShellListView.OwnerDataFetch(Item: TListItem;
  Request: TItemRequest): Boolean;
var
  XFolder: TShellFolder;
  XExt, XFltExt: string;
begin
  if (Length(FMask) > 0) and (FMask <> '*.*') then begin
    XFolder := Folders[Item.Index];
    if Assigned(XFolder) and not XFolder.IsFolder then begin
      XExt := ExtractFileExt(XFolder.PathName);
      XFltExt := ExtractFileExt(FMask);
      if CompareText(XExt, XFltExt) <> 0 then begin
        Result := False;
        Exit;
      end;
    end;
  end;
  Result := inherited OwnerDataFetch(Item, Request);
end;

procedure THWSShellListView.SetMask(AValue: string);
begin
  if FMask <> AValue then
  begin
    FMask := AValue;
    Invalidate;
  end;
end;

procedure THWSShellListView.SetFileEdit(Value: TEdit);
begin
  FFileEdit := Value;
  if FFileEdit <> nil then
  begin
    FFileEdit.FreeNotification(Self);
    if GetFileName <> '' then
      FFileEdit.Text := GetFileName
    else
      FFileEdit.Text := Mask;
  end;
end;

function THWSShellListView.GetFileName: string;
var
  idx: Integer;
begin
  idx  := ItemIndex;
  if (idx < 0)  or  (Items.Count = 0)  or  (Items.Item[idx].Selected = FALSE)  then
    Result  := ''
  else
    Result  := Items.Item[idx].Caption;
end;

{============================================}

procedure THWSFilterComboBox.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (AComponent = FShellListView) then FShellListView := nil;
end;

procedure THWSFilterComboBox.Change;
begin
  inherited Change;
  if Assigned(FShellListView) then FShellListView.Mask := Mask
end;

procedure THWSFilterComboBox.SetShellListView(AValue: THWSShellListView);
begin
  if AValue <> FShellListView then
  begin
    FShellListView := AValue;
    if Assigned(AValue) then AValue.FreeNotification(Self);
  end;
end;

end.