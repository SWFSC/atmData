## code to prepare `biomass_*` data sets

library(atmData)

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data
load(file.path(estimATM.dir, "1507SH/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1507SH <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

usethis::use_data(biomass_1507SH, overwrite = TRUE)
rm(list = c("be", "biomass_1507SH"))

## 2016 data
load(file.path(estimATM.dir, "1606RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1606RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

usethis::use_data(biomass_1606RL, overwrite = TRUE)
rm(list = c("be", "biomass_1606RL"))

## 2017 data
load(file.path(EstimateCPS.dir, "1707RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1707RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

usethis::use_data(biomass_1707RL, overwrite = TRUE)
rm(list = c("be", "biomass_1707RL"))

## 2018 data
load(file.path(EstimateCPS.dir, "1807RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1807RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

usethis::use_data(biomass_1807RL, overwrite = TRUE)
rm(list = c("be", "biomass_1807RL"))

## 2019 data
load(file.path(estimATM.dir, "1907RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "1907RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::mutate(be, Region = "Core") %>% dplyr::ungroup()
be.ns <- dplyr::mutate(be.ns, Region = "Nearshore") %>% dplyr::ungroup()

biomass_1907RL <- dplyr::bind_rows(be, be.ns)

usethis::use_data(biomass_1907RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_1907RL"))

## 2021 data
load(file.path(estimATM.dir, "2107RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2107RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::mutate(be, Region = "Core") %>% dplyr::ungroup()
be.ns <- dplyr::mutate(be.ns, Region = "Nearshore") %>% dplyr::ungroup()

biomass_2107RL <- dplyr::bind_rows(be, be.ns)

usethis::use_data(biomass_2107RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2107RL"))

## 2022 data
load(file.path(estimATM.dir, "2207RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2207RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::mutate(be, Region = "Core") %>% dplyr::ungroup()
be.ns <- dplyr::mutate(be.ns, Region = "Nearshore") %>% dplyr::ungroup()

biomass_2207RL <- dplyr::bind_rows(be, be.ns)

usethis::use_data(biomass_2207RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2207RL"))
