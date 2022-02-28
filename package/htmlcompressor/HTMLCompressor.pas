{*************************************************************}
{            HTML Compressor Component for Delphi 32          }
{ Version:   1.0                                              }
{ Author:    Aleksey Kuznetsov, Kiev, Ukraine                 }
{            Алексей Кузнецов (Xacker), Киев, Украина         }
{ E-Mail:    xacker@phreaker.net                              }
{ Home Page: xacker.virtualave.net                            }
{ Created:   March, 21, 1999                                  }
{ Modified:  April, 1, 1999                                   }
{ Legal:     Copyright (c) 1999 by Aleksey Xacker             }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{ If you will use to a component in your programs, hold me in }
{ "credits" !                                                 }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{ Если вы будете использовать компоненту в своей программе,   }
{ держите меня в "кредитах" !                                 }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{*************************************************************}
{   HTML Compressor (English)                                 }
{ This component is indended for compressing of HTML files,   }
{ resulting in shorter downloading time. Your pages will      }
{ appear in exactly the same way in your browser, but they    }
{ will be about 20% smaller. Сompressor removes all           }
{ information used for editing in the HTML file. This         }
{ information is unneeded for viewing the HTML file but is    }
{ simply used to make its editing a lot easier.               }
{   Options:                                                  }
{    * Replace simple tags (<strong> to <b> and <em> to <i>,  }
{        etc.)                                                }
{    * Put tag <center> instead of <p align=...>              }
{    * Remove superflious inverted commas in tags             }
{    * Remove superflious spaces                              }
{    * Remove superflious returns (0D, 0A)                    }
{    * Remove all returns (0D, 0A)                            }
{    * Remove Front Page's <!-- webbot span...> tags          }
{*************************************************************}
{  HTML Compressor (Russian)                                  }
{ Компонента предназначенна для сжатия HTML файлов, тем самым }
{ сокращая время зарузки страниц в сети. Сжатые web страницы  }
{ будут выглядеть и работать точно также как и до сжатия, но  }
{ будут занимать пространства, приблизительно, на 20% меньше. }
{ Compressor удаляет из HTML файла всю информацию для         }
{ редактирования. Удалённая информация излишня для просмотра  }
{ станицы, но обычно намного облегчает её редактирование.     }
{*************************************************************}
{  Properties                                                 }
{    (!!!) see description of options (!!!)                   }
{    Buffer: Pointer - HTML file (read only)                  }
{    IsCompressed: Boolean - Is HTML file compressed          }
{    SourceSize,                                              }
{    TargetSize: LongInt                                      }
{  Methods:                                                   }
{    function LoadFromFile: Boolean - (Return False if error) }
{    function SaveToFile: Boolean - (Return False if error)   }
{    procedure Compress - (Compress Buffer)                   }
{*************************************************************}
{                     IMPORTANT NOTE:                         }
{ This software is provided 'as-is', without any express or   }
{ implied warranty. In no event will the author be held       }
{ liable for any damages arising from the use of this         }
{ software.                                                   }
{ Permission is granted to anyone to use this software for    }
{ any purpose, including commercial applications, and to      }
{ alter it and redistribute it freely, subject to the         }
{ following restrictions:                                     }
{ 1. The origin of this software must not be misrepresented,  }
{    you must not claim that you wrote the original software. }
{    If you use this software in a product, an acknowledgment }
{    in the product documentation would be appreciated but is }
{    not required.                                            }
{ 2. Altered source versions must be plainly marked as such,  }
{    and must not be misrepresented as being the original     }
{    software.                                                }
{ 3. This notice may not be removed or altered from any       }
{    source distribution.                                     }
{*************************************************************}
unit HTMLCompressor;

interface

uses
  SysUtils, Classes;

type
  THTMLCompressor = class(TComponent)
  private
    FBuffer: Pointer;
    FSourceSize, FCompressedSize: LongInt;
    FSimpleTags, FCenter, FInvCommas,
    FSpaces, FReturns, FAllReturns, FWebbots: Boolean;
    FIsCompressed: Boolean;
  protected
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure Compress; virtual;
    function LoadFromFile(FileName: String): Boolean;
    function SaveToFile(FileName: String): Boolean;

    property Buffer: Pointer read FBuffer;
    property SourceSize: LongInt read FSourceSize;
    property CompressedSize: LongInt read FCompressedSize;
    property IsCompressed: Boolean read FIsCompressed;
  published
    property SimpleTags: Boolean read FSimpleTags write FSimpleTags;
    property Center: Boolean read FCenter write FCenter;
    property InvCommas: Boolean read FInvCommas write FInvCommas;
    property Spaces: Boolean read FSpaces write FSpaces;
    property Returns: Boolean read FReturns write FReturns;
    property AllReturns: Boolean read FAllReturns write FAllReturns;
    property Webbots: Boolean read FWebbots write FWebbots;
  end;

procedure Register;

implementation

type
  Giant = Array[0..$7FFFFFFE] of Char;

constructor THTMLCompressor.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  AllReturns := True;
  Center := True;
  InvCommas := True;
  Returns := True;
  SimpleTags := True;
  Spaces := True;
  Webbots := True;
  FIsCompressed := False;
  FSourceSize := 0;
  FCompressedSize := 0;
end;

destructor THTMLCompressor.Destroy;
begin
  if FBuffer <> nil then FreeMem(FBuffer);
  inherited Destroy;
end;

procedure THTMLCompressor.Compress;
var
  Buf: Pointer;
  fs: LongInt;

  procedure EraseCommasInTags;
  label BreakCycle;
  var
    i, j, k: Integer;
    SpaceFounded: Boolean;
    TagStr: ShortString;
  begin
    i := 0;
    TagStr[0] := #7;
    while i < fs do
     begin
      Move(Giant(Buf^)[i], TagStr[1], 7);
      TagStr := LowerCase(TagStr);
      if TagStr = '<script' then
       begin
        inc(i, 6);
        while (i < fs) and (TagStr <> '</script') do
         begin
          TagStr[0] := #8;
          Move(Giant(Buf^)[i], TagStr[1], 8);
          TagStr := LowerCase(TagStr);
          inc(i);
         end;
        if i >= fs then Exit;
        TagStr[0] := #7;
       end;
      if (Giant(Buf^)[i] = '<') and (Giant(Buf^)[i + 1] <> '!') then
       begin
        j := i;
        while (Giant(Buf^)[j] <> '>') and (j < fs) do
         begin
          inc(j);
          if Giant(Buf^)[j] = '''' then GoTo BreakCycle;
         end;
        while (Giant(Buf^)[i] <> '>') and (i < fs) do
         begin
          inc(i);
          Move(Giant(Buf^)[i], TagStr[1], 7);
          TagStr := LowerCase(TagStr);
          SpaceFounded := False;
          if TagStr = 'value="' then
           begin
            k := i;
            inc(i, 7);
            while (i < fs) and (Giant(Buf^)[i] <> '"') do
             begin
              if Giant(Buf^)[i] = ' ' then SpaceFounded := True;
              inc(i);
             end; 
            inc(i);
            if i >= fs then Exit;
            if not SpaceFounded then i := k;
           end;
          if Giant(Buf^)[i] = '"' then
           begin
            Move(Giant(Buf^)[i + 1], Giant(Buf^)[i], fs - i);
            dec(fs);
            dec(i);
           end;
         end;
        BreakCycle:
       end;
      inc(i);
     end;
  end;

  procedure ReplaceSubStr(Source, Target: String; Anyway, ProcessScript: Boolean);
  label NextCmp;
  var
    i, j: Integer;
    TagStr, TextAreaStr, PreTagStr, ScriptTagStr, WebbotStr: ShortString;
    ch: Char;

    function WaitFor(var i: Integer; Tag: String): Boolean;
    begin
      while (i < fs) and (TagStr <> Tag) do
       begin
        Move(Giant(Buf^)[i], TagStr[1], Length(Tag));
        TagStr[0] := Char(Length(Tag));
        TagStr := LowerCase(TagStr);
        inc(i);
       end;
      Result := i < fs;
    end;

  begin
    i := 0;
    TextAreaStr[0] := #9;
    PreTagStr[0] := #4;
    ScriptTagStr[0] := #7;
    WebbotStr[0] := #10;
    while i < fs do
     begin
      Move(Giant(Buf^)[i], TagStr[1], Length(Source));
      TagStr[0] := Char(Length(Source));
      TagStr := LowerCase(TagStr);

      if not Anyway then
       begin
        Move(Giant(Buf^)[i], TextAreaStr[1], 9);
        TextAreaStr := LowerCase(TextAreaStr);
        if TextAreaStr = '<textarea' then
         if not WaitFor(i, '</textarea>') then Exit;

        Move(Giant(Buf^)[i], PreTagStr[1], 4);
        PreTagStr := LowerCase(PreTagStr);
        if PreTagStr = '<pre' then
         if not WaitFor(i, '</pre>') then Exit;
       end;

      if ProcessScript then
       begin
        Move(Giant(Buf^)[i], ScriptTagStr[1], 7);
        ScriptTagStr := LowerCase(ScriptTagStr);
        if ScriptTagStr = '<script' then
         if not WaitFor(i, '</script>') then Exit;
       end;

      if TagStr = Source then
       begin
        if Length(Target) <> 0 then
         Move(Target[1], Giant(Buf^)[i], Length(Target))
        else
         begin
          ch := Giant(Buf^)[i + Length(Source)];
          if (Giant(Buf^)[i - 1] <> '>') and (Giant(Buf^)[i - 1] <> ' ') and
             (ch <> '<') and (ch <> ' ') and (ch <> #13) and (ch <> #10) then
           goto NextCmp;
         end;
        Move(Giant(Buf^)[i + Length(Source)],
             Giant(Buf^)[i + Length(Target)],
             fs - i - (Length(Source) - Length(Target)));
        dec(fs, Length(Source) - Length(Target));
       end
      else
       begin
        NextCmp:
        if Source[1] = #13 then
         if Giant(Buf^)[i] = '<' then
          begin
           if WebBots then
            begin
             Move(Giant(Buf^)[i], WebbotStr[1], 10);
             WebbotStr := LowerCase(WebbotStr);
             if WebbotStr = '<!--webbot' then
              begin
               j := i;
               while (Giant(Buf^)[i] <> '>') and (i < fs) do inc(i);
               if i < fs then
                begin
                 inc(i);
                 Move(Giant(Buf^)[i], Giant(Buf^)[j],
                      fs - j - (i-j));
                 dec(fs, i - j);
                end; 
              end;
            end;
           while (Giant(Buf^)[i] <> '>') and (i < fs) do inc(i);
          end;
        inc(i);
       end;
     end;
  end;

  procedure ReplaceTagSubStr(Source, Target, EndSource, EndTarget: String);
  var
    i: Integer;
    TagStr: ShortString;
    TagClosed: Boolean;
    Difference, EndDifference: Integer;
  begin
    TagClosed := True;
    Difference := Length(Source) - Length(Target);
    EndDifference := Length(EndSource) - Length(EndTarget);
    i := 0;
    while i < fs do
     begin
      if TagClosed then
       begin
        Move(Giant(Buf^)[i], TagStr[1], Length(Source));
        TagStr[0] := Char(Length(Source));
       end
      else
       begin
        Move(Giant(Buf^)[i], TagStr[1], Length(EndSource));
        TagStr[0] := Char(Length(EndSource));
       end;
      TagStr := LowerCase(TagStr);
      if TagClosed then
       if TagStr = Source then
        begin
         Move(Target[1], Giant(Buf^)[i], Length(Target));
         Move(Giant(Buf^)[i + Length(Source)],
              Giant(Buf^)[i + Length(Target)],
              fs - i - Difference);
         dec(fs, Difference);
         TagClosed := False;
        end
       else
      else
       if TagStr = EndSource then
        begin
         if EndDifference >= 0 then
          begin
           Move(EndTarget[1], Giant(Buf^)[i], Length(EndTarget));
           Move(Giant(Buf^)[i + Length(EndSource)],
                Giant(Buf^)[i + Length(EndTarget)],
                fs - i - EndDifference);
          end
         else
          begin
           Move(Giant(Buf^)[i + Length(EndSource)],
                Giant(Buf^)[i + Length(EndTarget)],
                fs - i - EndDifference);
           Move(EndTarget[1], Giant(Buf^)[i], Length(EndTarget));
          end;
         dec(fs, EndDifference);
         TagClosed := True;
        end;
      inc(i);
     end;
  end;

begin
  if (FSourceSize = 0) or FIsCompressed then Exit;

  fs := FSourceSize;
  GetMem(Buf, fs);
  Move(FBuffer^, Buf^, fs);

  if FInvCommas then EraseCommasInTags;

  if FAllReturns then
   begin
    ReplaceSubStr(#13#13, #13, False, False);
    ReplaceSubStr(#10#10, #10, False, False);
    ReplaceSubStr(#13#10, '', False, True);
    ReplaceSubStr(#13, '', False, True);
    ReplaceSubStr(#10, '', False, True);
   end
  else
   if FReturns then
    begin
     ReplaceSubStr(#13#13, #13, False, False);
     ReplaceSubStr(#10#10, #10, False, False);
    end;

  if FSpaces then
   begin
    ReplaceSubStr('    ', ' ', False, True);
    ReplaceSubStr('   ', ' ', False, True);
    ReplaceSubStr('  ', ' ', False, True);
    ReplaceSubStr('  ', ' ', False, True);
    ReplaceSubStr(' >', '>', False, True);
   end;

  if FSimpleTags then
   begin
    ReplaceSubStr('<strong>','<b>', True, True);
    ReplaceSubStr('</strong>','</b>', True, True);
    ReplaceSubStr('<em>','<i>', True, True);
    ReplaceSubStr('</em>','</i>', True, True);
    ReplaceSubStr('<strike>','<s>', True, True);
    ReplaceSubStr('</strike>','</s>', True, True);
   end;

  if FCenter then
   begin
    ReplaceTagSubStr('<p align=center>', '<center>', '</p>', '</center>');
    ReplaceTagSubStr('<p align="center">', '<center>', '</p>', '</center>');
   end;

  FCompressedSize := fs;
  FIsCompressed := True;

  if FBuffer <> nil then FreeMem(FBuffer);
  GetMem(FBuffer, fs);
  Move(Buf^, FBuffer^, fs);
  FreeMem(Buf);
end;

function THTMLCompressor.LoadFromFile(FileName: String): Boolean;
var
  f: File;
begin
  FCompressedSize := 0;
  FIsCompressed := False;
  {$I+}
  try
   AssignFile(f, FileName);
   Reset(f, 1);
   FSourceSize := FileSize(f);
   if FBuffer <> nil then FreeMem(FBuffer);
   GetMem(FBuffer, FSourceSize);
   BlockRead(f, FBuffer^, FSourceSize);
   Result := True;
  except
   Result := False;
  end;
  try
   CloseFile(f);
  except
  end;
  {$I-}
end;

function THTMLCompressor.SaveToFile(FileName: String): Boolean;
var
  f: File;
begin
  if FBuffer = nil then
   begin
    Result := False;
    Exit;
   end;
  {$I+}
  try
   AssignFile(f, FileName);
   Rewrite(f, FCompressedSize);
   BlockWrite(f, FBuffer^, 1);
   Result := True;
  except
   Result := False;
  end;
  try
   CloseFile(f);
  except
  end;
  {$I-}
end;

procedure Register;
begin
  RegisterComponents('HWS', [THTMLCompressor]);
end;

end.
