# Pacotes ------------------------------------------------------------------

library(ggplot2)
library(skimr)
library(tidymodels)

# Dados -------------------------------------------------------------------
data("diamonds")

# EAD ---------------------------------------------------------------------
# glimpse(diamonds)
# skim(diamonds)
# GGally::ggpairs(diamonds %>% sample_n(2000))
# qplot(x, price, data = diamonds)



# Precisamos passar pro R:
# 1. A f que queremos usar
# 2. Ajustar a f para um conjunto de dados

# ----------------------------------------------------------------------
# Passo 1: Especificações de 
# a) a f (a hipótese) com seus respectivos hiperparâmetros; 
# b) o pacote 'motor' (engine);
# c) a tarefa/modo ("regression" ou "classification").

especificacao_modelo <- decision_tree(cost_complexity = 0.001) %>%
  set_engine("rpart") %>%
  set_mode("regression")

# Outros exemplos...

# especificacao_modelo <- linear_reg() %>%
# set_engine("lm") %>%
# set_mode("regression")

# especificacao_modelo <- rand_forest() %>% 
# set_engine("ranger") %>% 
# set_mode("regression)


# --------------------------------------------------------------------
# Passo 2: Ajuste do modelo

modelo <- especificacao_modelo %>% 
  fit(price ~ x, data = diamonds)

print(modelo)

# rpart.plot::prp(modelo$fit)

# --------------------------------------------------------------------
# Passo 3: Analisar as previsões

diamonds_com_previsao <- diamonds %>% 
  mutate(
    price_pred = predict(modelo, new_data = diamonds)$.pred
  )

# Pontos observados + curva da f
diamonds_com_previsao %>%
  filter(x > 0) %>%
  ggplot() +
  geom_point(aes(x, price), alpha = 0.3) +
  geom_step(aes(x, price_pred), color = 'red', size = 1) +
  theme_bw()

# Observado vs Esperado
diamonds_com_previsao %>%
  filter(x > 0) %>%
  ggplot() +
  geom_point(aes(price_pred, price)) +
  geom_abline(slope = 1, intercept = 0, colour = "purple", size = 1) +
  theme_bw()

# Como quantificar a qualidade de um modelo?

library(yardstick)

# Métricas de erro
diamonds_com_previsao %>% rmse(truth = price, estimate = price_pred)

# residuo = truth-estimate

diamonds_com_previsao %>% mae(truth = price, estimate = price_pred)
diamonds_com_previsao %>% rsq(truth = price, estimate = price_pred)


