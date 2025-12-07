# Scripts R para Capítulo 32 - Reamostragem
# Todos os exemplos e exercícios com código completo

# ===============================
# CONFIGURAÇÃO INICIAL
# ===============================

library(tidyverse)
library(infer)
library(boot)
library(knitr)
library(kableExtra)

theme_set(theme_minimal(base_size = 12))
set.seed(2025)

# ===============================
# EXEMPLO 32.3: Teste Permutação Emparelhado
# ===============================

repelentes <- data.frame(
  Sujeito = c("Erin", "Raj", "Todd", "Wanda"),
  DEET = c(5, 7, 4, 4),
  Oleo_Eucalipto = c(8, 7, 6, 7)
) %>%
  mutate(Diferenca = DEET - Oleo_Eucalipto)

# Teste de permutação para dados emparelhados
diferencas_abs <- abs(repelentes$Diferenca)
n_sujeitos <- nrow(repelentes)

# Todas as 16 permutações possíveis (2^4)
todas_permutacoes <- expand.grid(rep(list(c(-1, 1)), n_sujeitos))

medias_permutadas <- apply(todas_permutacoes, 1, function(sinais) {
  mean(sinais * diferencas_abs)
})

# Distribuição de permutação
dist_perm <- data.frame(Media_Dif = round(medias_permutadas, 2)) %>%
  group_by(Media_Dif) %>%
  summarise(Frequencia = n(), .groups = "drop") %>%
  mutate(Probabilidade = Frequencia / 16) %>%
  arrange(Media_Dif)

print(dist_perm)

# Valor P
media_obs <- mean(repelentes$Diferenca)
valor_p <- mean(abs(medias_permutadas) >= abs(media_obs))
cat("\nMédia observada:", media_obs)
cat("\nValor P (bilateral):", valor_p)

# ===============================
# EXEMPLO 32.4: Simulação 10.000 Permutações
# ===============================

perda_peso <- c(2, 15, 8, 1, 12, 9)
n_sim <- 10000

diferencas_sim <- replicate(n_sim, {
  idx_trat <- sample(1:6, 3)
  idx_ctrl <- setdiff(1:6, idx_trat)
  mean(perda_peso[idx_trat]) - mean(perda_peso[idx_ctrl])
})

valor_p_empirico <- mean(abs(diferencas_sim) >= 3.67)
cat("\nValor P empírico:", valor_p_empirico)

# ===============================
# EXEMPLO 32.6: Dor Compartilhada e Vínculo
# ===============================

# Dados dos 54 estudantes
grupo_sem_dor <- c(3.43, 4.86, 1.71, 1.71, 3.86, 3.14, 4.14, 3.14, 4.43, 3.71,
                   3.00, 3.14, 4.14, 4.29, 2.43, 2.71, 4.43, 3.43, 1.29, 1.29,
                   3.00, 3.00, 2.86, 2.14, 4.71, 1.00, 3.71)

grupo_com_dor <- c(4.71, 4.86, 4.14, 1.29, 2.29, 4.43, 3.57, 4.43, 3.57, 3.43,
                   4.14, 3.86, 4.57, 4.57, 4.29, 1.43, 4.29, 3.57, 3.57, 3.43,
                   2.29, 4.00, 4.43, 4.71, 4.71, 2.14, 3.57)

dados_dor <- data.frame(
  Grupo = rep(c("Sem Dor", "Com Dor"), c(27, 27)),
  Escore = c(grupo_sem_dor, grupo_com_dor)
)

# Estatísticas descritivas
dados_dor %>%
  group_by(Grupo) %>%
  summarise(
    Media = mean(Escore),
    Mediana = median(Escore),
    DP = sd(Escore),
    Min = min(Escore),
    Max = max(Escore),
    .groups = "drop"
  )

# Teste de permutação para medianas (mais robusto)
set.seed(2025)
n_perm <- 10000

