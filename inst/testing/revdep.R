# run to check reverse dependencies
library(devtools)
library(knitr)

tmpdir <- "~/gerv"
options(devtools.revdep.libpath = tmpdir)
pkg <- "gridExtra"
dep <- revdep(pkg)
# first run installs all dependencies recursively, may take a while
res <- revdep_check(depend = c("Depends", "Imports", "Suggests"))
revdep_check_save_summary(res, log_dir = tmpdir)
# produce html report
knit2html(paste0(tmpdir, "/summary.md"), 
          output = paste0(tmpdir, "/summary.html"))
browseURL(paste0('file://', 
                 file.path(normalizePath(tmpdir), "summary.html")))