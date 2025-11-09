...................................................



# **Testes de Significância: o Básico**



Intervalos de confiança são um dos dois tipos mais comuns de inferência estatística.

Neste capítulo, discutimos testes de significância, o

segundo tipo de inferência estatística.

A matemática da probabilidade - em particular, as distribuições amostrais discutidas no Capítulo 15 -

fornece a base formal para um teste de significância.

Aqui aplicaremos o raciocínio de testes de significância para a média de uma população que

tem distribuição Normal, em um contexto simples e artificial (em que supomos conhecer o desvio-padrão populacional $\\sigma$).

Usaremos a mesma lógica em capítulos futuros para a construção e testes de significância para parâmetros populacionais em contextos mais realistas.



Use um intervalo de confiança quando seu objetivo for estimar um parâmetro da população.

Os testes de significância têm um objetivo diferente: avaliar a evidência fornecida pelos dados sobre alguma afirmativa anterior relativa a um parâmetro da população.

A seguir, apresentamos sucintamente a lógica de testes estatísticos.



##### EXEMPLO 17.1 Eu sou um grande atirador de lances livres



Eu afirmo que acerto 80% de meus lances livres no jogo de basquete.

Para testar minha afirmativa, você me pede para fazer 20 lances

livres. Eu acerto apenas oito dos 20. "Ah!", você diz. "Alguém que

acerta 80% de seus lances livres quase nunca acertaria apenas oito

entre 20. Logo, não acredito em sua afirmativa."



Seu raciocínio se baseia no questionamento do que ocorreria se

minha afirmativa fosse verdadeira e repetíssemos a amostra de 20

lançamentos muitas vezes: eu quase nunca acertaria oito ou menos.

Esse resultado de oito em 20 é tão improvável, que fornece uma forte (*rectius*, BOA)

evidência de que minha afirmativa não seja verdadeira.



Você pode dizer quão forte (*rectius*, BOA) é a evidência contra minha afirmativa, fornecendo a probabilidade de eu acertar oito ou

menos entre 20 lances livres, se eu realmente acertasse 80% no longo prazo.

Essa probabilidade é 0,0001; como descrito no Capítulo 14, esse cálculo é feito com o uso da distribuição binomial.

Assim, eu acertaria oito ou menos em 20 lances em apenas uma vez em 10 mil tentativas no longo prazo - onde

cada "tentativa" são 20 lances livres jogados - se minha afirmativa

de acertar 80% fosse verdadeira.

O pequeno valor da probabilidade o convence de que minha afirmativa é falsa.



O *applet Reasoning of a Statistical Test* (conteúdo

em inglês) faz uma animação do Exemplo 17.1.

Você pode pedir a um jogador que faça lances

livres até que os dados lhe convençam, ou não, de que ele faz

menos do que 80%.

Testes de significância usam um vocabulário

elaborado, mas a ideia básica é simples: um resultado

que raramente ocorreria se uma afirmativa fosse verdadeira é boa

evidência de que a afirmativa não seja verdadeira.



## 17.1 A lógica dos testes de significância

. ... . .. .. . . . . . . . .. . . . . . . . . . . . . . . . .



A lógica dos testes estatísticos, assim como a dos intervalos

de confiança, se baseia no questionamento do que ocorreria

se repetíssemos a amostra ou experimento muitas vezes.

Agiremos novamente como se as "condições simples" listadas

em "Condições simples para inferência sobre uma média",

no Capítulo 16, fossem verdadeiras: temos uma AAS perfeita

de uma população exatamente Normal com desvio-padrão $\\sigma$

conhecido por nós. Eis um exemplo que analisaremos.





##### **EXEMPLO 17.2** Adoçantes de refrigerantes



................... REFCOLA



Refrigerantes dietéticos usam adoçantes artificiais para

evitar o uso de açúcar. Esses adoçantes gradualmente

perdem sua doçura ao longo do tempo. Os fabricantes,

portanto, testam a perda de doçura dos refrigerantes novos

antes de colocá-los no mercado. Provadores treinados bebem

um pequeno gole de refrigerante, juntamente com bebidas de

doçura padrão, e atribuem ao refrigerante um "escore de doçura"

de 1 a 10, com maiores escores correspondendo a maior

doçura. O refrigerante é, então, armazenado por um mês em

alta temperatura para imitar o efeito do armazenamento por 4

meses em temperatura ambiente. Cada provador atribui um

escore ao refrigerante novamente após o armazenamento. Esse

é um experimento de dados emparelhados. Nossos dados são as

diferenças (escore antes do armazenamento menos escore após

o armazenamento) dos escores dos provadores. Quanto maior a

diferença (diferença> O), maior será a perda de doçura.

Suponha sabermos que, para qualquer refrigerante,

os escores de perda de doçura variem de provador para

provador de acordo com uma distribuição Normal, com

desvio-padrão $\\sigma$ = l. A média $\\mu$ de todos os provadores

mede a perda de doçura e é diferente para diferentes

refrigerantes.



A seguir, estão as perdas de doçura de um novo refrigerante,

medidas por 10 provadores treinados:



1,6 0,4 0,5 -2,0 1,5 -1,1 1,3 -0,1 -0,3 1,2



A perda média de doçura é dada pela média amostral $\\bar{x}$= 0,3, de modo que, em média, os 10 provadores encontraram

uma pequena perda de doçura. Também, mais da

metade, (seis) dos provadores encontraram uma perda de

doçura. Esses dados são uma boa evidência de que o refrigerante

perdeu doçura com o armazenamento?



O raciocínio é o mesmo do Exemplo 17.1. Fazemos uma

afirmativa e perguntamos se os dados fornecem evidência

contrária a ela. Procuramos evidência de que haja uma perda de

doçura; logo, a afirmativa que testamos é que não há perda.

Nesse caso, a perda média para a população de todos os provadores

treinados seria $\\mu$ = O.



* Se a afirmativa de que $\\mu$ = O é verdadeira, a distribuição

amostral de $\\bar{x}$ dos 10 provadores é Normal com média µ= O

e desvio-padrão

$$\\frac{\\sigma}{\\sqrt{n}} = \\frac{1}{\\sqrt{10}}=0.316$$



Esses são exatamente os cálculos que fizemos no Capítulo 15

(ver Exemplo 15.5) e no Capítulo 16 (ver Exemplo 16.1). A

Figura 17.1 mostra essa distribuição amostral. Podemos julgar

se qualquer $\\bar{x}$ observado é surpreendente, localizando-o

nessa distribuição.



• Para esse refrigerante, 10 provadores acusaram perda média $\\bar{x}$ = 0,3.

É claro, a partir da Figura 17.1, que um $\\bar{x}$ desse

tamanho não é particularmente surpreendente. Ele poderia

facilmente ocorrer apenas devido ao acaso, quando a média

da população é $\\mu$ = O. O fato de obter $\\bar{x}$ = 0,3 para 10 provadores

não é forte evidência de que esse refrigerante perca doçura.



###### FIGURA 17.1



Distribuição amostral de $\\bar{x}$ quando $\\mu = 0$



Se o refrigerante não perde doçura no armazenamento,

o escore médio $\\bar{x}$ para os 1O provadores terá esta

distribuição amostral.

O resultado real para uma AAS para o refrigerante foi $\\bar{x}$ = 0,3.

Isso poderia acontecer facilmente por acaso.

Uma amostra de perdas de doçura para outro refrigerante teve $\\bar{x}$ = 1,02.

Isso está tão distante na curva Normal que é **boa evidência** de que

esse refrigerante realmente perdeu doçura.



$\\bar{x}$ = 0,3 $\\bar{x}$ = l,02



##### EXEMPLO 17.3 Adoçantes de refrigerantes, novamente

................. REFCOlA2



A seguir, estão as perdas de doçura de um novo

refrigerante, conforme medidas por 10 provadores

treinados:



2,0 0,4 0,7 2,0 -0,4 2,2 -1,3 1,2 1,1 2,3



A perda média de doçura é dada pela média amostral $\\bar{x}$ = 1,02.

A maioria dos escores é positiva.

Isto é, a maioria dos provadores encontrou uma perda de doçura.

Mas as perdas são pequenas, e dois provadores (os escores negativos)

acharam que o refrigerante ganhou doçura.

Esses dados constituem **boa evidência** de que o refrigerante perdeu doçura

no armazenamento?



O teste de sabor para o novo refrigerante produziu $\\bar{x}$ = 1,02.

Isso está bem longe, na cauda da curva Normal na Figura 17.1

\- tão longe que ***um valor observado desse tamanho raramente ocorreria por acaso se o verdadeiro $\\mu$ fosse O***.

Esse valor observado é boa evidência de que o verdadeiro $\\mu$ é, de

fato, maior do que O - isto é, o refrigerante perdeu doçura.

O fabricante deve reformular o novo refrigerante e tentar novamente.



#### APLIQUE SEU CONHECIMENTO



###### 17.1 GMAT.

O *Graduate ManAgementAdmission Test* (GMAT)

é feito por indivíduos interessados em seguir a educação

na graduação em administração. Os escores do GMAT

são utilizados como parte do processo de admissão para

mais de 6 mil programas de graduação em administração

em todo o mundo. O escore médio para todos os

que fazem o teste é 563, com um desvio-padrão $\\sigma$ de 118.1

Uma pesquisadora nas Filipinas está preocupada com o

desempenho no GMAT de não graduados nas Filipinas.

Ela acredita que, na época, o escore médio para os alunos

de último ano de faculdades nas Filipinas, que estão

interessados em seguir a educação na graduação em administração,

será menor do que 563. Ela tem urna amostra

aleatória de 250 alunos de último ano de faculdades nas

Filipinas interessados em seguir a educação na graduação

em administração que vão fazer o GMAT. Suponha que

saibamos que os escores GMAT são distribuídos Normalmente,

