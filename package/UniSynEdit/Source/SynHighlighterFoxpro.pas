{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: SynHighlighterFoxpro.pas, released 2000-04-21.
The Original Code is based on the mwFoxproSyn.pas file from the
mwEdit component suite by Martin Waldenburg and other developers, the Initial
Author of this file is "riceball".
Unicode translation by Maël Hörz.
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

$Id: SynHighlighterFoxpro.pas,v 1.12.2.6 2005/08/30 18:22:05 maelh Exp $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net

Known Issues:
-------------------------------------------------------------------------------}
{
@abstract(Provides a Foxpro Syntax highlighter for SynEdit)
@author(riceball <teditor@mailroom.com>, converted to SynEdit by Bruno Mikkelsen <btm@scientist.com>)
@created(2000, converted to SynEdit 2000-04-21)
@lastmod(2000-06-23)
The SynHighlighterFoxpro unit provides SynEdit with a Foxpro syntax highlighter.
Thanks to Martin Waldenburg.
}

{$IFNDEF QSYNHIGHLIGHTERFOXPRO}
unit SynHighlighterFoxpro;
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
  TSynFoxproSyn = class(TSynCustomHighlighter)
  private
    FTokenID: TtkTokenKind;
    fIdentFuncTable: array[0..1948] of TIdentFuncTableFunc;
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
    procedure AndSymbolProc;
    procedure AsciiCharProc;
    procedure AtSymbolProc;
    procedure BraceOpenProc;
    procedure CRProc;
    procedure ColonProc;
    procedure CommaProc;
    procedure EqualProc;
    procedure GreaterProc;
    procedure IdentProc;
    procedure LFProc;
    procedure LowerProc;
    procedure MinusProc;
    procedure ModSymbolProc;
    procedure NotSymbolProc;
    procedure NullProc;
    procedure NumberProc;
    procedure OrSymbolProc;
    procedure PlusProc;
    procedure PointProc;
    procedure QuestionProc;
    procedure RoundCloseProc;
    procedure RoundOpenProc;
    procedure SemiColonProc;
    procedure SlashProc;
    procedure SpaceProc;
    procedure SquareCloseProc;
    procedure SquareOpenProc;
    procedure StarProc;
    procedure StringProc;
    procedure TildeProc;
    procedure XOrSymbolProc;
    procedure UnknownProc;
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
  KeyWords: array[0..255] of WideString = (
    '_msysmenu', '_screen', 'abs', 'accept', 'acti', 'activate', 'again', 
    'alias', 'all', 'alltrim', 'alternate', 'and', 'ansi', 'ansitooem', 
    'aplabout', 'appe', 'append', 'array', 'asc', 'at', 'atan', 'atline', 
    'autosave', 'backcolor', 'bar', 'barcount', 'barprompt', 'begin', 'bell', 
    'between', 'blan', 'blank', 'blink', 'blocksize', 'bof', 'border', 'bott', 
    'bottom', 'box', 'brow', 'browse', 'brstatus', 'build', 'call', 'cancel', 
    'capslock', 'caption', 'carry', 'case', 'century', 'chr', 'class', 
    'classlib', 'clear', 'clock', 'clos', 'close', 'collate', 'color', 'comm', 
    'command', 'commands', 'compatible', 'confirm', 'console', 'copy', 'create', 
    'curdir', 'currency', 'cursor', 'database', 'databases', 'date', 'debug', 
    'decimals', 'default', 'define', 'dele', 'delete', 'deleted', 'delimite', 
    'delimiters', 'development', 'device', 'dim', 'dimension', 'display', 'do', 
    'dohistory', 'echo', 'edit', 'else', 'empty', 'endcase', 'enddo', 'endfor', 
    'endif', 'endproc', 'endscan', 'eof', 'escape', 'event', 'events', 'exact', 
    'exclusive', 'fclose', 'fcount', 'fcreate', 'field', 'fields', 'file', 
    'files', 'fill', 'filter', 'fixed', 'fopen', 'for', 'format', 'fputs', 
    'from', 'fullpath', 'func', 'functi', 'function', 'fwrite', 'gath', 
    'gather', 'get', 'go', 'headings', 'help', 'helpfilter', 'hours', 'if', 
    'index', 'insert', 'intensity', 'into', 'key', 'keycomp', 'library', 
    'local', 'locate', 'lock', 'logerrors', 'macdesktop', 'machelp', 'mackey', 
    'margin', 'mark', 'memo', 'memowidth', 'memvar', 'menu', 'message', 'modal', 
    'modi', 'modify', 'mouse', 'multilocks', 'near', 'next', 'nocptrans', 'not', 
    'notify', 'nowait', 'odometer', 'of', 'off', 'on', 'optimize', 'or', 
    'order', 'otherwise', 'palette', 'para', 'parameter', 'parameters', 'path', 
    'pdsetup', 'point', 'printer', 'private', 'proc', 'proced', 'procedure', 
    'prompt', 'public', 'push', 'quit', 'read', 'readborder', 'recno', 
    'refresh', 'region', 'regional', 'rela', 'relati', 'relation', 'release', 
    'repl', 'repla', 'replace', 'reprocess', 'resource', 'retu', 'return', 
    'rgb', 'safety', 'say', 'scan', 'scat', 'scatt', 'scatter', 'scheme', 
    'schemes', 'scoreboard', 'screen', 'seek', 'sele', 'select', 'separator', 
    'set', 'shadows', 'skip', 'space', 'status', 'step', 'sticky', 'store', 
    'str', 'sysmenu', 'table', 'tag', 'talk', 'text', 'textmerge', 'this', 
    'thisform', 'to', 'top', 'topic', 'trbetween', 'typeahead', 'udfparms', 
    'unique', 'use', 'val', 'view', 'volume', 'wait', 'while', 'window', 'with', 
    'xcmdfile', 'year' 
  );

  KeyIndices: array[0..1948] of Integer = (
    -1, 128, -1, 239, -1, 74, 97, -1, -1, 85, -1, -1, -1, 201, -1, 232, -1, -1, 
    -1, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 16, 125, -1, 14, -1, -1, 
    41, -1, -1, -1, -1, 114, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 94, -1, -1, 27, 112, -1, -1, -1, -1, -1, -1, -1, 210, -1, 
    -1, 237, -1, -1, -1, -1, 80, 194, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, 89, -1, -1, -1, 191, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    158, -1, -1, -1, 55, -1, -1, 44, -1, -1, -1, -1, 182, -1, -1, -1, -1, -1, 
    -1, -1, 11, -1, 52, -1, 166, -1, -1, -1, -1, -1, -1, -1, -1, 99, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 68, -1, -1, 212, -1, -1, -1, -1, 
    -1, 196, -1, -1, -1, -1, -1, 254, -1, -1, -1, -1, -1, 28, -1, -1, -1, -1, 
    -1, -1, 177, -1, -1, -1, -1, -1, -1, -1, 202, -1, -1, -1, -1, -1, 96, -1, 
    -1, 245, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, 46, -1, -1, 171, -1, 144, -1, -1, -1, 71, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, 93, -1, 183, 8, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, 81, -1, -1, -1, -1, -1, -1, -1, 195, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 234, 192, -1, -1, -1, -1, -1, -1, -1, -1, -1, 106, 219, -1, 
    213, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 86, 204, -1, -1, 39, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 198, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 134, -1, -1, 64, -1, -1, -1, -1, -1, 47, -1, -1, -1, -1, -1, 
    -1, -1, 95, -1, -1, -1, 155, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    214, -1, -1, -1, 116, -1, -1, -1, -1, 152, -1, 21, 135, -1, -1, -1, 63, -1, 
    253, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 244, -1, -1, 153, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 221, 141, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, 249, -1, -1, 173, -1, -1, 90, -1, -1, -1, -1, -1, -1, -1, 56, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 109, 
    146, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 105, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 48, -1, -1, -1, -1, -1, 
    -1, -1, 145, -1, 247, -1, 150, -1, 190, -1, 205, -1, -1, -1, -1, -1, -1, -1, 
    -1, 43, -1, -1, -1, -1, -1, -1, -1, -1, 176, 130, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 203, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 230, -1, 
    -1, 143, -1, 78, -1, -1, 72, -1, -1, -1, 168, -1, -1, 60, 163, 102, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 42, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, 223, -1, -1, -1, -1, 73, -1, -1, -1, -1, -1, -1, 77, 199, 
    -1, -1, -1, -1, -1, 180, -1, -1, -1, -1, -1, -1, 67, -1, -1, -1, 229, -1, 
    -1, -1, -1, 36, -1, -1, -1, -1, -1, -1, -1, -1, -1, 103, -1, -1, -1, -1, -1, 
    -1, -1, 185, -1, -1, 255, -1, -1, -1, -1, -1, -1, -1, -1, 224, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 34, -1, -1, -1, -1, 215, 108, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 139, -1, -1, -1, 5, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 23, -1, -1, -1, 246, -1, -1, -1, -1, 31, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 175, 
    -1, -1, -1, -1, -1, 61, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, 165, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 129, -1, 
    119, -1, -1, -1, -1, -1, 231, -1, -1, -1, 216, -1, 50, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 140, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, 12, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, 209, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 226, 
    -1, -1, -1, 33, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, 32, -1, -1, -1, -1, -1, -1, -1, -1, -1, 115, 228, -1, -1, -1, -1, 
    100, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 240, 248, -1, -1, 174, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, 123, 35, -1, 120, 113, -1, -1, -1, -1, -1, -1, -1, 18, 87, 49, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 167, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, 51, -1, -1, -1, -1, 9, -1, -1, 208, -1, -1, -1, -1, -1, -1, 157, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 238, -1, -1, 
    19, -1, -1, -1, 13, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, -1, -1, -1, 118, -1, 
    -1, -1, -1, -1, 138, -1, -1, -1, 54, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, 184, -1, -1, -1, -1, -1, -1, -1, -1, 148, -1, -1, -1, 250, -1, 
    -1, -1, 222, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 149, 
    -1, -1, -1, -1, -1, -1, 133, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, 0, -1, -1, -1, -1, -1, 10, -1, -1, -1, -1, -1, -1, 58, -1, -1, 62, -1, 
    -1, -1, -1, -1, -1, 66, -1, -1, -1, -1, -1, 76, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 83, 59, 3, -1, -1, -1, -1, -1, 40, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 233, 
    -1, 84, -1, 107, -1, -1, -1, -1, 159, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 57, -1, 
    -1, -1, 65, -1, -1, -1, -1, 170, 2, -1, -1, 193, -1, -1, 70, -1, -1, -1, -1, 
    -1, -1, -1, -1, 154, -1, 162, -1, 147, -1, -1, 186, -1, -1, -1, -1, -1, -1, 
    -1, 124, -1, -1, 22, -1, 243, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    29, -1, 111, -1, -1, -1, -1, -1, 53, -1, 69, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, 88, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, 206, -1, -1, -1, -1, -1, -1, -1, 38, -1, -1, -1, 156, -1, -1, -1, -1, 
    164, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, 137, -1, -1, -1, 132, -1, -1, 251, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, 241, -1, -1, -1, -1, -1, -1, -1, 220, 92, -1, -1, 
    -1, -1, -1, 172, -1, -1, -1, -1, -1, 17, -1, -1, -1, -1, -1, -1, 82, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, 160, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, 24, -1, -1, -1, 151, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 178, -1, -1, -1, -1, -1, -1, -1, 
    211, -1, -1, -1, -1, -1, 91, -1, -1, -1, -1, -1, -1, -1, 227, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127, 25, -1, -1, -1, -1, 131, -1, 
    -1, -1, 142, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 187, -1, -1, -1, -1, 117, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 189, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 218, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 98, -1, -1, -1, -1, -1, 
    -1, -1, -1, 122, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 225, 104, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 252, -1, -1, -1, -1, -1, -1, 
    -1, -1, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 236, -1, -1, 242, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, -1, -1, -1, -1, -1, -1, -1, -1, 169, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, 37, -1, -1, 197, -1, 217, 161, -1, 110, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 188, -1, -1, -1, 15, 26, -1, -1, -1, 
    -1, 30, -1, 235, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 136, 126, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, 75, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    45, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 101, -1, 207, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, -1, -1, 179, -1, -1, -1, -1, -1, 200, -1, 121, -1, -1, -1, 181 
  );

