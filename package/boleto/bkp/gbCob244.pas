unit gbCob244;

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
   CodigoBanco = '244';
   NomeBanco = 'Banco Cidade';

type

   TgbBanco244 = class(TPersistent)
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


function TgbBanco244.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco244.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,6,false,'0');
   ACodigoAgencia := Formatar(ATitulo.Cedente.ContaBancaria.NumeroConta,3,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,7);

   Result := ADigitoNossoNumero;
end;

function TgbBanco244.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ACodigoAgencia,
   ACodigoCedente,
   ACarteira: string;
begin
   Result := '';
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
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
      ACodigoCedente := Formatar(Cedente.CodigoCedente,6,false,'0') + Formatar(Cedente.DigitoCodigoCedente,1,false,'0');
      ACarteira      := Formatar(Carteira,2,false,'0');
      if ACarteira = '80' then
         Result := ACodigoAgencia + ACodigoCedente + ACarteira + Formatar(SeuNumero,13,false,'0')
      else
         Result := ACodigoAgencia + ACodigoCedente + ACarteira + Formatar(NossoNumero,9,false,'0') + Formatar(DigitoNossoNumero,1,false,'0') + '000';
   end;
end;

procedure TgbBanco244.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '.' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,10,false,'0') + '.' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,2);
      case EspecieDocumento of
         edDuplicataMercantil           : AEspecieDocumento := '01';
         edDuplicataMercantialIndicacao : AEspecieDocumento := '01';
         edDuplicataRural               : AEspecieDocumento := '01';
         edDuplicataServico             : AEspecieDocumento := '01';
         edDuplicataServicoIndicacao    : AEspecieDocumento := '01';
         edNotaPromissoria              : AEspecieDocumento := '02';
         edNotaPromissoriaRural         : AEspecieDocumento := '02';
         edNotaSeguro                   : AEspecieDocumento := '03';
         edRecibo                       : AEspecieDocumento := '05'
      else
         AEspecieDocumento := '';
      end;
   end;
end;


{$IFNDEF VER120}

function TgbBanco244.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Gera��o de arquivo remessa n�o est� dispon�vel para o banco %s - %s',[CodigoBanco,NomeBanco]);
end;

function TgbBanco244.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
begin
   Raise Exception.CreateFmt('Processamento de arquivo retorno n�o est� dispon�vel para o banco %s - %s',[CodigoBanco,NomeBanco]);
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco244);

end.