com desvio-padrão $\\sigma$ = 118.

(a) Procuramos evidência contra a afirmativa de que

µ = 563. Qual é a distribuição amostral do escore

médio $\\bar{x}$ de uma amostra de 250 estudantes, se a

afirmativa é verdadeira? Esboce a curva de densidade

dessa distribuição. (Esboce uma curva Normal e,

então, marque no eixo os valores da média e 1, 2 e 3

desvios-padrão da distribuição amostral de cada lado

da média.)



(b) Suponha que os dados amostrais resultem em $\\bar{x}$ = 555.

Marque esse ponto no eixo de seu esboço.



(c) Suponha que os dados amostrais resultem em $\\bar{x}$ = 540.

Marque esse ponto em seu esboço. Usando

seu esboço, explique, em linguagem simples, por que

um resultado é boa evidência de que o escore médio

de todos os estudantes de último ano de faculdades

nas Filipinas, interessados em fazer a graduação em

administração e que planejam fazer o GMAT, seria

menor do que 563, e o outro resultado não é.



###### 17.2 Inspecionando pesos de caixas de cookies.

O *National lnstitute of Standards and Technology* (NIST)

publica procedimentos para

inspeção de conteúdos líquidos declarados em pacotes

de produtos.2 A discussão desses procedimentos inclui

um exemplo de inspeção de peso de uma amostra de

caixas de cookies finos de hortelã de uma companhia em

particular, que são rotuladas com o conteúdo de 1 lb

de cookies. Uma MS de 12 caixas é pesada de acordo

com os procedimentos do NIST, e os pesos líquidos

são registrados. Suponha que os pesos líquidos para a

população de todas as caixas de cookies finos de hortelã

dessa companhia sejam provenientes de uma população

Normal, com peso líquido médio $\\mu$ e desvio-padrão $\\sigma$ = 0,01 lb.



(a) Procuramos evidência contra a afirmativa de que

µ = 1,000. Qual é a distribuição amostral da média $\\bar{x}$

em muitas amostras de lf caixas, se a afirmativa for

verdadeira? Faça um esboço da curva Normal para a

distribuição. (Desenhe uma curva Normal e, então,

marque no eixo os valores da média e 1, 2 e 3 desviospadrão

de cada lado da média.)



(b) Suponha que a média amostral seja $\\bar{x}$ = 0,998.

Marque esse valor no eixo de seu esboço. Outra

amostra de 12 caixas temi= 1,010 para 12 medidas.

Marque esse valor no eixo, também. Explique, em

linguagem simples, por que um resultado fornece

boa evidência de que a média populacional de pesos

líquidos de caixas de cookies difere de 1,000 e por que

o outro resultado não dá qualquer razão de dúvida de

que 1,000 seja correto.



## 17.2 Estabelecimento de hipóteses

.. . ... ... .. ..... .. ...... ... ... ...



Um teste estatístico de significância começa com um enunciado

cuidadoso das afirmativas que queremos comparar. No

Exemplo 17.3, vimos que os dados de teste de sabor não são

plausíveis se, de fato, o novo refrigerante não perde doçura.

Como a lógica dos testes procura por evidência contrária à afirmativa,

começamos com a afirmativa contra a qual buscamos

evidência, tal qual "nenhuma perda de doçura".



##### Hipóteses nula e alternativa



A afirmativa testada por um teste estatístico de significância é

chamada de hipótese nula. O teste é planejado para avaliar a

força da evidência contra a hipótese nula.

Usualmente, a hipótese nula é uma afirmativa de "nenhum efeito" ou "nenhuma

diferença".



A afirmativa sobre a população para a qual estamos tentando

encontrar evidência a favor é a hipótese alternativa.

A hipótese alternativa é unilateral se afirmar que um parâmetro é

maior do que ou menor do que o valor da hipótese nula.

Ela é bilateral se afirmar que o parâmetro é diferente do valor nulo.

(Pode ser menor ou maior.)



Abrevia-se a hipótese nula como H0 e a hipótese alternativa

como Ha. ***As hipóteses sempre se referem a um parâmetro populacional,***

***não a um resultado amostral particular***. Certifique-se

de ***estabelecer H0 e Ha em termos de parâmetros da população***.

Como Ha expressa o efeito a favor do qual esperamos encontrar evidência, é

frequentemente mais fácil começar pelo enunciado de Ha e, então,

enunciar H0 como uma afirmativa de que o efeito esperado não

esteja presente. H0, em geral, inclui "igual".



Nos Exemplos 17.2 e 17.3, estamos buscando evidência

a favor de perda na doçura. A hipótese nula diz "nenhuma

perda" em média em uma grande população de provadores. A

hipótese alternativa diz "há uma perda". Logo, as hipóteses são



$$H\_0: \\mu=0 \\\\ H\_a: \\um > 0$$



A ***hipótese alternativa*** é ***unilateral*** porque estamos interessados

apenas em saber se o refrigerante perdeu doçura.3



##### EXEMPLO 17.4 Estudo da satisfação no emprego

........................



A satisfação no emprego de operários de montadoras difere

quando seu trabalho é ritmado pelas máquinas em vez de

autorritmado? Aloque trabalhadores a uma linha de montagem

que se move em um ritmo fixo ou a uma condição

autorritmada. Todos os sujeitos trabalham em ambas as

condições, em ordem aleatória. Esse é um planejamento

de dados emparelhados. Após 2 semanas em cada condição

de trabalho, os trabalhadores são submetidos a um teste de

satisfação com o emprego. A variável de resposta é a diferença

entre os escores de satisfação, autorritmado menos

ritmado pela máquina.



O parâmetro de interesse é a médiaµ das diferenças dos

escores na população de todos os operários da montadora.

A hipótese nula diz que não há diferença entre trabalho

autorritmado e ritmado pela máquina -ou seja,



Ho: $\\mu$ = O



Os autores do estudo queriam saber se as duas condições

de trabalho geravam níveis diferentes de satisfação no

emprego. Eles não especificaram a direção da diferença.

A hipótese alternativa é, portanto, bilateral:



Ha: $\\mu$ <> O





###### ESTATÍSTICA NO MUNDO REAL

Hipóteses honestas?



Pessoas chinesas e japonesas, para as quais o número 4 é de má sorte,

morrem mais frequentemente no quarto dia do mês do que em outros dias.

Os autores de um estudo fizeram um teste estatístico da afirmativa de que

o quarto dia tem mais mortes do que os outros dias, e encontraram boa

evidência a favor dessa afirmativa. Você acredita nisso? Não, se os autores

examinaram todos os dias, tomaram o que tinha mais mortes e, então,

fizeram a afirmativa aser testada "esse dia é diferente". Um crítico levantou

esse problema, e os autores replicaram, "Não, nós tínhamos o dia 4 em

mente antes, de modo que nosso teste é legítimo".



As hipóteses devem expressar as expectativas ou suspeitas

que temos antes de vermos os dados.

É **trapaça** olhar primeiro os dados e então estabelecer hipóteses

que se ajustem ao que os dados mostram. Por exemplo, os

dados para o estudo no Exemplo 17.4 mostraram que os trabalhadores

estavam mais satisfeitos com o trabalho autorritmado,

mas isto não deveria influenciar sua escolha de Ha.

Se você não tem em mente uma direção específica firmemente

estabelecida de antemão, use uma alternativa bilateral.



#### APLIQUE SEU CONHECIMENTO



###### 17.3 GMAT (continuação).

Estabeleça as hipóteses nula e alternativa para o estudo do desempenho no GMAT de

alunos do último ano de faculdades nas Filipinas no Exercício 17.1.

A hipótese alternativa é unilateral ou bilateral?



###### 17.4 Inspecionando pesos em caixas de cookies (continuação).

Estabeleça as hipóteses nula e alternativa

para o estudo da inspeção de pesos líquidos de caixas

de cookies descrita no Exercício 17.2. A hipótese alternativa

é unilateral ou bilateral?



###### 17.5 Muito cedo.

Os exames em uma grande turma de estatística

de múltiplas seções são ajustados depois da pontuação,

de modo que o escore médio é 70. O professor acha

que os estudantes da seção de oito horas da manhã têm

problemas para prestarem atenção porque estão sonolentos

e suspeita que esses alunos têm um escore médio mais baixo do que a

turma como um todo. Os alunos da seção de oito horas da manhã

desse semestre podem ser considerados como uma amostra da população

de todos os estudantes do curso,

de modo que o professor compara o escore médio deles

com 70. Estabeleça as hipóteses H0 e Ha.



###### 17.6 Rendas de mulheres.

A renda média de mulheres

americanas que trabalham em tempo integral e têm apenas

educação de nível médio é de 37.616 dólares. Você

especula se a renda média de mulheres formadas pela escola

de Ensino Médio local e que trabalham em tempo

integral, mas têm apenas o certificado do Ensino Médio,

é diferente da média nacional. Você obtém informação

sobre renda a partir de uma MS de 62 mulheres formadas

em sua escola, com apenas Ensino Médio completo e

que trabalham em tempo integral, e encontra $\\bar{x}$ = 36.453

dólares. Quais são suas hipóteses nula e alternativa?



###### 17.7 Estabelecendo hipóteses.

No planejamento de um

estudo sobre o número de dias, nos últimos 30 dias, em

que os estudantes do Ensino Médio digitaram enquanto

dirigiam alguma vez durante o dia, um professor estabelece

as hipóteses como

H0: $\\bar{x}$ = 15 dias

Ha: $\\bar{x}$ > 15 dias

O que há de errado nelas?



## 17.3 Valor P e significância estatística

..................................



A ideia do estabelecimento de uma hipótese nula, contra a

qual desejamos encontrar evidência, parece estranha no início.

Pode ser útil pensar em um julgamento criminal. O acusado é

"inocente até que se prove o contrário". Isto é, a hipótese nula

é inocente e a acusação deve providenciar provas convincentes