medianas_perm <- replicate(n_perm, {
  escores_permutados <- sample(dados_dor$Escore)
  median(escores_permutados[1:27]) - median(escores_permutados[28:54])
})

dif_mediana_obs <- median(grupo_com_dor) - median(grupo_sem_dor)
valor_p_mediana <- mean(medianas_perm >= dif_mediana_obs)

cat("\nDiferença nas medianas observada:", dif_mediana_obs)
cat("\nValor P (unilateral):", valor_p_mediana)

# ===============================
# EXEMPLO 32.9: Bootstrap - Tempos Viagem NC
# ===============================

tempos_nc <- c(5, 8, 10, 12, 15, 15, 20, 20, 25, 30, 30, 35, 40, 40, 70)

# 1000 amostras bootstrap
n_boot <- 1000
medias_boot <- replicate(n_boot, {
  amostra_boot <- sample(tempos_nc, replace = TRUE)
  mean(amostra_boot)
})

# Estatísticas da distribuição bootstrap
cat("\nMédia original:", mean(tempos_nc))
cat("\nMédia das médias bootstrap:", mean(medias_boot))
cat("\nErro-padrão bootstrap:", sd(medias_boot))
cat("\nErro-padrão teórico:", sd(tempos_nc) / sqrt(length(tempos_nc)))

# IC Bootstrap percentílico 95%
ic_boot_95 <- quantile(medias_boot, c(0.025, 0.975))
cat("\nIC Bootstrap 95%:", ic_boot_95)

# ===============================
# EXEMPLO 32.10: Bootstrap - Razão de Médias
# ===============================

tempos_ny <- c(10, 10, 10, 10, 12, 15, 15, 20, 20, 30, 30, 35, 35, 40, 45,
               50, 50, 60, 65, 75)

razoes_boot <- replicate(n_boot, {
  boot_ny <- sample(tempos_ny, replace = TRUE)
  boot_nc <- sample(tempos_nc, replace = TRUE)
  mean(boot_ny) / mean(boot_nc)
})

# Estatísticas
cat("\nRazão observada:", mean(tempos_ny) / mean(tempos_nc))
cat("\nMédia das razões bootstrap:", mean(razoes_boot))
cat("\nDP das razões bootstrap:", sd(razoes_boot))

# IC 95%
ic_razao_95 <- quantile(razoes_boot, c(0.025, 0.975))
cat("\nIC Bootstrap 95%:", ic_razao_95)

# ===============================
# EXERCÍCIO 32.1: Anotações Mão vs Laptop
# ===============================

# Dados
notas_mao <- c(360, 400, 420)  # Doug, Oksana, Sebastian
notas_laptop <- c(370, 320, 390)  # Elly, Xinyi, Steve
todos_sujeitos <- c("Doug", "Elly", "Oksana", "Sebastian", "Steve", "Xinyi")
todas_notas <- c(360, 370, 400, 420, 320, 390)

# (a) Todas as 15 combinações possíveis (C(6,4))
combinacoes <- combn(1:6, 4)
n_comb <- ncol(combinacoes)

# (b) Calcular diferença de médias para cada combinação
diferencas_ex1 <- numeric(n_comb)

for(i in 1:n_comb) {
  idx_mao <- combinacoes[, i]
  idx_laptop <- setdiff(1:6, idx_mao)
  
  diferencas_ex1[i] <- mean(todas_notas[idx_mao]) - mean(todas_notas[idx_laptop])
}

# Distribuição de permutação
dist_perm_ex1 <- data.frame(Diferenca = round(diferencas_ex1, 2)) %>%
  group_by(Diferenca) %>%
  summarise(Frequencia = n(), .groups = "drop") %>%
  mutate(Probabilidade = Frequencia / n_comb) %>%
  arrange(Diferenca)

print(dist_perm_ex1)

# (c) Diferença observada (mão - laptop)
dif_obs_ex1 <- mean(c(360, 400, 420)) - mean(c(370, 320, 390))
valor_p_ex1 <- mean(abs(diferencas_ex1) >= abs(dif_obs_ex1))

