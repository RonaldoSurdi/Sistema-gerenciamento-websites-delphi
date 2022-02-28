{ *************************************************************************** }
{                                                                             }
{ Kylix and Delphi Cross-Platform Visual Component Library - DBExpress        }
{                                                                             }
{ Copyright (c) 1999, 2002 Borland Software Corporation                       }
{ Recodificado 2005 HWS                                                       }
{                                                                             }
{ *************************************************************************** }

unit HWSSimpleDataSet;

interface

uses
  SysUtils, Variants, Classes, DB, DBCommon, DBXpress, DBClient, Provider,
  SqlExpr, SqlTimSt, SQLConst;

type

{ TInternalSQLDataSet }

  TInternalSQLDataSet = class(TCustomSQLDataSet)
  published
    property CommandText;
    property CommandType;
    property DataSource;
    property GetMetaData default False;
    property MaxBlobSize default 0;
    property ParamCheck;
    property Params;
    property SortFieldNames;
  end;

{ TSimpleDataSet }

  THWSSimpleDataSet = class(TCustomClientDataSet)
  private
    xFCommandText: string;
    FConnection: TSQLConnection;
    FInternalConnection: TSQLConnection; { Always points to internal if present }
    FDataSet: TInternalSQLDataSet;
    FProvider: TDataSetProvider;
  protected
    procedure AllocConnection; virtual;
    procedure AllocDataSet; virtual;
    procedure AllocProvider; virtual;
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure OpenCursor(InfoQuery: Boolean); override;
    procedure SetConnection(Value: TSQLConnection); virtual;
    procedure xSetCommandText(Value: string); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Active;
    property Aggregates;
    property AggregatesActive;
    property AutoCalcFields;
    property Connection: TSQLConnection read FConnection write SetConnection;
    property CommandText: string read xFCommandText write xSetCommandText;
    property DataSet: TInternalSQLDataSet read FDataSet;
    property Constraints;
    property DisableStringTrim;
    property FileName;
    property Filter;
    property Filtered;
    property FilterOptions;
    property FieldDefs;
    property IndexDefs;
    property IndexFieldNames;
    property IndexName;
    property FetchOnDemand;
    property MasterFields;
    property MasterSource;
    property ObjectView;
    property PacketRecords;
    property Params;
    property ReadOnly;
    property StoreDefs;
    property BeforeOpen;
    property AfterOpen;
    property BeforeClose;
    property AfterClose;
    property BeforeInsert;
    property AfterInsert;
    property BeforeEdit;
    property AfterEdit;
    property BeforePost;
    property AfterPost;
    property BeforeCancel;
    property AfterCancel;
    property BeforeDelete;
    property AfterDelete;
    property BeforeScroll;
    property AfterScroll;
    property BeforeRefresh;
    property AfterRefresh;
    property OnCalcFields;
    property OnDeleteError;
    property OnEditError;
    property OnFilterRecord;
    property OnNewRecord;
    property OnPostError;
    property OnReconcileError;
    property BeforeApplyUpdates;
    property AfterApplyUpdates;
    property BeforeGetRecords;
    property AfterGetRecords;
    property BeforeRowRequest;
    property AfterRowRequest;
    property BeforeExecute;
    property AfterExecute;
    property BeforeGetParams;
    property AfterGetParams;
  end;

procedure Register;

implementation

{ THWSSimpleDataSet }

procedure Register;
begin
  RegisterComponents('HWS', [THWSSimpleDataSet]);
end;

constructor THWSSimpleDataSet.Create(AOwner: TComponent);
begin
  inherited;
  AllocProvider;
  AllocDataSet;
  AllocConnection;
end;

destructor THWSSimpleDataSet.Destroy;
begin
  inherited; { Reserved }
end;

procedure THWSSimpleDataSet.Loaded;
begin
  inherited;
  { Internal connection can now be safely deleted if needed }
  if FInternalConnection <> FConnection then
    FreeAndNil(FInternalConnection);
end;

procedure THWSSimpleDataSet.AllocConnection;
begin
  FConnection := TSQLConnection.Create(Self);
  FInternalConnection := FConnection;
  FConnection.Name := 'InternalConnection';		{ Do not localize }
  FConnection.SetSubComponent(True);
  FDataSet.SQLConnection := FConnection;
end;

procedure THWSSimpleDataSet.AllocDataSet;
begin
  FDataSet := TInternalSQLDataSet.Create(Self);
  FDataSet.Name := 'InternalDataSet';			{ Do not localize }
  FDataSet.SQLConnection := FConnection;
  FDataSet.SetSubComponent(True);
  FProvider.DataSet := FDataSet;
end;

procedure THWSSimpleDataSet.AllocProvider;
begin
  FProvider := TDataSetProvider.Create(Self);
  FProvider.DataSet := FDataSet;
  FProvider.Name := 'InternalProvider';			{ Do not localize }
  FProvider.SetSubComponent(True);
  SetProvider(FProvider);
end;

procedure THWSSimpleDataSet.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if not (csDestroying in ComponentState ) and (Operation = opRemove) and
     (AComponent = FConnection) and (AComponent.Owner <> Self) then
    AllocConnection;
end;

procedure THWSSimpleDataSet.OpenCursor(InfoQuery: Boolean);
begin
  if Assigned(FProvider) then
    SetProvider(FProvider);
  if FProvider.DataSet = Self then
    raise Exception.Create(SCircularProvider);
  inherited;
end;

procedure THWSSimpleDataSet.SetConnection(Value: TSQLConnection);
begin
  { Assigning existing value or clearing internal connection is a NOP }
  if (Value = FConnection) or ((Value = nil) and Assigned(FInternalConnection)) then
    Exit;
  { Remove FreeNotification from existing external reference }
  if FConnection <> FInternalConnection then
    FConnection.RemoveFreeNotification(Self);
  { Reference to external connection was cleared, recreate internal }
  if (Value = nil) then
    AllocConnection
  else
  begin
    { Free the internal connection when assigning an external connection }
    if Assigned(FInternalConnection) and
       { but not if we are streaming in, then wait until loaded is called }
       not (csLoading in FInternalConnection.ComponentState) then
      FreeAndNil(FInternalConnection);
    FConnection := Value;
    FConnection.FreeNotification(Self);
    FDataSet.CommandText:= CommandText;
    FDataSet.SQLConnection := FConnection;
  end;
end;

procedure THWSSimpleDataSet.xSetCommandText(Value: string);
begin
    xFCommandText:= Value;
    DataSet.CommandText:=Value;
end;

end.