contra essa hipótese. É exatamente assim que funcionam

os testes estatísticos de significância, embora, em estatística,

lidemos com evidência fornecida por dados e usemos a probabilidade

para dizer quão forte é a evidência.



A probabilidade que mede a força \[rectius, ***significância***] da evidência contra

a hipótese nula é chamada de valor P.

Testes estatísticos, em geral, funcionam assim:



##### Estatística de teste e valor P



Uma ***estatística de teste*** calculada a partir de dados amostrais

***mede quanto os dados divergem do que esperaríamos***, ***se a hipótese***

***nula H0 fosse verdadeira***.

Valores não usualmente grandes da estatística mostram que os dados ***não*** \[***sim***] são consistentes com H0.



A probabilidade, calculada supondo H0 verdadeira, de que a

estatística de teste assuma um valor tão ou mais extremo do

que o valor realmente observado é chamada de valor P do teste.



Quanto menor o valor P, mais forte \[rectius, ***significante***] é a evidência contra H0 fornecida pelos dados.



**Valores P pequenos são evidência contra H0**, pois ***afirmam***

***que o resultado observado tem ocorrência improvável se Ho for***

***verdadeira***.



**Valores P grandes não fornecem evidência contra H0**.

Isso se aplica à hipótese nula em geral, incluindo aquelas

que envolvem proporções ou aquelas que envolvem a comparação

de médias de duas populações (ver, por exemplo, Exercícios

17.10, 17.32, 17.33, 17.36 e 17.37).



Quão pequeno deve ser o valor P para ser evidência convincente

contra Ho? Discutiremos isso em detalhe na Seção

18.3, e muitos usuários de estatística consideram valores menores

do que 0,05 ou 0,01 como convincentes.



Um exemplo desse processo de cálculo de uma estatística

de teste e do correspondente valor P será dado na Seção 17.4.

Na prática, usa-se um programa estatístico para a realização

dos testes estatísticos. Programas estatísticos fornecem o valor

P de um teste quando se introduzem as hipóteses nula e alternativa

e os dados. Assim, o mais importante é o entendimento

sobre o que diz um valor P.



##### EXEMPLO 17.5 Adoçante de refrigerantes: valor P unilateral

...................

O estudo da perda de doçura nos Exemplos 17.2 e 17.3 testa

as seguintes hipóteses:

Como a hipótese alternativa diz que $\\mu$ > O, valores de $\\bar{x}$

maiores do que O favorecem Ha em detrimento de H0. A estatística

de teste compara o $\\bar{x}$: observado com o valor da hipótese

µ = O. Por enquanto, vamos nos concentrar no valor P.



O experimento apresentado nos Exemplos 17.2 e 17.3

realmente comparava dois refrigerantes. Para o primeiro

refrigerante, os 10 provadores encontraram uma perda média

de doçura de $\\bar{x}$ = 0,3. Para o segundo, os dados forneceram $\\bar{x}$ = 1,02.

O valor P para cada teste é a probabilidade de obter um $\\bar{x}$

desse tamanho quando a perda média de doçura é realmente $\\mu$ = O.



A área sombreada na Figura 17.2 mostra o valor P quando

$\\bar{x}$ = 0,3. A curva Normal é a distribuição amostral de $\\bar{x}$

quando a hipótese nula H0: $\\mu$ = O é verdadeira, usando o

desvio-padrão populacional $\\sigma$ = 1.

Um cálculo de probabilidade Normal (Exercício 17.8) mostra que o valor P é P($\\bar{x}$ = 0,3) = 0,1714.



Um valor tão grande quanto $\\bar{x}$ = 0,3 apareceria por

acaso em 17% de todas as amostras, quando H0: $\\mu$ = O fosse verdadeira.

Assim, a observação de $\\bar{x}$ = 0,3 **não é evidência**

forte \[*rectius*, **significativa**] contra H0.

Por outro lado, pode-se verificar que a probabilidade

de que $\\bar{x}$ seja 1,02 ou maior, quando de fato $\\mu$ = O,

é de apenas 0,0006. Ou seja, raramente observaríamos uma

perda média de doçura de 1,02 ou maior se H0 fosse verdadeira.

Esse **valor P pequeno** fornece forte \[*rectius*, **significativa**] **evidência contra**

**H0 e a favor da alternativa Ha: $\\mu$ > O**.





###### FIGURA 17.2



O valor P unilateral para o

refrigerante com perda média de

doçura $\\bar{x}$ = 0,3, para o Exemplo 17.5.

A figura mostra tanto a

entrada quanto a saída para

o *applet P-Value of a Test of*

*Significance* (conteúdo em inglês).

Note que o valor P é a área

sombreada sob a curva, não a

área sem sombreamento.



Ho: $\\mu$ = 0

Ha: $\\mu$ > 0

ou  $\\mu$ < 0

ou  $\\mu$ <> 0

$\\sigma$ = 1

n = 10



I have data, and the

observed $\\bar{x}$ = 0.3



The truth about the

population is $\\mu$ = 0

UPDATE

RESET



Sample Mean = 0.3

P-value = 0.1714





A Figura 17.2 é, na verdade, a saída

do *applet P-Value of a Test of Significance* (conteúdo em

inglês), junto com a informação introduzida no

programa.

Esse *applet* automatiza o trabalho da determinação

de valores P para amostras de tamanho 50 ou menor, sob as

"condições simples" para inferência sobre uma média.



A hipótese alternativa estabelece a direção que conta como

evidência contra H0. No Exemplo 17.5, apenas valores grandes,

positivos, contam, porque a alternativa é unilateral do lado mais

alto. Se a alternativa for bilateral, ambas as direções contam.



##### EXEMPLO 17.6 Satisfação no emprego: valor P bilateral



O estudo sobre satisfação no emprego no Exemplo 17.4 requer que testemos

 

Ho: $\\mu$ = 0

Ha: $\\mu$ <> 0

 

Suponha que saibamos que as diferenças nos escores de

satisfação (autorritmado menos ritmado pela máquina) na

população de todos os trabalhadores sigam uma distribuição

Normal, com desvio-padrão $\\sigma$ = 60.



Dados de 18 trabalhadores fornecem $\\bar{x}$ = 17.

Isto é, esses trabalhadores preferem, na média, o ambiente autorritmado.

Como a **alternativa é bilateral**, o valor P é a probabilidade

de obter $\\bar{x}$ pelo menos tão distante de $\\mu$ = O, em ambas as

direções, quanto o valor observado $\\bar{x}$ = 17.



Introduza a informação para esse exemplo no

*applet P-Value of a Test of Significance* e clique

em "Show P" (mostrar P). A Figura 17.3 mostra a

saída do *applet*, bem como a informação introduzida. O valor P

é a soma das duas áreas sombreadas sob a curva Normal.



Ele é P = 0,2293. Valores tão distantes de O quanto $\\bar{x}$ = 17

(em qualquer direção) aconteceriam 23% das vezes, quando

a verdadeira média populacional é µ= O.

Um resultado que ocorreria tão frequentemente quando H0 é verdadeira **não é**

**boa evidência contra H0**.



Ho: $\\mu$ = 0

Ha: O $\\mu$ > 0

 ou O $\\mu$ < 0

 ou 0 $\\mu$ <> 0



*I have data anda the observed* $\\bar{x}$ = 17

The true about the population is $\\mu$ = 0.



Sample Mean = 17

P-value = 0.2293



###### FIGURA 17.3



O valor P bilateral, para o

Exemplo 17.6. A figura mostra

tanto a entrada quanto a saída

para o *applet P-Value of a Test of*

*Significance*.

Note que o valor P é a área sombreada sob a curva,

não a área sem sombreamento.



UPDATE

RESET



**A conclusão do Exemplo 17.6 não é que H0 seja verdadeira.**



O estudo procurou evidência contrária a H0: $\\mu$ = O e não

conseguiu encontrar uma forte evidência. É tudo o que

podemos dizer. Sem dúvida, a média $\\mu$ para a população

de todos os trabalhadores da montadora não é exatamente

igual a O. Uma amostra suficientemente grande forneceria

evidência da diferença, mesmo que fosse muito pequena.

Testes de significância avaliam a evidência contra H0.

 

**Se** a **evidência** é forte \[rectius, **significativa**], **podemos confiantemente rejeitar H0 em**

**favor da alternativa**.



O fato de não conseguir encontrar evidência contra H0 significa apenas que os ***dados não são***

***inconsistentes com H0***, e ***não que tenhamos uma evidência clara de que H0 seja verdadeira***.

 

**Apenas dados que são inconsistentes com H0 nos permitem fazer uma afirmativa positiva** de que

temos forte \[rectius, **significativa**] **evidência contra H0**.

 

Nos Exemplos 17.5 e 17.6, decidimos que o valor P, **P = 0,0006**,

era **evidência** forte \[rectius, **significativa**] ***contra a hipótese nula*** e que os

**valores P = 0,1714 e P= 0,2293 não eram evidência convincente**.

 

Não há uma regra sobre quão pequeno um valor P deva ser para

que rejeitemos H0; é ***uma questão de julgamento*** e depende das

circunstâncias específicas.

 

No entanto, podemos comparar um valor P com alguns valores

fixos que comumente são utilizados como **padrões para evidência**

contra H0.

 

Os valores fixos mais comuns são 0,05 e 0,01. Se P = 0,05,

não há mais do que uma chance em 20 de que uma amostra

dê evidência tão forte apenas por acaso, quando H0 é realmente

verdadeira.

 

Se P = 0,01, temos um resultado que, no longo prazo,

aconteceria não mais do que uma vez em 100 amostras, se Ho

fosse verdadeira.

 

Esses **padrões fixos para valores P são chamados**

**de níveis de significância**.

 

Usamos $\\alpha$ a letra grega alfa, para denotar

um nível de significância.

 

