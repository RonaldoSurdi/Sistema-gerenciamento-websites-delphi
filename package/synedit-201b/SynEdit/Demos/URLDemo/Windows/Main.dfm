?
 TFORM1 0L  TPF0TForm1Form1Left? Top? Width?Height?ActiveControlSynEdit1CaptionURL DemoColorclBackgroundFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameMS Sans Serif
Font.Style PixelsPerInch`
TextHeight TSynEditSynEdit1Left Top Width?Height?AlignalClientFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameCourier New
Font.Style TabOrder Gutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclBlackGutter.Font.HeightGutter.Font.NameCourier NewGutter.Font.Pitch
fpVariableGutter.Font.Style Highlighter
SynURISyn1Lines.StringsJThis project demonstrates how to use SynURIOpener to make links clickable. @Under Windows (also CLX when running Windows) this is very easy.'For a Linux demo open URLDemoLinux.dpr. -Simply assign two properties of SynURIOpener:6- Editor-property must be set to your SynEdit/SynMemo.H- URIHighlighter-property should be assigned an instance of a SynURISyn. GDon't forget to set also SynEdit's Highlighter-property to a SynURISyn.That's all! NOTE:>By default you have to press CTRL to make the links clickable.AIf you don't like that, set CtrlActivatesLinks-property to false.  Some test links:----------------8(not all real ones, just to check if correct app starts) http://www.somewhere.org&ftp://superhost.org/downloads/gems.zipwww.w3c.orgmailto:big@lebowski.edudouglas@adams.lodnews:comp.lang.pascal.borland   TSynURIOpenerSynURIOpener1EditorSynEdit1URIHighlighter
SynURISyn1LeftxTop(  
TSynURISyn
SynURISyn1LeftxTop   