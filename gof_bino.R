############################################################################################
# Descrição e detalhes:
# A saída terá a estatística de Hosmer e Lemeshow de qualidade do ajuste de um modelo
# com distribuição binomial sem réplicas.
#
# Os dados devem estar disponíveis pelo comando attach( ).
#
# Argumentos obrigatórios:
# modelo: deve-se informar o objeto onde está o ajuste do modelo com distribuição binomial,
# caso não seja informado, a função procurará o ajuste no objeto fit.model;
#
# Argumentos opcionais:
# grupos: Hosmer e Lemeshow sugerem a formação de 10 grupos, portanto esse é o padrão, mas
# caso se queira pode-se escolher outro número de grupos de 5 a 20.
#
# A função retorna os seguintes valores: valor da estatística, graus de liberdade e nível descritivo.
#
# Autor: Frederico Zanqueta Poleto <fred@poleto.com>, arquivo disponível em http://www.poleto.com
#
# Referências:
# HOSMER, D. W. e LEMESHOW, S. (2000). Applied Logistic Regression. John Wiley & Sons, New York.
# PAULA, G. A. (2003). Modelos de Regressão com apoio computacional. IME-USP, São Paulo. [Não publicado,
#    disponível em http://www.ime.usp.br/~giapaula/Book.pdf]
#
# Exemplo:
# gof.bino(ajuste)
############################################################################################

gof.bino <- function(modelo=fit.model,grupos=10) {

  if(class(modelo)[1] != "glm") {
    stop(paste("\nA classe do objeto deveria ser glm e nao ",class(modelo),"!!!\n"))
  }
  if(modelo$family[[1]] != "Binomial" & modelo$family[[1]] != "binomial" & modelo$family[[1]] != "Aranda") {
    stop(paste("\nA familia do objeto deveria ser Binomial e nao ",modelo$family[[1]],"!!!\n"))
  }
  if(grupos < 5 | grupos > 20) {
    stop(paste("\nA funcao nao aceita numero de grupos menor que 5 ou maior que 20 !!!\n"))
  }

  m<-predict(modelo,type="response")
  n<-length(m)
  if(n / grupos < 1) {
    stop(paste("\nNumero de grupos maior que o numero de observações !!!\n"))
  }
  if(is.null(modelo$prior.weights)) {
    ntot<-rep(1,n)
  } else {
    ntot<-modelo$prior.weights
  }
  if(any(ntot>1)) {
    stop(paste("\nVoce tem replicas, nao faz sentido agrupar !!!\n"))
  }
  y<-round(modelo$y*ntot,0)
  ngrupo<-numeric(grupos)
  for (j in 1:grupos) {
    ngrupo[j]<-floor(n/grupos)
  }
  x<-n-sum(ngrupo)
  if(x > 0) {
    for (j in trunc((grupos-x)/2+1):floor((grupos-x)/2+x) ) {
      ngrupo[j]<-ngrupo[j]+1
    }
    x<-n-sum(ngrupo)
    if (x > 0) {
      ngrupo[floor(grupos/2)]<-ngrupo[floor(grupos/2)]+1
    }
  }
  oh<-numeric(grupos)
  ph<-numeric(grupos)
  g<-1
  k<-0
  for(j in order(m)) {
    k<-k+1
    oh[g]<-oh[g]+y[j]
    ph[g]<-ph[g]+m[j]
    if (ngrupo[g]==k) {
      k<-0
      g<-g+1
    }
  }

  x2<-sum( ((oh-ph)^2)/(ph*(1-ph/ngrupo)) )

  pvalue<-1-pchisq(x2,grupos-2)

  list(x2=x2,df=grupos-2,pvalue=pvalue)
}

