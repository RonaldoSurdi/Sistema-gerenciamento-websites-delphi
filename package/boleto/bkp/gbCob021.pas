unit gbCob021;

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
   CodigoBanco = '021';
   NomeBanco = 'BANESTES';

type

   TgbBanco021 = class(TPersistent)
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

function DigitosChaveASBACE(ChaveASBACESemDigito : string) : string;
{Calcula os 2 d�gitos usados na CHAVE ASBACE - C�digo usado por bancos estaduais}
var
   Digito1, Digito2 : integer;

   function CalcularDigito1(ChaveASBACESemDigito : string) : integer;
   {
    Calcula o primeiro d�gito.
    O c�lculo � parecido com o da rotina Modulo10. Por�m, n�o faz diferen�a o
    n�mero de d�gitos de cada subproduto.
    Se o resultado da opera��o for 0 (ZERO) o d�gito ser� 0 (ZERO). Caso contr�rio,
    o d�gito ser� igual a 10 - Resultado.
   }
   var
      Auxiliar, Soma, Contador, Peso, Digito1 : integer;
   begin
      Soma := 0;
      Peso := 2;
      for Contador := Length(ChaveASBACESemDigito) downto 1 do
      begin
         Auxiliar := (StrToInt(ChaveASBACESemDigito[Contador]) * Peso);
         if Auxiliar > 9 then
            Auxiliar := Auxiliar - 9;
         Soma := Soma + Auxiliar;
         if Peso = 1 then
            Peso := 2
         else
            Peso := 1;
      end;

      Digito1 := Soma mod 10;
      if (Digito1 = 0) then
         Result := Digito1
      else
         Result := 10 - Digito1;
   end;

   function CalcularDigito2(ChaveASBACESemDigito : string; var Digito1 : integer) : integer;
   {Calcula o segundo d�gito}
   var
      Digito2 : integer;
      ChaveASBACEComDigito1 : string;
   begin
      ChaveASBACEComDigito1 := ChaveASBACESemDigito + IntToStr(Digito1);
      Digito2 := StrToInt(Modulo11(ChaveASBACEComDigito1,7,true));
      {Se d�gito2 = 1, deve-se incrementar o d�gito1 e recalcular o d�gito2}
      if Digito2 = 1 then
      begin
         Digito1 := Digito1 + 1;
         {Se, ap�s incrementar o d�gito1, ele ficar maior que 9, deve-se
          substitu�-lo por 0}
         if Digito1 > 9 then
            Digito1 := 0;
         Digito2 := CalcularDigito2(ChaveASBACESemDigito, Digito1);
      end
      else if Digito2 > 1 then
      begin
         Digito2 := 11 - Digito2;
      end;

      Result := Digito2;
   end;

begin
   Digito1 := CalcularDigito1(ChaveASBACESemDigito);
   Digito2 := CalcularDigito2(ChaveASBACESemDigito, Digito1);

   Result := IntToStr(Digito1) + IntToStr(Digito2);
end;


function TgbBanco021.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TgbBanco021.CalcularDigitoNossoNumero(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,8,false,'0');
   ADigitoNossoNumero := Modulo11(ANossoNumero,9);
   ADigitoNossoNumero := Modulo11(ANossoNumero + ADigitoNossoNumero,10);

   Result := ADigitoNossoNumero;
end;

function TgbBanco021.GetCampoLivreCodigoBarra(ATitulo: TgbTitulo) : string;
var
   ANossoNumero,
   ANumeroConta,
   ACampoLivre: string;
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
      ANossoNumero := Formatar(NossoNumero,8,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,11,false,'0');
   end;
   ACampoLivre := ANossoNumero + ANumeroConta + '2' + '021';

   Result := ACampoLivre + DigitosChaveASBACE(ACampoLivre);
end;

procedure TgbBanco021.FormatarBoleto(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(Cedente.CodigoCedente,11,false,'0') + '-' + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,8,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,1,false,'0');
      AEspecieDocumento := '';
   end;
end;

{$IFNDEF VER120}

function TgbBanco021.GerarRemessa(var ACobranca: TgbCobranca; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('01REMESSA01'+Formatar('COBRANCA',15)+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,10,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+Formatar('',9)+Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,8,true,' ')+Formatar('',7)+FormatDateTime('ddmmyy',DataArquivo)+Formatar('',294)+'000001');

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,10,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1);
         Registro := Registro + Formatar('',9,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].DigitoNossoNumero,2,false,'0');
         Registro := Registro + Formatar('',10,true,' ');
         Registro := Registro + Formatar('',6,true,' ');
         Registro := Registro + Formatar('',2,false,'0');
         Registro := Registro + Formatar('',2,false,'0');
         Registro := Registro + Formatar('',15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1,false,'0');
         Registro := Registro + '01';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10,true,' ');
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
         Registro := Registro + '000';
         Registro := Registro + FormatCurr('0000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar('',5,false,'0');
         Registro := Registro + '05';
         Registro := Registro + 'N';
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);
         Registro := Registro + '00009';
         Registro := Registro + Formatar(' ',12,false,'0');
         Registro := Registro + Formatar(' ',6);
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes.Text,40);
         Registro := Registro + '000';
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+Formatar('',393,true,' ')+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
   end;

   Result := TRUE;
end;

function TgbBanco021.LerRetorno(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

         {Ver se o arquivo � mesmo RETORNO DE COBRAN�A}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a');

         { L� registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este n�o � um retorno de cobran�a do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));
         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],101,7)));
         
         {L� os registros DETALHE}
         {Processa at� o pen�ltimo registro porque o �ltimo cont�m apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro � 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {N�o processa o registro atual}

            { Ler t�tulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do t�tulo}
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

               Cedente.CodigoCedente := Copy(Retorno.Strings[NumeroRegistro],18,11);
               Cedente.ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],18,11);
               {Nosso n�mero SEM D�GITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,8);
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
               ValorOutrasDespesas := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],189,13))/100;

            end; {with ATitulo}

            {Insere o t�tulo}
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
RegisterClass(TgbBanco021);

end.
