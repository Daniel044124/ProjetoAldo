Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Aldo Henrique
// Descri��o   : Projeto
// Autor(a)    : Guilherme Peixoto
// Data atual  : 14/04/2018
Var
   // Se��o de Declara��es das vari�veis
   op:inteiro //aqui � a op��o da pessoa, de 1 at� 7
   //quest�o 1,2 e 3:
   num1,num2:inteiro //os dois n�meros digitados pelo usu�rio
   sub,soma:inteiro //a soma ou a subtra��o dos dois n�meros
   divi:real // a divis�o dos dois n�meros
   //quest�o4:
   pessoa:inteiro //o n�mero de pessoas que ser� contado
   ContP:inteiro  //serve para armazenar o n�mero de pessoas, j� que ir� ser diminuido at� ter 0, e precisar� desse n�mero para fazer a m�dia
   idade:inteiro  //idade digitada
   Cont_idade:inteiro //idade total de todas as pessoas(independente do sexo) feito para fazer a m�dia
   idadeF,ContF:inteiro // a idade do povo do sexo feminino, e a idade total de todos do sexo feminino
   idadeM,ContM:inteiro // a idade do povo do sexo masculino, e a idade total de todos do sexo masculino
   media,MediaF,MediaM:real //todas as m�dias, tanto do sexo feminino, quanto do masculino, quanto o total
   sexo:caracter //o sexo de cada pessoa
   //quest�o 5
   num:inteiro  //n�mero digitado pelo usu�rio
   cont:inteiro //quantas vezes ele foi mod=0, para verificar se � primo
   k,l:inteiro  //servem de contadores, para o "para" entrar em loop
   somaP:inteiro //soma dos n�meros primos
   //Quest�o 6 parte 1(funcionamento do programa, repita etc):
   casos:inteiro //quantas vezes ele ir� usar
   opcao:caracter//Se ele deseja transformar de bin�rio para decimal, ou decimal para bin�rio
   Limp_tela:caracter //apenas visual
   //Quest�o 6 parte 2(de decimal para bin�rio):
   binario:caracter //Bin�rio tem que ser feito como caracter, porque se for inteiro, ou real, ele ir� somar os n�meros
   binario1 : caracter //No meu codigo, sem essa parte, ele buga, e soma os n�meros bin�rios
   numero_inteiro:inteiro //aqui ser� o n�mero dado pelo usu�rio
   Copia_num_int: inteiro// aqui servir� para informar ao usu�rio qual foi o n�mero que ele digitou
   //Quest�o 6 parte 3(de bin�rio para decimal):
   bin:vetor[1..8] de inteiro // usei vetor aqui, para n gerar muitos n�meros
   j:inteiro // isso daqui funcionar� como um contador para utilizar repeti��o
   a,b,c,d,f,g,h,i:inteiro //isso daqui foi usado como valores do calculo bin�rio, de acordo com a sequencia que ele est�
   b1,b2,b3,b4,b5,b6,b7,b8:inteiro //Essa parte daqui, n�o � muito precisa estar aqui, ela � somente utlilizada para o usu�rio ver quais os n�meros ele digitou
   decimal:inteiro //aqui entrar� o n�mero final