Na Seção 18.5, veremos que o nível de

significância $\\alpha$ é a **probabilidade de cometer um tipo de erro**.

 

Em particular, $\\alpha$ é a **probabilidade de decidir (incorretamente) que**

**temos evidência contra H0 e declarar H0 falsa**, quando, **de fato, Ho**

**é verdadeira**.

 

Manter pequeno o nível de significância garante que

a chance de cometer tal erro seja pequena.



##### Significância estatística



Se o valor P é tão pequeno quanto $\\alpha$, ou menor do que $\\alpha$,

dizemos que os dados são estatisticamente significantes no

nível $\\alpha$. A quantidade $\\alpha$ é chamada de **nível de significância**.



"Significante", em linguagem estatística, não tem o sentido de

"importante".

 

**Significa** simplesmente **"improvável de acontecer apenas por acaso"**.



O **nível de significância $\\alpha$ torna "improvável" mais exato**.



Significância no nível 0,01 é frequentemente

enunciada pela afirmativa "Os resultados foram significantes

(P <= 0,01)".

Aqui, P representa o valor P. O valor P verdadeiro é

mais informativo do que uma afirmação de significância,

porque nos permite avaliar a significância em qualquer nível

que escolhermos.

 

Por exemplo, um resultado com P = 0,03 é significante no nível $\\alpha$ = 0,05, mas não é significante no nível

$\\alpha$ = 0,01.

 

Para evitar confusão, usaremos **"estatisticamente significante"**

em vez de "significante" neste capítulo. No entanto, em

artigos de pesquisa e publicações da mídia, você geralmente

verá a palavra "significante" em vez da expressão "estatisticamente

significante". Em capítulos posteriores, usaremos ambas.



É **boa prática interpretar as descobertas de significância**

**estatística no contexto do problema** para o qual os dados foram

coletados. Por exemplo, no Exemplo 17.5, significância estatística

implica algo sobre a perda de doçura em refrigerantes dietéticos.

Uma média amostral de $\\bar{x}$ = 0,3 não é estatisticamente

significante no nível $\\alpha$ = 0,05. **Interpretaríamos isso como**

**significando que nossos dados não fornecem evidência** forte \[*rectius*, **significante**] de

que **o refrigerante dietético, na média, perca doçura depois de**

**ser armazenado durante 1 mês em alta temperatura**.



###### ESTATÍSTICA NO MUNDO REAL



**Significância derruba um novo medicamento**



A companhia farmacêutica Pfizer gastou US$ 1bilhão no desenvolvimento de

uma nova droga contra o colesterol. A **verificação final** de sua **eficácia** foi um

teste clínico com 15 mil sujeitos. Para reforçar o estudo duplo-cego, apenas

um grupo independente de especialistas viu os dados durante o teste. Após

3 anos de testes, os **monitores declararam que houve um número excessivo,**

**estatisticamente significante, de mortes e de problemas cardíacos no grupo**

**alocado à nova droga**. A Pfizer encerrou o teste.



#### APLIQUE SEU CONHECIMENTO



##### 17.8 Adoçante de refrigerantes: encontre o valor P.

O valor P para o primeiro refrigerante no Exemplo 17.5 é

a probabilidade (considerando a hipótese nula

$\\mu$ = O como verdadeira) de que $\\bar{x}$ assuma um valor, no

mínimo, tão grande quanto 0,3.

(a) Qual é a distribuição amostral de $\\bar{x}$ quando $\\mu$ = O?

Essa distribuição aparece na Figura 17.2.

(b) Faça um cálculo de probabilidade Normal para

encontrar o valor P. Seu resultado deve concordar

com o Exemplo 17.5, a menos de erros de arredondamento.



##### 17.9 Satisfação no emprego: encontre o valor P.



O valor P no Exemplo 17.6 é a probabilidade (considerando

a hipótese nula $\\mu$ = O como verdadeira) de

que $\\bar{x}$ assuma um valor, pelo menos tão distante de O

como 17.



(a) Qual é a distribuição amostral de $\\bar{x}$ quando $\\mu$ = O?

Essa distribuição aparece na Figura 17.3.

(b) Faça um cálculo de probabilidade Normal para

encontrar o valor P. (Lembre-se de que a hipótese

alternativa é bilateral.) Seu resultado deve concordar

com o Exemplo 1 7 .6, a menos de erros de

arredondamento.



##### 17.10 Lorcaserina e perda de peso.

Um experimento comparativo aleatorizado,

duplo-cego, comparou o efeito

da droga lorcaserina e o de um placebo na perda

de peso em adultos em sobrepeso. Todos os sujeitos se

submeteram, também, a um aconselhamento de dieta e

exercício. O estudo relatou que, depois de um ano, os

pacientes do grupo da droga lorcaserina tiveram uma

perda média de peso de 5,8 kg, enquanto os pacientes

do grupo do placebo tiveram uma perda média de

peso de 2,2 kg (P <0,001).4 Explique, a alguém que não

conheça estatística, por que esses resultados significam

que há boa razão para pensar que a droga lorcaserina

funciona. Inclua uma explicacão do que significa P < O,001.



##### 17.11 GMAT (continuação).

O Exercício 17.1 descreve

um estudo do desempenho no GMAT de alunos

de último ano de faculdades nas Filipinas. Você estabeleceu

as hipóteses nula e alternativa no Exercício

17.3.

(a) Uma amostra de 250 estudantes teve escore médio no

GMA T de $\\bar{x}$ = 555. Introduza esse i, juntamente com

as outras informações pedidas, no *applet P-Value of a*

*Test of Significance*. Qual é o valor P? Esse resultado

é estatisticamente significante no nível $\\alpha$ = 0,05? No

nível $\\alpha$ = 0,01?

(b) Outra amostra de 250 estudantes resultou em $\\bar{x}$ =

540\. Use o *applet* para encontrar o valor P para esse

resultado. Ele é estatisticamente significante no nível

$\\alpha$ = 0,05? No nível $\\alpha$ = 0,01?

(c) Explique brevemente por que esses valores P nos

dizem que um desses resultados é **evidência** forte \[*rectius*, **significante**] contra

a hipótese nula e o outro resultado não é.



##### 17.12 Inspecionando pesos de caixas de cookies (continuação).

O Exercício 17.2 descreve medições

de pesos líquidos de uma amostra de 12 caixas de

cookies. Você estabeleceu as hipóteses nula e alternativa

no Exercício 17.4.

(a) Um conjunto de medidas resultou em $\\bar{x}$ = 0,998.

Introduza esse $\\bar{x}$, juntamente com as outras informações

pedidas, no *applet P-Value of a Test of*

*Significance*. Qual é o valor P? Esse resultado é

estatisticamente significante no nível $\\alpha$ = 0,05? No

nível $\\alpha$ = 0,01?

(b) Outro conjunto de medidas tem $\\bar{x}$ = 1,010. Use o

*applet* para encontrar o valor P para esse resultado.

Ele é estatisticamente significante no nível $\\alpha$ =

0,05? No nível $\\alpha$ = 0,01?

(c) Explique brevemente por que esses valores P nos

dizem que um dos resultados é **evidência** forte \[*rectius*, **significante**]

contra a hipótese nula e o outro resultado não é.



## 17.4 Testes para uma média populacional

. . .... . . . . . . ... .. . . . .. . ... ... . .. ..



Usamos testes para hipóteses sobre a média $\\mu$ de uma população,

sob as "condições simples", para introduzir os testes de

significância.

  O importante é a lógica de um teste: dados amostrais

que ocorreriam raramente se a hipótese nula H0 fosse verdadeira

fornecem evidência de que H0 não é verdadeira.

 

O valor P nos dá uma probabilidade para medir "ocorreriam raramente".

 

Na prática, os passos para a realização de um teste de significância

refletem o processo geral de **quatro passos** para a **organização**

**de problemas estatísticos realistas**.

 

##### Testes de significância: o processo de quatro passos



**ESTABELEÇA**: qual é a questão prática que requer um teste

estatístico?

**PLANEJE**: identifique o parâmetro, estabeleça as hipóteses

nula e alternativa e escolha o tipo de teste que seja adequado

à sua situação.

**RESOLVA**: realize o **teste** em **três fases**:

1\. ***Verifique as condições*** para o teste que você planeja usar.

2\. Calcule a ***estatística de teste***.

3\. Encontre o ***valor P***.

**CONCLUA**: volte à questão prática para ***descrever seus resultados***

***nesse contexto***.



Após estabelecer o problema, enunciar as hipóteses e

verificar as condições para seu teste, você ou um programa de

computador podem encontrar a estatística de teste e o valor P

seguindo um roteiro. Esse é o roteiro para o teste que usamos

em nossos exemplos.



Conforme prometido, a estatística de teste z mede quanto

a média amostral observada $\\bar{x}$ se afasta do valor populacional

hipotético $\\mu\_0$. A medida é na escala padrão familiar, obtida

da divisão pelo desvio-padrão de $\\bar{x}$. Assim, temos uma escala

comum para todos os testes z, e a regra 68-95-99,7 nos ajuda a

ver imediatamente se $\\bar{x}$ está longe de $\\mu\_0$. As figuras que ilustram

o valor P se parecem com as curvas nas Figuras 17.2 e 17.3,

exceto por estarem na escala padronizada.





##### Teste z de uma amostra para uma média populacional



Extraia uma AAS de tamanho n de uma população Normal

que tenha média $\\mu\_0$ desconhecida e desvio-padrão $\\sigma$ conhecido.

Para testar a hipótese nula de que $\\mu$ tenha um valor

especificado,

$$H0: \\mu = \\mu\_0 $$

calcule a **estatística de teste z de uma amostra**



$$z = \\frac{\\bar{x} - \\mu\_0}{\\sigma / \\sqrt{n}} $$



**Em termos de uma variável Z com distribuição Normal padrão**,

