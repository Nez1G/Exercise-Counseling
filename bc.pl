%IMC 
if peso_baixo then "Você tem o peso baixo, portanto necessita de fazer exercicio muscular".
if peso_normal then "Você tem o peso normal, portanto necessita de fazer exercicio muscular e cardiovascular".
if excesso_peso then "Você tem excesso de peso, portanto necessita de fazer exercicio cardiovascular".
if obesidade_grau_I then "Você tem obesidade grau I, portanto necessita de fazer exercicio cardiovascular".
if obesidade_grau_II then "Você tem obesidade grau II, portanto necessita de fazer exercicio cardiovascular".
if obesidade_grau_III then "Você tem obesidade grau III, portanto necessita de fazer exercicio cardiovascular".
if obesidade_morbida then "Você tem obesidade morbida, portanto necessita de fazer exercicio cardiovascular".

%Problemas de saude
if cardiaco then "Como você tem problemas cardíacos é aconselhável que não faça esforços exagerados".
if arteriosclerose then "Como você tem problemas de arteriosclerose é aconselhável que não faça exercícios com muita carga".
if pulmonar then "Como você tem problemas pulmonares é aconselhável que não faça exercicio cardiovascular muito intenso".
if metabolico then "Como você tem problemas metabolicos é aconselhável que não faça certos tipos de exercicios prejudiciais".
if diabetes then "Como você tem problemas de diabetes é aconselhável que não faça muitos esforços numa fase inicial".
if nenhum then "Como você não tem quaisquer problemas de saúde pode praticar todos os tipo de atividade".

%Práticas aconselhadas
if (crianca or jovem or adulto or idoso) and pago and indoor then cycling.
if (crianca or jovem or adulto or idoso) and (gratuito or pago) and outdoor then btt.
if (crianca or adulto or jovem or idoso) and (perda_de_peso or bem_estar or interesse_pessoal) and pago and indoor and individual then karate.
if (crianca or adulto or jovem) and (perda_de_peso or bem_estar or interesse_pessoal) and pago and indoor and coletivo then judo.
if (adulto or jovem) and (perda_de_peso or bem_estar or interesse_pessoal) and pago and indoor and coletivo then kickboxing.
if (adulto or jovem) and (perda_de_peso or bem_estar or interesse_pessoal) and pago and indoor and coletivo then boxe.
if (crianca or adulto or jovem) and (perda_de_peso or bem_estar or interesse_pessoal) and pago and indoor and coletivo then taekwondo.

if (jovem or adulto or idoso) and (perda_de_peso or ganhar_massa_muscular) then abdominais.
if jovem and outdoor and interesse_pessoal and gratuito then atletismo.
if (crianca or jovem or adulto or idoso) and (outdoor or indoor) and (pago or gratuito) then atletismo.

if (jovem or adulto or idoso) and ganhar_massa_muscular then crossfit.
if (jovem or adulto or idoso) and interesse_pessoal then crossfit.
if (jovem or adulto or idoso) and pago then crossfit.

if (crianca or jovem or adulto or idoso) and (perda_de_peso or interesse_pessoal) and gratuito and outdoor then corrida.
if (crianca or jovem or adulto or idoso) and (perda_de_peso or interesse_pessoal) and pago and outdoor then corrida.
if (crianca or jovem or adulto or idoso) and (perda_de_peso or interesse_pessoal) and (gratuito or pago) then saltar_corda.
if (crianca or jovem or adulto or idoso) and (perda_de_peso or interesse_pessoal) and pago and indoor then elitica.
if (crianca or jovem or adulto) and (perda_de_peso or interesse_pessoal) and pago and indoor then escadas.
if (crianca or jovem or adulto) and (ganhar_massa_muscular or perda_de_peso or interesse_pessoal) and pago and outdoor then remo.
if (crianca or jovem or adulto) and (ganhar_massa_muscular or perda_de_peso or interesse_pessoal) and pago and outdoor then canoagem.
if (crianca or jovem or adulto or idoso) and (perda_de_peso or interesse_pessoal) and pago and indoor then passadeira.
if (jovem or adulto or idoso) and (gratuito or pago) and (perda_de_peso or interesse_pessoal) and outdoor then jogging.
if (jovem or adulto) and (perda_de_peso or interesse_pessoal) and gratuito and outdoor then trail.
if (jovem or adulto) and indoor and (ganhar_massa_muscular or perda_de_peso or interesse_pessoal) and pago then trail.

if pago and indoor then natacao.
if (crianca or jovem or adulto) and outdoor and coletivo then futebol.
if (crianca or jovem or adulto) and indoor and coletivo then futsal.
if (crianca or jovem or adulto or idoso) and coletivo then tenis.
if (crianca or jovem or adulto) and coletivo then basquetebol.

if (jovem or adulto or idoso) and pago and outdoor and coletivo then zumba.
if (jovem or adulto or idoso) and pago and indoor and coletivo then body_attack.
if (jovem or adulto or idoso) and pago and indoor and coletivo then pump.
if (jovem or adulto or idoso) and pago and indoor and coletivo then body_combat.
if (jovem or adulto or idoso) and pago and indoor and coletivo then b3.
if (jovem or adulto) and pago and indoor and coletivo then spinning.
if (jovem or adulto) and pago and indoor and coletivo then hiit.
if (jovem or adulto or idoso) and pago and indoor and coletivo then zumba.

if (crianca or jovem or adulto or idoso) and pago and indoor then ginastica.
if (crianca or jovem or adulto) and pago and indoor and coletivo then ginastica_acrobatica.

if (jovem or adulto or idoso) and individual and pago and (perda_de_peso or ganhar_massa_muscular or interesse_pessoal or bem_estar) then ginasio.
if (jovem or adulto or idoso) and (ganhar_massa_muscular) then treino_peito.
if (jovem or adulto or idoso) and (ganhar_massa_muscular) then treino_pernas.
if (jovem or adulto or idoso) and (ganhar_massa_muscular) then treino_costas.
if (jovem or adulto or idoso) and (ganhar_massa_muscular) then treino_bracos.

if (crianca or jovem or adulto or idoso) and pago and (cardiaco or arteriosclerose or pulmonar or metabolico or diabetes) then fisioterapia.
if (crianca or jovem or adulto or idoso) and (bem_estar or interesse_pessoal) then meditacao.
if (crianca or jovem or adulto or idoso) and (bem_estar or interesse_pessoal) then yoga.
if (crianca or jovem or adulto or idoso) and (bem_estar or interesse_pessoal) then tai_chi.
if (crianca or jovem or adulto or idoso) and (bem_estar or interesse_pessoal) then reiki.
if (crianca or jovem or adulto or idoso) and (bem_estar or interesse_pessoal) then pilates.