unit gbCob038;

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
   CodigoBanco = '038';
   NomeBanco = 'BANESTADO';

type

   TgbBanco038 = class(TPersistent)
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


function TgbBanco038.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco038.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,11,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco038.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero,
   ACodigoAgencia,
   ANumeroConta,
   ADigitoConta: string;
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
      ANossoNumero := Formatar(NossoNumero,11,false,'0');
      ADigitoNossoNumero := Formatar(DigitoNossoNumero,1,false,'0');
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,6,false,'0');
      ADigitoConta := Formatar(Cedente.ContaBancaria.DigitoConta,1,false,'0');
   end;

   Result := '1' + ACodigoAgencia + ANumeroConta + ADigitoConta + ANossoNumero + ADigitoNossoNumero + '00';
end;

procedure TgbBanco038.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0') + '/' + Formatar(Cedente.ContaBancaria.NumeroConta,6,false,'0') + '-'+ Cedente.ContaBancaria.DigitoConta;
      ANossoNumero := Formatar(NossoNumero,11,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco038.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Result := FALSE;
   Raise Exception.CreateFmt('Processamento de arquivo retorno n�o est� dispon�vel para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

function TgbBanco038.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   Result := FALSE;
   Raise Exception.CreateFmt('Gera��o de arquivo remessa n�o est� dispon�vel para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco038);

end.
