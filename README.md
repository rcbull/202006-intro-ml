
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Configuração inicial

#### Passo 1: Instalar pacotes

``` r
install.packages("remotes")

# instalar pacotes com bases de dados
remotes::install_github("curso-r/basesCursoR")

# instalar pacote da Curso-R
remotes::install_github("curso-r/CursoR")

# instalar pacotes que vamos usar durante o curso
CursoR::instalar_dependencias()
```

#### Passo 2: Criar um projeto do RStudio

Faça um projeto do RStudio para usar durante todo o curso e em seguida
abra-o.

#### Passo 3: Baixar o material

Certifique que você está dentro do projeto criado no passo 2 e rode o
código abaixo.

OBS: Assim que rodar o código abaixo, o programa vai pedir uma escolha
de opções. Escolha o número correspondente ao curso de Machine Learning
com R\!

``` r
# Baixar ou atualizar material do curso
CursoR::atualizar_material()
```

## Lista de arquivos e códigos

| Slides                                                                                                                      |
| :-------------------------------------------------------------------------------------------------------------------------- |
| <a href='https://curso-r.github.io/intro-ml-mestre/slides/00-intro-curso.html'>slides/00-intro-curso.html</a>               |
| <a href='https://curso-r.github.io/intro-ml-mestre/slides/01-intro-ml.html'>slides/01-intro-ml.html</a>                     |
| <a href='https://curso-r.github.io/intro-ml-mestre/slides/03-modelos-de-arvores.html'>slides/03-modelos-de-arvores.html</a> |
| <a href='https://curso-r.github.io/intro-ml-mestre/slides/04-dataprep.html'>slides/04-dataprep.html</a>                     |

| Exemplos                                                                                                                                                |
| :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/01-tidymodels.R'>exemplos/01-tidymodels.R</a>                                               |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/02-overfitting.R'>exemplos/02-overfitting.R</a>                                             |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/03-cross-validation.R'>exemplos/03-cross-validation.R</a>                                   |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/04-hiperparametros.R'>exemplos/04-hiperparametros.R</a>                                     |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/05-regressao-linear.R'>exemplos/05-regressao-linear.R</a>                                   |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/06-regressao-logistica.R'>exemplos/06-regressao-logistica.R</a>                             |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/07-regressao-linear-com-lasso-na-mao.R'>exemplos/07-regressao-linear-com-lasso-na-mao.R</a> |
| <a href='https://curso-r.github.io/intro-ml-mestre/exemplos/08-normalizacao-lasso-recipes.R'>exemplos/08-normalizacao-lasso-recipes.R</a>               |

| Scripts feitos em aula                                                                                                                               |
| :--------------------------------------------------------------------------------------------------------------------------------------------------- |
| <a href='https://curso-r.github.io/202006-intro-ml/scripts_feitos_em_aula/01-tidymodels.R'>scripts\_feitos\_em\_aula/01-tidymodels.R</a>             |
| <a href='https://curso-r.github.io/202006-intro-ml/scripts_feitos_em_aula/02-overfitting.R'>scripts\_feitos\_em\_aula/02-overfitting.R</a>           |
| <a href='https://curso-r.github.io/202006-intro-ml/scripts_feitos_em_aula/03-cross-validation.R'>scripts\_feitos\_em\_aula/03-cross-validation.R</a> |
| <a href='https://curso-r.github.io/202006-intro-ml/scripts_feitos_em_aula/99-ignorar.R'>scripts\_feitos\_em\_aula/99-ignorar.R</a>                   |

| Exercícios                                                                                                                |
| :------------------------------------------------------------------------------------------------------------------------ |
| <a href='https://curso-r.github.io/intro-ml-mestre/exercicios/01-tidymodels.R'>exercicios/01-tidymodels.R</a>             |
| <a href='https://curso-r.github.io/intro-ml-mestre/exercicios/02-overfitting.R'>exercicios/02-overfitting.R</a>           |
| <a href='https://curso-r.github.io/intro-ml-mestre/exercicios/03-cross-validation.R'>exercicios/03-cross-validation.R</a> |
| <a href='https://curso-r.github.io/intro-ml-mestre/exercicios/05-regressao-linear.R'>exercicios/05-regressao-linear.R</a> |

| Gabaritos                                                                                                               |
| :---------------------------------------------------------------------------------------------------------------------- |
| <a href='https://curso-r.github.io/intro-ml-mestre/gabaritos/01-tidymodels.R'>gabaritos/01-tidymodels.R</a>             |
| <a href='https://curso-r.github.io/intro-ml-mestre/gabaritos/02-overfitting.R'>gabaritos/02-overfitting.R</a>           |
| <a href='https://curso-r.github.io/intro-ml-mestre/gabaritos/03-cross-validation.R'>gabaritos/03-cross-validation.R</a> |
| <a href='https://curso-r.github.io/intro-ml-mestre/gabaritos/05-regressao-linear.R'>gabaritos/05-regressao-linear.R</a> |

## Referências externas

#### Programação em R

  - [Livro da Curso-R (Curso-R)](https://livro.curso-r.com/)
  - [Tidyverse (Wickham H)](https://www.tidyverse.org/)
  - [R for Data Science (Wickham H)](https://r4ds.had.co.nz/)
  - [Advanced R (Wickham H)](https://adv-r.hadley.nz/)

#### Machine Learning

  - [Introduction to Statistical Learning (Hastie, et
    al)](http://faculty.marshall.usc.edu/gareth-james/ISL/ISLR%20Seventh%20Printing.pdf)
  - [Elements of Statistical Learning (Hastie, et
    al)](https://web.stanford.edu/~hastie/Papers/ESLII.pdf)
  - [Computer Age Statistical Inference (Hastie,
    Efron)](https://web.stanford.edu/~hastie/CASI_files/PDF/casi.pdf)
  - [Tidymodels (Kuhn, et al)](https://www.tidymodels.org/)
  - [Feature Engineering and Selection: A Practical Approach for
    Predictive Models (Kuhn, Kjell)](http://www.feat.engineering/)
  - [Kaggle](https://www.kaggle.com/)

#### Miscelânea

  - [Tidytext (Silges, et al)](https://www.tidytextmining.com/)