**o valor P para um teste de H0 contra:**



* $$Ha: \\mu > \\mu\_0 \\text{ é } P(Z \\geq z)$$
* $$Ha: \\mu < \\mu\_0 \\text{ é } P(Z \\leq z)$$
* $$Ha: \\mu \\neq \\mu\_0 \\text{ é } P(Z \\leq -|z|) + P(Z \\geq |z|)$$



Nos gráficos mostrados acima, **supomos que z seja positivo**

para $Ha: \\mu > \\mu\_0$, porque **z negativo seria evidência fraca para**

$\\mu > \\mu\_0$ e, *analogamente*, para $Ha: \\mu < \\mu\_0$. 

Para **um teste bilateral**, **z poderia ser positivo ou negativo**.



##### EXEMPLO 17.7 Colesterol de executivos



**ESTABELEÇA**: o *National Center for Health Statistics*

relata que o colesterol LDL para adultos tem média 130 e

desvio-padrão $\\sigma$ 40. O diretor médico de uma grande companhia

farmacêutica observa os registros médicos de 72 executivos

e vê que o LDL médio nessa amostra é $\\bar{x}$ = 124,86. ***Isso***

***é evidência*** de que os executivos da companhia tenham um

***LDL médio diferente*** do da ***população*** geral?



**PLANEJE**: a hipótese nula é "nenhuma diferença" da

média nacional $\\mu\_0$ = 130. A **alternativa é bilateral**, porque o

diretor médico não tinha em mente uma direção particular

antes de examinar os dados. Assim, as hipóteses acerca da

média desconhecida $\\mu$ da população de executivos são



Ho: $\\mu$ = 130

Ha: $\\mu$ <> 130



Sabemos que o teste z de uma amostra é apropriado para

essas hipóteses sob as "condições simples".



**RESOLVA**: como parte das "condições simples", suponha

que estejamos desejosos em assumir que o LDL de

executivos siga uma distribuição Normal, com desvio-padrão

$\\sigma$ = 40. Um programa pode, agora, calcular z e P

para você. Seguindo com os cálculos a mão, a estatística

de teste é



$$z=\\frac{\\bar{x}-\\mu\_0}{\\sigma/\\sqrt{n}}=\\frac{124.86-130}{40/\\sqrt{72}}=-1.09$$



Para ajudar a determinar o **valor P**, **esboce** a **curva Normal**

**padrão** e marque nela o **valor observado** de **z**.

A Figura 17.4 mostra que o **valor P é a probabilidade** de que **uma variável**

**Normal padrão Z assuma um valor distante de zero** em, **pelo**

**menos, 1,09**.

Pela Tabela A, ou um programa, encontramos que essa probabilidade é



$$P = 2P(Z > 1.09) = (2)(0.1379) = 0.2758$$



**CONCLUA**: mais de 27% das vezes, uma AAS de tamanho

72 da população adulta em geral teria um LDL médio pelo

menos tão longe de 130 quanto o da amostra de executivos.

**O $\\bar{x}$ = 124,86 observado não é**, portanto, **boa evidência** de

**que os executivos sejam diferentes dos outros adultos**.





O valor P bilateral para

z = -1,09 é a área afastada de

0 pelo menos em 1,09, em

ambas as direções, P= 0,2758.



Curva Normal padrão

Área sob a curva à esquerda de -1,09 = 0,1379

Área sob a curva à direita de +1,09 = 0,1379



###### FIGURA 17.4

O valor P para o teste bilateral no Exemplo 17.7.

O valor observado da estatística de teste é z = -1,09.



Neste capítulo, estamos agindo como se as "condições simples"

estabelecidas em "Condições simples para inferência sobre

uma média", no Capítulo 16, fossem verdadeiras. 

Na **prática**, **você deve verificar essas condições**.



1\. **AAS**: a condição mais importante é que os 72 executivos na

**amostra** sejam **uma AAS** da **população de todos os executivos**

**na empresa**. Devemos conferir essa exigência questionando

como os dados foram produzidos. **Se os registros médicos**

**estão disponíveis apenas para executivos com problemas**

**recentes de saúde**, por exemplo, os **dados são de pouco valor**

para os **nossos propósitos**, em virtude de **um viés óbvio**

**de saúde**.  

No entanto, o **fato é que todos os executivos se**

**submetem a um exame médico anual**, sem ônus, do qual o

**diretor médico selecionou 72 resultados ao acaso**.



2\. **Distribuição Normal**: devemos examinar, também, a **distribuição**

**das 72 observações** à **procura** de **sinais** de que a

**distribuição populacional não seja Normal**.

&nbsp; 

3\. **$\\sigma$ conhecido**: é, de fato, **não realista** supor que saibamos

que $\\sigma = 15$. Veremos, no Capítulo 20, que é **fácil** nos **livrarmos**

da **necessidade** de **conhecer** $\\sigma$.





#### APLIQUE SEU CONHECIMENTO



##### 17.13 A estatística z. 

Relatórios publicados de trabalhos

de pesquisa são sucintos. Em geral, relatam apenas

uma estatística de teste e um valor P. Por exemplo, a

conclusão do Exemplo 17.7 poderia ser relatada como

"(z = -1,09; P = 0,2758)". Encontre os valores da estatística

z de uma amostra necessários para completar as

seguintes conclusões:

(a) Para o primeiro refrigerante no Exemplo 17.5,

z = ?; P = 0,1714.

(b) Para o segundo refrigerante no Exemplo 17.5,

z = ?; P = 0,0006.

(c) Para o Exemplo 17.6, z = ?; P = 0,2293.



##### 17.14 Inspecionando pesos de caixas de cookies (continuação).

A seguir, estão medições

(em libras) dos pesos líquidos de 12 caixas de cookies:



PESOS



1,038 1,012 1,008 1,004 0,997 0,998



1,012 0,997 1,004 0,999 1,000 1,006



Suponha que o peso médio da população de todas as

caixas de cookies seja 1,000 lb. As **medições fornecem**

**boa evidência** de que o **peso médio populacional não**

**seja 1,000?**



As 12 caixas medidas são uma AAS da população de

todas as caixas dessa marca de cookies. Essa população

tem uma distribuição Normal, com média igual ao

verdadeiro peso médio da população e desvio-padrão $\\sigma$

0,01. Use essa informação para **realizar um teste de**

**significância**, seguindo o processo dos quatro passos

ilustrado no Exemplo 17.7









4 PASSOS

##### 17 .15 Tempo ruim, gorjeta ruim?

As pessoas tendem a ser mais generosas depois de receberem

boas notícias. Elas são menos generosas depois de

receberem más notícias? A gorjeta média deixada por

adultos norte-americanos é de 20%. Dê a 20 clientes

de um restaurante uma mensagem junto com a conta,

advertindo-os de que o tempo, no dia seguinte, será

ruim, e registre as gorjetas percentuais que eles deixam.

Eis as gorjetas, em forma de percentual da conta total:5



GORJETAS



18,0 19,1 19,2 18,8 18,4 19,0 18,5 16,1 16,8 18,2

14,0 17 ,O 13,6 17,5 20,0 20,2 18,8 18,0 23,2 19,4



Suponha que as gorjetas percentuais sejam Normais,

com $\\sigma$ = 2. **Há boa evidência de que a gorjeta percentual**

**média deixada pelos clientes que receberam uma previsão**

**de tempo ruim seja menor do que 20%?** Siga o processo

dos quatro passos, conforme ilustrado no Exemplo 17.7.



## 17.5 Significância a partir de uma tabela\*

. . . .. .. . .. . . .. ... . ... .. . . . .. . .. . . .

\*Este material pode ser omitido, se você usar computador para o cálculo de valores P.



Na prática, a estatística usa tecnologia (calculadoras gráficas e

programas de computador) para obter valores P rápida e precisamente.

Na falta de tecnologia adequada, você pode obter

rapidamente valores P aproximados pela comparação do valor

de sua estatística de teste com valores críticos de uma tabela.

Para a estatística z, a tabela é a Tabela C, a mesma usada para

intervalos de confiança.



Olhe a última linha de valores críticos na Tabela C, rotulada

por z\*. No alto da tabela, você vê o nível de confiança C

para cada z\*. No pé da tabela, você vê os valores P unilaterais



e bilaterais para cada valor de z\*. Valores de uma estatística de

teste z que estão mais afastados do que z\* (na direção dada pela

hipótese alternativa) são estatisticamente significantes no nível

que combina com z\*.



##### Significância a partir de uma tabela de valores críticos



Para encontrar o valor P aproximado para qualquer estatística

z, compare z (ignorando seu sinal) com os valores críticos z\*

no pé da Tabela C. Se z estiver entre dois valores de z\*, o valor

P estará entre os dois valores correspondentes de P na linha "P

unilateral" ou na linha "P bilateral" na Tabela C.



##### EXEMPLO 17.8 É estatisticamente significante?



A estatística z para um teste unilateral é z = 2,13. Quão

estatisticamente significante é esse resultado? Compare

z = 2,13 com a linha z\* na Tabela C.





z\*

2,054 2,326



P unilateral

0,02 0,01



Ele está entre z\* = 2,054 e z\* = 2,326. Assim, o valor P estará

entre as entradas correspondentes na linha "P unilateral",

que são o nível de significância $\\alpha$ = 0,02 e o nível de significância

$\\alpha$ = 0,01. Esse z é estatisticamente significante no nível $\\alpha$ = 0,02 

e não é estatisticamente significante no nível $\\alpha$ = 0,01.



Na Figura 17.5 está ilustrada a situação. A área sombreada

sob a curva Normal à direita de z = 2,13 é o valor P. 



Você pode ver que P está entre as áreas à direita dos dois valores

críticos, para P = 0,02 e P = 0,01.



A estatística z no Exemplo 17.7 é z = -1,09. 

A hipótese alternativa é bilateral. 

