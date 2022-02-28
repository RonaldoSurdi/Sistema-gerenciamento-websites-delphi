unit HTMLTable;

(*****************************************************************
 © 1999 Daniel J. Wojcik / Brute Force Programming
 A component to return an HTML Table as a string from a TTable or
 a TQuery (or any descendant of TDataSet?)
 It does NOT handle BLOBs, except for ftMemo fields, but
 gracefully ignore them.
 *****************************************************************)

interface

uses
  SysUtils, Classes, DB;

type
  TCVAlignment = (caTop,caMiddle,caBottom);
  TCellAlignment = (caLeftJustify,caCenter,caRightJustify,UseFields);

  ConvertSet = set of TFieldType;

  THTMLTable = class(TComponent)
  private
    FSource: TDataSet;
    FBorder : Integer;
    FCellPadding : Integer;
    FCaption : String;
    FHeader : string;
    FTableAlignment : TAlignment;
    FCellVAlignment : TCVAlignment;
    FCellAlignment : TCellAlignment;
    FHeaderAlignment : TCellAlignment;
    FTableString : String;
    FWrap : Boolean;

    procedure AutoInitialize;
    function GetBorder : Integer;
    procedure SetBorder(Value : Integer);
    function GetCellPad : Integer;
    procedure SetCellPad(Value : Integer);
    function GetCaption : String;
    procedure SetCaption(Value : String);
    function GetHeader : String;
    procedure SetHeader(Value : String);
    function GetHeaderAlignment : TCellAlignment;
    procedure SetHeaderAlignment(Value : TCellAlignment);
    function GetCellAlignment : TCellAlignment;
    procedure SetCellAlignment(Value : TCellAlignment);
  protected
    procedure Notification(AComponent : TComponent; Operation : TOperation); override;
  public
    property TableString : String read FTableString;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute : string;
  published
    property Source: TDataSet read FSource write FSource;
    property Border : Integer read GetBorder write SetBorder default 0;
    property CellPadding : Integer read GetCellPad write SetCellPad default 0;
    property Caption : String read GetCaption write SetCaption;
    property Header : String read GetHeader write SetHeader;
    property TableAlignment : TAlignment
             read FTableAlignment write FTableAlignment
             default taLeftJustify;
    property CellVAlignment : TCVAlignment
             read FCellVAlignment write FCellVAlignment
             default caTop;
    property CellAlignment : TCellAlignment
             read GetCellAlignment write SetCellAlignment
             default UseFields;
    property HeaderAlignment : TCellAlignment
             read GetHeaderAlignment write SetHeaderAlignment
             default caCenter;
    property WrapTable : Boolean read FWrap write FWrap default False;
	end;

procedure Register;

implementation
{$B-}

{Used to format MemoFields with the HTML Break tag}
FUNCTION InsertBreaks(Original : string) : string;
VAR
  Index : integer;
Begin
{Start counting from the end of the string because we will
 be changing the length of the string as we go}
  Index := Length(Original);

{Find any LineFeed characters, and replace them with <BR>}
  REPEAT
    IF Original[Index] = #10 THEN
      Begin
        Delete(Original,Index,1);
        Insert('<BR>',Original,Index);
      End;
    Dec(Index);
  UNTIL Index = 0;

{Find any CarriageReturn characters, and delete them}
  FOR Index := 0 TO Length(Original) DO
    IF Original[Index] = #13 THEN
      Original[Index] := ' ';
  Result := Original;
End;

{******************************************************************************}
function THTMLTable.Execute : string;
CONST
  CRLF = #13#10; {Carriage-Return/Line-Feed to
                  make the HTML source easier to read}
VAR
  WasClosed : Boolean;
  Convertible : ConvertSet;
  I: Integer;
  AlignTitle,
  AlignTable,
  AlignCellV,
  CellPadding,
  Wrapped,
  CellStart,
  TableCells,
  TableRow,
  TableString : string;
Begin
{simple field types we can handle}
  Convertible := [ftBCD, ftCurrency, ftFloat, ftInteger, ftSmallint, ftWord,
                  ftBoolean, ftDate, ftTime, ftDateTime, ftString];

