{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: SynHighlighterFortran.pas, released 2000-04-21.
The Original Code is based on the mwFortranSyn.pas file from the
mwEdit component suite by Martin Waldenburg and other developers, the Initial
Author of this file is "riceball".
Unicode translation by Ma?l H?rz.
All Rights Reserved.

Contributors to the SynEdit and mwEdit projects are listed in the
Contributors.txt file.

Alternatively, the contents of this file may be used under the terms of the
GNU General Public License Version 2 or later (the "GPL"), in which case
the provisions of the GPL are applicable instead of those above.
If you wish to allow use of your version of this file only under the terms
of the GPL and not to allow others to use your version of this file
under the MPL, indicate your decision by deleting the provisions above and
replace them with the notice and other provisions required by the GPL.
If you do not delete the provisions above, a recipient may use your version
of this file under either the MPL or the GPL.

$Id: SynHighlighterFortran.pas,v 1.15.2.5 2005/07/01 17:17:40 maelh Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net

Known Issues:
-------------------------------------------------------------------------------}
{
@abstract(Provides a Fortran syntax highlighter for SynEdit)
@author(riceball <teditor@mailroom.com>, converted to SynEdit by Bruno Mikkelsen <btm@scientist.com>)
@created(2000, converted to SynEdit 2000-04-21)
@lastmod(2000-06-23)
The SynHighlighterFortran unit provides SynEdit with a Fortran syntax highlighter.
Thanks to Martin Waldenburg.
}

{$IFNDEF QSYNHIGHLIGHTERFORTRAN}
unit SynHighlighterFortran;
{$ENDIF}

{$I SynEdit.inc}

interface

uses
{$IFDEF SYN_CLX}
  QGraphics,
  QSynEditTypes,
  QSynEditHighlighter,
{$ELSE}
  Graphics,
  SynEditTypes,
  SynEditHighlighter,
{$ENDIF}
  SysUtils,
  Classes;

type
  TtkTokenKind = (tkComment, tkIdentifier, tkKey, tkNull, tkNumber, tkSpace,
    tkString, tkSymbol, tkUnknown);

  PIdentFuncTableFunc = ^TIdentFuncTableFunc;
  TIdentFuncTableFunc = function (Index: Integer): TtkTokenKind of object;

type
  TSynFortranSyn = class(TSynCustomHighlighter)
  private
    FTokenID: TtkTokenKind;
    fIdentFuncTable: array[0..106] of TIdentFuncTableFunc;
    fCommentAttri: TSynHighlighterAttributes;
    fIdentifierAttri: TSynHighlighterAttributes;
    fKeyAttri: TSynHighlighterAttributes;
    fNumberAttri: TSynHighlighterAttributes;
    fSpaceAttri: TSynHighlighterAttributes;
    fStringAttri: TSynHighlighterAttributes;
    fSymbolAttri: TSynHighlighterAttributes;
    function AltFunc(Index: Integer): TtkTokenKind;
    function KeyWordFunc(Index: Integer): TtkTokenKind;
    function HashKey(Str: PWideChar): Cardinal;
    function IdentKind(MayBe: PWideChar): TtkTokenKind;
    procedure InitIdent;
    procedure AsciiCharProc;
    procedure CRProc;
    procedure CommaProc;
    procedure EqualProc;
    procedure ExclamationProc;
    procedure GreaterProc;
    procedure IdentProc;
    procedure LFProc;
    procedure LowerProc;
    procedure MinusProc;
    procedure ModSymbolProc;
    procedure NullProc;
    procedure NumberProc;
    procedure PlusProc;
    procedure PointProc;
    procedure RoundCloseProc;
    procedure RoundOpenProc;
    procedure SemiColonProc;
    procedure SlashProc;
    procedure SpaceProc;
    procedure StarProc;
    procedure StringProc;
    procedure UnknownProc;
    procedure CommentProc;
  protected
    function IsFilterStored: Boolean; override;
  public
    class function GetLanguageName: string; override;
    class function GetFriendlyLanguageName: WideString; override;
  public
    constructor Create(AOwner: TComponent); override;
    function GetDefaultAttribute(Index: integer): TSynHighlighterAttributes;
      override;
    function GetEol: Boolean; override;
    function GetTokenID: TtkTokenKind;
    function GetTokenAttribute: TSynHighlighterAttributes; override;
    function GetTokenKind: integer; override;
    procedure Next; override;
  published
    property CommentAttri: TSynHighlighterAttributes read fCommentAttri
      write fCommentAttri;
    property IdentifierAttri: TSynHighlighterAttributes read fIdentifierAttri
      write fIdentifierAttri;
    property KeyAttri: TSynHighlighterAttributes read fKeyAttri write fKeyAttri;
    property NumberAttri: TSynHighlighterAttributes read fNumberAttri
      write fNumberAttri;
    property SpaceAttri: TSynHighlighterAttributes read fSpaceAttri
      write fSpaceAttri;
    property StringAttri: TSynHighlighterAttributes read fStringAttri
      write fStringAttri;
    property SymbolAttri: TSynHighlighterAttributes read fSymbolAttri
      write fSymbolAttri;
  end;

