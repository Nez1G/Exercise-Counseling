%Executado automaticamente quando o Prolog executa este ficheiro:
:- dynamic(fact/1), %Definir fact como dinamico
[backward, forward, proof, bc, planos]. %Carregar todos os sistemas de inferência e base de conhecimento

% Interface inicial que faz perguntas mais direcionadas ao utilizador em si
inicio:-
write_ln(
"______________________________________________________
______________________________________________________
                                               
                                             
           Seja bem vindo ao assistente de          
          aconselhamento de atividade fisica     
                                                                 
             De forma a conhecê-lo(a) melhor          
                 diga-nos o seu nome   

                 Clique 0. para sair               
                                                
______________________________________________________
______________________________________________________"),
  nl,
  read(Nome),
  ((Nome == 0), halt;
  adicionarFacto(Nome)),
 write_ln(
"______________________________________________________
______________________________________________________
                                                
                                                                     
                    Qual é o seu sexo?               

                   Clique 0. para sair
                                                  
______________________________________________________
______________________________________________________"),
  nl,
  read(Sexo),
  ((Sexo == 0), halt;
  adicionarFacto(Sexo)),
   write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                                   
                    Qual é a sua idade?              

                    Clique 0. para sair                      
                                                   
______________________________________________________
______________________________________________________"),
  nl,
  read(Idade),
  (
  (Idade == 0),  halt;
  (Idade < 10) -> adicionarFacto(crianca);
  (Idade < 18) -> adicionarFacto(jovem);
  (Idade =< 65) -> adicionarFacto(adulto);
  (Idade > 65) -> adicionarFacto(idoso)),
  write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                                   
                 Qual é o seu peso (em kg)?            

                    Clique 0. para sair                         
                                                
______________________________________________________
______________________________________________________"),
  nl,
  read(Peso),
  ((Peso == 0),  halt;
  adicionarFacto(Peso)),
   write_ln(
"______________________________________________________
______________________________________________________
                                                 
                                                                    
               Qual é a sua altura (em cm)?  

                  Clique 0. para sair                               
                                                 
______________________________________________________
______________________________________________________"),
  nl,
  read(Altura),
  ((Altura == 0), halt;
  adicionarFacto(Altura)),
  write_ln(
"______________________________________________________
______________________________________________________
                                                 
                                                                    
            Possui algum problema de saude?         
                                                 
                    1. Cardíaco                      
                 2. Arteriosclerose                
                    3. Pulmonar                       
          4. Metabolico (Tiroide, Renal ou Hepatica)    
                    5. Diabetes                      
                    6. Nenhum      

                  Clique 0. para sair                   
                                                 
_______________________________________________________
_______________________________________________________"),
  read(ProblemasSaude),
  (
  (ProblemasSaude == 0), halt;
	(ProblemasSaude == 1) -> adicionarFacto(cardiaco);
	(ProblemasSaude == 2) -> adicionarFacto(arteriosclerose);
	(ProblemasSaude == 3) -> adicionarFacto(pulmonar);
  (ProblemasSaude == 4) -> adicionarFacto(metabolico);
  (ProblemasSaude == 5) -> adicionarFacto(diabetes);
  (ProblemasSaude == 6) -> adicionarFacto(nenhum);
  (ProblemasSaude > 6) -> 
  write('Selecionou uma opcao errada!'), 
  nl,
  write('Selecione uma opcao valida')),
	nl,
  calcularIMC(Peso, Altura),
  pd.
  %adicionarFacto(calcularIMG(calcularIMC(Peso, Altura, Nome),Idade,Sexo)).

%Selecionar objetivo pessoal
pd :-
 write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                  
    Qual o seu objetivo? Selecione o que pretende:  
                                                  
                 1. Perda de Peso                       
                   2. Bem Estar                           
              3. Ganhar Massa Muscular               
                4. Interesse Pessoal  

                Clique 0. para sair                  
                                                  
______________________________________________________
______________________________________________________"), 
	
 read(Pratica),
 (
     (Pratica == 0), halt;
     (Pratica == 1), assert(fact(perda_de_peso)), a;
     (Pratica == 2), assert(fact(bem_estar)), a;
     (Pratica == 3), assert(fact(ganhar_massa_muscular)), a;
     (Pratica == 4), assert(fact(interesse_pessoal)), a;
     (Pratica > 4), write('Selecionou uma opcao errada!'), nl,
                    nl,
                    write('Escolha Uma opcao valida:'), nl,
     pd; 
     halt
 ).
	   
%Selecionar se pretende fazer atividade fisica individual ou coletiva
a :- 
  write_ln(
"______________________________________________________
______________________________________________________
                                                 
                                                  
                                                 
           Tem preferência por alguma atividade        
            desportiva coletiva ou individual?         
                                                
                     1. Individual                          
                     2. Coletivo                            
                                                  
                    Clique 0. para sair                        
                                                  
______________________________________________________
______________________________________________________"),    
    read(O),
(		
    (O == 0), halt;
    (O == 1), assert(fact(individual)), i;
    (O == 2), assert(fact(coletivo)), i;
		(O == 3), assert(fact(sem_preferencia)), i;
		(O > 2), write('Selecionou uma opcao errada!'), nl,
                 nl,
                 write('Selecione uma opcao valida:'), nl,
     a; 
     halt
).

%Selecionar Tipo de Pratica Desportiva (indoor/outdoor)
i :-
 write_ln(
"______________________________________________________
______________________________________________________

                                                  
        Tem preferência por uma atividade indoor        
                     ou outdoor?                       
                                                 
                      1. Indoor                              
                      2. Outdoor                            

                      Clique 0. para sair                     
                                                  
______________________________________________________
______________________________________________________"), 
	
 read(TipoPratica),
 (
     (TipoPratica == 0), halt;
     (TipoPratica == 1), assert(fact(indoor)), dias;
     (TipoPratica == 2), assert(fact(outdoor)), dias;
     (TipoPratica == 3), assert(fact(sem_preferencia)), dias;
     (TipoPratica > 2), write('Selecionou uma opcao errada!'), nl,
                    nl,
                    write('Escolha Uma opcao valida:'), nl,
     i; 
     halt
     ).

%Selecionar quantos dias pretende praticar a atividade por semana
dias :-
 write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                 
          Quantos dias quer praticar por semana?        
              Selecione o que pretende:               
                                                  
                    1. De 1-2 dias                      
                    2. De 2-3 dias                      
                    3. De 3-4 dias                      
                    4. Mais de 4 dias   
                    
                    Clique 0. para sair                
                                                 
______________________________________________________
______________________________________________________"), 

 read(Disponibilidade),
 (
     (Disponibilidade == 0), halt;
     (Disponibilidade == 1), assert(fact(disp1)), horas;
     (Disponibilidade == 2), assert(fact(disp2)), horas;
     (Disponibilidade == 3), assert(fact(disp3)), horas;
     (Disponibilidade == 4), assert(fact(disp4)), horas;
     (Disponibilidade > 4), write('Selecionou uma opcao errada!'), nl,
                            nl,
                            write('Selecione uma opcao valida'), nl,
     dias;
     halt
 ). 

%Selecionar quantas horas que praticar por sessão
horas :-
write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                  
          Quantas horas quer praticar por dia?          
              Selecione o que pretende:               
                                                  
              1. De 30 minutos a 1 hora           
              2. De 1 hora a 2 horas              
              3. De 2 horas a 3 horas             
              4. Mais de 4 horas    

              Clique 0. para sair               
                                                  
______________________________________________________
______________________________________________________"), 

 read(Horas),
 (
     (Horas == 0), halt;
     (Horas == 1), assert(fact(hora1)), custo;
     (Horas == 2), assert(fact(hora2)), custo;
     (Horas == 3), assert(fact(hora3)), custo;
     (Horas == 4), assert(fact(hora4)), custo;
     (Horas > 4), write('Selecionou uma opcao errada!'), nl,
                  nl,
                  write('Selecione uma opcao valida'), nl,
     horas;
     halt
 ).  

%Selecionar se pretende pagar, ou não, pelas atividades
custo :-
 write_ln(
"______________________________________________________
______________________________________________________
                                                 
                                                  
          Está disposta a dispender dinheiro
                 nas suas atividades?   

                        1. Sim
                        2. Não
                                                  
______________________________________________________
______________________________________________________"), 
read(Custo),
(	
  (Custo == 1), assert(fact(gratuito)), fimPrograma;
  (Custo < 10), assert(fact(pago)), fimPrograma;
  (Custo < 0), write('Selecionou um valor nao permitido!'), nl,
                  nl,
                  write('Selecione um valor valido'), nl,
     custo;
     halt
).

%Fim do programa de aconselhamento da prática desportiva, é possível aqui ver o plano gerado automaticamente pelo nosso sistema, reiniciar o sistema e fazer um novo plano ou sair do programa.
fimPrograma :- 
  write(
"__________________________________________________
__________________________________________________
 


          Chegou ao fim do nosso questionario 
       

         As suas respostas contribuiram para que 
           fosse feito um plano indicado para si

                           Muito Obrigado!

                 1. Ver o seu plano
                 3. Reiniciar
 
 
                      Clique 0. para sair 


__________________________________________________
__________________________________________________"),nl,nl,
	read(Fim),
		(
		(Fim == 0), escreveFicheiro, apagaFactos, halt;
	    (Fim == 1), nl, 
      write('Tendo em conta a sua resposta, estas são as nossas dicas e recomendações de práticas desportivas:'), nl,
       forward, escreveFicheiro, apagaFactos; 
        (Fim == 2), reiniciar
		).	

%Listar todos os exercicios de um plano
exerciciosPlano(X,Y) :- plano(X,_,Y).

% Adiciona factos
adicionarFacto(Facto):-
    assert(fact(Facto)).

% Escreve todos os factos num ficheiro
%Codigo da net (stackoverflow - https://stackoverflow.com/questions/18674731/prolog-how-to-write-all-prolog-answers-to-txt-file)
escreveFicheiro :-
open('/Users/andre/Desktop/projetoSBC/Parte1/output.txt', append, Stream),
write(Stream, 'Estas são as informações relativas a um dos nossos utilizadores:'),
nl,
forall(fact(X), write(Stream,X)),
nl,
write(Stream,'____________________________________________________________'),
nl,
close(Stream).

%Adiciona Utilizador
adicionarUtilizador(X,Y):-
	assert(utilizador(X,Y)).

% Imprime a base de dados
mostrarInformacoes:-
	nl,
	forall(fact(P),
	writeln(P)),
	nl.

% Reinicia o programa
reiniciar:-
	retractall(fact(_)), 
    inicio. 

% Apaga todos os factos
apagaFactos:-
  retractall(fact(_)).

% Calcula o Indice de Massa Corporal. Formula: peso / (altura * altura)
calcularIMC(Peso, Altura):-
  X is (Peso / (Altura * Altura))*10000,
  ( X =< 18.5 ->
      adicionarFacto(X), adicionarFacto(peso_baixo);
	( X =< 25 ->
    	 adicionarFacto(X), adicionarFacto(peso_normal);
		( X =< 30 ->
      		adicionarFacto(X), adicionarFacto(excesso_peso);           
			( X =< 35 ->
      			adicionarFacto(X), adicionarFacto(obesidade_grau_I);
				( X =< 40 ->
      				adicionarFacto(X), adicionarFacto(obesidade_grau_II);
					( X =< 50 ->
      					adicionarFacto(X), adicionarFacto(obesidade_grau_III);
      					adicionarFacto(X), adicionarFacto(obesidade_morbida))))))).

% Calcula o Indice de Massa Gorda
%calcularIMG(Peso, Altura ,Idade, Sexo):-
 % (Sexo == 'm' -> Z is 1)
  %((1.20 * (Peso / (Altura * Altura))*10000)) + (0.23 * Idade) - (10.8 * Z) - 5.4.

% Seleciona o metodo de inferencia
selecionarMetodo :-
 write_ln(
"______________________________________________________
______________________________________________________
                                                  
                                                 
        Selecione o metodo que pretende utilizar                       
                                                  
                    1. Forward                     
                    2. Proof                      
                    3. Backward 
                    4. Sair                                    
                                                 
______________________________________________________
______________________________________________________"), 
	read(Metodo),
	(
	Metodo == 1 -> forward;
	Metodo == 2 -> proof(P),writeln(P);
	Metodo == 3 -> backward,nl;
  Metodo == 4 -> halt);
	nl,
	writeln('Selecionou uma operacao invalida'),
  selecionarMetodo;
	halt.

%Sistemas de inferência
  backward(X):- demo(X).

  forward:- demo.

  proof(X,P):- demo(X,P).

%Inicia o nosso programa automaticamente sem ser necessario o recurso a comandos extra
:- inicio.