cat("\nDiferença observada:", dif_obs_ex1)
cat("\nValor P (bilateral):", valor_p_ex1)

# (d) Significância no nível de 5%?
cat("\nSignificante ao nível 5%?", ifelse(valor_p_ex1 < 0.05, "Sim", "Não"))

# (e) Teste t de duas amostras
teste_t_ex1 <- t.test(c(360, 400, 420), c(370, 320, 390))
print(teste_t_ex1)

# ===============================
# EXERCÍCIO 32.2: Crescimento Árvores CO2
# ===============================

controle <- c(9.752, 7.263, 5.742)
tratado <- c(10.587, 9.244, 8.675)
diferencas_co2 <- tratado - controle

cat("\n(a) Planejamento emparelhado: cada par é um lote específico")
cat("\n(b) H0: CO2 extra não afeta crescimento")
cat("\n    Ha: CO2 extra aumenta crescimento (unilateral)")

# (c) Todas as permutações (2^3 = 8)
sinais_possiveis <- expand.grid(rep(list(c(-1, 1)), 3))

medias_perm_co2 <- apply(sinais_possiveis, 1, function(sinais) {
  mean(sinais * abs(diferencas_co2))
})

cat("\n\n(c) Distribuição amostral:")
print(table(round(medias_perm_co2, 3)))

# (d) Valor P unilateral
media_obs_co2 <- mean(diferencas_co2)
valor_p_co2 <- mean(medias_perm_co2 >= media_obs_co2)

cat("\n(d) Média observada:", media_obs_co2)
cat("\n    Valor P (unilateral):", valor_p_co2)

# ===============================
# EXERCÍCIO 32.21: Odores e Gastos (SIMULADO)
# ===============================

# Dados simulados (30 clientes por grupo)
set.seed(2025)
sem_odor <- c(15.9, 18.5, 15.9, 18.5, 18.5, 21.9, 15.9, 15.9, 15.9, 15.9,
              15.9, 18.5, 18.5, 18.5, 20.5, 18.5, 18.5, 15.9, 15.9, 15.9,
              18.5, 18.5, 15.9, 18.5, 15.9, 18.5, 15.9, 25.5, 12.9, 15.9)

lavanda <- c(21.9, 18.5, 22.3, 21.9, 18.5, 24.9, 18.5, 22.5, 21.5, 21.9,
             21.5, 18.5, 25.5, 18.5, 18.5, 21.9, 18.5, 18.5, 24.9, 21.9,
             25.9, 21.9, 18.5, 18.5, 22.8, 18.5, 21.9, 20.7, 21.9, 22.5)

dados_odor <- data.frame(
  Grupo = rep(c("Sem Odor", "Lavanda"), c(30, 30)),
  Gasto = c(sem_odor, lavanda)
)

# Teste de permutação
set.seed(2025)
n_perm_odor <- 10000

dif_obs_odor <- mean(lavanda) - mean(sem_odor)

diferencas_perm_odor <- replicate(n_perm_odor, {
  gastos_perm <- sample(dados_odor$Gasto)
  mean(gastos_perm[1:30]) - mean(gastos_perm[31:60])
})

valor_p_odor <- mean(diferencas_perm_odor >= dif_obs_odor)

cat("\nDiferença observada (Lavanda - Sem Odor):", dif_obs_odor)
cat("\nValor P (unilateral):", valor_p_odor)

# ===============================
# EXERCÍCIO 32.24: Obesidade Adolescentes (SIMULADO)
# ===============================

# Dados simulados
banda_gastrica <- c(35.6, 81.4, 57.6, 32.8, 31.0, 37.6, 36.5, -5.4, 27.9, 49.0,
                    64.8, 39.0, 43.0, 33.9, 29.7, 20.2, 15.2, 41.7, 53.4, 13.4,
                    24.8, 19.4, 32.3, 22.0)