{why bother if it doesn't exist?}
  IF (FSource = nil) THEN
		exit;

{can't do diddly if the table/query isn't open}
  IF NOT FSource.Active THEN
    Begin
  		FSource.Active := True;
      WasClosed := True;
    End
  ELSE
    WasClosed := False;

{Wrap long lines in the cells, or not}
  IF FWrap THEN
    Wrapped := ' "WRAP"'
  ELSE
    Wrapped := ' "NOWRAP"';

{Cell Padding, if you want it}
  IF FCellPadding > 0 THEN
    CellPadding := ' CELLPADDING="'+IntToStr(FCellPadding)+'"';

{How to align the HTML Table on the page}
  CASE FTableAlignment OF
    taLeftJustify : AlignTable := ' ';//' ALIGN="LEFT"' is default;
    taCenter : AlignTable := ' ALIGN="CENTER"';
    taRightJustify : AlignTable := ' ALIGN="RIGHT"';
  End;

{Vertical alignment in the Cells in the HTML Table}
  CASE FCellVALignment OF
    caTop : AlignCellV := ' >';// VALIGN="TOP">' is default;
    caMiddle : AlignCellV := ' VALIGN="MIDDLE">';
    caBottom : AlignCellV := ' VALIGN="BOTTOM">';
  End;

{If BorderSize > 0 then use a Border in the HTML table.  In either
 case, add the Wrap, CellPadding, and Alignment settings}
  IF FBorder > 0 THEN
    TableString := '<TABLE BORDER="'+
                    IntToStr(FBorder)+
                    '"'+
                    Wrapped+
                    CellPadding+
                    AlignTable+
                    '>'+CRLF
  ELSE
    TableString := '<TABLE'+
                    Wrapped+
                    CellPadding+
                    AlignTable+
                    '>'+CRLF;

{Use a Table Caption, if specified}
  IF FCaption <> '' THEN
    TableString := TableString+'<CAPTION>'+FCaption+'</CAPTION>'+CRLF;

{Use a pre-defined header for the column titles, or
 use the Field Names for the Header row.
 Predefined Headers MUST contain all the formatting info.  For example:
 <TR><TH>First Column</TH><TH ALIGN="RIGHT">Second Column</TH></TR>}
  IF FHeader <> '' THEN
    TableRow := TableRow+FHeader+CRLF
  ELSE
    Begin
      TableRow := TableRow+'<TR>';
      FSource.DisableControls;
      WITH FSource DO
        Begin
          FOR I := 0 TO FieldCount - 1 DO
            Begin
              CASE FHeaderAlignment OF
                UseFields : Begin
                              CASE Fields.Fields[I].Alignment OF
                                taLeftJustify : AlignTitle := '<TH ALIGN="LEFT">';
                                taCenter : AlignTitle := '<TH>'; {defaults to CENTER}
                                taRightJustify : AlignTitle := '<TH ALIGN="RIGHT">';
                              End;
                            End;
                caLeftJustify : AlignTitle := '<TH ALIGN="LEFT">';
                caRightJustify : AlignTitle := '<TH ALIGN="RIGHT">';
                caCenter : AlignTitle := '<TH>'; {defaults to CENTER}
              End;
{put in a non-breaking space if the field is empty}
              IF Fields.Fields[I].DisplayLabel = '' THEN
                TableRow := TableRow+AlignTitle+'&nbsp;</TH>'
              ELSE
              IF (Fields[I].DataType in Convertible+[ftMemo]) THEN
                try
                  TableRow := TableRow+AlignTitle+Fields.Fields[I].DisplayLabel+'</TH>';
                except
{put in a non-breaking space if the field is unconvertible}
                  TableRow := TableRow+AlignTitle+'&nbsp;</TH>';
                end
            End;
          TableRow := TableRow+'</TR>'+CRLF;
        End;
    End;

  {Build a long string containing all the rows of the HTML Table
  with Carriage-returns for easy reading, and return it for use
  elsewhere.}
  WITH FSource DO
    Begin
      First;
      WHILE NOT EOF DO
        Begin
          TableRow := TableRow+'<TR>';
          FOR I := 0 TO FieldCount - 1 DO
            Begin
              CASE FCellAlignment OF
                UseFields : Begin
                              CASE Fields[I].Alignment OF
                                taLeftJustify : CellStart := '<TD';{defaults to LEFT}
                                taCenter : CellStart := '<TD ALIGN="CENTER"';
                                taRightJustify : CellStart := '<TD ALIGN="RIGHT"';
                              End;
                            End;
                caLeftJustify : CellStart := '<TD';{defaults to LEFT}
                caRightJustify : CellStart := '<TD ALIGN="RIGHT"';
                caCenter : CellStart := '<TD ALIGN="CENTER"';
              End;
              CellStart := CellStart + AlignCellV;

              IF (Fields[I].DataType in Convertible) THEN
                Begin
                  IF (Fields[I].AsString <> '') THEN
                    try
                      IF Fields[I].DataType = ftCurrency THEN
                        TableCells := TableCells+CellStart+FloatToStrF(Fields[I].AsCurrency,ffCurrency,15,2)+'</TD>'
                      ELSE
                        TableCells := TableCells+CellStart+Fields[I].AsString+'</TD>';
                    except
                      TableCells := TableCells+CellStart+'&nbsp</TD>';
                    end
                  ELSE
{put in a non-breaking space if the field is empty/unconvertible}
                    TableCells := TableCells+CellStart+'&nbsp</TD>';
                End
              ELSE
              IF (Fields[I].DataType = ftMemo) THEN {Try to maintain MemoField formatting}
                try
                  TableCells := TableCells+CellStart+InsertBreaks(Fields[I].AsString)+'</TD>';
                except
{put in a non-breaking space if the field is empty/unconvertible}
                  TableCells := TableCells+CellStart+'&nbsp;</TD>';
                end;
            End;
          TableRow := TableRow+TableCells+'</TR>'+CRLF;
          TableCells := '';
          Next;
        End;
    End;
  IF WasClosed THEN
    FSource.Close;
  FSource.EnableControls;
  Result := TableString+TableRow+'</TABLE>'+CRLF;
End;

procedure THTMLTable.AutoInitialize;
begin
  FBorder := 0;
  FSource := nil;
  FHeader := '';
  FCaption := '';
  FTableAlignment := taLeftJustify;
  FCellAlignment := UseFields;
  FCellVAlignment := caTop;
  FHeaderAlignment := caCenter;
  FWrap := False;
  FTableString := '';
end;

procedure THTMLTable.Notification(AComponent : TComponent; Operation : TOperation);
begin
  inherited Notification(AComponent, Operation);
  IF Operation <> opRemove THEN
    Exit;
  IF AComponent = FSource THEN
    FSource := nil;
end;

function THTMLTable.GetBorder : Integer;
begin
  Result := FBorder;
end;

procedure THTMLTable.SetBorder(Value : Integer);
begin
  FBorder := Value;
end;

function THTMLTable.GetCellPad : Integer;
begin
  Result := FCellPadding;
end;

procedure THTMLTable.SetCellPAd(Value : Integer);
begin
  FCellPadding := Value;
end;

function THTMLTable.GetCaption : String;
begin
  Result := FCaption;
end;

procedure THTMLTable.SetCaption(Value : String);
begin
  FCaption := Value;
end;

function THTMLTable.GetHeader : String;
begin
  Result := FHeader;
end;

procedure THTMLTable.SetHeader(Value : String);
begin
  FHeader := Value;
end;

function THTMLTable.GetCellAlignment : TCellAlignment;
begin
  Result := FCellAlignment;
end;

procedure THTMLTable.SetCellAlignment(Value : TCellAlignment);
begin
  FCellAlignment := Value;
end;

function THTMLTable.GetHeaderAlignment : TCellAlignment;
begin
  Result := FHeaderAlignment;
end;

procedure THTMLTable.SetHeaderAlignment(Value : TCellAlignment);
begin
  FHeaderAlignment := Value;
end;

constructor THTMLTable.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  AutoInitialize;
end;

destructor THTMLTable.Destroy;
begin
  inherited Destroy;
end;

{******************************************************************************}
procedure Register;
begin
  RegisterComponents('HWS', [THTMLTable]);
end;


end.