Inicio
   op<-0
   enquanto op<>7 faca
      // Se��o de Comandos, procedimento, fun��es, operadores, etc...
      escreval("Escolha uma op��o")//aqui o usu�rio ir� informar uma op��o
      escreval("1- Soma ") //op��o 1, ir� executar a soma de dois n�meros
      escreval("2- subtra��o")//op��o 2, ir� executar a subtra��o de dois numeros
      escreval("3- divis�o")//op��o 3, ir� executar a divis�o de dois n�meros
      escreval("4- Faixa Et�ria")//op��o 4 ir� mostrar a m�dia da idade de quantas pessoas ele informar
      escreval("5- N�meros primos")//op��o 5, ir� mostrar os n�meros proximos de 1 at� o que ele digitou
      escreval("6- Mudan�a de Base")//op��o 6, o usu�rio ir� falar quantas vezes ele ir� querer trocar a base, e ser� dado um n�mero em bin�rio ou em decimal, e o programa, ir� transformar de um para outro
      escreval("7- Sair")//op��o 7 fecha o programa
      leia (Op)
      se (op=1) entao //aqui ser� somado dois n�meros
         escreval("Digite os n�meros a ser somados") //o usu�rio ir� informar os n�meros que ele deseja somar
         leia(num1,num2)
         soma<-num1+num2
         limpatela
         escreval("A resposta da Soma �:",soma)//aqui mostrar� o resultado
      senao
         se (op=2) entao //aqui ser� subtraido dois n�meros
            escreval("Digite os n�meros a ser subtraido") //aqui o usu�rio ir� informar os n�meros que ele quer subtrair
            leia(num1,num2)
            sub<-num1-num2
            limpatela
            escreval("O resultado da subtra��o �",sub)//aqui mostrar� o resultado da subtra��o
         senao
            se (op=3) entao//aqui ser� dividido dois n�meros
               escreval("Digite os n�meros a ser divididos")//o usu�rio ir� informar os n�meros que ser�o divididos
               leia(num1,num2)
               divi<-(num1/num2)
               limpatela
               escreval("O resultado da divis�o �",divi)//aqui mostrar� o resultado da divis�o
            senao
               se (op=4) entao
                  escreval("Quantas pessoas voc� quer calcular a m�dia") //aqui o usu�rio informa o n�mero de pessoas que ele quer calcular a m�dia
                  leia(pessoa)
                  ContP<-pessoa
                  repita
                     escreval("Digite a idade") //aqui o usu�rio informa a idade da pessoa
                     leia(idade)
                     Cont_idade<-idade+Cont_idade //aqui vai para a conta total da idade das pessoas
                     escreval("Digite o sexo")    //aqui o usu�rio informa o sexo do usu�rio
                     escreval("M-Masculino")
                     escreval("F-Feminino")
                     leia(sexo)
                     //aqui se o sexo da pessoa for masculino, ela ir� ser contada, para verificar a m�dia da idade das pessoas do sexo masculino
                     se (sexo="M") entao
                        IdadeM<-Idade+IdadeM
                        ContM<-ContM+1
                        MediaM<-IdadeM/ContM
                     senao
                        //aqui se o sexo da pessoa for feminino, ela ir� ser contada, para verificar a m�dia da idade das pessoas do sexo feminino
                        se (sexo="F") entao
                           idadeF<-idade+IdadeF
                           ContF<-contF+1
                           MediaF<-IdadeF/ContF
                        senao
                           //isso � mais para visual do programa, se a pessoa digitar algum sexo diferente de masculino, ou feminino, ir� aparecer na tela, para ele digitar novamente outro sexo
                           //mesmos c�digos atr�s
                           se ((sexo<>"M") e (sexo<>"F")) entao
                              repita
                                 escreval("Informe novamente o sexo")
                                 escreval("M-Masculino")
                                 escreval("F-Feminino")
                                 leia(sexo)
                                 se (sexo="m") entao
                                    IdadeM<-Idade+IdadeM
                                    ContM<-ContM+1
                                    MediaM<-IdadeM/ContM
                                 senao
                                    se (sexo="f") entao
                                       idadeF<-idade+IdadeF
                                       ContF<-contF+1
                                       MediaF<-IdadeF/ContF
                                    fimse
                                 fimse
                              ate ((sexo="F") ou (sexo="M"))//s� ir� parar de aparecer a mensagem, quando o usu�rio, digitar um sexo que seja Masculino, ou Feminino
                           fimse
                        fimse
                     fimse
                     Pessoa<- Pessoa-1 //isso serve de contador, para o programa executar, at� acabar o n�mero de pessoas
                     limpatela //para evitar polui��o na tela
                  ate (pessoa=0)
                  Media<-Cont_idade/ContP
                  limpatela
                  se (mediaF=0) entao //isso serve al�m de como visual, mas tamb�m serve para o programa n�o fechar caso n�o tenha pessoas de um sexo, pois o programa trava quando voce divide algum n�mero com zero
                     escreval("N�o possui pessoas do sexo feminino")
                  senao
                     escreval("A m�dia das idades femininas �",mediaF) //aqui o programa informar� a m�dia da idade das pessoas do sexo feminino
                  fimse
                  escreval("A m�dia das idades �:",media)
                  se (mediaM=0) entao //o mesmo serve do sexo femino, serve para aqui.
                     escreval("N�o possui pessoas do sexo masculino")
                  senao
                     escreval("A m�dia das idades masculinas �",mediaM)  //aqui o programa informar� a m�dia da idade das pessoas do sexo masculino
                  fimse
               fimse
               se (op=5) entao
                  // Se��o de Comandos, procedimento, fun��es, operadores, etc...
                  escreval("Informe at� qual valor voce quer procurar n�meros primos")  //aqui o usu�rio informa at� qual n�mero ele quer procurar os n�meros primos
                  leia(num)
                  para k de 1 ate num faca //aqui ele � feito para criar um loop e zerar o contador(QTD_mod) e o cont1
                     cont<-0  //coloca aqui fora do proximo loop, para ele zerar sempre que for verificado se o n�mero � primo
                     para l de 1 ate k faca //aqui � verificado se o n�mero � primo ou n�o
                        se (k mod l = 0) entao
                           Cont:=Cont+1
                           //cada vez que o n�mero for mod=0(n�o h� resto) � somado, e depois � verificado quantas vezes ele foi mod0
                        fimse
                     fimpara
                     se (Cont=2) entao //aqui � visto quantas vezes ele foi mod 0, pois, se ele foi mod0, significa q s� foi por ele mesmo, e por 1.
                        somaP<-k+somaP//aqui fica a soma dos n�meros primos
                     fimse
                  fimpara
                  limpatela
                  escreval("A soma de todos os n�meros primos �:",somaP)//aqui � colocado na tela a soma dos n�meros primos
               senao
                  se op=6 entao
                     escreval("Informe quantos casos voc� quer fazer")
                     leia(casos)
                     se casos<=0 entao
                        repita
                           escreval("Informe um n�mero de casos correto que seja maior que zero")
                           leia(casos)
                        ate casos>0
                     fimse
                     repita
                        escreval("Qual opera��o deseja fazer?")
                        escreval("D Para transformar de decimal para Binario")
                        escreval("B para transformar de bin�rio para decimal")
                        leia(opcao)
                        se (opcao="D") entao
                           escreval("escreva um n�mero inteiro")
                           leia(Numero_inteiro)
                           Copia_num_int <- Numero_inteiro //o n�mero inteiro, ser� dividido, entao coloquei uma outra v�riavel para pegar o n�mero dele, e n�o ficar 0 no final
                           repita   //ele ir� repetir at� que o n�mero que est� sendo dividido, seja igual a 0
                              //aqui ele n�o ir� somar o 0 e 1, porque a variavel est� como caracter
                              //ele ir� colocar 0 ou 1 pra cada divis�o, e ir� escrever em cima
                              se (numero_inteiro mod 2) = 0 entao
                                 binario <- "0" + binario
                              senao
                                 binario <- "1" + binario
                              fimse
                              Numero_inteiro <- Numero_inteiro div 2
                           ate Numero_inteiro=0
                           limpatela
                           escreval("O n�mero inteiro:",Copia_num_int, " vira ",binario, " em bin�rio")
                        fimse
                        binario<-binario1
                        se (opcao="B") entao
                           a<-1   //aqui � a primeira linha do calculo bin�rio
                           b<-2   //aqui � a segunda linha do calculo bin�rio
                           c<-4   //aqui � a terceira linha do calculo bin�rio
                           d<-8   //aqui � a quarta linha do calculo bin�rio
                           f<-16  //aqui � a quinta linha do calculo bin�rio
                           g<-32  //aqui � a sexta linha  do calculo bin�rio
                           h<-64  //aqui � a setima linha do calculo bin�rio
                           i<-128 //aqui � a oitava linha do calculo bin�rio
                           para j de 1 ate 8 passo 1 faca
                              escreval("digite o bit, (voc� est� na sequencia",j," de 8)") //aqui o usu�rio digitar� os n�meros binarios, com o programa falando para ele em qual linha ele est�
                              leia(bin[j])
                              se (bin[j]<>0) e (bin[j]<>1) entao //aqui, eu coloquei isso, porque um n�mero bin�rio n�o pode ser diferente de 0 ou 1, ent�o o programa pedir� para ele escrever outro n�mero
                                 repita //ele ir� repetir o "digite novamente..." at� q ele digite 0 ou 1
                                    escreval("digite novamente outro n�mero")
                                    leia(bin[j]) //aqui ele ler� o n�mero como se fosse l� em cima normalmente, assim o usu�rio n�o sair� prejudicado
                                 ate (bin[j]=0) ou (bin[j]=1)
                              fimse
                              //n�o precisei colocar um caso se o usu�rio digitar 0, porque ele funciona sem isso de qualquer jeito, porque o programa n�o aceita outro n�mero que n�o seja 0, e se ele n�o digitar 1, � 0, entao o programa j� n�o faz nada
                              //explicando um, ser� explicado o de todos, ent�o...
                              //da forma que eu fiz, ele ir� anotar o n�mero naquela linha, ent�o ser� multiplicado os n�meros da regra bin�ria feita l� em cima, com base na sequencia que ele est�
                              //e esses b(1 at� 8) serve para armazenar o n�mero que foi digitado, para deixar mais facil a vizualiza��o final
                              se (bin[1]=1) entao
                                 b1<-bin[1]
                                 bin[1]<-bin[1]*a
                              fimse
                              se (bin[2]=1) entao
                                 b2<-bin[2]
                                 bin[2]<-bin[2]*b
                              fimse
                              se (bin[3]=1) entao
                                 b3<-bin[3]
                                 bin[3]<-bin[3]*c
                              fimse
                              se (bin[4]=1) entao
                                 b4<-bin[4]
                                 bin[4]<-bin[4]*d
                              fimse
                              se (bin[5]=1) entao
                                 b5<-bin[5]
                                 bin[5]<-bin[5]*f
                              fimse
                              se (bin[6]=1) entao
                                 b6<-bin[6]
                                 bin[6]<-bin[6]*g
                              fimse
                              se (bin[7]=1) entao
                                 b7<-bin[7]
                                 bin[7]<-bin[7]*h
                              fimse
                              se (bin[8]=1) entao
                                 b8<-bin[8]
                                 bin[8]<-bin[8]*i
                              fimse
                           fimpara
                           decimal<-bin[1]+bin[2]+bin[3]+bin[4]+bin[5]+bin[6]+bin[7]+bin[8]//aqui � utilizado o calculo, para saber o n�mero bin�rio
                           limpatela
                           escreva("o n�mero em bin�rio",b1,b2,b3,b4,b5,b6,b7,b8)//aqui informa o n�mero que o usu�rio informou em bin�rio
                           escreva(" vira",decimal," em decimal") //e aqui informa o resultado em decimal
                           escreval() //apenas para pular linha
                        fimse
                        casos:=casos-1  //para ir diminuindo o n�mero de casos, at� finalizar com 0
                     ate (casos=0)
                  senao
                     se op=7 entao
                        escreval("Finalizando")
                     senao
                        se ((op>7) ou (op<=0)) entao
                           limpatela
                           escreval("Op��o inv�lida")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      //Eu fiz isso daqui, porque sen�o a quest�o 4 buga se vc entrar nela mais de uma vez, e fica somando a m�dia a cada vez que voce faz ela novamente
      //E isso daqui n�o funcionava nem no come�o do repita, nem quando o usu�rio entrava na op��o 4
      cont_idade<-0
      MediaM<-0
      MediaF<-0
      SomaP<-0
   fimenquanto
Fimalgoritmo