Compare z = -1,09 (ignorando o

sinal menos) com a linha de z\* na Tabela C.



z\*

1,036 1,282



P bilateral

0,30 0,20



Ele está entre z\* = 1,036 e z\* = 1,282. 

Assim, o valor P estará entre as entradas correspondentes na linha "P bilateral",

P = 0,30 e P = 0,20. 

Isso é suficiente para concluir

que os dados não fornecem boa evidência contra a hipótese nula.





###### FIGURA 17.5

É significante? O valor da estatística

de teste z = 2,13 está entre os valores

críticos exigidos para significância

nos níveis $\\alpha$ = 0,02 e $\\alpha$ = 0,01. 

Assim, o teste é significante no nível $\\alpha$ = 0,02

e não é significante no nível $\\alpha$ = 0,01.



Curva Normal

padrão

Valores de z à

direita deste ponto

são significantes

no nível $\\alpha$ = 0,02.

z = 2,13



Curva Normal

padrão

Valores de z à

direita deste ponto

são significantes

no nível $\\alpha$ = 0,02.

z = 2,13



#### APLIQUE SEU CONHECIMENTO



###### 17.16 Significância a partir de uma tabela.

Um teste de H0: $\\mu$ = 0 contra Ha: $\\mu$ > 0 tem estatística de teste

z = 1,65. Esse teste é estatisticamente significante no

nível 5% ($\\alpha$ = 0,05)? É estatisticamente significante

no nível 1 % ($\\alpha$ = 0,01)?



###### 17.17 Significância a partir de uma tabela.

Um teste de H0: $\\mu$ = 0 contra Ha: $\\um \\neq$ <> 0 tem estatística de teste

z = 1,65. Esse teste é significante no nível 5%

($\\alpha$ = 0,05)? É significante no nível 1 % ($\\alpha$ = 0,01)?



###### 17.18 Teste de um gerador de números aleatórios.

Suponha que um gerador de números aleatórios

produza números aleatórios que são uniformemente

distribuídos no intervalo de O a 1. Se isso for verdade,

os números gerados provêm de uma população com

$\\mu$ = 0,5 e $\\sigma$ = 0,2887. Um comando para gerar 100

números aleatórios produz resultados com média

$\\bar{x}$ = 0,5635. **Suponha que o $\\sigma$ da população permaneça**

**fixo**. Desejamos testar



Ho: $\\mu$ = 0,5

Ha: $\\mu \\neq$ 0,5



(a) Calcule o valor da estatística de teste z.

(b) Use a Tabela C: z é estatisticamente significante no

nível 5% ($\\alpha$ = 0,05)?

(c) Use a Tabela C: z é estatisticamente significante no

nível 1 % ($\\alpha$ = 0,01)?

(d) Entre quais dois valores críticos Normais z\*, na

linha do pé da Tabela C, z está? Entre quais dois

números o valor P está? O **teste fornece boa evidência**

**contra a hipótese nula?**



#### RESUMO



•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••



• **Um teste de significância avalia a evidência fornecida pelos**

**dados contra uma hipótese nula H0 em favor de uma hipótese**

**alternativa Ha**.



• As **hipóteses são sempre enunciadas em termos de parâmetros**

**populacionais**. Em geral, **H0 é uma afirmativa de que**

**não há qualquer efeito presente**, e **Ha afirma que um parâmetro**

**diverge de seu valor nulo em uma direção específica**

(alternativa **unilateral**) **ou em qualquer direção** (alternativa

**bilateral**).

• O **fundamento essencial** de um teste de significância é como

segue. **Suponha**, para raciocinar, que a **hipótese nula seja**

**verdadeira**. **Se repetíssemos nossa produção de dados muitas**

**vezes, obteríamos frequentemente dados tão inconsistentes**

**com H0 como os dados que realmente temos?** 

**Dados** que **raramente ocorreriam se H0 fosse verdadeira fornecem evidência**

**contra H0**.



• Um teste se baseia em **uma estatística de teste**, que **mede quão**

**distante o resultado amostral está do valor estabelecido por H0**.



• O **valor P** de um teste é a **probabilidade**, calculada **supondo**

**H0 verdadeira**, de **que a estatística de teste assuma um valor**

**pelo menos tão extremo quanto o de fato observado**. 

Valores **P pequenos** são uma forte \[*rectius*, **significativa**] **evidência contra H0**. 

Para calcular um **valor P**, **é necessário o conhecimento da distribuição**

**amostral da estatística de teste quando H0 é verdadeira**.



• **Se** o **valor P** for **tão pequeno quanto, ou menor que um**

**valor especificado** $\\alpha$, **os dados são estatisticamente significantes**

**no nível de significância** $\\alpha$.



• Testes de significância para a hipótese nula H0: $\\mu$ = $\\um\_0$ relativos

à média desconhecida $\\mu$ de uma população se baseiam

**na estatística de teste z de uma amostra**



$$z=\\frac{\\bar{x} - \\mu\_0}{\\sigma / \\sqrt{n}}$$



O teste z **pressupõe** uma **AAS** de tamanho **n** de uma

**população Normal** com desvio-padrão populacional $\\sigma$

conhecido. 

**Valores P** podem ser **obtidos** por meio de cálculos

da **distribuição Normal padrão** *ou* com o **uso da tecnologia**

(*applet* ou programas).



Para **testar a hipótese nula** de que $\\mu$ tenha um valor

especificado,

$$H0: \\mu = \\mu\_0 $$

calcule a **estatística de teste z de uma amostra**



$$z = \\frac{\\bar{x} - \\mu\_0}{\\sigma / \\sqrt{n}} $$



**Em termos de uma variável Z com distribuição Normal padrão**,

**o valor P para um teste de H0 contra:**



* $$Ha: \\mu > \\mu\_0 \\text{ é } P(Z \\geq z)$$
* $$Ha: \\mu < \\mu\_0 \\text{ é } P(Z \\leq z)$$

$$Ha: \\mu \\neq \\mu\_0 \\text{ é } P(Z \\leq -|z|) + P(Z \\geq |z|) = 2P(Z \\geq |z|)$$



#### VERIFIQUE SUAS HABILIDADES

............................................................................



###### 17.19 

Você usa um programa para realizar um teste de significância.

O programa lhe diz que o valor P é P = 0,052. Você

conclui que a probabilidade, calculada supondo que H0, é

(a) verdadeira, de a estatística de teste assumir um valor

tão ou mais extremo do que o realmente observado é

0,052.

(b) verdadeira, de a estatística de teste assumir um valor tão ou

menos extremo do que o realmente observado é 0,052.

(c) falsa, de a estatística assumir um valor tão ou mais extremo

do que o realmente observado é 0,052.



###### 17.20 

Você usa um programa para realizar um teste de significância.

O programa lhe diz que o valor P é P = 0,052. Esse

resultado é

(a) não estatisticamente significante tanto no nível

$\\alpha$ = 0,05 quanto no nível $\\alpha$ = 0,01.

(b) estatisticamente significante em $\\alpha$ = 0,05, mas não em

$\\alpha$ = 0,01.

(c) estatisticamente significante em ambos, $\\alpha$ = 0,05 e $\\alpha$ =

0,01.



###### 17.21 

A estatística de teste z para um teste unilateral é z = 1,62.

Esse \_teste é

(a) não estatisticamente significante tanto no nível $\\alpha$ =

0,05 quanto no nível $\\alpha$ = 0,01.

(b) estatisticamente significante em $\\alpha$ = 0,05, mas não em

$\\alpha$ = 0,01.

(c) estatisticamente significante em ambos, $\\alpha$ = 0,05 e $\\alpha$ = 0,01.



###### 17.22 

Sabe-se que a milhagem de gasolina (consumo) para um modelo

particular de caminhonete tem um desvio-padrão $\\sigma$ de $\\mu$

= 1,0 milha por galão em testes repetidos em um ambiente

controlado de laboratório, a uma velocidade fixa de 65 milhas

por hora. Para uma velocidade fixa de 65 milhas por

hora, os consumos em testes repetidos são Normalmente

distribuídos. Testes em quatro caminhonetes desse modelo,

a 65 milhas por hora, dão os consumos de 19,7; 20,l; 19,9, e

19,5 milhas por galão. A estatística z para o teste de H0: $\\mu$ =

20 milhas por galão com base nessas quatro medições é

(a) z = -0,800.

(b) z = -0,400.

(c) z = -0,200.



###### 17.23 

Experimentos sobre a aprendizagem em animais algumas

vezes medem quanto tempo leva para que camundongos encontrem

o caminho em um labirinto. 

O tempo médio é de 18 segundos para um labirinto particular. 

Uma pesquisadora acredita que um barulho alto fará com que os camundongos

completem o labirinto mais depressa. 

Ela mede quanto tempo cada um de 10 camundongos gasta com o estímulo de um

barulho. A média amostral é $\\bar{x}$ = 16,5 segundos. A hipótese

nula para o teste de significância é



(a) H0: $\\mu$ = 18. (b) H0: $\\mu$ = 16,5. (c) H0: $\\mu$ < 18.



###### 17.24 

A hipótese alternativa para o teste no Exercício 17.23 é

(a) Ha: $\\mu$ -=/= 18.

(b) Ha: $\\mu$ < 18.

(c) Ha: $\\mu$ = 16.5.



###### 17.25 

Pesquisadores investigaram a eficácia de zinco oral, comparado

a um placebo, na redução da duração do resfriado comum,

quando tomado 24 horas a partir do aparecimento

dos sintomas. Os pesquisadores descobriram que aqueles

que tomaram o zinco oral tiveram uma duração estatisticamente

significante mais curta (P < 0,05) do que aqueles que

tomaram um placebo.6 

Isso significa que

(a) a probabilidade de que a hipótese nula seja verdadeira

é menor do que 0,05.

(b) o valor da estatística de teste, a redução média na duração

