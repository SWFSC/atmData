## code to prepare `nasc-density` dataset

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data
load(file.path(estimATM.dir, "1507SH/Output/nasc_final.Rdata"))
nasc_density_1507SH <- nasc



usethis::use_data(nasc_density_1507SH, overwrite = TRUE)
