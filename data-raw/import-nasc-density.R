## code to prepare `nasc_density_*` data sets

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data
load(file.path(estimATM.dir, "1507SH/Output/nasc_final.Rdata"))
nasc_density_1507SH <- nasc

usethis::use_data(nasc_density_1507SH, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1507SH"))

## 2016 data
load(file.path(estimATM.dir, "1606RL/Output/nasc_final.Rdata"))
nasc_density_1606RL <- nasc

usethis::use_data(nasc_density_1606RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1606RL"))

## 2017 data
load(file.path(EstimateCPS.dir, "1707RL/Output/nasc_final.Rdata"))
nasc_density_1707RL <- nasc

usethis::use_data(nasc_density_1707RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1707RL"))

## 2018 data
load(file.path(EstimateCPS.dir, "1807RL/Output/nasc_final.Rdata"))
nasc_density_1807RL <- nasc

usethis::use_data(nasc_density_1807RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1807RL"))

## 2019 data
load(file.path(estimATM.dir, "1907RL/Output/nasc_final.Rdata"))
nasc_density_1907RL <- nasc

usethis::use_data(nasc_density_1907RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1907RL"))

## 2021 data
load(file.path(estimATM.dir, "2107RL/Output/nasc_final.Rdata"))
nasc_density_2107RL <- nasc

usethis::use_data(nasc_density_2107RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_2107RL"))

## 2022 data
load(file.path(estimATM.dir, "2207RL/Output/nasc_final.Rdata"))
nasc_density_2207RL <- nasc

usethis::use_data(nasc_density_2207RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_2207RL"))


