## code to prepare `abundance_*` data sets

## Beginning in 2019, nearshore sampling began

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1507SH/Output/abundance_table_all.Rdata"))
abundance_1507SH <- dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(abund.summ, Region = "Core")

## Save data and clean-up
usethis::use_data(abundance_1507SH, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1507SH"))

## 2016 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1606RL/Output/abundance_table_all.Rdata"))
abundance_1606RL <- dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(abund.summ, Region = "Core")

## Save data and clean-up
usethis::use_data(abundance_1606RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1606RL"))

## 2017 data --------------------------------------
## Import data and define sampling regions
load(file.path(EstimateCPS.dir, "1707RL/Output/abundance_table_all.Rdata"))
abundance_1707RL <- dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(abund.summ, Region = "Core")

usethis::use_data(abundance_1707RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1707RL"))

## 2018 data --------------------------------------
load(file.path(EstimateCPS.dir, "1807RL/Output/abundance_table_all.Rdata"))
## Import data and define sampling regions
abundance_1807RL <- dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(abund.summ, Region = "Core")

## Save data and clean-up
usethis::use_data(abundance_1807RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1807RL"))

## 2019 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "1907RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "1907RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <-  dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(Region = "Core")
abund.summ.ns <-  dplyr::ungroup(abund.summ.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
abundance_1907RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

## Save data and clean-up
usethis::use_data(abundance_1907RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1907RL"))

## 2021 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2107RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "2107RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <-  dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(Region = "Core")
abund.summ.ns <-  dplyr::ungroup(abund.summ.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
abundance_2107RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

## Save data and clean-up
usethis::use_data(abundance_2107RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_2107RL"))

## 2022 data --------------------------------------
## Import data and define sampling regions
load(file.path(estimATM.dir, "2207RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "2207RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <-  dplyr::ungroup(abund.summ) %>%
  dplyr::mutate(Region = "Core")
abund.summ.ns <-  dplyr::ungroup(abund.summ.ns) %>%
  dplyr::mutate(Region = "Nearshore")

# Combine regions
abundance_2207RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

## Save data and clean-up
usethis::use_data(abundance_2207RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_2207RL"))
