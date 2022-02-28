unit spBinaSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,ExtCtrls, spBina,IniFiles, Mask, ComCtrls;

type
  TFormConfig = class(TForm)
    Temporizador: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label7: TLabel;
    Combo2: TComboBox;
    ListBox1: TListBox;
    Memo2: TMemo;
    Combo3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button5: TButton;
    Label4: TLabel;
    Button6: TButton;
    Combo4: TComboBox;
    Label9: TLabel;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    memo3: TMemo;
    Button7: TButton;
    Button10: TButton;
    Panel2: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    MaskEdit1: TMaskEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    SPB: TspBina;
    GroupBox4: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure SPBDTMF(Sender: TObject; Count: Integer);
    procedure TemporizadorTimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure Combo4Change(Sender: TObject);
    procedure Combo3Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Combo2Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
     cmdAT, Detectado, tempo, estagio, reg,
     varDetectInicio, varDetectFinal, varOcupado,
     varOk, varErro,varRing :  integer;
     texto,cmdResult, tipo, chave, Fcls,
     vDDD, fone, mascara, ModemTipo,class8,class80,setado, cmdTipo : string;
     cmd : array[0..6] of string ;
    { Public declarations }
  end;

var
  FormConfig: TFormConfig;

implementation



{$R *.DFM}

procedure TFormConfig.Combo3Change(Sender: TObject);
var
rPorta, rDDD: string;
begin
 if SPB.Conectado then
    SPB.Close;

 rPorta := Combo2.text;
 rDDD   :=Combo3.Text; //Setup=nao, Ativar=nao, Deastivar=nao, Setar porta e DDD
 SPB.ShowATComandSetup(false,     false,      false,         rPorta,rDDD) ;

 SPB.Porta := rPorta;
 SPB.DDDLocal:= rDDD;

 if SPB.Conectado = false then
    begin
      SPB.Open;
      Button3.Enabled := true;
      Button3.Click;
    end;

 vDDD := rDDD;
 Button1.Enabled := true;

end;


