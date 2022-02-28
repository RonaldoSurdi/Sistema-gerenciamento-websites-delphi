unit gbCob479;

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
   CodigoBanco = '479';
   NomeBanco = 'Bank Boston';

type

   TgbBanco479 = class(TPersistent)
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


function TgbBanco479.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco479.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,8,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);

   Result := ADigitoNossoNumero;
end;

function TgbBanco479.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
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
      ACodigoCedente := Formatar(Cedente.CodigoCedente,9,false,'0');
      ANossoNumero := Formatar(NossoNumero,15,false,'0');
   end;

   Result := ACodigoCedente + ANossoNumero + '9';
end;

procedure TgbBanco479.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente + '-' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,14,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3);
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco479.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
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
      Remessa.Add('01REMESSA01'+Formatar('COBRANCA',15)+'001'+Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,8,false,'0')+Formatar('',9)+Formatar(Titulos[NumeroRegistro].Cedente.Nome,30)+'479'+Formatar('BANKBOSTON',15)+FormatDateTime('ddmmyy',DataArquivo)+'01600BPI'+Formatar('',91)+Formatar('',8,false,'0')+Formatar('',187)+'000001');

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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar('',20);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,9,false,'0');
         Registro := Registro + FormatCurr('000000000',Titulos[NumeroRegistro].ValorDesconto * 100);
         Registro := Registro + Formatar('',1);
         Registro := Registro + Formatar('R$',4);
         Registro := Registro + Formatar('',20);
         Registro := Registro + Formatar('3',1,false,'0');
         case Titulos[NumeroRegistro].TipoOcorrencia of
           toRemessaRegistrar : Registro := Registro + '01';
           toRemessaBaixar    : Registro := Registro + '02';
           toRemessaConcederAbatimento : Registro := Registro + '04';
           toRemessaCancelarAbatimento : Registro := Registro + '05';
           toRemessaAlterarVencimento  : Registro := Registro + '74';
           toRemessaAlterarNumeroControle : Registro := Registro + '08';
           toRemessaProtestar          : Registro := Registro + '09';
           toRemessaDispensarJuros     : Registro := Registro + '14';
           toRemessaCancelarInstrucaoProtesto : Registro := Registro + '18';
           toRemessaConcederDesconto   : Registro := Registro + '71';
           toRemessaCancelarDesconto   : Registro := Registro + '72'
         else
           Raise Exception.CreateFmt('Ocorrência não disponível para %s',[NomeBanco]);
         end;

         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10);
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar('',5,false,'0');
         case Titulos[NumeroRegistro].EspecieDocumento of
           edDuplicataMercantil : Registro := Registro + 'DM';
           edDuplicataServico   : Registro := Registro + 'DS';
           edMensalidadeEscolar : Registro := Registro + 'RE';
           edNotaSeguro         : Registro := Registro + 'NS';
           edRecibo             : Registro := Registro + 'RE';
           edNotaDebito         : Registro := Registro + 'ND';
         else
           Registro := Registro + 'OT'; {Outros}
         end;
         Registro := Registro + 'N';
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);
         Registro := Registro + '00';
         Registro := Registro + Formatar(' ',2);
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100);
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento+' - '+Titulos[NumeroRegistro].Sacado.Endereco.Bairro,37);
         Registro := Registro + Formatar('',12);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         Registro := Registro + Formatar('',40);
         Registro := Registro + Formatar('',3);
         Registro := Registro + '07';
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');

         Remessa.Add(Registro);
         ValorTotal := ValorTotal + Titulos[NumeroRegistro].ValorDocumento;
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+Formatar('',394)+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
   end;

   Result := TRUE;
end;

function TgbBanco479.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ACodigoCedente,
   ANomeCedente,
   ATipoOcorrencia,
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

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         ACodigoCedente := Copy(Retorno.Strings[NumeroRegistro],30,8);
         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],38,39));
         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],391,4)));

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

               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               case StrToInt(ATipoOcorrencia) of
                 02 : TipoOcorrencia := toRetornoRegistroConfirmado;
                 03 : TipoOcorrencia := toRetornoRegistroRecusado;
                 06 : TipoOcorrencia := toRetornoLiquidado;
                 09 : TipoOcorrencia := toRetornoBaixado;
                 10 : TipoOcorrencia := toRetornoComandoRecusado;
                 11 : TipoOcorrencia := toRetornoTituloEmSer;
                 13 : TipoOcorrencia := toRetornoVencimentoAlterado;
                 14 : TipoOcorrencia := toRetornoComandoRecusado;
                 15 : TipoOcorrencia := toRetornoProtestado;
                 16 : TipoOcorrencia := toRetornoComandoRecusado;
                 17 : TipoOcorrencia := toRetornoAbatimentoConcedido;
                 18 : TipoOcorrencia := toRetornoComandoRecusado;
                 19 : TipoOcorrencia := toRetornoProtestoSustado;
                 20 : TipoOcorrencia := toRetornoComandoRecusado;
                 21 : TipoOcorrencia := toRetornoComandoRecusado;
                 22 : TipoOcorrencia := toRetornoAbatimentoCancelado;
                 23 : TipoOcorrencia := toRetornoComandoRecusado;
                 24 : TipoOcorrencia := toRetornoLiquidadoEmCartorio;
                 25 : TipoOcorrencia := toRetornoDadosAlterados;
                 26 : TipoOcorrencia := toRetornoComandoRecusado;
//                 27 : TipoOcorrencia := toRetornoOutrasOcorrencias;
                 28 : TipoOcorrencia := toRetornoComandoRecusado;
                 29 : TipoOcorrencia := toRetornoLiquidadoParcialmente;
                 30 : TipoOcorrencia := toRetornoComandoRecusado;
                 31 : TipoOcorrencia := toRetornoJurosDispensados;
                 32 : TipoOcorrencia := toRetornoComandoRecusado;
                 33 : TipoOcorrencia := toRetornoEncaminhadoACartorio;
//                 34 : TipoOcorrencia := toRetornoOutrasOcorrencias;
                 36 : TipoOcorrencia := toRetornoDespesasProtesto;
//                 51 : TipoOcorrencia := toRetornoOutrasOcorrencias;
                 90 : TipoOcorrencia := toRetornoBaixado;
                 91 : TipoOcorrencia := toRetornoBaixaSolicitada;
                 92 : TipoOcorrencia := toRetornoBaixaPorProtesto;
               else
                 TipoOcorrencia := toRetornoOutrasOcorrencias;
               end;

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,9);
               Cedente.CodigoCedente := ACodigoCedente;
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],290,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],290,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],288,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],286,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],290,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],288,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],286,2)));

               Sacado.Nome := Copy(Retorno.Strings[NumeroRegistro],292,40);
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
RegisterClass(TgbBanco479);

end.
