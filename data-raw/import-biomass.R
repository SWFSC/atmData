## code to prepare `biomass_*` data sets

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1507SH/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1507SH <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(biomass_1507SH, overwrite = TRUE)
rm(list = c("be", "biomass_1507SH"))

## 2016 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1606RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1606RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(biomass_1606RL, overwrite = TRUE)
rm(list = c("be", "biomass_1606RL"))

## 2017 data --------------------------------------
## Import data and define sampling regions
load(file.path(EstimateCPS.dir, "1707RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1707RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(biomass_1707RL, overwrite = TRUE)
rm(list = c("be", "biomass_1707RL"))

## 2018 data --------------------------------------
## Import data and define sampling regions
load(file.path(EstimateCPS.dir, "1807RL/Output/biomass_bootstrap_estimates_final.Rdata"))
biomass_1807RL <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")

## Save data and clean-up
usethis::use_data(biomass_1807RL, overwrite = TRUE)
rm(list = c("be", "biomass_1807RL"))

## 2019 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1907RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "1907RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")
be.ns <- dplyr::ungroup(be.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
biomass_1907RL <- dplyr::bind_rows(be, be.ns)

## Save data and clean-up
usethis::use_data(biomass_1907RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_1907RL"))

## 2021 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2107RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2107RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")
be.ns <- dplyr::ungroup(be.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
biomass_2107RL <- dplyr::bind_rows(be, be.ns)

## Save data and clean-up
usethis::use_data(biomass_2107RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2107RL"))

## 2022 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2207RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2207RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")
be.ns <- dplyr::ungroup(be.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
biomass_2207RL <- dplyr::bind_rows(be, be.ns)

## Save data and clean-up
usethis::use_data(biomass_2207RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2207RL"))

## 2023 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2307RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2307RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")
be.ns <- dplyr::ungroup(be.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
biomass_2307RL <- dplyr::bind_rows(be, be.ns)

## Save data and clean-up
usethis::use_data(biomass_2307RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2307RL"))

## 2024 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2407RL/Output/biomass_bootstrap_estimates_final.Rdata"))
load(file.path(estimATM.dir, "2407RL/Output/biomass_bootstrap_estimates_final_ns.Rdata"))
be    <- dplyr::ungroup(be) %>%
  dplyr::mutate(Region = "Core")
be.ns <- dplyr::ungroup(be.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
biomass_2407RL <- dplyr::bind_rows(be, be.ns)

## Save data and clean-up
usethis::use_data(biomass_2407RL, overwrite = TRUE)
rm(list = c("be", "be.ns", "biomass_2407RL"))
