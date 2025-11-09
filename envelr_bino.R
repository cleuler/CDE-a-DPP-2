#-------------------------------------------------------------
# Para rodar este programa  deixe no objeto fit.model a saída
# do  ajuste  da regressão com erro binomial e ligação logit.
# Deixe tambem o vetor de réplicas no objeto ntot e  os dados
# disponíveis através do comando attach(...).  Depois  use  o
# comando source(...) no splus para executar o programa. A
# sequência de comandos seria a seguinte:
#
#     > fit.model <- ajuste
#     > ntot <- replicas
#     > attach(dados)
#     > source("envelr.bino")
#
# A saída será o gráfico de  envelopes para o resíduo componente
# do desvio padronizado. Para colocar um título no gráficos após
# a saída faça use title("...").
#--------------------------------------------------------------

X <- model.matrix(fit.model)
k <- nrow(X)
e <- matrix(0,k,100)
tot <- numeric(k)
w <- fit.model$weights
W <- diag(w)
H <- solve(t(X)%*%W%*%X)
H <- sqrt(W)%*%X%*%H%*%t(X)%*%sqrt(W)
h <- diag(H)
td <- sort( resid(fit.model, type="deviance") / sqrt(1-h) )
#
for(i in 1:100){
  for(j in 1:k){
    dif <- runif(ntot[j]) - fitted(fit.model)[j]
    dif[dif>=0] <- 0
    dif[dif<0]  <- 1
    tot[j] <- sum(dif) }
  xmat <- cbind(tot,ntot-tot)
  fit <- glm(xmat ~ X, family=binomial)
  w <- fit$weights
  W <- diag(w)
  H <- solve(t(X)%*%W%*%X)
  H <- sqrt(W)%*%X%*%H%*%t(X)%*%sqrt(W)
  h <- diag(H)
  e[,i] <- sort( resid(fit, type="deviance") / sqrt( abs(1-h) ) )}
# Error in e[, i] <- sort(resid(fit, type = "deviance")/sqrt(abs(1 - h))) :
# substituto tem comprimento zero: é um vetor numeric(0)
# 0 / 0 = NaN
#
e1 <- numeric(k)
e2 <- numeric(k)
#
for(i in 1:k){
  eo <- sort(e[i,])
  e1[i] <- eo[5]
  e2[i] <- eo[95]}
#
med <- apply(e,1,mean)
faixa <- range(td,e1,e2)
par(pty="s")
qqnorm(td,xlab="Percentis da N(0,1)",
       ylab="Componente do Desvio", ylim=faixa,pch=16)
#
par(new=T)
qqnorm(e1,axes=F,xlab="",ylab="",type="l",ylim=faixa,lty=1)
par(new=T)
qqnorm(e2,axes=F,xlab="",ylab="", type="l",ylim=faixa,lty=1)
par(new=T)
qqnorm(med,axes=F,xlab="", ylab="", type="l", ylim=faixa, lty=2)
