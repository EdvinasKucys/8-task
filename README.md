---
title: '8 task'
output: html_document
date: "2024-02-29"
---


# Removes the rows that have more than half non values and sorts them by year and Country

## Reads current file directory
```{r}
data_pol <- read.csv("C:/Users/edvin/Downloads/Duomenys-20240228/datapol.csv")
```
## Removes the rows that have more than half non values
```{r}
data_pol <- data_pol[(rowSums(is.na(data_pol)) <=
                            ncol(data_pol) / 2), ]
```
## Sorts values by year and country
```{r}
library(dplyr)
data_pol <- data_pol %>%
  arrange(year, country)
```
