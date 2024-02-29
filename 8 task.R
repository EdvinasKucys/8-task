data_pol <- read.csv("C:/Users/edvin/Downloads/Duomenys-20240228/datapol - Copy.csv")


data_pol <- data_pol[, (colSums(data_pol =="" | is.na(data_pol))< nrow(data_pol) / 2)]

data_pol <- data_pol %>%
  arrange(year, country)
head(data_pol)

data_pol <- read.csv("C:/Users/edvin/Downloads/Duomenys-20240228/datapol.csv")


data_pol <- data_pol[,(colSums(is.na(data_pol)) < nrow(data_pol) / 2)]

data_pol <- data_pol %>%
  arrange(year, country)

```
data_pol
```
data_pol
