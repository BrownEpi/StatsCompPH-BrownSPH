# Script run in the book_setup chunk in index.Rmd

pacman::p_load(tidyverse,
               data.table,
               SASmarkdown,
               magrittr,
               readxl,
               DT,
               summarytools,
               tidyr,
               readr,
               haven,
               ggplot2,
               ggthemes,
               broom,
               purrr,
               servr)

# Windows path
# saspath <- "C:/Program Files/SASHome/SASFoundation/9.4/sas.exe"
# sasopts <- "-nosplash -ls 75"

# Linux (Ubuntu) path
saspath <- "/usr/local/SASHome/SASFoundation/9.4/bin/sas_en"
sasopts <- "-ls 75"

# set default chunk options for RMarkdown
# h/t: https://melindahiggins.netlify.app/post/create-rmarkdown-document-with-sas-code-and-output-sas-engine/;
knitr::opts_chunk$set(
  engine.path = list(sas = saspath, sashtml = saspath, saslog = saspath),
  engine.opts = list(sas = sasopts, sashtml = sasopts, saslog = sasopts),
  comment = NA,
  dev = "svg"
)
