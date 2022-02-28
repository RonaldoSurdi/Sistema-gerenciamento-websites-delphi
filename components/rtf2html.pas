unit rtf2html;

(*
--------------------------------------------------------------------------------

Revision history:
 Nb.   Date:         Author   What was done.

 004   01-Oct-1999   CMS      MAJOR work done--
                              --Inserted end tags where necessary
                              --Fixed bug that would not modify the color of
                                a font when the rest of the font was unchanged
                              --cleaned up the code and commented

 003   ?             ?        ?
 002   21-aug-1997   TSE      Minor (very minor) cleanup before release
 001   20-aug-1997   TSE      Unit created - RtfToHTML function
                              designed and written.

Author list:
 TSE	Troels Skovmand Eriksen		TSEriksen@cyberdude.com
                                        TSErikse@post8.tele.dk
 ?      ?                               ?
 CMS    Christopher Matthew Sansone     ChrisSansone@rocketmail.com

Supported features:
 rev. 001	Indents, Bullets, Left-, Centered & Rightjustified text,
                Text styles (bold, italics and underline),
                Fonts (face, size, color).
 rev. 002	- do -
 rev.   3	?

--------------------------------------------------------------------------------

 This unit and all procedures and functions herein is released as
freeware. Any components or units created using this unit or
portions hereoff must be released as freeware (This does not
cover applications - they may be shareware/commercial as needed).

 Part of the function RtfToHTML may be covered by some obscure
Microsoft copyright since it reads the RTF format - check it out
yourself, if you do something worthwhile.

 Please let this preface stay if you publish a changed/updated 
version of this unit and write all changes the "Revision history" 
section above. Who-Dun-it information should be inserted in the 
"Author list" and the "Supported features" section should be updated. 
This makes it easier to pass the blame :-) 

 I'm finished with this unit for now - but please email a copy of
any changes you make to me - Troels S Eriksen.

--------------------------------------------------------------------------------

 The following should be fixed - if anybody want to do it?

   * Should be rewritten into a conversion class - could be tricky, since
     it seems like a stream only contains 4 Kb at a time ...
   * Code should be cleaned up - this below is not that fast ...
   * The indents (\li###) should be translated to <BLOCKQUOTE> or
     just a <UL> with no <LI> elements.
   * The hanging paragraphs should be translated to definitionlists ( the
     <DL COMPACT> <DT> term <DD> definition </DL> structure )
   * Tabs (\tab) should be fixed somehow ( heck, I DO want
     a <TAB> code ! )
   * Embedded objects / pictures should be converted to .gif'S
     - I know it'S possible
   * Some nice way to handle links ( the way .RTF-sources for
     helpfiles do ? )
   * A even more nice way of handling tables - could fix the
     indent / tab-problems as well

--------------------------------------------------------------------------------

 The idea and logic behind this weirdo function :

 Well, the idea was to write a pascal RTF-2-HTML converter which
doesn't just do some "search and replace" - but actually converts
the dammed stuff.

 Since there'S a difference between HTML and RTF in the
code-sequencing, I decided to try storing all paragraph and
textformatting information in two records (RTFParagraphFormat and
RTFTextFormat) and only write the contents of these to the output
"stream" when needed.

 This first attempt is successfull - not highly, but it'll convert
the contents of a TRichEdit control and most other .RTF documents
to HTML and keep the general layout.

Enjoy it
Troels S Eriksen, Denmark

--------------------------------------------------------------------------------

*)
{$LONGSTRINGS ON}

interface

uses hwsfunctions, ComCtrls;

  //To use RtfToHtml, just pass the RTF-encoded string, and it will return
  //the HTML-encoded string.  To use RichEditHTML, simply pass the TRichEdit,
  //and it will return the HTML.

  function hws_RtfToHtml(const RTF: String): String;
  function hws_RichEditHTML(ARichEdit: TRichEdit): String;

implementation

uses
  Classes, SysUtils, Forms;

