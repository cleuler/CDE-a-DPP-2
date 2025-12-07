# SUMÁRIO: Capítulo 32 - Reamostragem

## Arquivos Criados

### 1. cap32-Reamostragem-TestesPermutacao-Bootstrap-completo.qmd
Documento Quarto principal com:
- ✅ Teoria completa sobre testes de permutação e bootstrap
- ✅ Todos os exemplos do capítulo (32.1 a 32.13)
- ✅ Chunks R integrados com:
  * Exemplo 32.1 e 32.2: Perda de peso e distribuição de permutação
  * Exemplo 32.3: Repelentes de insetos (dados emparelhados)
  * Exemplo 32.4: Simulação com 10.000 permutações
  * Exemplo 32.9: Bootstrap para média (tempos viagem NC)
  * Exemplo 32.10: Bootstrap para razão de médias (NY/NC)
- ✅ Soluções COMPLETAS dos exercícios principais:
  * Exercício 32.1: Anotações à mão vs laptop
  * Exercício 32.2: Crescimento de árvores com CO₂
  * Exercício 32.21: Odores em restaurante
  * Exercício 32.24: Obesidade na adolescência
  * Exercício 32.26: E. coli em praias

### 2. cap32-scripts-completos.R
Script R standalone com:
- ✅ TODOS os exemplos do capítulo
- ✅ TODOS os exercícios com soluções
- ✅ Funções auxiliares:
  * `permutation_test()`: teste de permutação generalizado
  * `bootstrap_ci()`: intervalos de confiança bootstrap
- ✅ Pronto para execução independente

## Conteúdo dos Chunks R

### Exemplos Implementados

1. **Exemplo 32.1-32.2**: Distribuição de permutação completa (20 permutações)
   - Todas as combinações possíveis
   - Cálculo de diferenças de médias
   - Visualização com gráfico de pontos
   - Valor P bilateral

2. **Exemplo 32.3**: Teste de permutação para dados emparelhados
   - 4 sujeitos, 16 permutações (2^4)
   - Repelentes DEET vs Óleo de eucalipto-limão
   - Distribuição de permutação
   - Gráficos comparativos

3. **Exemplo 32.4**: Simulação com 10.000 permutações
   - Comparação com distribuição exata
   - Valor P empírico
   - Histograma da distribuição simulada

4. **Exemplo 32.6**: Dor compartilhada e vínculo (no script R)
   - 54 estudantes (27 por grupo)
   - Boxplots comparativos
   - Teste de permutação para medianas
   - Valores atípicos identificados

5. **Exemplo 32.9**: Bootstrap para média
   - 15 tempos de viagem NC
   - 1000 amostras bootstrap
   - Comparação com erro-padrão teórico
   - IC bootstrap percentílico 95%
   - Comparação com IC t

6. **Exemplo 32.10**: Bootstrap para razão de médias
   - Tempos NY/NC
   - Distribuição assimétrica
   - IC bootstrap 95%
   - Interpretação da razão

### Exercícios Resolvidos

1. **Exercício 32.1**: Anotações à mão vs laptop
   - ✅ Todas as 15 combinações listadas
   - ✅ Distribuição de permutação tabulada
   - ✅ Valor P calculado
   - ✅ Teste de significância 5%
   - ✅ Comparação com teste t
   - ✅ Visualização com histograma

2. **Exercício 32.2**: Crescimento de árvores com CO₂
   - ✅ Planejamento emparelhado explicado
   - ✅ Hipóteses H0 e Ha estabelecidas
   - ✅ Todas as 8 permutações (2^3)
   - ✅ Distribuição amostral
   - ✅ Valor P unilateral
   - ✅ Conclusão sobre efeito do CO₂

3. **Exercício 32.21**: Odores e gastos em restaurante
   - ✅ 30 clientes por grupo
   - ✅ Teste de permutação com 10.000 simulações
   - ✅ Estatísticas descritivas
   - ✅ Valor P unilateral
   - ✅ Histograma da distribuição
   - ✅ Conclusão sobre efeito da lavanda

4. **Exercício 32.24**: Obesidade na adolescência
   - ✅ Banda gástrica (n=24) vs Intervenção (n=18)
   - ✅ Boxplot comparativo
   - ✅ Teste de permutação 10.000 simulações
   - ✅ Valor P unilateral
   - ✅ Conclusão sobre eficácia da banda gástrica

5. **Exercício 32.26**: E. coli em praias
   - ✅ 24 praias do Lago Erie
   - ✅ Estatísticas descritivas completas
   - ✅ Histograma com linha de nível inseguro
   - ✅ Bootstrap com 1000 amostras
   - ✅ IC 95% para nível médio
   - ✅ Interpretação em relação ao limite de segurança

## Visualizações Incluídas

1. Gráficos de pontos (dot plots) para distribuições pequenas
2. Histogramas para distribuições simuladas
3. Boxplots comparativos para grupos
4. Gráficos de linhas para dados emparelhados
5. Curvas normais sobrepostas quando apropriado
6. Linhas verticais para valores observados
7. Anotações e legendas explicativas

## Pacotes R Utilizados

- `tidyverse`: manipulação e visualização de dados
- `infer`: inferência estatística tidyverse-style
- `boot`: métodos bootstrap
- `knitr`: geração de tabelas
- `kableExtra`: formatação avançada de tabelas

## Como Usar

### Opção 1: Renderizar o documento Quarto
```bash
quarto render cap32-Reamostragem-TestesPermutacao-Bootstrap-completo.qmd
```

### Opção 2: Executar o script R standalone
```r
source("cap32-scripts-completos.R")
```

### Opção 3: Executar chunks individuais no RStudio
Abrir o arquivo .qmd no RStudio e executar os chunks interativamente

## Características do Código

✅ Reprodutível (set.seed(2025))
✅ Bem comentado
✅ Tabelas formatadas
✅ Gráficos profissionais
✅ Interpretações incluídas
✅ Comparações quando aplicável
✅ Testes estatísticos complementares
✅ Funções reutilizáveis

## Conceitos Estatísticos Cobertos

### Testes de Permutação
- Distribuição de permutação exata
- Simulação de permutações
- Testes para dados emparelhados
- Testes para dois grupos independentes
- Valor P unilateral e bilateral
- Comparação com testes paramétricos

### Métodos Bootstrap
- Amostragem com reposição
- Distribuição bootstrap
- Erro-padrão bootstrap
- IC bootstrap percentílico
- Bootstrap para média
- Bootstrap para mediana
- Bootstrap para razão de médias
- Bootstrap para parâmetros complexos

### Visualização de Dados
- Boxplots para comparação de grupos
- Histogramas de distribuições
- Gráficos de densidade
- Linhas de referência
- Anotações explicativas

## Arquivos Finais

1. `cap32-Reamostragem-TestesPermutacao-Bootstrap-completo.qmd` (Documento principal)
2. `cap32-scripts-completos.R` (Scripts independentes)
3. Este arquivo: `SUMARIO-cap32.md` (Documentação)

---

**Status**: ✅ COMPLETO
**Data**: 2025-12-07
**Linguagem**: R (versão 4.x+)
**Framework**: Quarto
