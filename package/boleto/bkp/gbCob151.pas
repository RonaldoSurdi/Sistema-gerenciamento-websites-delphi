unit gbCob151;

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
   CodigoBanco = '151';
   NomeBanco = 'Nossa Caixa';

type

   TgbBanco151 = class(TPersistent)
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


function TgbBanco151.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco151.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ACodigoAgencia,
   ANumeroConta,
   ADigitoConta,
   ANossoNumero,
   AComposicao,
   APesos: string;
   ASoma,
   AResto,
   AContador: integer;
begin
   Result := '0';

   ACodigoAgencia := Formatar(ATitulo.Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
   ANumeroConta   := Formatar(ATitulo.Cedente.ContaBancaria.NumeroConta,9,false,'0');
   ADigitoConta   := Formatar(ATitulo.Cedente.ContaBancaria.DigitoConta,1,false,'0');
   ANossoNumero   := Formatar(ATitulo.NossoNumero,9,false,'0');
   AComposicao := ACodigoAgencia + ANumeroConta + ADigitoConta + ANossoNumero;
   {
    Multiplicar os algarismos da composição, iniciando da direita para a esquerda
    pelos pesos: 3, 7, 9, 1, com exceção do campo "Dígito da Conta", que deve ser
    multiplicado sempre por 1
   }
   APesos := '31973197319731319731973';

   ASoma := 0;
   for AContador := 1 to Length(AComposicao) do
      ASoma := ASoma + ( StrToInt(AComposicao[AContador]) * StrToInt(APesos[AContador]) );

   AResto := (ASoma mod 10);
   if AResto = 0 then
      Result := '0'
   else
      Result := IntToStr(10 - AResto);
end;

function TgbBanco151.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
begin
   Raise Exception.CreateFmt('Geração de boleto bancário não está disponível para o banco %s - %s',[CodigoBanco,NomeBanco]);
end;

procedure TgbBanco151.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '.' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,10,false,'0') + '.' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,2);
      case EspecieDocumento of
         edAluguel                      : AEspecieDocumento := 'AL';
         edApoliceSeguro                : AEspecieDocumento := 'AP';
         edContribuicaoConfederativa    : AEspecieDocumento := 'CC';
         edDuplicataMercantil           : AEspecieDocumento := 'DM';
         edDuplicataRural               : AEspecieDocumento := 'DR';
         edDuplicataServico             : AEspecieDocumento := 'DS';
         edFatura                       : AEspecieDocumento := 'FT';
         edLetraCambio                  : AEspecieDocumento := 'LC';
         edNotaDebito                   : AEspecieDocumento := 'ND';
         edNotaPromissoria              : AEspecieDocumento := 'NP';
         edNotaPromissoriaRural         : AEspecieDocumento := 'NPR';
         edNotaSeguro                   : AEspecieDocumento := 'NS';
         edRecibo                       : AEspecieDocumento := 'RC';
         edTriplicataMercantil          : AEspecieDocumento := 'TM';
         edTriplicataServico            : AEspecieDocumento := 'TS'
      else
         AEspecieDocumento := '';
      end;
   end;
end;


{$IFNDEF VER120}

function TgbBanco151.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Geração de arquivo remessa não está disponível para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

function TgbBanco151.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Processamento de arquivo retorno não está disponível para o banco %s - %s',[CodigoBanco, NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco151);

end.