function hws_RtfToHtml(const RTF: String): String;

type
  THTMLTagState = (htsNotActivated, htsMustActivate,
                   htsActivated, htsMustDeactivate);

  THTMLTagType = (hftNone, hftBold, hftUnderline, hftItalics,
                  hftFont, hftParagraph);
  THTMLTagTypes = set of THTMLTagType;

  THTMLBulletType = (hbtNone, hbtListOpen, hbtListItemOpen, hbtListItemClose,
                     hbtListClose, hbtBreak);

  TRTFFontState = record
    FontTable: Boolean;
    ColorTable: Boolean;
    FontList, ColorList: TStringList;
  end;

  TRTFParagraphFormat = record
    Alignment: TAlignment;
    Bullets: THTMLBulletType;
    Written: Boolean;
  end;

  TRTFTextFormat = record
    WriteFont: Boolean;
    DefaultFont: Integer;
    Font: Integer;
    FontSize: Integer;
    Color: Integer;
    Bold: THTMLTagState;
    Italics: THTMLTagState;
    Underline: THTMLTagState;
    Written: Boolean;
  end;



var
  Index : Integer;  // index of the current character
  RTFParagraphFormat : TRTFParagraphFormat;  //paragraph formatting record
  RTFTextFormat : TRTFTextFormat;  //text formatting record
  RTFFontState  : TRTFFontState;  //font state record

  HTMLTagOrder: array[0..4] of THTMLTagType;  //ordered array of tags
  Keyword, FullKeyword: String;  //current and full RTF tag
  ActiveTags: THTMLTagTypes;  //active formatting tags

  Group: Integer;       //current number of groups the code is nested in
  FColor: String[10];  //RTF color information
  FFont: String[63];  //RTF font information

  procedure AddTagType(AHTMLTagType: THTMLTagType);
  {adds the current tag type to the tag array}
  var
    i: Integer;
  begin
    For i := 0 to High(HTMLTagOrder) do  //loop through the array
      If HTMLTagOrder[i] = AHTMLTagType then  //the tag type is already in
        Exit;  //since the tag type is already there, do not add again

    //the most recent tags are in the front of the array
    For i := High(HTMLTagOrder) downto 0 do  //loop from last to first
      If  HTMLTagOrder[i] = hftNone then begin  //empty space in array
        HTMLTagOrder[i] := AHTMLTagType;  //set the empty entry to the tag type
        Exit;  //finished, so exit
      end;
  end;

  procedure InsertTag(AHTMLTagType: THTMLTagType; var S: String);
  {Inserts the necessary tag into S --
   If UpdateArray is True, the array will be updated to include this entry}
  begin
    Case AHTMLTagType of
      hftBold:    //add a bold tag
        begin
          S := S + '<B>';
          RTFTextFormat.Bold := htsActivated;  //update the text format record
        end;
      hftItalics:    //add an italics tag
        begin
          S := S + '<I>';
          RTFTextFormat.Italics := htsActivated;  //update text format record
        end;
      hftUnderline:  //add an underline tag
        begin
          S := S + '<U>';
          RTFTextFormat.Underline := htsActivated;  //update text format record
        end;
      hftFont:     //add a font tag
        begin
          With RTFTextFormat do   //create font tag with current font info
            S := S + '<FONT FACE="' + RTFFontState.FontList[Font] +
                     '" COLOR="' + RTFFontState.ColorList[Color] +
                     '" SIZE="' + IntToStr(FontSize) + '">';
        end;
      hftParagraph:  //add a paragraph tag
        begin
          case RTFParagraphFormat.Alignment of  //create aligned paragraph tag
            taLeftJustify : S := S + #13#10'<P>';
            taRightJustify: S := S + #13#10'<P ALIGN=RIGHT>';
            taCenter      : S := S + #13#10'<P ALIGN=CENTER>';
          end;
        end;
    end;

    AddTagType(AHTMLTagType);  //update the array
  end;

  procedure WriteEndTag(AHTMLTagType: THTMLTagType; var S: String);
  {Writes the end tag of the tag type into S and updates the record--
   ***Methods should call WriteEndTags instead, because this method does not
   update the array of tags.}
  begin
    Case AHTMLTagType of
      hftBold:     //write bold end tag
        begin
          S := S + '</B>';
            RTFTextFormat.Bold := htsNotActivated;  //update format record
        end;
      hftItalics:  //write italics end tag
        begin
          S := S + '</I>';
            RTFTextFormat.Italics := htsNotActivated;  //update format record
        end;
      hftUnderline:  //write underline end tag
        begin
          S := S + '</U>';
          RTFTextFormat.Underline := htsNotActivated;  //update format record
        end;
      hftFont:  //write font end tag
        begin
          S := S + '</FONT>';
        end;
      hftParagraph:   //write paragraph end tag
        begin
          S := S + '</P>'#13#10#13#10;
      end;
    end;
  end;

  procedure WriteEndTags(var S: String; AExcludeTags: THTMLTagTypes);
  {Writes the end tags for all items in the array except for those excluded}
  var
    i: Integer;
  begin
    For i := 0 to High(HTMLTagOrder) do  //loop through the array
      If not (HTMLTagOrder[i] in AExcludeTags) then begin  //not excluded
        WriteEndTag(HTMLTagOrder[i], S);  //write the end tag into S
        HTMLTagOrder[i] := hftNone;  //reset the entry in the array
      end;
  end;


  procedure WriteChar(C: Char);
  {Processes the character to HTML and writes the character to the result--
   This method also checks to see if text and paragraph tags must be inserted}
    var
      S : string;  //temporary string
    begin
      Application.ProcessMessages;  //allow the application to process
      S := '';  //initialize the return string

      If (not RTFParagraphFormat.Written) or (not RTFTextFormat.Written) then
        //either the paragraph format or text format will be changed--
        //must keep track of the current format tags in order to deactivate,
        //add other tags, and reactivate
        With RTFTextFormat do begin
          ActiveTags := [];  //initialize
          If Bold = htsActivated then  //Bold is staying activated
            ActiveTags := ActiveTags + [hftBold];  //add Bold to set
          If Italics = htsActivated then  //Italics is staying activated
            ActiveTags := ActiveTags + [hftItalics];  //add Italics to set
          If Underline = htsActivated then  //Underline is staying activated
            ActiveTags := ActiveTags + [hftUnderline];  //add Underline to set
        end;

      
      With RTFParagraphFormat do  //write the necessary paragraph tags
        If not Written then begin  //changes must be made
          WriteEndTags(S, []);  //close all open tags

          //write the proper paragraph tags
          case Bullets of
            hbtNone:   //a new paragraph must be created
              begin     
                InsertTag(hftParagraph, S);  //insert new paragraph tag
                RTFTextFormat.WriteFont := True;  //will add the new font tag
                RTFTextFormat.Written := False;  //must write text format tags
              end;

            hbtListOpen:  //start a list
              begin
                S := S + #13#10'<UL>';  //write the tag
                RTFTextFormat.WriteFont := True;  //will add the new font tag
                RTFTextFormat.Written := False;  //must write text format tags
              end;

            hbtListItemOpen:  //add a new list item
              begin
                S := S + #13#10#9'<LI>';  //write the tag
                RTFTextFormat.WriteFont := True;  //will add the new font tag
                RTFTextFormat.Written := False;  //must write text format tags
              end;

            hbtListItemClose:   //close a list item
              begin
                S := S + '</LI>';  //write the close list item tag
              end;

            hbtListClose:  //close a list
              begin
                S := S + #13#10'</UL>'#13#10;  //write the close list tag
                Bullets := hbtNone; //set paragraph formatting to standard (<P>)
              end;

            hbtBreak:  //break -- not currently used
              begin
                S := S + '<BR>'#13#10#160#32#160#32#160;  //insert a break
                Bullets := hbtNone; //set paragraph formatting to standard (<P>)
              end;
          end;

          Written := True;  //flag -- the paragraph tags have been written  
        end; { RTFParagraphFormat }


      With RTFTextFormat do  //now write any necessary text format tags
        If (not Written) and  //changes must be made
           (RTFParagraphFormat.Bullets <> hbtListOpen) then begin
          WriteEndTags(S, [hftFont, hftParagraph]);  //write format end tags

          If WriteFont then begin  //the font has changed--must write font
            WriteEndTags(S, [hftParagraph]);  //close the font tag if necessary
            InsertTag(hftFont, S);  //insert the new font tag
            WriteFont := False;  //flag -- font has been written
          end;

          If (hftBold in ActiveTags) or (Bold = htsMustActivate) then
            //Bold is either currently active or must be activated
            InsertTag(hftBold, S);  //insert the Bold tag
          If (hftItalics in ActiveTags) or (Italics = htsMustActivate) then
            //Italics is either currently active or must be activated
            InsertTag(hftItalics, S);  //insert the Italics tag
          If (hftUnderline in ActiveTags) or (Underline = htsMustActivate) then
            //Underline is either currently active or must be activated
            InsertTag(hftUnderline, S);  //insert the Underline tag

          Written := True;  //flag -- text formatting tags have been handled
        end;

      //Now write the characters and tags
      case C of
        #0  : Result := Result + S;          // Writes pending codes only
        #9  : Result := Result + S + #9;       // Writes tab char
        '>' : Result := Result + S + '&gt';    // Writes "greater than"
        '<' : Result := Result + S + '&lt';    // Writes "less than"
        else  Result := Result + S + C;        // Writes the passed character
      end;
    end; { WriteChar }

  function Resolve(C: Char): Integer;
  {Converts the character to its integer value --
   used to decode \'## to an ansi-Value }
  begin
    case Byte(C) of
      48..57 : Result := Byte(C) - 48;
      65..70 : Result := Byte(C) - 55;
      else     Result := 0;
    end;
  end; { resolve }

  function GetFullKeyword(ARTF: String; StartPos: Integer): String;
  {Returns the entire keyword for a particular key--keys are separated by ' '}
  begin
    Delete(ARTF, 1, StartPos - 1);  //remove all text before the key
    Result := Copy(ARTF, 1, Pos(' ', ARTF) - 1);  //return all text before ' '
  end;

  function TagInKeyword(ARTFTag: String): Boolean;
  {Returns true if a particular tag is in the current keyword (e.g. '\b')}
  begin
    Result := Pos(ARTFTag, FullKeyword) > 0;  //return true if substring found
  end;

  function CollectCode(I: Integer): Integer;
  {Parses and handles the RTF code beginning at position I to convert to HTML}
  var
    Value: String;
    A: Integer;
  begin
    Keyword := '';  //initialize the keyword

    // First - check if Keyword is any "special" Keyword or is a normal one ...
    case RTF[i + 1] of  //look at the current character
      '*' :
        begin    // Ignore all code until the end of the Group
          a := Group;  //get the current embedded Group count
          repeat       //loop through each character
            case RTF[i] of
              '{' : Inc(Group);  //another Group is opened -- increment count
              '}' : Dec(Group);  //a Group is closed -- decrement embedded count
            end;
            Inc(i);  //go to the next character
          until (Group + 1) = a;  //until the start of another Group is found
            Result := i - 1;   //return the position of the Group start
        end;

      #39 :
        begin  // Decode hex Value
          WriteChar(Char(Resolve(UpCase(RTF[i + 2])) * 16 +
                    Resolve(UpCase(RTF[i + 3]))));
          Inc(i, 3);  //go three spaces ahead
          Result := i;  //return the next position
      end;
      '\','{','}' :
        begin  // Return special character
          WriteChar(RTF[i + 1]);  //write the character
          Inc(i);  //go to the next character
          Result := i;  //return the next character
        end;

      else begin   //must be a keyword
        repeat  //get the keyword
          Keyword := Keyword + RTF[i];  //add the next character to the keyword
          Inc(i);  //go to the next character
        until (RTF[i] in ['{','\','}',' ',';','-','0'..'9']);  //end of keyword

        // Second - get any Value following ...
        Value := '';  //initialize the value
        While (RTF[i] in ['a'..'z','-','0'..'9']) do begin  //value exists
          Value := Value + RTF[i];  //add the character to value
          Inc(i);  //go to the next character
        end;

        while (RTF[i] in ['{', '}', ';', ' ']) do  //character can be ignored
          Inc(i);  //ignore the current character

        Result := i - 1;  //return position of previous character

        // Check which Keyword it is and perform the necessary functionality--
        // Tested--Using IF THEN ELSE is 10% more efficient than calling EXIT

        if Keyword = '\par' then  //New paragraph or bullet item
          with RTFParagraphFormat do begin
            Written := False;  //update the HTML tags
            if Bullets = hbtListItemOpen then begin //list item currently open
              Bullets := hbtListItemClose;  //must close the list item
              WriteChar(#0);  //write the change
            end
          end

        else if Keyword='\f' then  //font change
          case RTFFontState.FontTable of
            True:   //must add the current font to the font list
              begin
                FFont:='';  //initialize current font
                While RTF[i]<>' ' do  // Ignore font family info, etc.
                  Inc(i);

                Inc(i);  //go to next character
                While RTF[i]<>';' do begin  //Read font name until ';'
                  FFont := FFont + RTF[i];  //add character to font name
                  Inc(i);  //go to the next character
                end;
                Dec(Group);  //finished a Group, so close it
                Result := i + 1;  //Move one beyond Group end
                RTFFontState.FontList.Add(FFont);  //Add font name to font list
              end;

            False:
              With RTFTextFormat do begin  //Use name already in font list
                a := StrToIntDef(Value, 0);  //get index of font in font list
                if Font <> a then begin	 //Font has changed--must make HTML tag
                  WriteFont := True;  //must write the new font
                  Written := False;  //have not written new text formatting yet
                  Font := a;  //set the index of the current font
                end;
              end;
          end

        else if Keyword = '\plain' then  //original text format
          with RTFTextFormat do begin  //must reset all text attributes
            FullKeyword := GetFullKeyword(RTF, i);  //get full keyword
            If (Color <> 0) and (not TagInKeyword('\cf')) then begin
              //the current color is not the default color, and the color will
              //not be updated in this keyword--must reset color and write font
              Color := 0;  //reset the color
              WriteFont := True;  //must write the new font
              Written := False;  //have not written the new text formatting yet
              WriteChar(#0);  //write the new tags
            end
            else begin  //the color does not need to be updated
              If (bold = htsActivated) {and (not TagInKeyword('\b'))} then
                //Bold is no longer active, so it must be deactivated
                Bold := htsMustDeactivate;  //deactivate Bold
              If (Italics = htsActivated) {and (not TagInKeyword('\i'))} then
                //Italics is no longer active, so it must be deactivated
                Italics := htsMustDeactivate;  //deactivate Italics
              If (Underline = htsActivated) {and (not TagInKeyword('\ul'))} then
                //Underline is no longer active, so it must be deactivated
                Underline := htsMustDeactivate;  //deactivate Underline

              if (Bold = htsMustDeactivate) or (Italics = htsMustDeactivate) or
                 (Underline = htsMustDeactivate) then begin
                //one or more attributes have changed--must write the new tags
                Written := False;  //have not written new text formatting yet
                WriteChar(#0);  //write the new tags
              end
              else  //no attributes have changed -- no need to write anything
                WriteFont := False;  //do not update the font
            end;
        end

        else if Keyword = '\fs' then  //modify the font size
          with RTFTextFormat do begin
            case StrToIntDef(Value, 11) div 2 of
               1.. 5 : a := 1;  //set an appropriate font size
               6.. 9 : a := 2;
              10..11 : a := 3;
              12..13 : a := 4;
              14..15 : a := 5;
              else     a := 6;
            end;
            if a <> FontSize then begin  //the font size has changed
              FontSize := a;  //set the new font size
              Written := False;  //have not written the new font size yet
              WriteFont := True;  //write the new font
            end;
          end

        else if Keyword = '\tab' then   //tab character
          WriteChar(#9)  //send a tab character--displayed as a space in HTML

        else if Keyword = '\ul' then begin  //Underline is activated
          with RTFTextFormat do
            if Underline = htsNotActivated then begin  //must activate Underline
              Underline := htsMustActivate;  //activate Underline
              Written := False;  //have not written new attribute yet
            end;
        end
        else if Keyword = '\b' then begin  //Bold is activated
          with RTFTextFormat do
            if Bold = htsNotActivated then begin   //must activate Bold
              Bold := htsMustActivate;  //activate Bold
              Written := False;  //have not written new attribute yet
            end;
        end
        else if Keyword = '\i' then begin  //Italics is activated
          with RTFTextFormat do
          if Italics = htsNotActivated then begin   //must activate Italics
            Italics := htsMustActivate;  //activate Italics
            Written := False;  //have not written new attribute yet
          end;
        end

        else if Keyword = '\cf' then   //font color has been changed
          with RTFTextFormat do begin
            a := StrToIntDef(Value, 0);  //get index of color in the color list
            If Color <> a then begin  //the color has changed
              Color := a;  //set the new color
              Written := False;  //have not written the new color yet
              WriteFont := True;  //write the new font
            end;
        end

        else if Keyword = '\qc' then begin  //paragraph must be centered
          With RTFParagraphFormat do
            If Bullets = hbtNone then begin
              Alignment := taCenter;  //align the paragraph to center
              Written := False;  //alignment has not been written yet
            end;
        end
        else if Keyword = '\qr' then begin //paragraph must be right-aligned
          With RTFParagraphFormat do
            If Bullets = hbtNone then begin
              Alignment := taRightJustify;  //align the paragraph to right
              Written := False;  //alignment has not been written yet
            end;
        end
        else if Keyword = '\pntext' then  //Start bullet list item
          with RTFParagraphFormat do begin
            Written := False;  //have not written the bullet tag yet
            Bullets := hbtListItemOpen;  //the current item is a new list item
            a := Group;  //get current embedded group count
            repeat  //go through the RTF until a group is closed
              case RTF[i] of
                '{': Inc(Group);  //new group to open--increment Group
                '}': Dec(Group);  //group is closed--decrement Group
              end;
              Inc(i);  //go to the next character
            until (Group + 1) = a;  //until the end of a group has been reached
            Result := i - 1;  //go to the end of the group
          end

        else if Keyword = '\fi' then  //a bullet list must be started
          with RTFParagraphFormat do begin
            Written := False;  //bullet tag has not been written
            Bullets := hbtListOpen;  //the current bullet type is an open list
            WriteChar(#0);  //write the open list tag
          end

        else if Keyword = '\pard' then  //end of paragraph / bullet list
          with RTFParagraphFormat do begin
            Alignment := taLeftJustify;  //reset the paragraph alignment to left
            Written := False;  //have not written the paragraph change yet
            If Bullets <> hbtNone then begin //currently in an open bullet list
              Bullets := hbtListClose;  //close the bullet list
              WriteChar(#0);  //write the close list tag
            end;
          end

        else if Keyword = '\red' then  //setting red color
          FColor := '#' + IntToHex(StrToIntDef(Value, 255), 2)  //Get red color
        else if Keyword = '\green' then //setting green color
          FColor := FColor + IntToHex(StrToIntDef(Value, 255), 2)  //Get color
        else if Keyword = '\blue' then begin  //setting blue color--finished
          FColor := FColor + IntToHex(StrToIntDef(Value, 255), 2);  //Get color
          RTFFontState.ColorList.Add(FColor);   //Add RGB to the color list
        end

        else if Keyword = '\deff' then  //default font index
          with RTFTextFormat do
            DefaultFont := StrToIntDef(Value, 0)  //set the default font index

        else if Keyword = '\fonttbl' then  //must create an entry in font list
          RTFFontState.FontTable := True  //initialize creation of font list
        else if Keyword = '\colortbl' then   //must create a color list
          RTFFontState.ColorTable := True  //must create an entry in color list

        else if Keyword = '\deflang' then begin  //Update is finished
          RTFFontState.FontTable := False;  //finished creating font list entry
          With RTFParagraphFormat do begin  // reset paragraph format
            Alignment := taLeftJustify;  //reset paragraph alignment to left
            Written := False;  //have not written new paragraph tags yet
            Bullets := hbtNone;  //reset bullets to standard paragraphs
          end;
          With RTFTextFormat do begin  //reset font format
            Font := DefaultFont;  //set the font index to the default index
            FontSize := 3;  //reset the font size to default
            Color := 0;  //reset the color index to the default index
            Bold := htsNotActivated;  //initialize bold
            Italics := htsNotActivated;  //initialize italics
            Underline := htsNotActivated;  //initialize underline
            Written := False;  //have not written the new font settings yet
          end;
          RTFFontState.ColorTable := True;  //must start creating color entry
        end;
      end;
    end;
  end;

  function CleanUp(S: String): String;
  {Occurs when the HTML code has been completed--
   Closes any remaining open tags and returns the updated code}
  begin
    WriteEndTags(S, []);
    Result := S;
  end;

var
  i: Integer;
begin
  try
    For i := 0 to High(HTMLTagOrder) do  //loop through entire array
      HTMLTagOrder[i] := hftNone;  //initialize the entire array to hftNone

    RTFFontState.FontList := TStringList.Create;    //Create font list
    RTFFontState.ColorList := TStringList.Create;    //Create color list

    RTFParagraphFormat.Written := True;  //initialize
    RTFTextFormat.Written := True;  //initialize--will be false on first format

    Index := 0;  //initialize the index
    Result := '';  //initialize the result
    repeat
      Inc(Index);  //go to the next character
      case RTF[Index] of
        #0..#31 : ;  //ASCII control characters -- ignore
        '{': Inc(Group);  //new group -- increment embedded group count
        '}': Dec(Group);  //closed group -- decrement embedded group count
        '\': Index := CollectCode(Index);   //RTF keyword--update HTML tags

        else begin  //a standard character -- just write it to the result
          WriteChar(RTF[Index]);  //Write char and any pending HTML codes
          Inc(Index);  //Speed-write normal characters until next special one
          while (Index < Length(RTF)) and
                not (RTF[Index] in ['{','}','\','<','>',#00..#31]) do begin
           //have not reached end of RTF yet and current character is standard
            Result := Result + RTF[Index];  //add current character to result
            Inc(Index);  //go to next result
          end;
          Dec(Index);  //go back one character (incremented one too many times)
        end;
      end;
    until Index = Length(RTF);  //until all code has been processed
  finally
    Result := CleanUp(Result);  //Return the completed HTML document
    With RTFFontState do begin
      FontList.Free;  //destroy the font list
      ColorList.Free;  //destroy the color list
    end;
  end;
end;

function hws_RichEditHTML(ARichEdit: TRXRichEdit): String;
var
  MS: TMemoryStream;
  RichText: String;
begin
  RichText := '';
  MS:= TMemoryStream.Create;  //create a memory stream
  try
    ARichEdit.Lines.SaveToStream(MS);  //save the RTF text to stream
    RichText := PChar(MS.Memory);  //get the resulting text stream
    Result := hws_RtfToHtml(RichText);
  finally
    MS.Free;  //destroy the memory stream
  end;
end;

end.