intervencao <- c(6.0, 2.0, -3.0, 20.6, 11.6, 15.5, -17.0, 1.4, 4.0, -4.6,
                 15.8, 34.6, 6.0, -3.1, -4.3, -16.7, -1.8, -12.8)

dados_obesidade <- data.frame(
  Grupo = rep(c("Banda Gástrica", "Intervenção"), c(24, 18)),
  Perda_Peso = c(banda_gastrica, intervencao)
)

# Teste de permutação
set.seed(2025)
n_perm_obes <- 10000

dif_obs_obes <- mean(banda_gastrica) - mean(intervencao)

diferencas_perm_obes <- replicate(n_perm_obes, {
  pesos_perm <- sample(dados_obesidade$Perda_Peso)
  mean(pesos_perm[1:24]) - mean(pesos_perm[25:42])
})

valor_p_obes <- mean(diferencas_perm_obes >= dif_obs_obes)

cat("\nDiferença observada:", dif_obs_obes, "kg")
cat("\nValor P (unilateral):", valor_p_obes)

# ===============================
# EXERCÍCIO 32.26: E. coli Bootstrap IC
# ===============================

# Dados (24 praias)
ecoli_niveis <- c(18.7, 579.4, 1986.3, 517.2, 98.7, 45.7, 124.6, 201.4, 19.9, 83.6,
                  365.4, 307.6, 285.1, 152.9, 18.7, 151.5, 365.4, 238.2, 209.8, 290.9,
                  137.6, 1046.2, 127.4, 224.7)

# Bootstrap
set.seed(2025)
n_boot_ecoli <- 1000

medias_boot_ecoli <- replicate(n_boot_ecoli, {
  amostra_boot <- sample(ecoli_niveis, replace = TRUE)
  mean(amostra_boot)
})

# IC Bootstrap 95%
ic_ecoli_95 <- quantile(medias_boot_ecoli, c(0.025, 0.975))

cat("\nMédia observada:", mean(ecoli_niveis))
cat("\nIC Bootstrap 95%:", ic_ecoli_95)
cat("\nNível inseguro: > 400 bactérias por 100 ml")

# ===============================
# FUNÇÕES ÚTEIS
# ===============================

# Função para teste de permutação (duas amostras)
permutation_test <- function(grupo1, grupo2, n_perm = 10000, alternative = "two.sided") {
  dados <- c(grupo1, grupo2)
  n1 <- length(grupo1)
  n_total <- length(dados)
  
  dif_obs <- mean(grupo1) - mean(grupo2)
  
  diferencas_perm <- replicate(n_perm, {
    indices <- sample(n_total)
    mean(dados[indices[1:n1]]) - mean(dados[indices[(n1+1):n_total]])
  })
  
  if(alternative == "two.sided") {
    p_value <- mean(abs(diferencas_perm) >= abs(dif_obs))
  } else if(alternative == "greater") {
    p_value <- mean(diferencas_perm >= dif_obs)
  } else {
    p_value <- mean(diferencas_perm <= dif_obs)
  }
  
  list(
    diferenca_observada = dif_obs,
    valor_p = p_value,
    diferencas_permutadas = diferencas_perm
  )
}

# Função para IC Bootstrap
bootstrap_ci <- function(dados, estatistica = mean, n_boot = 1000, conf_level = 0.95) {
  boot_stats <- replicate(n_boot, {
    amostra_boot <- sample(dados, replace = TRUE)
    estatistica(amostra_boot)
  })
  
  alpha <- 1 - conf_level
  ic <- quantile(boot_stats, c(alpha/2, 1 - alpha/2))
  
  list(
    estatistica_observada = estatistica(dados),
    ic_inferior = ic[1],
    ic_superior = ic[2],
    estatisticas_bootstrap = boot_stats
  )
}

cat("\n\n=== Scripts carregados com sucesso! ===\n")
