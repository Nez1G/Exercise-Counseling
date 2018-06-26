% Simple forward chaining in Prolog

demo:-
new_derived_fact( P),!,% A new fact
write(''), write( P), nl,
assert( fact( P)),
demo. % Continue

demo:- write('Não foram encontradas mais informações relevantes para o seu caso'),nl,
write('Obrigado pela preferência na escolha dos nossos serviços.'),nl,
write('Volte sempre!'). % All facts derived

new_derived_fact( Concl) :-
if Cond then Concl, % A rule
\+ fact( Concl), % Rule is conclusion not yet a fact
composed_fact( Cond). % Condition true?
composed_fact( Cond) :-
fact( Cond). % Simple fact
composed_fact( Cond1 and Cond2) :-
composed_fact( Cond1),
composed_fact( Cond2). % Both conditions true
composed_fact( Cond1 or Cond2):-
composed_fact( Cond1);
composed_fact( Cond2).
