unit gbCob275;

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
   CodigoBanco = '275';
   NomeBanco = 'Banco Real S.A.';

type

   TgbBanco275 = class(TPersistent)
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


function TgbBanco275.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco275.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ACodigoAgencia,
   ANumeroConta,
   ANossoNumero,
   ADigitoNossoNumero: string;
begin
   Result := '0';

   with ATitulo do
   begin
      ANossoNumero := Formatar(NossoNumero,15,false,'0');
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0');
   end;
   ADigitoNossoNumero := Modulo10(ANossoNumero + ACodigoAgencia + ANumeroConta);

   Result := ADigitoNossoNumero;
end;

function TgbBanco275.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ACodigoAgencia,
   ANumeroConta,
   ADigitoConta: string;
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
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0');
      ADigitoConta := Formatar(Cedente.ContaBancaria.DigitoConta,1,false,'0');
      ANossoNumero := Formatar(NossoNumero,13,false,'0');
   end;

   Result := ACodigoAgencia + ANumeroConta + ADigitoConta + ANossoNumero;
end;

procedure TgbBanco275.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0') + '-' + Cedente.ContaBancaria.DigitoConta;
      ANossoNumero := Formatar(NossoNumero,15,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,1,false,'0');
      AEspecieDocumento := '';      
   end;
end;

{$IFNDEF VER120}

function TgbBanco275.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro: integer;
   ValorTotal: Currency;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   ValorTotal := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      if LayoutArquivo <> laCNAB400 then
        Raise Exception.Create('CNAB400 é o único layout de cobrança disponível para o banco ' + CodigoBanco + ' - ' + NomeBanco);

      { GERAR REGISTRO-HEADER DA REMESSA }
      Remessa.Add('0'+Formatar('1REMESSA01COBRANCA',25) + '0' + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0')+'0'+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0')+Formatar('',7)+Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,15,true,' ')+FormatDateTime('ddmmyy',DataArquivo)+'01600BPI'+Formatar('',286)+'000001');

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '01';
            tiPessoaJuridica: ACedenteTipoInscricao := '02';
            tiOutro         : ACedenteTipoInscricao := '03';
         end;
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '01';
            tiPessoaJuridica: ASacadoTipoInscricao := '02';
            tiOutro         : ASacadoTipoInscricao := '03';
         end;

         Registro := '1';

         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0');
         if Formatar(ACedenteTipoInscricao,2,false,'0') = '01'then
           Registro := Registro + Copy(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,1,9) + '000' + Copy(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,10,2)
         else
           Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0');

         Registro := Registro + '0';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
         Registro := Registro + '0';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0');
         Registro := Registro + Formatar('',7,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' ');
         Registro := Registro + '00';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,7,false,'0');
         Registro := Registro + '0000';
         Registro := Registro + Formatar('',13,false,'0');
         Registro := Registro + Formatar('',7);
         Registro := Registro + Formatar('',9,false,'0');
         Registro := Registro + Formatar('',3);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1,false,'0');

         case Titulos[NumeroRegistro].TipoOcorrencia of
           toRemessaRegistrar                 : Registro := Registro + '01';
           toRemessaBaixar                    : Registro := Registro + '02';
           toRemessaConcederAbatimento        : Registro := Registro + '04';
           toRemessaCancelarAbatimento        : Registro := Registro + '05';
           toRemessaConcederDesconto          : Registro := Registro + '17';
           toRemessaAlterarVencimento         : Registro := Registro + '06';
           toRemessaProtestar                 : Registro := Registro + '09';
           toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
           toRemessaAlterarNumeroControle     : Registro := Registro + '07'
         else
           Raise Exception.Create('Ocorrência de remessa inválida ou não disponível para o banco ' + CodigoBanco + ' - ' + NomeBanco);
         end; {case TipoOcorrencia}

         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10);
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar('',5,false,'0');

         case Titulos[NumeroRegistro].EspecieDocumento of
           edDuplicataMercantil           : Registro := Registro + '01';
           edDuplicataMercantialIndicacao : Registro := Registro + '01';
           edDuplicataRural               : Registro := Registro + '01';
           edDuplicataServico             : Registro := Registro + '08';
           edDuplicataServicoIndicacao    : Registro := Registro + '08';
           edNotaPromissoria              : Registro := Registro + '02';
           edNotaPromissoriaRural         : Registro := Registro + '02';
           edNotaSeguro                   : Registro := Registro + '03';
           edRecibo                       : Registro := Registro + '05';
         else
           Registro := Registro + '99'; {Outras espécies não previstas}
         end;

         if Titulos[NumeroRegistro].AceiteDocumento = adSim then
           Registro := Registro + 'A'
         else
           Registro := Registro + 'N';

         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);

         if DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento) > 3 then
           Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2)
         else
           Registro := Registro + '00';

         Registro := Registro + Formatar(' ',2);
         Registro := Registro + '0';
         Registro := Registro + Formatar(IntToStr(Round(Titulos[NumeroRegistro].ValorMoraJuros * 100)),12,false,'0');

         if Titulos[NumeroRegistro].DataDesconto <> 0 then
           Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto)
         else
           Registro := Registro + '999999';

         Registro := Registro + Formatar(IntToStr(Round(Titulos[NumeroRegistro].ValorMoraJuros * 100)),13,false,'0');
         Registro := Registro + Formatar(IntToStr(Round(Titulos[NumeroRegistro].ValorIOF * 100)),13,false,'0');
         Registro := Registro + Formatar(IntToStr(Round(Titulos[NumeroRegistro].ValorAbatimento * 100)),13,false,'0');

         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
         if Formatar(ASacadoTipoInscricao,2,false,'0') = '01'then
           Registro := Registro + Copy(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,1,9) + '000' + Copy(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,10,2)
         else
           Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');

         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         Registro := Registro + Formatar('',40);
         Registro := Registro + '0'; {0 - Valores informados em reais / 1 - Quantidade de moeda}
         Registro := Registro + '07'; {Tipo de moeda: 07 - Real}
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');

         Remessa.Add(Registro);
         ValorTotal := ValorTotal + Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }
      Remessa.Add('9'+Formatar(IntToStr(Titulos.Count),6,false,'0')+FormatCurr('0000000000000',ValorTotal * 100)+Formatar('',374,true,' ')+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));

   end; {with ACobranca}

   Result := TRUE;
end;

function TgbBanco275.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao : string;
   NumeroRegistro : integer;
   ATitulo : TgbTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TgbTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));
         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,8)));

         {Lê os registros DETALHE}
         {Processa até o penúltimo registro porque o último contém apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro é 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {Não processa o registro atual}

            { Ler títulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do título}
               with Cedente do
               begin
                  ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
                  if ATipoInscricao = '01' then
                     TipoInscricao := tiPessoaFisica
                  else if ATipoInscricao = '02' then
                     TipoInscricao := tiPessoaJuridica
                  else
                     TipoInscricao := tiOutro;
                  NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],4,14);
                  ContaBancaria.Banco.Codigo := ACodigoBanco;
                  Nome := ANomeCedente;
               end; {with ACedente}

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               SeuNumero := '';
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],45,15);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],19,4);
               Cedente.ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],24,7);
               Cedente.CodigoCedente := Cedente.ContaBancaria.NumeroConta;
               Carteira := Copy(Retorno.Strings[NumeroRegistro],108,1);
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],300,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)));

            end; {with ATitulo}

            {Insere o título}
            Titulos.Add(ATitulo);
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;

{$ENDIF}

initialization
RegisterClass(TgbBanco275);

end.
