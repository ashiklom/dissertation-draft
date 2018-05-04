#!/usr/bin/env Rscript
library(RefManageR)

orig <- "library.bib"
backup <- "library.bib.bak"
file.copy(orig, backup, overwrite = TRUE)

bib <- ReadBib(orig)
bib_sorted <- sort(bib)
WriteBib(bib_sorted, orig)