{$Q-}
function TSynFoxproSyn.HashKey(Str: PWideChar): Cardinal;
begin
  Result := 0;
  while IsIdentChar(Str^) do
  begin
    Result := Result * 322 + Ord(Str^) * 582;
    inc(Str);
  end;
  Result := Result mod 1949;
  fStringLen := Str - fToIdent;
end;
{$Q+}

function TSynFoxproSyn.IdentKind(MayBe: PWideChar): TtkTokenKind;
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

procedure TSynFoxproSyn.InitIdent;
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

function TSynFoxproSyn.AltFunc(Index: Integer): TtkTokenKind;
begin
  Result := tkIdentifier;
end;

function TSynFoxproSyn.KeyWordFunc(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier
end;

constructor TSynFoxproSyn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  fCaseSensitive := False;

  fCommentAttri := TSynHighlighterAttributes.Create(SYNS_AttrComment, SYNS_FriendlyAttrComment);
  AddAttribute(fCommentAttri);
  fIdentifierAttri := TSynHighlighterAttributes.Create(SYNS_AttrIdentifier, SYNS_FriendlyAttrIdentifier);
  AddAttribute(fIdentifierAttri);
  fKeyAttri := TSynHighlighterAttributes.Create(SYNS_AttrReservedWord, SYNS_FriendlyAttrReservedWord);
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
  fDefaultFilter := SYNS_FilterFoxpro;
end;

procedure TSynFoxproSyn.AndSymbolProc;
begin
  case FLine[Run + 1] of
    '&':                               {Comments}
      begin
        inc(Run, 2);
        fTokenID := tkComment;
        while FLine[Run] <> #0 do
        begin
          case FLine[Run] of
            #10, #13: break;
          end; //case
          inc(Run);
        end;
      end;
  else                                 {and}
    begin
      inc(Run);
      fTokenID := tkSymbol;
    end;
  end;
end;

procedure TSynFoxproSyn.AsciiCharProc;
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

procedure TSynFoxproSyn.AtSymbolProc;
begin
  fTokenID := tkKey;
  inc(Run);
end;

procedure TSynFoxproSyn.BraceOpenProc;
begin
  fTokenID := tkString;
  repeat
    case FLine[Run] of
      #0, #10, #13: break;
      #92:
        if FLine[Run + 1] = #10 then inc(Run);
    end;
    inc(Run);
  until FLine[Run] = '}';
  if FLine[Run] <> #0 then inc(Run);
end;

procedure TSynFoxproSyn.CRProc;
begin
  fTokenID := tkSpace;
  case FLine[Run + 1] of
    #10: inc(Run, 2);
    else inc(Run);
  end;
end;

procedure TSynFoxproSyn.ColonProc;
begin
  {colon}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.CommaProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.EqualProc;
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

procedure TSynFoxproSyn.GreaterProc;
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

procedure TSynFoxproSyn.IdentProc;
begin
  fTokenID := IdentKind((fLine + Run));
  inc(Run, fStringLen);
  while IsIdentChar(fLine[Run]) do inc(Run);
end;

procedure TSynFoxproSyn.LFProc;
begin
  fTokenID := tkSpace;
  inc(Run);
end;

procedure TSynFoxproSyn.LowerProc;
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

procedure TSynFoxproSyn.MinusProc;
begin
  {subtract}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.ModSymbolProc;
begin
  {mod}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.NotSymbolProc;
begin
  {not}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.NullProc;
begin
  fTokenID := tkNull;
end;

procedure TSynFoxproSyn.NumberProc;

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

procedure TSynFoxproSyn.OrSymbolProc;
begin
  {or}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.PlusProc;
begin
  {subtract}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.PointProc;
begin
  if ((SynWideUpperCase(FLine[Run + 1]) = 'T') or      {.t.}
    (SynWideUpperCase(FLine[Run + 1]) = 'F')) and     {.f.}
    (FLine[Run + 2] = '.') then
  begin
    inc(Run, 3);
    fTokenID := tkSymbol;
  end
  else if (((SynWideUpperCase(FLine[Run + 1]) = 'A') and
    (SynWideUpperCase(FLine[Run + 2]) = 'N') and
    (SynWideUpperCase(FLine[Run + 3]) = 'D')) or   {.and.}
    ((SynWideUpperCase(FLine[Run + 1]) = 'N') and
    (SynWideUpperCase(FLine[Run + 2]) = 'O') and
    (SynWideUpperCase(FLine[Run + 3]) = 'T'))) and   {.not.}
    (FLine[Run + 4] = '.') then
  begin
    inc(Run, 5);
    fTokenID := tkSymbol;
  end
  else if (SynWideUpperCase(FLine[Run + 1]) = 'O') and
    (SynWideUpperCase(FLine[Run + 2]) = 'R') and
    (FLine[Run + 3] = '.') then  {.or.}
  begin
    inc(Run, 4);
    fTokenID := tkSymbol;
  end
  else                                 {point}
  begin
    inc(Run);
    fTokenID := tkSymbol;
  end;
end;

procedure TSynFoxproSyn.QuestionProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.RoundCloseProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.RoundOpenProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.SemiColonProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.SlashProc;
begin
  {division}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.SpaceProc;
begin
  inc(Run);
  fTokenID := tkSpace;
  while (FLine[Run] <= #32) and not IsLineEnd(FLine[Run]) do inc(Run);
end;

procedure TSynFoxproSyn.SquareCloseProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.SquareOpenProc;
begin
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.StarProc;
begin
  if (Run = 0) or (WideTrim(Copy(fLine, 1, Run)) = '') then
  begin                        {Foxpro Comments}
    inc(Run);
    fTokenID := tkComment;
    while FLine[Run] <> #0 do
    begin
      case FLine[Run] of
        #10, #13: break;
      end;
      inc(Run);
    end;
  end
  else
  begin
    {star}
    inc(Run);
    fTokenID := tkSymbol;
  end;
end;

procedure TSynFoxproSyn.StringProc;
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

procedure TSynFoxproSyn.TildeProc;
begin
  inc(Run);
  fTokenId := tkSymbol;
end;

procedure TSynFoxproSyn.XOrSymbolProc;
begin
  {xor}
  inc(Run);
  fTokenID := tkSymbol;
end;

procedure TSynFoxproSyn.UnknownProc;
begin
  inc(Run);
  fTokenID := tkUnknown;
end;

procedure TSynFoxproSyn.Next;
begin
  fTokenPos := Run;
  case fLine[Run] of
    '&': AndSymbolProc;
    #39: AsciiCharProc;
    '@': AtSymbolProc;
    '{': BraceOpenProc;
    #13: CRProc;
    ':': ColonProc;
    ',': CommaProc;
    '=': EqualProc;
    '>': GreaterProc;
    'A'..'Z', 'a'..'z', '_': IdentProc;
    #10: LFProc;
    '<': LowerProc;
    '-': MinusProc;
    '%': ModSymbolProc;
    '!': NotSymbolProc;
    #0: NullProc;
    '0'..'9': NumberProc;
    '|': OrSymbolProc;
    '+': PlusProc;
    '.': PointProc;
    '?': QuestionProc;
    ')': RoundCloseProc;
    '(': RoundOpenProc;
    ';': SemiColonProc;
    '/': SlashProc;
    #1..#9, #11, #12, #14..#32: SpaceProc;
    ']': SquareCloseProc;
    '[': SquareOpenProc;
    '*': StarProc;
    #34: StringProc;
    '~': TildeProc;
    '^': XOrSymbolProc;
    else UnknownProc;
  end;
  inherited;
end;

function TSynFoxproSyn.GetDefaultAttribute(Index: integer): TSynHighlighterAttributes;
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

function TSynFoxproSyn.GetEol: Boolean;
begin
  Result := fTokenID = tkNull;
end;

function TSynFoxproSyn.GetTokenID: TtkTokenKind;
begin
  Result := fTokenId;
end;

function TSynFoxproSyn.GetTokenAttribute: TSynHighlighterAttributes;
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

function TSynFoxproSyn.GetTokenKind: integer;
begin
  Result := Ord(fTokenId);
end;

function TSynFoxproSyn.IsFilterStored: Boolean;
begin
  Result := fDefaultFilter <> SYNS_FilterFoxpro;
end;

class function TSynFoxproSyn.GetLanguageName: string;                    
begin
  Result := SYNS_LangFoxpro;
end;

class function TSynFoxproSyn.GetFriendlyLanguageName: WideString;
begin
  Result := SYNS_FriendlyLangFoxpro;
end;

initialization
{$IFNDEF SYN_CPPB_1}
  RegisterPlaceableHighlighter(TSynFoxproSyn);
{$ENDIF}
end.
