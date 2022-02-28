unit gbCob347;

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
   CodigoBanco = '347';
   NomeBanco = 'SUDAMERIS';

type

   TgbBanco347 = class(TPersistent)
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


function TgbBanco347.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco347.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ACarteira := Formatar(ATitulo.Carteira,2,false,'0');
   ANossoNumero := Formatar(ATitulo.NossoNumero,6,false,'0');
   ADigitoNossoNumero := Modulo11(ACarteira + ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco347.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
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
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente,8,false,'0');
      ANossoNumero := Formatar(NossoNumero,9,false,'0');
   end;

   Result := ACodigoAgencia + ACodigoCedente + ANossoNumero + '00000';
end;

procedure TgbBanco347.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '.' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,10,false,'0') + '.' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,2);
      case EspecieDocumento of
         edDuplicataMercantil           : AEspecieDocumento := '01';
         edDuplicataMercantialIndicacao : AEspecieDocumento := '01';
         edDuplicataServico             : AEspecieDocumento := '08';
         edDuplicataServicoIndicacao    : AEspecieDocumento := '08';
         edNotaSeguro                   : AEspecieDocumento := '03';
         edRecibo                       : AEspecieDocumento := '05'
      else
         AEspecieDocumento := '';
      end;
   end;
end;


{$IFNDEF VER120}

function TgbBanco347.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Geração de arquivo remessa não está disponível para o banco %s - %s',[CodigoBanco,NomeBanco]);
end;

function TgbBanco347.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Processamento de arquivo remessa não está disponível para o banco %s - %s',[CodigoBanco,NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco347);

end.
