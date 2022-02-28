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
      function  GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
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
    A primeira parte do código de barras será calculada automaticamente.
    Ela é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco. Esse campo livre será calculado por esta função (que você deverá
    alterar de acordo com as informações fornecidas pelo banco).
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACodigoCedente := Formatar(Cedente.CodigoCedente,7,false,'0');
      ANossoNumero := Formatar(NossoNumero,13,false,'0');
      {
       O preenchimento da data de vencimento em formato juliano, somente deve
       ser feito, se e somente se, para tipo identificador "4" e com retorno
       dos 3 dígitos no arquivo magnético e demonstrativo de liquidação
       (condição cadastral).

       Data de vencimento informada através de mês juliano.  Exemplo:
       -  001  -  corresponde a 01 de janeiro
       -  042  -  corresponde a 11 de fevereiro

       A última posição dessas deve ser utilizada para representar o ano. Exemplo:
       -  0 a 7  -  corresponde: 2000 a 2007
       -  8 e 9  -  corresponde: 1998 e 1999

       Para o tipo identificador 5 ou tipo de identificador 4 sem o retorno dos
       3 dígitos, a data de vencimento no formato juliano deve ser zerada (0000).
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
   Raise Exception.CreateFmt('Geração de arquivo remessa não está disponível para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

function TgbBanco399.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Result := FALSE;
   Raise Exception.CreateFmt('Processamento de arquivo retorno não está disponível para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco399);

end.
