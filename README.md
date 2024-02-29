---
title: '8 task'
output: html_document
date: "2024-02-29"
---


# removes collumns which have more than half non values and sorts them by year and Country

## reads current file directory
```{r}
data_pol <- read.csv("C:/Users/edvin/Downloads/Duomenys-20240228/datapol.csv")
```
## removes collumns which have more than half non values
```{r}
data_pol <- data_pol[, (colSums(data_pol =="" |is.na(data_pol))<
                                        nrow(data_pol) / 2)]
```
## sorts values by year and country
```{r}
library(dplyr)
data_pol <- data_pol %>%
  arrange(year, country)
```