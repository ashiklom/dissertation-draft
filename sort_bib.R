#!/usr/bin/env Rscript
library(RefManageR)

ch12_file <- "ch_1_2.bib"
ch12 <- ReadBib(ch12_file)

ch3_file <- "3_prospect/chapter3.bib"
ch3 <- ReadBib(ch3_file)

ch4_file <- "4_edr/chapter4.bib"
ch4 <- ReadBib(ch4_file)

bib <- ch12 + ch3 + ch4

bib_sorted <- sort(unique(bib))
outfile <- "library.bib"
if (file.exists(outfile)) file.copy(outfile, paste0(outfile, ".bak"), overwrite = TRUE)
WriteBib(bib_sorted, outfile)
