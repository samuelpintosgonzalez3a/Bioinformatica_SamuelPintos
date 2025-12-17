library(moments) # asmietrias y curtosis
library(ggplot2) # graficos
library(dplyr) # programación
library(gridExtra) # figuras
library(car) # levene test
library(ggstatsplot) # boxplots chulos
library(readr)
library(dunn.test)
library(gtsummary)

## Tabla de variables no paramétricas en base a dos variables de agrupación
# Con ANOVA si es paramétrica poniendo tras test = list(all_continuous() :  ~ "aov"),

tabla <-  df %>%
  tbl_strata(strata=Variable_de_agrupación,
             .tbl_fun = ~.x %>%
               tbl_summary(by= segunda variable de agrupación en base a la primera,
                           statistic = all_continuous() ~"{median} ({IQR})") %>%  #con ANOVA mejor poner
               add_p(test = list(all_continuous() ~ "kruskal.test"), #kruskal es para no paramétrica (no cumple normalidad; alternativa a ANOVA)
                     pvalue_fun = ~ style_pvalue(.x, digits = 3)
               )
  )

tabla


## TABLA SIN EL STRATA (SUBTIPOS DE SEPARACIÓN), es decir, basados en solo una variable de agrupación

tabla <- df %>%
  tbl_summary(
    by = variable,
    statistic = all_continuous() ~ "{median} ({IQR})" #sd para paramétricas
  ) %>%
  add_p(
    test = list(all_continuous() ~ "kruskal.test"),  # ~ "aov"), paea paramétricas
    pvalue_fun = ~ style_pvalue(.x, digits = 3)
  )

tabla