procedure TFormConfig.Button3Click(Sender: TObject);
var
i : integer;
begin
 for i := 0 to 6 do
     cmd[i] := '';

 temporizador.enabled := false;
 Button1.Enabled := false;
 Button3.Enabled := true;
 ModemTipo := Combo4.Text;
 cmdAT := 0;
 reg  := 0;
 estagio := 0;
 fone  := '';
 texto := '';

 Edit1.clear;
 Edit2.clear;
 MaskEdit1.clear;
 MaskEdit1.EditMask := '';
 tempo := 0;
 Button1.Enabled := true;

 memo1.Font.Style := [];
 memo1.Font.Color := clBlue;
 Listbox1.ItemIndex := 0;
 if SPB.Conectado then
    begin
      if cmdResult <> 'ERRO' then
        memo1.Clear;
      SPB.WriteDTMF('+++ATH0'+#13);
      memo1.Lines.Add('******************************');
      memo1.Lines.Add('SuperBina Desativado!');
      memo1.Lines.Add('******************************');
    end;
 SPB.Close;
end;

// Leitura da PORTA
procedure TFormConfig.SPBDTMF(Sender: TObject; Count: Integer);
var
s, digito : string;
i : integer;

{NOTA --->
   Dependendo do tipo de COMANDOS AT EXTENDIDOS para a CLASSE 8,
   poderá ser detectado nesta rotina:
   - Tom de Ocupado
   - Tom de linha
   - Ring
   - DTMF ('0..9','# e *' .
  <--- }
begin
  // Lê o o evento na COM
  SPB.LeiaDTMF(s,count);

  texto := texto+s;
  digito:= trim(digito)+trim(s);
  if trim(s) <> 't' then //Em alguns modems, ao invéz de VCON, vem a letra 't';
     Memo1.text := memo1.text+s;

  //Ver se o Modem Suporta as Classses 8 (ou 80), fundamental para o spBina
  if estagio = 3 then
     SPB.PesquiseClasse(s);

  varOk      := POS('OK',texto);   // Localiza posição do OK
  varErro    := POS('ERROR',texto);// Localiza posição do ERROR
  varOcupado := POS('b',texto);    // Localiza posição do BUSY (sem o resistor)

  if varOk      > 0 then cmdResult := 'OK';
  if varErro    > 0 then cmdResult := 'ERRO';
  if varOcupado > 0 then cmdResult := 'ERRO';

  if (Detectado=2) and (trim(s)='RING') then
      varRing := 1; // Controle de Reativamento...

 // DETECTAR O INICIO... CARACTER 'A'
  if estagio = 4  then begin // Se estiver ativado e aguardando
     varDetectInicio := POS('A',texto); // Localiza posição de Inicial "A"

     if varDetectInicio > 0 then
        begin
         Detectado := 1; // caracter inicial encontado
         fone := fone+S;
        end;
     if Detectado = 1 then // se 'Detectado' for 1, já iniciou,
        begin

          varDetectFinal    := POS('C',texto); // Localiza posição de Final "C"
          if varDetectFinal = 0 then // não achou "C" ?, então procure "D" ...
             varDetectFinal := POS('D',texto); // Localiza posição de Final "D"

           if varDetectFinal = 0 then // não achou "D" ?, então procure "#" ...
              varDetectFinal := POS('#',texto); // Localiza posição de Final "#"

           if varDetectFinal = 0 then // não achou "#" ?, então procure "*" ...
              varDetectFinal := POS('*',texto); // Localiza posição de Final "*"

           if varDetectFinal > 0 then

              begin
                MaskEdit1.EditMask :='';
                Edit1.Text     := '';
                Edit2.Text     := '';
                MaskEdit1.text := '';

                vDDD := combo3.Text;
                texto := trim(fone);

                SPB.FormateResultado(texto,mascara,tipo,vDDD,fone);

                MaskEdit1.EditMask := mascara;
                Edit1.Text     := tipo;
                Edit2.Text     := vDDD;
                MaskEdit1.text := fone;
                Button3.Enabled := true;

                if CheckBox1.Checked = false then
                   begin
                     //Seta variaveis para a Reativação após o
                     // telefone ser atendido
                     estagio  := 0;
                     tempo    := 0;
                     Detectado:= 2; // Numero Detectado
                     varRing  := 0;

                     //Libera campainha do telefone
                     memo1.clear;
                     memo1.Lines.Add('******************************');
                     memo1.Lines.Add('SuperBina Desativado');
                     memo1.Lines.Add('******************************'+#13);
                     SPB.WriteDTMF('+++ATH0'+#13); //Hangup
                     PageControl1.ActivePage := TabSheet3;
                   end
                else
                   begin
                     memo3.lines.add('RING'); //melhor tocar Wave
                   end;
              end;
         end;
     end;
{
*************************************************************************
NO BLOCO ABAIXO...
Teste Local e Detector de tecla digitada: (Muito solicitado)
  -
  - Se o SuperBina estiver ativado, retire o fone (extensão) do gancho
    e digite algumas teclas. As teclas digitadas irão aparecendo
    na tela (não conseguí fazê-lo funcionar em placas OnBoard, porem, funcionou
    em vários modens em placas comuns, desde que trabalhem na Classe 8).

Também:
  - Após Detectar uma chamada, você poderá solicitar ao seu
    interlocutor que digite qualquer tecla, esta também será identificada
    na tela.

Quando usar:
   - Se você possuir dois modens instalados, poderá usar um para o spBina e
     o outro para um atendimento automático. Basta configurar um para cada porta
     e colocar o resistor apenas para o modem em que o bina está instalado.
E ainda:
   - Criar um temporizador (Ttimer) para controlar o intervalo de tempo sem digitação
     no teclado do telefone. Exemplo: 10 segundos sem digitar nada = Usuário
     terminou de completar a digitação de um número de telefone;
     Acão: Inicie contagem de segundos; guarde número digitado.
Nota:
   - Na próxima correção do spBina, colocarei uma nova função: 'DetectSilencio'.
     Com isto, poderemos marcar o tempo de início e fim de uma chamada efetuada.

     /// INICIO DO BLOCO DE TESTE }
     if estagio = 5  then  begin
         memo3.lines.add(trim(s));
         vDDD := combo3.Text;
         PageControl1.ActivePage := TabSheet3;
         fone := fone+s;
         texto:=  fone;

         //Formata resultado
         SPB.FormateResultado(texto,mascara,tipo,vDDD,fone);

         MaskEdit1.EditMask := mascara;
         Edit1.Text     := tipo;
         Edit2.Text     := vDDD;
         MaskEdit1.text := fone;
         Button3.Enabled := true;

          //Mostra a TabSheet3
         PageControl1.ActivePage := TabSheet3;

         // Verifica se contém núneros e/ou os caracteres # e *
         //Mostra Todos os dígitos, incluindo: 'A','C'.
         digito := trim(digito);
          for i := 1 to length(digito) do
             begin
                Label5.Caption := digito[i];
                //Verifica Tecla Digitada

                if      digito[i] = '0' then
                //Comandos de ação para Digito 0
                else if digito[i] = '1' then
                //Comandos de ação para Digito 1
                else if digito[i] = '2' then
                //Comandos de ação para Digito 2
                else if digito[i] = '3' then
                //Comandos de ação para Digito 3
                else if digito[i] = '4' then
                //Comandos de ação para Digito 4
                else if digito[i] = '5' then
                //Comandos de ação para Digito 5
                else if digito[i] = '6' then
                //Comandos de ação para Digito 6
                else if digito[i] = '7' then
                //Comandos de ação para Digito 7
                else if digito[i] = '8' then
                //Comandos de ação para Digito 8
                else if digito[i] = '9' then
                //Comandos de ação para Digito 9
                else if digito[i] = '#' then
                //Comandos de ação para Digito #
                else if digito[i] = '*' then
                //Comandos de ação para Digito *
             end;
        end;
        //FIM DO BLOCO DE TESTE }
        //********************************************************************

  { --->>> NOTA:
   Os caracteres ATUAIS de finalização são :'C', 'D', '#' e '*'.
   E para a inicializaçao, só temos o caracter 'A'. Qualquer caracter
   que venha LOGO APÓS o 'A', é interpretado como o 'Tipo' do Telefone Chamador,
   podendo variar de '1' até '7' dependendo dos critérios usados pela prestadora
   Local. Entenda-se por Tipo: Telefone Público; comercial; residencial; celular;
   chamada a cobrar ... etc.

   Atualmente, este ponto, (após o 'A'), Além de as empresas usarem para especificar
   o Tipo, está reservado para a colocação de um string contendo:
   "Tipo; Nome; Endereço do Assinante do Telefone Chamador",  conforme aparece
   na lista telefônica. Como uma espécie de imitação do 'Caller ID' Americano(?).

   QUAL LETRA minha prestadora usa para INICIAR O DTMF?
   - Atualmente, no Sistema de BINA no Brasil, somente a letra "A" é usada.
     (Dica: Na Configuração do spBina (neste form), faça o seguinte:
            Após pressionar o botão 'Iniciar', e com todas as respostas 'OK' e com
            o CheckBox1 (Habilitar Recepção DTMF...) Habilitado, peça à alguém
            que disque para o seu número. Ao receber a chamada, antes do toque,
            você verá os caracteres  'entrando' pela Porta COM. Exemplo:
            A  = Inicio (fixado em "A")
            1  = Tipo   (de 1 a 7, descubra o que significa cada um em sua região)
            1  = DDD    (se a chamada for de outra àrea, ou outra CPA(*) )
            7  = DDD    ("        "         "        "            "  (*) )
            2  = Fone   (1º dígito)
            3  = Fone   (2º dígito)
            9  = Fone   (3º dígito)
            6  = Fone   (4º dígito)
            1  = Fone   (5º dígito)
            7  = Fone   (6º dígito)
            1  = Fone   (7º dígito)
            C  = Final  (pode variar: "C","D","#" ou "*")

            O que resultaria: 1 (17) 239-6171 (sem a formatação)
            (*) CPA = Central de Processamento Automático.

            Note que o primeiro caracter é a letra 'A', se não
            for, basta mudar a procura de posiçao:  POS('A',texto). Onde a letra
            'A' deverá ser substituída pela PRIMEIRA letra que entrou pela Porta COM.

 }

end;

procedure TFormConfig.TemporizadorTimer(Sender: TObject);
var
s : string;
i,x : integer;
begin

 inc(tempo);

 //Sem o resistor, ERRO
 if (estagio =4) and (varOcupado > 0) then begin
     memo1.clear;
     memo1.Font.Color := clRed;
     memo1.Font.Style := [];
     SPB.ClearBuffer(true,true);
     memo1.Lines.add('A Chave não está na posição BINA, ou o RESISTOR '+
                     'não está presente!'+#13);
        memo1.Lines.add('Aguarde... desativando...'+#13+#10);
    Button3.Click;
  end;

  // 1º estágio Ativar normal
 if (tempo  > 1) and (estagio = 1) then  begin
   if (varOk > 0) or (varErro = 0 ) then
      begin
        varOk := 0;
        texto := '';
        inc(cmdAT);
        if cmdAT <= listBox1.items.count-1  then
           begin
             listBox1.ItemIndex := cmdAT;
             s:=listbox1.items.Strings[cmdAT];
             chave := s;
             if trim(s) <>'' then begin
                s:=s+#13;
                SPB.WriteDTMF(s);
                tempo := 1;
             end;
           end
        else
           begin
             if tempo = 6 then begin
                memo1.Lines.Add('******************************');
                memo1.Lines.Add('SuperBina Ativado');
                memo1.Lines.Add('******************************'+#13);
                estagio := 4;
                tempo := 0;
                reg :=2;
             end;
           end;
      end;
 end; // fim 1º Estágio

//Salva definicoes dos comandos AT aceitos
 if (estagio = 4) and (tempo=3) and (reg=2) then begin
     SPB.SalvarComandos;
     reg := 0;
 end;
 
 //Ativar com Teste Local
 if (tempo  > 1) and (estagio = 2) then  begin
   if (varOk > 0) or (varErro = 0 ) then
      begin
        varOk := 0;
        texto := '';
        inc(cmdAT);
        if cmdAT <= listBox1.items.count-1  then
           begin
             listBox1.ItemIndex := cmdAT;
             s:=listbox1.items.Strings[cmdAT];
             if trim(s) <>'' then begin
                s:=s+#13;
                SPB.WriteDTMF(s);
                tempo := 1;
             end;
           end
        else
           begin
             if tempo = 5 then begin
                memo1.Lines.Add('******************************');
                memo1.Lines.Add('SuperBina Ativado');
                memo1.Lines.Add('Aguardando Tecla...');
                memo1.Lines.Add('******************************');
                estagio := 5;  // Seta estagio 5, mostrar página de teste
              end;
           end;
      end;
 end; // fim 2º estágio

      // 3º Estágio, insersão de comandos ATI para obter respostas do modem
 if (tempo  > 1) and (estagio = 3) then  begin
   if (varOk > 0) or (varErro = 0 ) then
      begin
        varOk := 0;
        texto := '';
        inc(cmdAT);
        if cmdAT <= listBox1.items.count-1  then
           begin
             listBox1.ItemIndex := cmdAT;
             s:=listbox1.items.Strings[cmdAT];
             if trim(s) <>'' then begin
                s:=s+#13;
                SPB.WriteDTMF(s);
                tempo := 1;
             end;
           end
        else
           begin
             if tempo = 5 then begin
                class8:='Nao';
                Class80:='Nao';
                memo1.Lines.Add('*********************************');
                memo1.Lines.Add(' Resultado dos Comandos ATI');
                memo1.Lines.Add('Data: '+DateTimeToStr(Date)+
                                '  Hora: '+TimeToStr(Time));
               if CheckBox2.Checked then
                   class8 := 'Sim';
                if CheckBox3.Checked then
                   class80:= 'Sim';
                //Remove 'OK' do string para salvar no .INI
                for i := 0 to Memo1.Lines.Count do begin
                    s := memo1.Lines.Strings[i];
                    x := POS('OK',s);
                    while Pos('OK', s) > 0 do
                          Delete(s,x,2);
                    memo1.Lines.Strings[i] := trim(s);
                end;
                ListBox1.items.clear;
                // Salva resultados de pesquisa de classes
                SPB.SetarClasse8(ExtractFilePath(Application.ExeName)+
                'ComandAT.ini',class8,class80);
                estagio := 0;
                Combo4.ItemIndex := 0;
                Combo4Change(Self);
              end;
           end;
      end;
 end; // fim 3º estágio

 //Inicio do Bloco: Verificar se o telefone parou de tocar para Reativar
 if (tempo > 1) and (estagio=0) and (Detectado=2)then
    begin
    //Se tocou, zera varRing e o tempo
    if varRing = 1 then
       begin
        varRing:= 0;
        tempo  := 0;
       end;

    // Espera por 5 segundos, se varRing ainda estiver zerada...
    if (tempo > 6) and (varRing = 0) then
       begin
         Button1.Click; //...Reativa SuperBina.
         tempo := 0;
      end;

  end;
 //Fim: Verificar se o telefone parou de tocar para Reativar


 //Zerar para não causar estouro na variável 'tempo'.
 if tempo = 60 then
    tempo:= 0;


end;

procedure TFormConfig.Button4Click(Sender: TObject);
begin
  memo1.clear;
  cmdAT := 0;
  tempo := 0;

  memo1.Font.Style := [];
  memo1.Font.Color := clBlue;
  listbox1.ItemIndex := 0;
  if SPB.Conectado then
      SPB.WriteDTMF('+++ATH0'+#13);
  SPB.Close;
  close;

end;

procedure TFormConfig.Button1Click(Sender: TObject);
var
s : string;
begin

 Button1.Enabled := false;
 Button3.Enabled := true;
 ModemTipo := Combo4.Text;
 Detectado:=0;
 memo1.clear;
 reg  := 0;
 fone  := '';
 texto := '';
 mascara:='';
 Edit1.clear;
 Edit2.clear;
 MaskEdit1.clear;
 MaskEdit1.EditMask := '';

 if SPB.Conectado = false then begin
    SPB.Porta    := Combo2.Text;
    SPB.DDDLocal := Combo3.text;
    SPB.Open;
 end;
estagio := 1;
 if CheckBox1.Checked then
    estagio := 2; //

 if (ModemTipo = 'ATI') or (trim(ModemTipo) = '') then begin
    CheckBox1.Checked := false;
    CheckBox1.Enabled := false;
    estagio := 3; //Enviar Comandos ATI
 end;

 cmdAT := 0;


 if listBox1.Items.Count >0 then begin
   s := Listbox1.Items.Strings[cmdAT];
   chave := s;
   if SPB.Conectado then begin
      s:=s+#13;
      SPB.WriteDTMF(s);
      tempo := 0;
      temporizador.Enabled := true;
   end;
 end;

end;
procedure TFormConfig.Button5Click(Sender: TObject);
var
i : integer;
begin

 ModemTipo := Combo4.Text;

 memo2.clear;
 ListBox1.Clear;

 //Carregar o arquivo dos Comandos AT para edição.
 memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)
                          +'ComandAT.ini');

 //Carregar Comandos AT pre-definidos (ComandAT.ini)
 SPB.LoadComandosAT(ExtractFilePath(Application.ExeName)+
 'ComandAT.ini',ModemTipo,class8,class80,setado);


 //Preencher ListBox
 ListBox1.Clear;
  for i := 0 to 6 do
      listbox1.Items.Add(cmd[i]);

  listbox1.ItemIndex := 1;
  listbox1.ItemIndex := 0;

  //Setar a porta
  cmdAT := 0;

end;
procedure TFormConfig.Button2Click(Sender: TObject);
var
arqIni : string;
begin
 arqIni := ExtractFilePath(Application.ExeName)+'ComandAT.ini';
 memo2.Lines.SaveToFile(ArqIni);
 Button2.Enabled := false;
end;

procedure TFormConfig.Button6Click(Sender: TObject);
begin
PageControl1.ActivePage  := TabSheet1;
end;

procedure TFormConfig.Memo2Change(Sender: TObject);
begin
button2.enabled := true;
end;

procedure TFormConfig.Combo4Change(Sender: TObject);
var
 i : integer;
begin
 for i := 0 to 6 do
     cmd[i] := '';

 cmdTipo := Combo4.text;
 CheckBox1.Enabled := true;
 memo2.clear;
 ListBox1.Clear;
 Button1.Enabled := true;

 SPB.LoadComandosAT(ExtractFilePath(Application.ExeName)+
 'ComandAT.ini',cmdTipo,class8,class80,setado);


 Label3.Caption := 'Comandos AT ';

  if Combo4.Text ='ATI' then begin
     CheckBox1.Enabled := false;
     Label3.Caption := 'Comandos AT ';
  end;
  listbox1.ItemIndex := 1;
  listbox1.ItemIndex := 0;

end;

procedure TFormConfig.Button10Click(Sender: TObject);
begin
Memo3.clear;
Edit1.Clear;
Edit2.clear;
MaskEdit1.EditMask := '';
MasKedit1.Clear;
end;

procedure TFormConfig.Button7Click(Sender: TObject);
begin
 Memo3.clear;
 Edit1.Clear;
 Edit2.clear;
 MaskEdit1.EditMask := '';
 MasKedit1.Clear;
 fone:='';
 texto:='';
 tipo:='';
 PageControl1.ActivePage := TabSheet1;
end;

procedure TFormConfig.FormActivate(Sender: TObject);
begin
Combo4Change(Self);
Button1.Click;
end;

procedure TFormConfig.TabSheet2Show(Sender: TObject);
begin
Button5.Click;
end;

procedure TFormConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFormConfig.Combo2Change(Sender: TObject);
var
rPorta, rDDD: string;
begin
 if SPB.Conectado then
    SPB.Close;

 rPorta := Combo2.text;
 rDDD   :=Combo3.Text; //Setup=nao, Ativar=nao, Deastivar=nao, Setar porta e DDD
 SPB.ShowATComandSetup(false,     false,      false,         rPorta,rDDD) ;

 SPB.Porta := rPorta;
 SPB.DDDLocal:= rDDD;

 if SPB.Conectado = false then
    begin
      SPB.Open;
      Button3.Enabled := true;
      Button3.Click;
    end;

 vDDD := rDDD;
 Button1.Enabled := true;
end;

procedure TFormConfig.TabSheet1Show(Sender: TObject);
begin
 Combo4Change(self);
end;

end.