implementation

uses
{$IFDEF SYN_CLX}
  QSynUnicode,
  QSynEditStrConst;
{$ELSE}
  SynUnicode, {$IFDEF USE_JCL_UNICODE_SUPPORT} JclUnicode, {$ENDIF}
  SynEditStrConst;
{$ENDIF}

const
  KeyWords: array[0..49] of WideString = (
    'allocatable', 'allocate', 'call', 'case', 'character', 'common', 
    'continue', 'cycle', 'data', 'deallocate', 'default', 'dimension', 'do', 
    'else', 'elseif', 'end', 'enddo', 'endif', 'entry', 'equivalence', 'exit', 
    'external', 'format', 'function', 'if', 'include', 'integer', 'interface', 
    'logical', 'map', 'open', 'parameter', 'print', 'program', 'read', 'real', 
    'record', 'return', 'save', 'select', 'stop', 'structure', 'stucture', 
    'subroutine', 'then', 'type', 'union', 'value', 'while', 'write' 
  );

  KeyIndices: array[0..106] of Integer = (
    -1, 35, 1, -1, 28, 25, -1, 6, 4, -1, 40, -1, -1, -1, 37, -1, -1, 0, 46, 30, 
    -1, -1, -1, -1, -1, 12, -1, -1, -1, -1, -1, -1, 15, -1, -1, -1, 48, 43, 11, 
    -1, 16, 14, 49, 18, -1, 5, 44, -1, 24, -1, 7, -1, -1, 31, -1, 22, 29, -1, 
    27, -1, -1, 3, -1, 17, 47, -1, -1, 36, -1, -1, -1, -1, -1, -1, 10, 45, 2, 
    -1, 13, -1, -1, -1, 42, 21, -1, -1, -1, -1, 32, 9, -1, -1, 23, 26, 19, -1, 
    33, -1, -1, 34, 20, 41, -1, 8, -1, 39, 38 
  );

{$Q-}
function TSynFortranSyn.HashKey(Str: PWideChar): Cardinal;
begin
  Result := 0;
  while IsIdentChar(Str^) do
  begin
    Result := Result * 422 + Ord(Str^) * 603;
    inc(Str);
  end;
  Result := Result mod 107;
  fStringLen := Str - fToIdent;
end;
{$Q+}

function TSynFortranSyn.IdentKind(MayBe: PWideChar): TtkTokenKind;
var
  Key: Cardinal;
begin
  fToIdent := MayBe;
  Key := HashKey(MayBe);
  if Key <= High(fIdentFuncTable) then
    Result := fIdentFuncTable[Key](KeyIndices[Key])
  else
    Result := tkIdentifier;
end;

procedure TSynFortranSyn.InitIdent;
var
  i: Integer;
begin
  for i := Low(fIdentFuncTable) to High(fIdentFuncTable) do
    if KeyIndices[i] = -1 then
      fIdentFuncTable[i] := AltFunc;

  for i := Low(fIdentFuncTable) to High(fIdentFuncTable) do
    if @fIdentFuncTable[i] = nil then
      fIdentFuncTable[i] := KeyWordFunc;
end;

function TSynFortranSyn.AltFunc(Index: Integer): TtkTokenKind;
begin
  Result := tkIdentifier;
