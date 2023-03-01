## code to prepare `abundance_*` data sets

## specify root directory
estimATM.dir <- "C:/KLS/CODE/Github/estimATM"
EstimateCPS.dir <- "C:/KLS/CODE/Github/EstimateCPS"

## 2015 data
load(file.path(estimATM.dir, "1507SH/Output/abundance_table_all.Rdata"))
abundance_1507SH <- abund.summ

usethis::use_data(abundance_1507SH, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1507SH"))

## 2016 data
load(file.path(estimATM.dir, "1606RL/Output/abundance_table_all.Rdata"))
abundance_1606RL <- abund.summ

usethis::use_data(abundance_1606RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1606RL"))

## 2017 data
load(file.path(EstimateCPS.dir, "1707RL/Output/abundance_table_all.Rdata"))
abundance_1707RL <- abund.summ

usethis::use_data(abundance_1707RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1707RL"))

## 2018 data
load(file.path(EstimateCPS.dir, "1807RL/Output/abundance_table_all.Rdata"))
abundance_1807RL <- abund.summ

usethis::use_data(abundance_1807RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1807RL"))

## 2019 data
load(file.path(estimATM.dir, "1907RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "1907RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <- dplyr::mutate(abund.summ, Region = "Core") %>% dplyr::ungroup()
abund.summ.ns <- dplyr::mutate(abund.summ.ns, Region = "Nearshore") %>% dplyr::ungroup()

abundance_1907RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

usethis::use_data(abundance_1907RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_1907RL"))

## 2021 data
load(file.path(estimATM.dir, "2107RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "2107RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <- dplyr::mutate(abund.summ, Region = "Core") %>% dplyr::ungroup()
abund.summ.ns <- dplyr::mutate(abund.summ.ns, Region = "Nearshore") %>% dplyr::ungroup()

abundance_2107RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

usethis::use_data(abundance_2107RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_2107RL"))

## 2022 data
load(file.path(estimATM.dir, "2207RL/Output/abundance_table_all.Rdata"))
load(file.path(estimATM.dir, "2207RL/Output/abundance_table_all_ns.Rdata"))
abund.summ    <- dplyr::mutate(abund.summ, Region = "Core") %>% dplyr::ungroup()
abund.summ.ns <- dplyr::mutate(abund.summ.ns, Region = "Nearshore") %>% dplyr::ungroup()

abundance_2207RL <- dplyr::bind_rows(abund.summ, abund.summ.ns)

usethis::use_data(abundance_2207RL, overwrite = TRUE)
rm(list = c("abund.summ", "abundance_2207RL"))
