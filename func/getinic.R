#---função get iniciais maiúsculas de um nome qualquer
#   argumento: receber um vetor tipo <char> com um nome qualquer
#   retornar : um vetor apenas com as iniciais desse nome, todas maíusculas,
#   separadas por um ponto. ex. A.J.D.S.S (AILTON JUNIO DE SOUSA SILVA)
getinic <- function(e) {
  stopifnot("Vetor tem de ser tipo <char>"= is.character(e))
  p <- strsplit(e, "[ ]") |> unlist() # Split 1
  p <- substring(p, 1, 1)             # Split 2
  p <- toupper(p)                     # Aplly 1
  p <- paste0(p, ".")                 # Aplly 2
  paste(p, collapse = "")             # Combine 1 & return
}