end;

function TSynFortranSyn.KeyWordFunc(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier
end;

constructor TSynFortranSyn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  fCaseSensitive := False;

  fCommentAttri := TSynHighlighterAttributes.Create(SYNS_AttrComment, SYNS_FriendlyAttrComment);
  fCommentAttri.Style := [fsItalic];
  AddAttribute(fCommentAttri);
  fIdentifierAttri := TSynHighlighterAttributes.Create(SYNS_AttrIdentifier, SYNS_FriendlyAttrIdentifier);
  AddAttribute(fIdentifierAttri);
  fKeyAttri := TSynHighlighterAttributes.Create(SYNS_AttrReservedWord, SYNS_FriendlyAttrReservedWord);
  fKeyAttri.Style := [fsBold];
  AddAttribute(fKeyAttri);
  fNumberAttri := TSynHighlighterAttributes.Create(SYNS_AttrNumber, SYNS_FriendlyAttrNumber);
  AddAttribute(fNumberAttri);
  fSpaceAttri := TSynHighlighterAttributes.Create(SYNS_AttrSpace, SYNS_FriendlyAttrSpace);
  AddAttribute(fSpaceAttri);
  fStringAttri := TSynHighlighterAttributes.Create(SYNS_AttrString, SYNS_FriendlyAttrString);
  AddAttribute(fStringAttri);
  fSymbolAttri := TSynHighlighterAttributes.Create(SYNS_AttrSymbol, SYNS_FriendlyAttrSymbol);
  AddAttribute(fSymbolAttri);
  SetAttributesOnChange(DefHighlightChange);
  InitIdent;
  fDefaultFilter := SYNS_FilterFortran;
end;

procedure TSynFortranSyn.AsciiCharProc;
begin
  fTokenID := tkString;
  repeat
    case FLine[Run] of
      #0, #10, #13: break;
    end;
    inc(Run);
  until FLine[Run] = #39;
  if FLine[Run] <> #0 then inc(Run);
end;

procedure TSynFortranSyn.CRProc;
begin
  fTokenID := tkSpace;
  Inc(Run);
  if fLine[Run] = #10 then Inc(Run);
end;

procedure TSynFortranSyn.CommaProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.EqualProc;
begin
  case FLine[Run + 1] of
    '=':                               {logical equal}
      begin
        inc(Run, 2);
        fTokenID := tkSymbol;
      end;
  else                                 {assign}
    begin
      inc(Run);
      fTokenID := tkSymbol;
    end;
  end;
end;

procedure TSynFortranSyn.ExclamationProc;
begin
  inc(Run, 1);                        {Fortran Comments}
  fTokenID := tkComment;
  while FLine[Run] <> #0 do
  begin
    case FLine[Run] of
      #10, #13: break;
    end;
    inc(Run);
  end;
end;

procedure TSynFortranSyn.GreaterProc;
begin
  Case FLine[Run + 1] of
    '=':                               {greater than or equal to}
      begin
        inc(Run, 2);
        fTokenID := tkSymbol;
      end;
    '>':
      begin
        if FLine[Run + 2] = '=' then   {shift right assign}
          inc(Run, 3)
        else                           {shift right}
          inc(Run, 2);
        fTokenID := tkSymbol;
      end;
  else                                 {greater than}
    begin
      inc(Run);
      fTokenID := tkSymbol;
    end;
  end;
end;

procedure TSynFortranSyn.IdentProc;
begin
  if (FLine[Run] in [WideChar('C'), WideChar('c')]) and (Run = 0) then
  begin   //Fortran comments
    inc(Run, 1);
    CommentProc;
  end
  else begin
    fTokenID := IdentKind(fLine + Run);
    inc(Run, fStringLen);
    while IsIdentChar(fLine[Run]) do inc(Run);
  end;
end;

procedure TSynFortranSyn.LFProc;
begin
  inc(Run);
  fTokenID := tkSpace;
end;

procedure TSynFortranSyn.LowerProc;
begin
  case FLine[Run + 1] of
    '=':                               {less than or equal to}
      begin
        inc(Run, 2);
        fTokenID := tkSymbol;
      end;
    '<':
      begin
        if FLine[Run + 2] = '=' then   {shift left assign}
          inc(Run, 3)
        else                           {shift left}
          inc(Run, 2);
        fTokenID := tkSymbol;
      end;
  else                                 {less than}
    begin
      inc(Run);
      fTokenID := tkSymbol;
    end;
  end;
end;

procedure TSynFortranSyn.MinusProc;
begin
  {subtract}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.ModSymbolProc;
begin
  {mod}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.NullProc;
begin
  fTokenID := tkNull;
end;

procedure TSynFortranSyn.NumberProc;

  function IsNumberChar: Boolean;
  begin
    case fLine[Run] of
      '0'..'9', '.', 'x', 'X', 'e', 'E', 'f', 'F':
        Result := True;
      else
        Result := False;
    end;
  end;

begin
  inc(Run);
  fTokenID := tkNumber;
  while IsNumberChar do
  begin
    case FLine[Run] of
      '.':
        if FLine[Run + 1] = '.' then break;
    end;
    inc(Run);
  end;
end;

procedure TSynFortranSyn.PlusProc;
begin
  {subtract}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.PointProc;
begin
  if (((SynWideUpperCase(FLine[Run + 1]) = 'G') and (SynWideUpperCase(FLine[Run + 2])[1] in [WideChar('E'), WideChar('T')])) {.ge. .gt.}
       or ((SynWideUpperCase(FLine[Run + 1]) = 'L') and (SynWideUpperCase(FLine[Run + 2])[1] in [WideChar('E'), WideChar('T')])) {.le. .lt.}
       or ((SynWideUpperCase(FLine[Run + 1]) = 'N') and (SynWideUpperCase(FLine[Run + 2]) = 'E')) {.ne.}
       or ((SynWideUpperCase(FLine[Run + 1]) = 'E') and (SynWideUpperCase(FLine[Run + 2]) = 'Q')) {.eq.}
       or ((SynWideUpperCase(FLine[Run + 1]) = 'O') and (SynWideUpperCase(FLine[Run + 2]) = 'R'))){.or.}
     and (FLine[Run + 3] = '.') then
    begin
      inc(Run, 4);
      fTokenID := tkSymbol;
    end
  else if (((SynWideUpperCase(FLine[Run + 1]) = 'A')
              and (SynWideUpperCase(FLine[Run + 2]) = 'N')
              and (SynWideUpperCase(FLine[Run + 3]) = 'D'))    {.and.}
           or ((SynWideUpperCase(FLine[Run + 1]) = 'N')
              and (SynWideUpperCase(FLine[Run + 2]) = 'O')
              and (SynWideUpperCase(FLine[Run + 3]) = 'T')))    {.not.}
          and (FLine[Run + 4] = '.') then
    begin
      inc(Run, 5);
      fTokenID := tkSymbol;
    end
  else if (SynWideUpperCase(FLine[Run + 1]) = 'T')
          and (SynWideUpperCase(FLine[Run + 2]) = 'R')
          and (SynWideUpperCase(FLine[Run + 3]) = 'U')
          and (SynWideUpperCase(FLine[Run + 4]) = 'E')
          and (FLine[Run + 5] = '.') then  {.true.}
    begin
      inc(Run, 6);
      fTokenID := tkSymbol;
    end
  else if (SynWideUpperCase(FLine[Run + 1]) = 'F')
          and (SynWideUpperCase(FLine[Run + 2]) = 'A')
          and (SynWideUpperCase(FLine[Run + 3]) = 'L')
          and (SynWideUpperCase(FLine[Run + 4]) = 'S')
          and (SynWideUpperCase(FLine[Run + 5]) = 'E')
          and (FLine[Run + 6] = '.') then  {.false.}
    begin
      inc(Run, 7);
      fTokenID := tkSymbol;
    end
  else                                 {point}
    begin
      inc(Run);
      fTokenID := tkSymbol;
    end;
end;

procedure TSynFortranSyn.RoundCloseProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.RoundOpenProc;
begin
  inc(Run);
  FTokenID := tkSymbol;
end;

procedure TSynFortranSyn.SemiColonProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.SlashProc;
begin
  {division}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFortranSyn.SpaceProc;
begin
  inc(Run);
  fTokenID := tkSpace;
  while (FLine[Run] <= #32) and not IsLineEnd(FLine[Run]) do inc(Run);
end;

procedure TSynFortranSyn.StarProc;
begin
  if (Run = 0) then begin   //Fortran comments
    inc(Run);
    CommentProc;
  end
  else begin
    {star}
    inc(Run);
    fTokenID := tkSymbol;
  end;
end;

procedure TSynFortranSyn.CommentProc;
begin
  fTokenID := tkComment;
  while FLine[Run] <> #0 do
  begin
    case FLine[Run] of
      #10, #13: break;
    end; //case
    inc(Run);
  end; //while
end;

procedure TSynFortranSyn.StringProc;
begin
  fTokenID := tkString;
  if (FLine[Run + 1] = #34) and (FLine[Run + 2] = #34) then inc(Run, 2);
  repeat
    case FLine[Run] of
      #0, #10, #13: break;
      #92:
        if FLine[Run + 1] = #10 then inc(Run);
    end;
    inc(Run);
  until FLine[Run] = #34;
  if FLine[Run] <> #0 then inc(Run);
end;

procedure TSynFortranSyn.UnknownProc;
begin
  inc(Run);
  fTokenID := tkUnknown;
end;

procedure TSynFortranSyn.Next;
begin
  fTokenPos := Run;
  case fLine[Run] of
    #39: AsciiCharProc;
    #13: CRProc;
    ',': CommaProc;
    '=': EqualProc;
    '!': ExclamationProc;
    '>': GreaterProc;
    'A'..'Z', 'a'..'z', '_': IdentProc;
    #10: LFProc;
    '<': LowerProc;
    '-': MinusProc;
    '%': ModSymbolProc;
    #0: NullProc;
    '0'..'9': NumberProc;
    '+': PlusProc;
    '.': PointProc;
    ')': RoundCloseProc;
    '(': RoundOpenProc;
    ';': SemiColonProc;
    '/': SlashProc;
    #1..#9, #11, #12, #14..#32: SpaceProc;
    '*': StarProc;
    #34: StringProc;
    else UnknownProc;
  end;
  inherited;
end;

function TSynFortranSyn.GetDefaultAttribute(Index: integer): TSynHighlighterAttributes;
begin
  case Index of
    SYN_ATTR_COMMENT: Result := fCommentAttri;
    SYN_ATTR_IDENTIFIER: Result := fIdentifierAttri;
    SYN_ATTR_KEYWORD: Result := fKeyAttri;
    SYN_ATTR_STRING: Result := fStringAttri;
    SYN_ATTR_WHITESPACE: Result := fSpaceAttri;
    SYN_ATTR_SYMBOL: Result := fSymbolAttri;
  else
    Result := nil;
  end;
end;

function TSynFortranSyn.GetEol: Boolean;
begin
  Result := fTokenID = tkNull;
end;

function TSynFortranSyn.GetTokenID: TtkTokenKind;
begin
  Result := fTokenId;
end;

function TSynFortranSyn.GetTokenAttribute: TSynHighlighterAttributes;
begin
  case GetTokenID of
    tkComment: Result := fCommentAttri;
    tkIdentifier: Result := fIdentifierAttri;
    tkKey: Result := fKeyAttri;
    tkNumber: Result := fNumberAttri;
    tkSpace: Result := fSpaceAttri;
    tkString: Result := fStringAttri;
    tkSymbol: Result := fSymbolAttri;
    tkUnknown: Result := fIdentifierAttri;
    else Result := nil;
  end;
end;

function TSynFortranSyn.GetTokenKind: integer;
begin
  Result := Ord(fTokenId);
end;

function TSynFortranSyn.IsFilterStored: Boolean;
begin
  Result := fDefaultFilter <> SYNS_FilterFortran;
end;

class function TSynFortranSyn.GetLanguageName: string;
begin
  Result := SYNS_LangFortran;
end;

class function TSynFortranSyn.GetFriendlyLanguageName: WideString;
begin
  Result := SYNS_FriendlyLangFortran;
end;

initialization
{$IFNDEF SYN_CPPB_1}
  RegisterPlaceableHighlighter(TSynFortranSyn);
{$ENDIF}
end.