do resfriado, é grande.

(c) nenhuma das opções acima é verdadeira.



###### 17.26 

Você está testando H0: $\\mu$ = 0 contra Ha: $\\um \\neq$ 0, com base

em uma AAS de 20 observações de uma população Normal.

Quais valores da estatística de teste z são estatisticamente

significantes no nível $\\alpha$ = 0,001?

(a) Todos os valores para os quais |z| > 3,291.

(b) Todos os valores para os quais z > 3,291.

(c) Todos os valores para os quais z > 3,091.



###### 17.27 

Você está testando H0: $\\mu$ = 0 contra Ha: $\\mu$ > 0, com base em

uma AAS de 20 observações de uma população Normal.

Quais valores da estatística de teste z são estatisticamente

significantes no nível $\\alpha$ = 0,001?



##### EXERCÍCIOS

......................................



Em todos os exercícios que pedem valores P, dê o valor real, se você estiver

usando um programa ou o *applet P-Value*. Caso contrário, use a Tabela C

para dar valores entre os quais P deve estar.



17.28 Tempos de estudo de estudantes. O Exercício 16.19 descreve

uma pesquisa em sala de aula na qual os estudantes

afirmaram estudar uma média de $\\bar{x}$ = 13,7 horas em uma

semana típica. Considere esses estudantes como uma MS

da população de todos os estudantes de graduação dessa

universidade. A pesquisa fornece boa evidência da afirmativa

dos estudantes de que estudam mais de 13 horas por

semana, em média?

(a) Estabeleça as hipóteses nula e alternativa em termos do

tempo médio de estudo, em horas, para a população.

(b) Qual é o valor da estatística de teste z?

(c) Qual é o valor P do teste? Você pode concluir que os

estudantes realmente estudem mais de 13 horas por semana,

em média?



17.29 Eu quero mais músculos. Se os rapazes achassem que seu

próprio nível de músculos era o que as mulheres preferem,

a "lacuna muscular" média descrita no Exercício 16.20 seria

O. Suspeitamos (antes de ver os dados) que os jovens

(maioria) acham que as mulheres preferem maior quantidade

de músculos à que eles têm.

(a) Estabeleça as hipóteses nula e alternativa para o teste

dessa suspeita.

(b) Qual é o valor da estatística de teste z?

(c) Você pode dizer, apenas pelo valor de z, que a evidência

em favor da hipótese alternativa é muito fotte (isto é,

o valor P é muito pequeno). Explique por que isso é

verdade.



17.30 Personalidades de gerentes de hotéis. Gerentes bemsucedidos

de hotéis devem ter características de personalidade

estereotipadas como femininas (como "compassivo"),

bem como outras consideradas masculinas (como

"enérgico"). O Bem Sex-Role Inventory (BSRI) é um teste

de personalidade que dá escores separados para estereótipos

de "mulheres" e "homens", ambos em uma escala

de 1 a 7. Embora o BSRI tenha sido desenvolvido em

uma época em que esses estereótipos eram mais pronunciados,

ainda é largamente usado para avaliar tipos de

personalidade. Infelizmente, as classificações são quase

sempre referidas como escores de feminilidade e masculinidade.

Uma amostra de 148 homens, gerentes gerais de hotéis de

três e quatro estrelas, teve escore médio de feminilidade

BSRI $\\bar{x}$ = 5,29.7 O escore médio para a população masculina

geral é $\\mu$ = 5,19. Os gerentes de hotéis, na média, diferem

de maneira estatisticamente significante dos homens

em geral no escore de feminilidade? Suponha que o desvio-padrão

dos escores na população de todos os homens gerentes de hotéis 

seja o mesmo, $\\sigma$ = 0,78 para a população

de homens adultos.

(a) Estabeleça as hipóteses nula e alternativa em termos do

escore de feminilidade médio $\\mu$ para homens gerentes

de hotéis.

(b) Encontre a estatística de teste z.

(c) Qual é o valor P para o seu z? O que você conclui sobre

os homens gerentes de hotéis?



17.31 É isto o que P significa? Um experimento comparativo

aleatorizado examinou o efeito do fato de um professor

ser atraente sobre o desempenho dos estudantes em um

teste dado por ele. Os pesquisadores encontraram uma

diferença estatisticamente significante nos escores do teste

entre os estudantes em uma classe com um professor classificado

como atraente e os estudantes em uma turma com

um professor classificado como não atraente (P = 0,005).8

Solicitado a explicar o significado de "P = 0,005", um estudante

diz: "isso significa que há apenas uma probabilidade

de 0,005 de que a hipótese nula seja verdadeira". Explique

o que P = 0,005 realmente significa, de maneira que fique

claro que a explicação do estudante está errada.



17.32 Como mostrar que você é rico. Toda sociedade tem suas

próprias marcas de riqueza e prestígio. Na China antiga, parece

que possuir porcos era uma dessas marcas. A evidência

vem do exame de cemitérios. Os crânios de porcos sacrificados

tendem a aparecer junto com ornamentos caros, que

sugerem que os porcos, como os ornamentos, sinalizavam

a riqueza e o prestígio da pessoa enterrada. Um estudo de

enterros de cerca de 3.500 a.C. concluiu que "há diferenças

gritantes nos bens das sepulturas com crânios de porcos e

nos das sepulturas sem eles ... Um teste indica que as duas

amostras do total de artefatos são diferentes de modo estatisticamente

significante no nível de 0,01" .9 Explique claramente

por que "diferentes de modo estatisticamente significante

no nível de 0,01" fornece boa razão para pensar que,

realmente, há uma diferença sistemática entre os enterros

que contêm crânios de porcos e os que não os contêm.



17.33 Aliviando a ansiedade de um teste. Pesquisa sugere que a

pressão para se sair bem pode reduzir o desempenho em

exames. Há estratégias eficazes para lidar com a pressão?

Em um experimento, os pesquisadores aplicaram aos estudantes

um teste de habilidades matemáticas. Os mesmos

estudantes foram, então, solicitados a fazer um segundo

teste abordando as mesmas habilidades. No entanto, para

o segundo teste, os pesquisadores acrescentaram condições

com a intenção de aumentar a pressão de se sair bem. Agora,

cada estudante foi emparelhado com um parceiro e, apenas

se ambos melhorassem seus escores, receberiam uma

recompensa monetária por participarem do experimento.

Também lhes foi dito que seu desempenho seria gravado e

observado por professores e estudantes.

Os estudantes foram, então, divididos em dois grupos.

Um grupo serviu de controle. Para ajudá-los a lidar com

a pressão, 10 minutos antes do segundo teste pediu-se aos

estudantes do segundo grupo que escrevessem, da maneira

mais franca, sobre seus pensamentos e sentimentos em

relação ao teste. A diferença nos escores do teste (pós-teste

e pré-teste) foi calculada. "Os estudantes que expressaram

seus pensamentos antes do segundo teste de alta pressão

mostraram uma melhora estatisticamente significante na

precisão matemática de 5%, do pré-teste ao pós-teste" (P <

0,03).10 Um colega que não sabe estatística diz que um aumento

de 5% não é muito - e talvez seja apenas um acidente

devido à variação natural entre os estudantes. Explique,

em linguagem simples, como "P < 0,03" responde a essa

objeção.



17.34 Gênero do professor. No estudo descrito no Exercício 17.33, 

os pesquisadores examinaram também o efeito do

gênero de um professor (suposto ser homem ou mulher)

sobre o desempenho de estudantes em um teste. Os pesquisadores

não encontraram qualquer evidência de diferença

nos escores (P =0,24). O valor P se refere à hipótese nula de

"nenhuma diferença" nos escores de teste em classes cujos

professores eram homens ou mulheres. Explique claramente

por que esse valor não fornece evidência de qualquer

diferença.



17.35 5% versus 1%. Esboce uma curva Normal padrão para a

estatística de teste ze marque as áreas sob a curva para mostrar

por que um valor de z, que é estatisticamente significante

no nível 1 % em um teste unilateral, é sempre estatisticamente

significante no nível 5%. Se z é estatisticamente

significante no nível 5%, o que você pode dizer sobre sua

significância no nível 1 %?



17.36 A alternativa errada. Pesquisadores estão interessados no

efeito de correr 30 minutos por dia sobre o desempenho de

alunos de graduação no teste ORE verbal. Eles começam

sem qualquer expectativa sobre se os estudantes que correm

30 minutos por dia terão melhor desempenho do que

os estudantes do grupo de controle, que seguem seu regime

usual de exercícios. Depois de notarem que os estudantes

que corriam 30 minutos por dia tendiam a ter escores mais

altos no ORE, os pesquisadores decidiram testar uma alternativa

unilateral sobre os escores médios de teste ORE

verbal,

$$H\_o: \\mu\_correndo = \\mu\_controle$$



$$H\_a: \\mu\_correndo > \\mu\_controle



Os pesquisadores encontraram z = 1,71, com valor P unilateral

P = 0,0436.



(a) Explique por que os pesquisadores deveriam ter usado

a hipótese alternativa bilateral.

(b) Qual é o valor P correto para z = 1,71?



17.37 O P errado. O relatório de um estudo sobre o uso do

cinto de segurança pelos motoristas diz que "Motoristas

hispânicos não foram estatisticamente significantemente

mais propensos do que os motoristas brancos/não

hispânicos a relatar a mais o uso do cinto de segurança

(27 ,4% vs. 21,1%, respectivamente; z = 1,33, P > 1,0)".11

Como você sabe que o valor P fornecido está incorreto?

Qual é o valor P unilateral correto para a estatística de

teste z = 1,33?

&nbsp; 



Os Exercícios 17.38 a 17.41 pedem que você responda a questões com

base em dados. Suponha que as "condições simples" se verifiquem em cada

caso. Os enunciados dos exercícios lhe dão o passo **Estabeleça** do Processo

