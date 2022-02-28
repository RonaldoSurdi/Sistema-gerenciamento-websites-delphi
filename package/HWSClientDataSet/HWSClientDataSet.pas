{ *************************************************************************** }
{                                                                             }
{ Kylix and Delphi Cross-Platform Visual Component Library - DBExpress        }
{                                                                             }
{ Copyright (c) 1999, 2002 Borland Software Corporation                       }
{ Recodificado 2005 HWS                                                       }
{                                                                             }
{ *************************************************************************** }

unit HWSClientDataSet;

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

{ TClientDataSet }

  THWSClientDataSet = class(TCustomClientDataSet)
  private
      FDataSet: TInternalSQLDataSet;
      FConnection: TSQLConnection;
  protected
    procedure AllocDataSet; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property DataSet: TInternalSQLDataSet read FDataSet;
    property Active;
    property Aggregates;
    property AggregatesActive;
    property AutoCalcFields;
    property ConnectionBroker;
    property Constraints;
    property DataSetField;
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
    property ProviderName;
    property ReadOnly;
    property RemoteServer;
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

{ THWSClientDataSet }

procedure Register;
begin
  RegisterComponents('HWS', [THWSClientDataSet]);
end;

constructor THWSClientDataSet.Create(AOwner: TComponent);
begin
  inherited;
  AllocDataSet;
end;

destructor THWSClientDataSet.Destroy;
begin
  inherited; { Reserved }
end;

procedure THWSClientDataSet.AllocDataSet;
begin
  FDataSet := TInternalSQLDataSet.Create(Self);
  FDataSet.Name := 'InternalDataSet';			{ Do not localize }
  FDataSet.SQLConnection := FConnection;
  FDataSet.SetSubComponent(True);
end;

end.
