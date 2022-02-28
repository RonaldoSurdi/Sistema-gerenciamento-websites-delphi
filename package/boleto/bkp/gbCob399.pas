unit gbCob399;

interface

uses
   classes, SysUtils, gbCobranca
   {$IFDEF VER150}
      , Variants, MaskUtils, contnrs, DateUtils
   {$ELSEIF VER140}
      , Variants, MaskUtils, contnrs, DateUtils
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$IFEND}
   ;

const
   CodigoBanco = '399';
   NomeBanco = 'HSBC';

type

   TgbBanco399 = class(TPersistent)
   published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation


function TgbBanco399.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco399.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoCedente,
   ADataVencimento,
   ADigitoNossoNumero, ADigitoNossoNumero1 : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,13,false,'0');
   ACodigoCedente := Formatar(ATitulo.Cedente.CodigoCedente,7,false,'0');
   ADigitoNossoNumero1 := Modulo11(ANossoNumero,9);
   if ATitulo.DataVencimento <> 0  then
   begin
      ADataVencimento := FormatDateTime('ddmmyy',ATitulo.DataVencimento);
      ADigitoNossoNumero := Modulo11(IntToStr(StrToInt(ANossoNumero + ADigitoNossoNumero1 + '4') + StrToInt(ACodigoCedente) + StrToInt(ADataVencimento)));
      ADigitoNossoNumero := ADigitoNossoNumero1 + '4' + ADigitoNossoNumero;
   end
   else
   begin
      ADigitoNossoNumero := Modulo11(IntToStr(StrToInt(ANossoNumero + ADigitoNossoNumero1 + '5') + StrToInt(ACodigoCedente)));
      ADigitoNossoNumero := ADigitoNossoNumero1 + '5' + ADigitoNossoNumero;
   end;
   Result := ADigitoNossoNumero;
end;

function TgbBanco399.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ADiaDoAno,
   AUltimoDigitoDoAno,
   ADataVencimentoJuliano,
   ANossoNumero,
   ACodigoCedente: string;
begin

   {
    A primeira parte do c�digo de barras ser� calculada automaticamente.
    Ela � composta por:
    C�digo do banco (3 posi��es)
    C�digo da moeda = 9 (1 posi��o)
    D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
    Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
    Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

    A segunda parte do c�digo de barras � um campo livre, que varia de acordo
    com o banco. Esse campo livre ser� calculado por esta fun��o (que voc� dever�
    alterar de acordo com as informa��es fornecidas pelo banco).
   }

   {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACodigoCedente := Formatar(Cedente.CodigoCedente,7,false,'0');
      ANossoNumero := Formatar(NossoNumero,13,false,'0');
      {
       O preenchimento da data de vencimento em formato juliano, somente deve
       ser feito, se e somente se, para tipo identificador "4" e com retorno
       dos 3 d�gitos no arquivo magn�tico e demonstrativo de liquida��o
       (condi��o cadastral).

       Data de vencimento informada atrav�s de m�s juliano.  Exemplo:
       -  001  -  corresponde a 01 de janeiro
       -  042  -  corresponde a 11 de fevereiro

       A �ltima posi��o dessas deve ser utilizada para representar o ano. Exemplo:
       -  0 a 7  -  corresponde: 2000 a 2007
       -  8 e 9  -  corresponde: 1998 e 1999

       Para o tipo identificador 5 ou tipo de identificador 4 sem o retorno dos
       3 d�gitos, a data de vencimento no formato juliano deve ser zerada (0000).
      }
//      ADataVencimentoJuliano := Formatar( IntToStr(1 + Trunc(Now - EncodeDate(StrToInt(FormatDateTime('yyyy',Now)),1,1))) + FormatDateTime('y',Now) ,4,false,'0');
      if DataVencimento = 0 then
         ADataVencimentoJuliano := '0000'
      else
      begin
          ADiaDoAno := Formatar(IntToStr(Trunc(DataVencimento - EncodeDate(StrToInt(FormatDateTime('yyyy',DataVencimento))-1,12,31))),3,false,'0');
          AUltimoDigitoDoAno := FormatDateTime('y',DataVencimento);
          ADataVencimentoJuliano := ADiaDoAno + AUltimoDigitoDoAno;
      end;
   end;

   Result := ACodigoCedente + ANossoNumero + ADataVencimentoJuliano + '2';
end;

procedure TgbBanco399.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente;
      ANossoNumero := Formatar(NossoNumero,13,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco399.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   Result := FALSE;
   Raise Exception.CreateFmt('Gera��o de arquivo remessa n�o est� dispon�vel para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

function TgbBanco399.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Result := FALSE;
   Raise Exception.CreateFmt('Processamento de arquivo retorno n�o est� dispon�vel para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco399);

end.