de quatro passos. Em seu trabalho, siga os passos **Planeje**, **Resolva** e

**Conclua**, ilustrados no Exemplo 16.3 para um intervalo de confiança, e

no Exemplo 17.7 para um teste de significância.



4PASSOS

17.38 Ruptura da madeira. Qual a carga necessária (libras)

para romper pedaços de pinheiro Douglas de 4 polegadas

(10,16 cm) de comprimento e 1,5 polegada quadrada

(9,6774 cm2)? A seguir, estão os dados de alunos executando 

um exercício de laboratório:



MADEIRA

33.190 31.860 32.590 26.520 33.280

32.320 33.020 32.030 30.460 32.700

23.040 30.930 32.720 33.650 32.340

24.050 30.170 31.300 28.730 31.920



Desejamos considerar as peças de madeira preparadas para

a sessão de laboratório como uma AAS de todas as peças

similares de pinheiro Douglas. Engenheiros assumem, também, 

que características de materiais variem Normalmente. 

Suponha que as forças de peças de madeira como essas sigam 

uma distribuição Normal, com desvio-padrão $\\sigma$ de 3 mil libras



(a) Há evidência estatisticamente significante no nível $\\alpha$ = 

0,10 contra a hipótese de que a média seja 32.500 libras

para uma alternativa bilateral?

(b) Há evidência estatisticamente significante no nível $\\alpha$ =

O,10 contra a hipótese de que a média seja 31.500 libras para

uma alternativa bilateral?



17.39 Perda óssea por mães que amamentam. Conforme disct

4P~ do no Exercício 16.26, mães que amamentam secret~

¦11 cálcio em seu leite. Parte do cálcio pode provir de se

ossos e, desse modo, as mães podem sofrer perda miJ

ral óssea. Pesquisadores mediram o percentual de variaç

do conteúdo mineral da espinha dorsal de 47 mães e

rante 3 meses de amamentação.12 A seguir estão os dad<



PEROSSEA



-4,7 -2,5 -4,9 -2,7 -0,8 -5,3 -8,3 -2,1 -6,8 -4,



2,2 -7,8 -3,1 -1,0 -6,5 -1,8 -5,2 -5,7 -7,0 -2,

-6,5 -1,0 -3,0 -3,6 -5,2 -2,0 -2,1 -5,6 -4,4 -3,



-4,0 -4,9 -4,7 -3,8 -5,9 -2,5 -0,3 -6,2 -6,8 1,

0,3 -2,3 0,4 -5,3 0,2 -2,2 -5,1



Os pesquisadores desejam considerar essas 47 mulher,

como uma MS da população de todas as mães que am

mentam. Suponha que a variação percentual nessa popul

ção tenha distribuição Normal, com desvio-padrão $\\sigma$ de (J

2,5%. Esses dados fornecem boa evidência de que, na m

dia, as mães que amamentam perdem minerais dos ossos'.



17 .40 Este vinho cheira mal. Compostos de enxofre causai

4PASS¦

"odores estranhos" no vinho, de modo que os fabricai

OS

¦¦• tes de vinho querem saber o limiar de odor -a menc



concentração de um composto que o olfato de um st

humano pode detectar. O limiar de odor de dimetilsulfet

(DMS) em provadores de vinho treinados é de aproximad:

mente 25 microgramas por litro de vinho (µg/L). Contudc

o olfato de consumidores não treinados pode ser menc

sensível. A seguir, apresentamos os limiares de odor d

DMS de 10 estudantes não treinados: 1,111 VINHO







30 30 42 35 22 33 31 29 19 23



Suponha que o limiar de odor para pessoas não treinadas



seja Normalmente distribuído, com a = 7 µg/L. Há evidên





cia de que o limiar médio de provadores não treinados seja



maior do que 25 µg/L?



17.41 Graxa para os olhos. Atletas que praticam esporte à luz in-

4PA.5SOS, tensa do Sol, em geral, passam graxa preta sob os olhos

... para reduzir a luminosidade. Essa graxa resolve? Em um



¦ estudo, 16 sujeitos estudantes fizeram um teste de sensibilidade

ao contraste claro e escuro depois de três horas

olhando o Sol brilhante, com e sem a graxa. Esse é um

planejamento de dados emparelhados. Se a graxa para os

olhos é eficaz, os sujeitos serão mais sensíveis ao contraste

quando usam graxa para os olhos. Eis as diferenças na sensibilidade,

com graxa para os olhos menos sem graxa para

os olhos:13 11111 PROTOCULAR

0,07 0,64 -0,12 -0,05 -0,18 0,14 -0,16 0,03

0,05 0,02 0,43 0,24 -0,11 0,28 0,05 0,29





Desejamos saber se, na média, a graxa aumenta a sensibilidade.





(a) Quais são as hipóteses nula e alternativa? Diga, em palavras,

a qual média $\\mu$ suas hipóteses se referem.

(b) Suponha que os sujeitos sejam uma MS de todas as

pessoas jovens com visão normal, que as diferenças de

contraste sigam uma distribuição Normal nessa população,

e que o desvio-padrão $\\sigma$ das diferenças seja a = 0,22.

Realize um teste de significância.

17.42 Testes a partir de intervalos de confiança. Um intervalo de

confiança para a média populacional $\\mu$ nos diz quais valores

de $\\mu$ são plausíveis (aqueles no interior do intervalo) e quais

valores não são plausíveis (aqueles fora do intervalo) no nível

de confiança escolhido. Você pode usar essa ideia para realizar

um teste de qualquer hipótese nula H0: $\\mu$ = $\\mu\_0$, começando

com um intervalo de confiança: rejeite H0 se $\\mu\_0$ estiver fora

do intervalo e deixe de rejeitar se $\\mu\_0$ estiver dentro do intervalo.

A hipótese alternativa é sempre bilateral, Ha: $\\mu$ -=/:-$\\mu\_0$, porque

o intervalo de confiança se estende em ambas as direções

a partir de $\\bar{x}$  Um intervalo de confiança de 95% leva a um

teste no nível de significância de 5%, porque esse intervalo

está errado 5% das vezes. De modo geral, o nível de confiança

C leva a um teste no nível de significância a = 1 -C.



(a) No Exemplo 17.7, um diretor médico encontrou a média

de LDL $\\bar{x}$ = 124,86 para uma amostra de 72 executivos.

O desvio-padrão $\\sigma$ do LDL de todos os adultos é a= 40.

CAPÍTULO 17



Dê um intervalo de confiança de 90% para o LD L médio

µ de todos os executivos nessa companhia, supondo

que o desvio-padrão $\\sigma$ seja o mesmo de todos os adultos.



(b) O valor hipotético $\\mu\_0$ = 130 está dentro do intervalo de

confiança. Realize o teste z para H0: $\\mu$ = 130 contra a

alternativa bilateral. Mostre que o teste não é estatisticamente

significante no nível de 10%.

(c) O valor hipotético $\\mu$ = 134 está fora desse intervalo de

confiança. Realize o teste z para H0: $\\mu$ = 134 contra a

alternativa bilateral. Mostre que o teste é estatisticamente

significante no nível de 10%.

17.43 Testes a partir de intervalos de confiança. Famílias cuidadoras

de pacientes com doenças crônicas podem experimentar

ansiedade. Encontros regulares de grupos de apoio

afetam esses sentimentos de ansiedade? É possível que eles

reduzam a ansiedade, talvez pelo compartilhamento de

experiências com outras famílias cuidadoras em situações

semelhantes, ou aumentem a ansiedade, talvez pelo reforço

das experiências dolorosas ao recontá-las a outros. Para

explorar o efeito de encontros de grupos de apoio, várias

famílias cuidadoras foram inscritas em um grupo de apoio.

Depois de 3 meses, os pesquisadores administraram um teste

para medir a ansiedade, com escores maiores indicando

maior ansiedade. Suponha que essas famílias cuidadoras

sejam uma amostra aleatória da população de todas as famílias

cuidadoras. Um intervalo de confiança de 99% para

o escore de ansiedade média populacional µ, depois de participar

do grupo de apoio, é 7,2 ± 0,9.14

Use o método descrito no exercício anterior para responder

a essas questões.



(a) Suponha sabermos que o escore médio de ansiedade

para a população de todas as famílias cuidadoras seja

6,2. Com uma alternativa bilateral, você pode rejeitar

a hipótese nula de $\\mu$ = 6,2 no nível de significância de

1% (a = 0,01)? Por quê?

(b) Suponha que saibamos que o escore médio de ansiedade

para a população de todas as famílias cuidadoras

seja 6,4. Com uma alternativa bilateral, você pode rejeitar

a hipótese nulaµ = 6,4 no nível de significância

de 1 % (a = 0,01)? Por quê?

17.44 Testes a partir de intervalos de confiança. O Exemplo 16.3

calcula um intervalo de confiança de 95% para a gorjeta

percentual média $\\mu$ de todos os clientes de um restaurante

quando recebem uma mensagem em suas contas indicando

que o tempo será bom no dia seguinte. Use esse intervalo

de confiança para testar H0: $\\mu$ = 20 contra a alternativa bilateral,

no nível de significância de 5%.

17.45 Testes a partir de intervalos de confiança. O Exercício

4PAS\\i 16.6 pede que você calcule um intervalo de confiança

de 90% para o verdadeiro ponto de fusão $\\mu$ de uma



¦11



amostra de cobre comprada do NIST. Eis as seis medições

da mesma amostra de cobre dadas no Exercício 16.6:



1084,55 1084,89 1085,02 1084,79 1084,69 1084,86



Você lê online que o ponto de fusão do cobre é l.084,62°C.

Se você ainda não tiver feito isto, calcule o intervalo de

confiança e use-o para testar H0: $\\mu$ = l.084,62ºC contra a

alternativa bilateral, no nível d~ significância de 10%. Use



o processo dos quatro passos.

