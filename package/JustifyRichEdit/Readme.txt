Português:
----------

Este componente possui as seguintes limitações:

- Não faz a justificação em linhas isoladas - aplica-a ao parágrafo todo;

- Não consegue justificar texto pré-digitado no componente (digitado em tempo de design) através da propriedade Lines; somente textos carregados através do método LoadFromFile ou LoadFromStream. (textos digitados durante o uso também serão justificados corretamente);

- O sistema operacional deve estar atualizado para a biblioteca Rich32.DLL

Como usar:

- Para justificar, selecione o trecho de texto a ser justificado e chame o método: Justify

Exemplo:

   .
   .
   .
JustifyRichEdit1.Lines.LoadFromFile('c:\test.rtf');
JustifyRichEdit1.SelStart  := 0;
JustifyRichEdit1.SElLength := 20;
JustifyRichEdit1.Justify;
   .
   .
   .


(OBS: Para justificar o texto todo, basta chamar o método .Justify sem fazer nenhuma seleção)




********************************************************************************************

English:
--------

There are some limitations in this component:

- It doesn't make justifications in singles lines (only in Paragraphs)

- It doesn't make justifications in pre-typed text (usaing .Lines in Design-Time) - only using .LoadFromFile or .LoadFromStream. Texts typed in Run-Time are correctly justified.

- Tha System Operation must have Rich32.DLL updated

How use:

- To Justify, select the text which you want and call the method: .Justify

Exemple:

   .
   .
   .
JustifyRichEdit1.Lines.LoadFromFile('c:\test.rtf');
JustifyRichEdit1.SelStart  := 0;
JustifyRichEdit1.SElLength := 20;
JustifyRichEdit1.Justify;
   .
   .
   .


(PS: To justify all the text, only call the method .Justify without any selection)

**********************************************************************************************

Regards,


Roger Dias Barbosa

zyxel_br@hotmail.com
