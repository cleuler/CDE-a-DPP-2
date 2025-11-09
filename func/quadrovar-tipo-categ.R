#---Função extrair tipo da variável do quadro de variáveis

tipo <- function(x) {
  # descartar campod vazios <blanck>
  x <- x[x != ""]
  l <- length(x)
  if (l == 1) return("caracter")
  if (l == 2) return("data")
  if (l >= 2) return("categórica")
}

#---Função para extrair as categorias/formatos de todas variáveis
#   será aplicada sobre todas as colunas do data set quadrovar
#   extrair da 3ª linha em diante de cada coluna, todas as categorias <char>
#   fazer um paste0 desse vetor para reunir todas elas, sepradas por ", "
#   retornar esse resultado
categ <- function(x) {
  # descartar campod vazios <blanck>
  x <- x[x != ""]
  l <- length(x)
  ifelse(l == 1, x[1], paste0(x[2:l], collapse = ", "))
}
