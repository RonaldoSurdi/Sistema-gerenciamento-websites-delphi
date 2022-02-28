{ $HDR$}
{**********************************************************************}
{ Unit archived using Team Coherence                                   }
{ Team Coherence is Copyright 2002 by Quality Software Components      }
{                                                                      }
{ For further information / comments, visit our WEB site at            }
{ http://www.TeamCoherence.com                                         }
{**********************************************************************}
{}
{ $Log:  10729: RxAdMain.pas 
{
{   Rev 1.0    26/06/2002 3:26:48 pm  glenn
}
unit RxAdMain;

{ Demo of Addict Spell Check & Thesaurus with PlusMemo }

interface

uses
	Classes, Forms, StdCtrls, RxRichEd, ad3ThesaurusBase, ad3Thesaurus,
  ad3SpellBase, ad3Spell, Controls, Buttons, ExtCtrls, ad3LiveBase,
  ad3LiveAutospell;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpellBtn: TSpeedButton;
    ThesaurusBtn: TSpeedButton;
    SetupBtn: TSpeedButton;
    CheckBox1: TCheckBox;
    Thesaurus31: TThesaurus3;
    RxRichEdit1: TRxRichEdit;
    AddictAutoLiveSpell1: TAddictAutoLiveSpell;
    procedure SpellBtnClick(Sender: TObject);
    procedure SetupBtnClick(Sender: TObject);
    procedure ThesaurusBtnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}


procedure TForm1.SpellBtnClick(Sender: TObject);
begin
	RXRichEdit1.HideSelection := False;
	AddictAutoLiveSpell1.CheckWinControl(RXRichEdit1, ctSmart);
	RXRichEdit1.HideSelection := True;
end;

procedure TForm1.SetupBtnClick(Sender: TObject);
begin
	AddictAutoLiveSpell1.Setup
end;

procedure TForm1.ThesaurusBtnClick(Sender: TObject);
begin
	RxRichEdit1.HideSelection := False;
	Thesaurus31.LookupWinControl (RXRichEdit1);
	RxRichEdit1.HideSelection := True;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
	AddictAutoLiveSpell1.Livespelling := CheckBox1.Checked;
end;

end.
