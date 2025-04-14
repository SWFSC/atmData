## code to prepare `nasc_density_*` data sets

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "1507SH/Output/nasc_final.Rdata"))
nasc_density_1507SH <- nasc %>% dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(nasc_density_1507SH, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1507SH"))

## 2016 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "1606RL/Output/nasc_final.Rdata"))
nasc_density_1606RL <- nasc %>% dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(nasc_density_1606RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1606RL"))

## 2017 data
## Import data and define sampling regions
load(file.path(EstimateCPS.dir, "1707RL/Output/nasc_final.Rdata"))
nasc_density_1707RL <- nasc %>% dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(nasc_density_1707RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1707RL"))

## 2018 data
## Import data and define sampling regions
load(file.path(EstimateCPS.dir, "1807RL/Output/nasc_final.Rdata"))
nasc_density_1807RL <- nasc %>% dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(nasc_density_1807RL, overwrite = TRUE)
rm(list = c("nasc", "nasc_density_1807RL"))

## 2019 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "1907RL/Output/nasc_final.Rdata"))
load(file.path(estimATM.dir, "1907RL/Output/nasc_nearshore_final.Rdata"))
nasc <- nasc %>% dplyr::mutate(Region = "Core")
nasc.ns <- nasc.nearshore %>% dplyr::mutate(Region = "Nearshore")

# Combine regions
nasc_density_1907RL <- dplyr::bind_rows(nasc, nasc.ns)

## Save data and clean-up
usethis::use_data(nasc_density_1907RL, overwrite = TRUE)
rm(list = c("nasc", "nasc.ns", "nasc_density_1907RL"))

## 2021 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "2107RL/Output/nasc_final.Rdata"))
load(file.path(estimATM.dir, "2107RL/Output/nasc_nearshore_final.Rdata"))
nasc <- nasc %>% dplyr::mutate(Region = "Core")
nasc.ns <- nasc.nearshore %>% dplyr::mutate(Region = "Nearshore")

# Combine regions
nasc_density_2107RL <- dplyr::bind_rows(nasc, nasc.ns)

## Save data and clean-up
usethis::use_data(nasc_density_2107RL, overwrite = TRUE)
rm(list = c("nasc", "nasc.ns", "nasc_density_2107RL"))

## 2022 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "2207RL/Output/nasc_final.Rdata"))
load(file.path(estimATM.dir, "2207RL/Output/nasc_nearshore_final.Rdata"))
nasc <- nasc %>% dplyr::mutate(Region = "Core")
nasc.ns <- nasc.nearshore %>% dplyr::mutate(Region = "Nearshore")

# Combine regions
nasc_density_2207RL <- dplyr::bind_rows(nasc, nasc.ns)

## Save data and clean-up
usethis::use_data(nasc_density_2207RL, overwrite = TRUE)
rm(list = c("nasc", "nasc.ns", "nasc_density_2207RL"))

## 2023 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "2307RL/Output/nasc_final.Rdata"))
load(file.path(estimATM.dir, "2307RL/Output/nasc_nearshore_final.Rdata"))
nasc <- nasc %>% dplyr::mutate(Region = "Core")
nasc.ns <- nasc.nearshore %>% dplyr::mutate(Region = "Nearshore")

# Combine regions
nasc_density_2307RL <- dplyr::bind_rows(nasc, nasc.ns)

## Save data and clean-up
usethis::use_data(nasc_density_2307RL, overwrite = TRUE)
rm(list = c("nasc", "nasc.ns", "nasc_density_2307RL"))

## 2024 data
## Import data and define sampling regions
load(file.path(estimATM.dir, "2407RL/Output/nasc_final.Rdata"))
load(file.path(estimATM.dir, "2407RL/Output/nasc_nearshore_final.Rdata"))
nasc <- nasc %>% dplyr::mutate(Region = "Core")
nasc.ns <- nasc.nearshore %>% dplyr::mutate(Region = "Nearshore")

# Combine regions
nasc_density_2407RL <- dplyr::bind_rows(nasc, nasc.ns)

## Save data and clean-up
usethis::use_data(nasc_density_2407RL, overwrite = TRUE)
rm(list = c("nasc", "nasc.ns", "nasc_density_2407RL"))
