# accSDA

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rARPACK’ ‘sparseLDA’
      All declared Imports should be used.
    ```

# ACSNMineR

Version: 0.16.8.25

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# afmToolkit

Version: 0.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘assertthat’ ‘tibble’
      All declared Imports should be used.
    ```

# aimPlot

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# bamdit

Version: 3.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rjags’ ‘R2jags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# BayesFM

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# BioPET

Version: 0.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# BNSP

Version: 2.0.2

## In both

*   checking whether package ‘BNSP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/BNSP/new/BNSP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BNSP’ ...
** package ‘BNSP’ successfully unpacked and MD5 sums checked
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c BNSP_init.c -o BNSP_init.o
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c OneResLtnt.c -o OneResLtnt.o
OneResLtnt.c:26:28: fatal error: gsl/gsl_matrix.h: No such file or directory
compilation terminated.
/usr/lib/R/etc/Makeconf:159: recipe for target 'OneResLtnt.o' failed
make: *** [OneResLtnt.o] Error 1
ERROR: compilation failed for package ‘BNSP’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/BNSP/new/BNSP.Rcheck/BNSP’

```
### CRAN

```
* installing *source* package ‘BNSP’ ...
** package ‘BNSP’ successfully unpacked and MD5 sums checked
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c BNSP_init.c -o BNSP_init.o
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c OneResLtnt.c -o OneResLtnt.o
OneResLtnt.c:26:28: fatal error: gsl/gsl_matrix.h: No such file or directory
compilation terminated.
/usr/lib/R/etc/Makeconf:159: recipe for target 'OneResLtnt.o' failed
make: *** [OneResLtnt.o] Error 1
ERROR: compilation failed for package ‘BNSP’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/BNSP/old/BNSP.Rcheck/BNSP’

```
# braidReports

Version: 0.5.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# bsam

Version: 1.1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# bsamGP

Version: 1.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# BubbleTree

Version: 2.6.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 25.4Mb
      sub-directories of 1Mb or more:
        data  22.9Mb
        doc    2.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    annoByOverlap,Annotate: no visible binding for global variable
      'queryHits'
    Undefined global functions or variables:
      queryHits
    ```

# CAFE

Version: 1.12.0

## In both

*   checking whether package ‘CAFE’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/CAFE/new/CAFE.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    facetPlot: no visible global function definition for 'dev.off'
    facetPlot: no visible global function definition for 'na.omit'
    fisher.method: no visible global function definition for 'pchisq'
    fisherExact: no visible global function definition for 'fisher.test'
    makelevels: no visible global function definition for 'na.omit'
    rawPlot: no visible global function definition for 'png'
    rawPlot: no visible global function definition for 'dev.off'
    rawPlot: no visible global function definition for 'data'
    slidPlot: no visible global function definition for 'png'
    slidPlot: no visible global function definition for 'dev.off'
    slidPlot: no visible global function definition for 'data'
    Undefined global functions or variables:
      chisq.test data dev.off download.file fisher.test na.omit p.adjust
      pchisq png read.table setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("stats", "chisq.test", "fisher.test", "na.omit", "p.adjust",
                 "pchisq")
      importFrom("utils", "data", "download.file", "read.table",
                 "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
        geom_bar, geom_rect, geom_segment, ggsave, stat_bin, stat_identity, xlim
    
    Warning: no DISPLAY variable so Tk is not available
    Writing plot to Chr17Mul
    
    
    Writing plot to Chr17slidMul
    
    
    Writing plot to Chr17discMul
    
    
    Writing plot to FacetSlidMul
    
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'CAFE-manual.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# caretEnsemble

Version: 2.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 525 SKIPPED: 1 FAILED: 24
      1. Error: c.caretEnsemble can bind two caretList objects (@test-S3-generic-extensions.R#64) 
      2. Error: c.caretEnsemble can bind a caretList and train object (@test-S3-generic-extensions.R#75) 
      3. Error: c.caretEnsemble can bind two objects of class train (@test-S3-generic-extensions.R#94) 
      4. Error: caretList errors for bad models (@test-caretList.R#84) 
      5. Error: caretList predictions (@test-caretList.R#98) 
      6. Error: Classification models (@test-caretList.R#287) 
      7. Error: Longer tests for Classification models (@test-caretList.R#316) 
      8. Error: Test that caretList preserves user specified error functions (@test-caretList.R#357) 
      9. Error: Users can pass a custom tuneList (@test-caretList.R#459) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CATALYST

Version: 1.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-47 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    could not find function "pkg_ver"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    8.5Mb
    ```

# cate

Version: 1.0.4

## In both

*   checking whether package ‘cate’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/cate/new/cate.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cate’ ...
** package ‘cate’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error in library.dynam(lib, package, package.lib) : 
  shared object ‘RSQLite.so’ not found
ERROR: lazy loading failed for package ‘cate’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/cate/new/cate.Rcheck/cate’

```
### CRAN

```
* installing *source* package ‘cate’ ...
** package ‘cate’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error in library.dynam(lib, package, package.lib) : 
  shared object ‘RSQLite.so’ not found
ERROR: lazy loading failed for package ‘cate’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/cate/old/cate.Rcheck/cate’

```
# cda

Version: 2.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.7Mb
    ```

# cellWise

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ChaosGame

Version: 0.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ChemmineR

Version: 2.28.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ChemmineR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: canonicalNumbering
    > ### Title: Canonical Numbering
    > ### Aliases: canonicalNumbering
    > ### Keywords: canonical morgan
    > 
    > ### ** Examples
    > 
    > 	data(sdfsample)
    > 	labels = canonicalNumbering(sdfsample[1])
    Error in .ensureOB() : 
      ChemmineOB is required to make use of this function. This package can be installed from BioConductor with the  command 'biocLite("ChemmineOB").  It is not currently available for windows however. See http://bioconductor.org/packages/devel/bioc/html/ChemmineOB.html for more information
    Calls: canonicalNumbering -> .ensureOB
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
           test_ea.dupDescriptors 
      
         test_general.R 
           test.3dCoords 
           test.canonicalize 
           test.exactMassOB 
           test.genAPDescriptors 
           test.parseV3000 
           test.propOB 
           test.smartsSearchOB 
      
      
      Error in BiocGenerics:::testPackage("ChemmineR") : 
        unit tests failed for package ChemmineR
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 44-50 (ChemmineR.Rmd) 
    Error: processing vignette 'ChemmineR.Rmd' failed with diagnostics:
    there is no package called 'ChemmineOB'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘fmcsR’ ‘RPostgreSQL’ ‘ChemmineOB’ ‘ChemmineDrugs’
    
    Package which this enhances but not available for checking: ‘ChemmineOB’
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘ChemmineOB’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘ChemmineDrugs’ ‘ChemmineOB’ ‘RPostgreSQL’ ‘RSQLite’ ‘fmcsR’ ‘grid’
      ‘png’ ‘snow’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘BiocGenerics’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    smartsSearchOB: no visible global function definition for
      ‘smartsSearch_OB’
    smile2sdfFile: no visible global function definition for
      ‘convertFormatFile’
    smiles2sdf: no visible global function definition for ‘convertFormat’
    smiles2sdfOB: no visible global function definition for ‘convertFormat’
    write.SMI: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      AW C1 C1.1 C2 C2.1 arrangeGrob browseURL canonicalNumbering_OB
      clusterApplyLB clusterExport combn convertFormat convertFormatFile
      data dev.off error exactMass_OB fingerprint_OB fmcs forEachMol pdf
      postgresqlCopyInDataframe postgresqlQuoteId postgresqlTableRef
      postgresqlgetResult postgresqlpqExec postscript prop_OB rainbow
      rasterGrob read.delim read.table readPNG rgb smartsSearch_OB str
      string write.table
    Consider adding
      importFrom("grDevices", "dev.off", "pdf", "postscript", "rainbow",
                 "rgb")
      importFrom("utils", "browseURL", "combn", "data", "read.delim",
                 "read.table", "str", "write.table")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘ChemmineR/libs/ChemmineR.so’:
      Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
        Objects: ‘desc.o’, ‘formats.o’, ‘script.o’
      Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
        Object: ‘cluster.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor the system RNG.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# ChIPexoQual

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# choroplethr

Version: 3.6.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘tigris’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# CINdex

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        as.data.frame, cbind, colMeans, colSums, colnames, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect,
        is.unsorted, lapply, lengths, mapply, match, mget, order,
        paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Quitting from lines 33-42 (PrepareInputData.Rmd) 
    Error: processing vignette 'PrepareInputData.Rmd' failed with diagnostics:
    there is no package called 'pd.genomewidesnp.6'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘pd.genomewidesnp.6’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.4Mb
      sub-directories of 1Mb or more:
        data  17.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    comp.heatmap: no visible binding for global variable ‘dataMatrix’
    process.probe.anno: no visible binding for global variable ‘ID’
    process.probe.anno: no visible binding for global variable ‘midpoint’
    process.reference.genome: no visible binding for global variable
      ‘chrom’
    process.reference.genome: no visible binding for global variable ‘name’
    process.reference.genome: no visible binding for global variable
      ‘stain’
    Undefined global functions or variables:
      ID chrom dataMatrix midpoint name stain
    ```

# classifierplots

Version: 1.3.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# ClassifyR

Version: 1.10.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘combn’
    samplesMetricMap,list: no visible binding for global variable ‘Class’
    samplesMetricMap,list: no visible binding for global variable ‘name’
    samplesMetricMap,list: no visible binding for global variable ‘type’
    samplesMetricMap,list: no visible binding for global variable ‘Metric’
    selectionPlot,list: no visible binding for global variable ‘Freq’
    selectionPlot,list: no visible global function definition for
      ‘reformulate’
    subtractFromLocation,ExpressionSet: no visible binding for global
      variable ‘median’
    Undefined global functions or variables:
      ..density.. Class Freq Metric bartlett.test capture.output classes
      combn density dlda dnorm expr featureValues ks.test largerClass mad
      median model.matrix na.omit name predict reformulate sd splinefun
      type var
    Consider adding
      importFrom("stats", "bartlett.test", "density", "dnorm", "ks.test",
                 "mad", "median", "model.matrix", "na.omit", "predict",
                 "reformulate", "sd", "splinefun", "var")
      importFrom("utils", "capture.output", "combn")
    to your NAMESPACE file.
    ```

# climwin

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CNVrd2

Version: 1.14.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# cocoreg

Version: 0.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    mapping_rf: Error while checking: there is no package called
      ‘randomForest’
    ```

# colorpatch

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘grid’ ‘gridExtra’
      All declared Imports should be used.
    ```

# coMET

Version: 1.8.0

## In both

*   checking whether package ‘coMET’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      WARNING: omitting pointless dependence on 'R' without a version requirement
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/coMET/new/coMET.Rcheck/00install.out’ for details.
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Error in if (dep$op != ">=") next : argument is of length zero
      Calls: <Anonymous>
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'coMET.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘grid’ ‘biomaRt’ ‘Gviz’ ‘psych’ ‘ggbio’ ‘trackViewer’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.3Mb
      sub-directories of 1Mb or more:
        data      9.7Mb
        doc       2.6Mb
        extdata   4.5Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    eQTL_GTEx: no visible binding for global variable 'snp_pos'
    eQTL_GTEx: no visible binding for global variable 'snp_chrom'
    eQTL_GTEx: no visible binding for global variable 'gene_start'
    eQTL_GTEx: no visible binding for global variable 'gene_stop'
    eQTL_GTEx: no visible binding for global variable 'gene_chr'
    geneExpression_GTEx: no visible global function definition for 'as'
    metQTL: no visible binding for global variable 'chromosome_stop'
    metQTL: no visible binding for global variable 'chromosome_start'
    metQTL: no visible binding for global variable 'chromosome_name'
    psiQTL_GTEx: no visible binding for global variable 'pos_snp'
    psiQTL_GTEx: no visible binding for global variable 'chr_snp'
    psiQTL_GTEx: no visible binding for global variable 'pos_middle_exon'
    psiQTL_GTEx: no visible binding for global variable 'chr_exon'
    Undefined global functions or variables:
      as chr_exon chr_snp chromosome_name chromosome_start chromosome_stop
      gene_chr gene_start gene_stop pos_middle_exon pos_snp snp_chrom
      snp_pos
    Consider adding
      importFrom("methods", "as")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# CommT

Version: 0.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    CommT.anova: no visible global function definition for ‘aov’
    CommT.legendpos: no visible global function definition for ‘quantile’
    CommT.plotcolors: no visible global function definition for ‘hcl’
    Undefined global functions or variables:
      aov hcl quantile
    Consider adding
      importFrom("grDevices", "hcl")
      importFrom("stats", "aov", "quantile")
    to your NAMESPACE file.
    ```

# CONS

Version: 0.1.1

## In both

*   checking whether package ‘CONS’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/CONS/new/CONS.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# copula

Version: 0.999-18

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gsl’
    
    Packages suggested but not available for checking:
      ‘Rmpfr’ ‘lcopula’ ‘partitions’ ‘VineCopula’
    
    Package which this enhances but not available for checking: ‘nor1mix’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# coseq

Version: 1.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CosmoPhotoz

Version: 0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    CosmoPhotoZestimator: no visible global function definition for
      ‘predict’
    computeCombPCA: no visible global function definition for ‘prcomp’
    computeDiagPhotoZ: no visible global function definition for ‘sd’
    computeDiagPhotoZ: no visible global function definition for ‘median’
    computeDiagPhotoZ: no visible global function definition for ‘mad’
    glmPredictPhotoZ: no visible global function definition for ‘predict’
    glmTrainPhotoZ: no visible global function definition for ‘glm’
    glmTrainPhotoZ: no visible global function definition for ‘Gamma’
    glmTrainPhotoZ: no visible global function definition for
      ‘inverse.gaussian’
    plotDiagPhotoZ: no visible global function definition for ‘median’
    plotDiagPhotoZ: no visible global function definition for ‘mad’
    Undefined global functions or variables:
      Gamma glm inverse.gaussian mad median prcomp predict sd
    Consider adding
      importFrom("stats", "Gamma", "glm", "inverse.gaussian", "mad",
                 "median", "prcomp", "predict", "sd")
    to your NAMESPACE file.
    ```

# covmat

Version: 1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'zoo'
    
    The following objects are masked from 'package:base':
    
        as.Date, as.Date.numeric
    
    Loading required package: fit.models
    Loading required package: foreach
    Loading required package: PerformanceAnalytics
    
    Attaching package: 'PerformanceAnalytics'
    
    The following object is masked from 'package:graphics':
    
        legend
    
    Quitting from lines 35-44 (CovarianceEstimation.Rmd) 
    Error: processing vignette 'CovarianceEstimation.Rmd' failed with diagnostics:
    there is no package called 'rmgarch'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rmgarch’
    ```

# cr17

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CrispRVariants

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-132 (user_guide.Rmd) 
    Error: processing vignette 'user_guide.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# crmPack

Version: 0.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# darksky

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      + }
      1. Error: the API call works (@test-darksky.R#4) -------------------------------
      Please set env var DARKSKY_API_KEY to your Dark Sky API key
      1: get_current_forecast(43.2672, -70.8617) at testthat/test-darksky.R:4
      2: sprintf("https://api.darksky.net/forecast/%s/%s,%s", darksky_api_key(), latitude, 
             longitude)
      3: darksky_api_key()
      4: stop("Please set env var DARKSKY_API_KEY to your Dark Sky API key", call. = FALSE)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: the API call works (@test-darksky.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# DataExplorer

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: test if report is generated (@test-generate-report.r#19) -------------
      pandoc version 1.12.3 or higher is required and was not found (see the help page ?rmarkdown::pandoc_available).
      1: GenerateReport(iris, output_file = file_name, output_dir = dir_name, quiet = TRUE) at testthat/test-generate-report.r:19
      2: render(input = report_dir, output_file = output_file, output_dir = output_dir, intermediates_dir = output_dir, 
             params = list(data = input_data, fun_options = list()), ...)
      3: pandoc_available(required_pandoc, error = TRUE)
      4: stop(paste(msg, collapse = " "), call. = FALSE)
      
      testthat results ================================================================
      OK: 48 SKIPPED: 0 FAILED: 2
      1. Error: test if quiet is working for GenerateReport (@test-generate-report.r#8) 
      2. Error: test if report is generated (@test-generate-report.r#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 57-68 (dataexplorer-intro.Rmd) 
    Error: processing vignette 'dataexplorer-intro.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dataMaid

Version: 0.9.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# DClusterm

Version: 0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked Latin-1 strings
    ```

# ddpcr

Version: 1.8

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# DEGreport

Version: 1.12.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        apply
    
    estimating size factors
    estimating dispersions
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    fitting model and testing
    -- replacing outliers and refitting for 1 genes
    -- DESeq argument 'minReplicatesForReplace' = 7 
    -- original counts are preserved in counts(dds)
    estimating dispersions
    fitting model and testing
    Doing rlog...
    Getting result...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'DEGreport.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘plotCounts’
    degPlotWide: no visible binding for global variable ‘gene’
    degPlotWide: no visible binding for global variable ‘count’
    degPlotWide: no visible binding for global variable ‘treatment’
    degResults: no visible global function definition for ‘assay’
    degResults: no visible global function definition for ‘rlog’
    degResults: no visible global function definition for ‘results’
    degResults: no visible global function definition for ‘colData’
    degResults: no visible global function definition for ‘rowMax’
    degVolcano: no visible binding for global variable ‘logFC’
    degVolcano: no visible binding for global variable ‘V1’
    degVolcano: no visible binding for global variable ‘V2’
    degVolcano: no visible binding for global variable ‘adj.P.Val’
    degVolcano: no visible binding for global variable ‘x’
    degVolcano: no visible binding for global variable ‘y’
    degVolcano: no visible binding for global variable ‘name’
    Undefined global functions or variables:
      MulticoreParam V1 V2 adj.P.Val assay bplapply coda.samples colData
      comp count enrichGO gene group jags.model keys label log2FoldChange
      logFC name one plotCounts results rlog rowMax simplify treatment two
      value variable x y
    ```

# DendroSync

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# diagis

Version: 0.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# disclapmix

Version: 1.6.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dotwhisker

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘arm’
    ```

# dtwSat

Version: 0.2.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgdal’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# dynsim

Version: 1.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
    Lagging invest by 1 time units.
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'dynsim-overview.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# eechidna

Version: 1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rmapshaper’ ‘rgdal’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# eesim

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# EFDR

Version: 0.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .gdf : find_loss: no visible global function definition for ‘rnorm’
    .p.values : <anonymous>: no visible global function definition for
      ‘pnorm’
    .relist.dwt: no visible global function definition for ‘relist’
    .relist.dwt: no visible global function definition for ‘as’
    .std.wav.coeff : <anonymous>: no visible global function definition for
      ‘mad’
    regrid: no visible global function definition for ‘predict’
    regrid: no visible global function definition for ‘var’
    regrid: no visible global function definition for ‘medpolish’
    Undefined global functions or variables:
      as mad medpolish pnorm predict relist rnorm var
    Consider adding
      importFrom("methods", "as")
      importFrom("stats", "mad", "medpolish", "pnorm", "predict", "rnorm",
                 "var")
      importFrom("utils", "relist")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# ELMER

Version: 1.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        strsplit
    
    locfit 1.5-9.1 	 2013-03-22
    Setting options('download.file.method.GEOquery'='auto')
    Setting options('GEOquery.inmemory.gpl'=FALSE)
    No methods found in "RSQLite" for requests: dbGetQuery
    
    
    
    Attaching package: 'ELMER'
    
    The following objects are masked from 'package:minfi':
    
        getMeth, getProbeInfo
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'vignettes.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘ELMER.data’ ‘Homo.sapiens’
      ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    motif.enrichment.plot: no visible binding for global variable ‘OR’
    promoterMeth: no visible global function definition for ‘write.csv’
    scatter: no visible binding for global variable ‘value’
    schematic: no visible global function definition for ‘pdf’
    schematic: no visible global function definition for ‘dev.off’
    txs: no visible binding for global variable ‘Homo.sapiens’
    show,MEE.data: no visible global function definition for ‘str’
    show,Pair: no visible global function definition for ‘str’
    summary,MEE.data: no visible global function definition for ‘str’
    summary,Pair: no visible global function definition for ‘str’
    Undefined global functions or variables:
      Homo.sapiens IlluminaHumanMethylation450kanno.ilmn12.hg19 OR coef
      data dev.off label lm lowerOR motif p.adjust pdf pvalue read.csv
      read.delim read.table str t.test upperOR value wilcox.test write.csv
      write.table
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("stats", "coef", "lm", "p.adjust", "t.test", "wilcox.test")
      importFrom("utils", "data", "read.csv", "read.delim", "read.table",
                 "str", "write.csv", "write.table")
    to your NAMESPACE file.
    ```

# emdi

Version: 1.1.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgeos’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# episensr

Version: 0.9.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# erccdashboard

Version: 1.10.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    dynRangePlot: no visible binding for global variable ‘value’
    dynRangePlot: no visible binding for global variable ‘Rep’
    Undefined global functions or variables:
      Rep value
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Loading required package: gridExtra
    Spline scaling factor: 0.935877912191994
    Spline scaling factor: 0.933705046212242
    Spline scaling factor: 0.933705046212242
    Warning: Ignoring unknown aesthetics: y
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Ignoring unknown aesthetics: y
    Warning: Transformation introduced infinite values in continuous y-axis
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'erccdashboard.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ESGtoolkit

Version: 0.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Pricing and Evaluating Basic Options
    Copyright (C) 2005-2014 Rmetrics Association Zurich
    Educational Software for Financial Engineering and Computational Science
    Rmetrics is free software and comes with ABSOLUTELY NO WARRANTY.
    https://www.rmetrics.org --- Mail to: info@rmetrics.org
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      replaced special characters in figure filename "figure/<example_SVJD_2" -> "figure/_example_SVJD_2"
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      replaced special characters in figure filename "figure/<example_SVJD_4" -> "figure/_example_SVJD_4"
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      replaced special characters in figure filename "figure/<example_SVJD_cvS0" -> "figure/_example_SVJD_cvS0"
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      replaced special characters in figure filename "figure/<example_SVJD_martingale_2" -> "figure/_example_SVJD_martingale_2"
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      replaced special characters in figure filename "figure/<example_pricing" -> "figure/_example_pricing"
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ESG2toolkit_Intro_062014.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    esgplotts: no visible global function definition for ‘deltat’
    esgplotts: no visible global function definition for ‘xlab’
    esgplotts: no visible global function definition for ‘ylab’
    esgplotts: no visible global function definition for ‘theme’
    simdiff: no visible global function definition for ‘ts’
    simshocks: no visible global function definition for ‘ts’
    simshocks: no visible global function definition for ‘qnorm’
    simshocks : <anonymous>: no visible global function definition for ‘ts’
    Undefined global functions or variables:
      abline aes colorRampPalette coord_flip cor cor.test deltat
      element_blank end geom_density geom_point is.ts lines matplot par
      plot points polygon pt qnorm qt quantile scale_color_manual
      scale_fill_manual sd start t.test theme time ts tsp window xlab ylab
    Consider adding
      importFrom("grDevices", "colorRampPalette")
      importFrom("graphics", "abline", "lines", "matplot", "par", "plot",
                 "points", "polygon")
      importFrom("stats", "cor", "cor.test", "deltat", "end", "is.ts", "pt",
                 "qnorm", "qt", "quantile", "sd", "start", "t.test", "time",
                 "ts", "tsp", "window")
    to your NAMESPACE file.
    ```

# evolqg

Version: 0.2-5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# facopy

Version: 1.10.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘cgdsr’ ‘coin’ ‘ggplot2’ ‘gridExtra’ ‘facopy.annot’ ‘grid’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘grid’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    variableSummary: no visible global function definition for
      ‘write.table’
    Undefined global functions or variables:
      abline anova axis binomial chisq.test colorRampPalette combn cor.test
      data dev.off fisher.test formula glm grid heat.colors image
      kruskal.test layout legend lm mtext oneway.test p.adjust par pdf
      phyper plot.new plot.window points quantile read.delim read.table
      rect title wilcox.test write.table
    Consider adding
      importFrom("grDevices", "colorRampPalette", "dev.off", "heat.colors",
                 "pdf")
      importFrom("graphics", "abline", "axis", "grid", "image", "layout",
                 "legend", "mtext", "par", "plot.new", "plot.window",
                 "points", "rect", "title")
      importFrom("stats", "anova", "binomial", "chisq.test", "cor.test",
                 "fisher.test", "formula", "glm", "kruskal.test", "lm",
                 "oneway.test", "p.adjust", "phyper", "quantile",
                 "wilcox.test")
      importFrom("utils", "combn", "data", "read.delim", "read.table",
                 "write.table")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Warning in multinom(formula(paste(model, "~1")), data = tt, trace = FALSE) :
      group ‘3’ is empty
    Warning in multinom(x, data = tt, trace = FALSE) : group ‘3’ is empty
    Warning in multinom(formula(paste(model, "~1")), data = tt, trace = FALSE) :
      group ‘3’ is empty
    Warning in multinom(x, data = tt, trace = FALSE) : group ‘4’ is empty
    Warning in multinom(formula(paste(model, "~1")), data = tt, trace = FALSE) :
      group ‘4’ is empty
    Warning in multinom(x, data = tt, trace = FALSE) : group ‘2’ is empty
    Warning in multinom(formula(paste(model, "~1")), data = tt, trace = FALSE) :
      group ‘2’ is empty
    Processing plot...
    Generating plot, please wait while it appears on the graphics device...
    geom_path: Each group consists of only one observation. Do you need to adjust
    the group aesthetic?
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'facopy.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# factorMerger

Version: 0.3.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘forcats’
      All declared Imports should be used.
    ```

# fastqcr

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# FField

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘ggplot2’ ‘gridExtra’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    FFieldPtRepDemo: no visible global function definition for ‘ggplot’
    FFieldPtRepDemo: no visible binding for global variable ‘mtcars’
    FFieldPtRepDemo: no visible global function definition for ‘aes’
    FFieldPtRepDemo: no visible binding for global variable ‘mpg’
    FFieldPtRepDemo: no visible global function definition for ‘geom_point’
    FFieldPtRepDemo: no visible global function definition for ‘geom_text’
    FFieldPtRepDemo: no visible global function definition for ‘ggtitle’
    FFieldPtRepDemo: no visible global function definition for
      ‘geom_segment’
    FFieldPtRepDemo: no visible global function definition for
      ‘grid.arrange’
    Undefined global functions or variables:
      aes geom_point geom_segment geom_text ggplot ggtitle grid.arrange mpg
      mtcars
    Consider adding
      importFrom("datasets", "mtcars")
    to your NAMESPACE file.
    ```

# Fgmutils

Version: 0.9.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ReporteRs’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# fgsea

Version: 1.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    gmtPathways: no visible binding for global variable ‘head’
    Undefined global functions or variables:
      head
    Consider adding
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

# findviews

Version: 0.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fivethirtyeight

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘fivethirtyeight’ ‘ggraph’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 371 marked UTF-8 strings
    ```

# flowClean

Version: 1.14.0

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'clean':
    clean
      Code: function(fF, vectMarkers, filePrefixWithDir, ext, binSize =
                     0.01, nCellCutoff = 500, announce = TRUE, cutoff =
                     "median", diagnostic = FALSE, fcMax = 1.3,
                     returnVector = FALSE, nstable = 5)
      Docs: function(fF, vectMarkers, filePrefixWithDir, ext, binSize =
                     0.01, nCellCutoff = 500, announce = TRUE, cutoff =
                     "median", diagnostic = FALSE, fcMax = 1.3)
      Argument names in code not in docs:
        returnVector nstable
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Duplicated \argument entries in documentation object 'clean':
      ‘announce’
    Documented arguments not in \usage in documentation object 'clean':
      ‘returnVector’ ‘nstable’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    clean: no visible global function definition for ‘runif’
    clean: no visible global function definition for ‘png’
    clean: no visible global function definition for ‘dev.off’
    diagnosticPlot: no visible global function definition for ‘points’
    diagnosticPlot: no visible global function definition for ‘abline’
    makeFCS: no visible global function definition for ‘new’
    make_pops : <anonymous>: no visible global function definition for
      ‘quantile’
    make_pops : <anonymous>: no visible global function definition for
      ‘median’
    Undefined global functions or variables:
      abline dev.off median new png points quantile runif
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "points")
      importFrom("methods", "new")
      importFrom("stats", "median", "quantile", "runif")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: flowCore
    Loading required package: lattice
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'flowClean.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# flowCore

Version: 1.42.2

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
      Code: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, truncate_max_range =
                     TRUE, emptyValue = TRUE, ignore.text.offset = FALSE,
                     ...)
      Docs: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, emptyValue = TRUE,
                     ignore.text.offset = FALSE, ...)
      Argument names in code not in docs:
        truncate_max_range
      Mismatches in argument names:
        Position: 19 Code: truncate_max_range Docs: emptyValue
        Position: 20 Code: emptyValue Docs: ignore.text.offset
        Position: 21 Code: ignore.text.offset Docs: ...
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'read.flowSet':
      ‘truncate_max_range’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 301-303 (HowTo-flowCore.Rnw) 
    Error: processing vignette 'HowTo-flowCore.Rnw' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘flowViz’ ‘flowStats’ ‘flowWorkspace’ ‘openCyto’ ‘ggcyto’
    ```

*   checking if this is a source package ... NOTE
    ```
    Found the following apparent object files/libraries:
      src/boost_regex/c_regex_traits.o src/boost_regex/cpp_regex_traits.o
      src/boost_regex/cregex.o src/boost_regex/fileiter.o
      src/boost_regex/icu.o src/boost_regex/instances.o
      src/boost_regex/posix_api.o src/boost_regex/regex.o
      src/boost_regex/regex_debug.o src/boost_regex/regex_raw_buffer.o
      src/boost_regex/regex_traits_defaults.o
      src/boost_regex/static_mutex.o src/boost_regex/usinstances.o
      src/boost_regex/w32_regex_traits.o src/boost_regex/wc_regex_traits.o
      src/boost_regex/wide_posix_api.o src/boost_regex/winstances.o
    Object files/libraries should not be included in a source package.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 34.1Mb
      sub-directories of 1Mb or more:
        data      5.0Mb
        extdata   1.1Mb
        lib      20.3Mb
        libs      5.6Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘Rgraphviz’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    %in%,flowFrame-norm2Filter: no visible global function definition for
      ‘cov.rob’
    spillover,flowSet: no visible global function definition for
      ‘devAskNewPage’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘rangeGate’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘density’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘abline’
    spillover,flowSet : <anonymous> : <anonymous>: no visible global
      function definition for ‘density’
    split,flowFrame-factor: no visible binding for global variable ‘i’
    summary,workFlow: no visible binding for global variable ‘wf’
    Undefined global functions or variables:
      abline cov.rob density devAskNewPage i rangeGate wf
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "abline")
      importFrom("stats", "density")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘flowViz’, ‘flowStats’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowWorkspace

Version: 3.24.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘ncdfFlow’
    
    Package suggested but not available for checking: ‘ggcyto’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# frailtyEM

Version: 0.7.0-1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: survival
    Calculating adjustment for information matrix...
    Warning: Removed 2 rows containing missing values (geom_path).
    Calculating adjustment for information matrix...
    Calculating adjustment for information matrix...
    Calculating adjustment for information matrix...
    Calculating adjustment for information matrix...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'frailtyEM_manual.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# frailtySurv

Version: 1.3.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fSRM

Version: 0.6.4

## In both

*   checking whether package ‘fSRM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/fSRM/new/fSRM.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# funData

Version: 1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# funModeling

Version: 1.6.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# futureheatwaves

Version: 1.0.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 604-605 (futureheatwaves.Rmd) 
    Error: processing vignette 'futureheatwaves.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GADMTools

Version: 2.1-1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgdal’ ‘rgeos’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gdimap

Version: 0.1-9

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gsl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# GenomicInteractions

Version: 1.10.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc       2.0Mb
        extdata   7.9Mb
    ```

# GenVisR

Version: 1.6.1

## Newly broken

*   checking whether package ‘GenVisR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/GenVisR/new/GenVisR.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(GenVisR)
      > 
      > test_check("GenVisR")
      Error in library(RMySQL) : there is no package called 'RMySQL'
      Calls: test_check ... suppressPackageStartupMessages -> withCallingHandlers -> library
      testthat results ================================================================
      OK: 129 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    waterfall: warning in waterfall_align(genes = gene_plot, heatmap =
      heatmap, burden = burden_plot, clinical = clinical_plot, proportion =
      proportions_plot, section_heights = section_heights): partial
      argument match of 'proportion' to 'proportions'
    waterfall: warning in waterfall_align(genes = gene_plot, heatmap =
      heatmap, burden = burden_plot, proportion = proportions_plot,
      section_heights = section_heights): partial argument match of
      'proportion' to 'proportions'
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RMySQL’
    ```

## Installation

### Devel

```
* installing *source* package ‘GenVisR’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error : object ‘rbind.gtable’ is not exported by 'namespace:gridExtra'
ERROR: lazy loading failed for package ‘GenVisR’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/GenVisR/new/GenVisR.Rcheck/GenVisR’

```
### CRAN

```
* installing *source* package ‘GenVisR’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
* DONE (GenVisR)

```
# geomerge

Version: 0.3.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘inlmisc’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# getmstatistic

Version: 0.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggalt

Version: 0.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘proj4’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ggbeeswarm

Version: 0.6.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'usageExamples.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ggbio

Version: 1.24.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      ordinary text without R code
    
    label: unnamed-chunk-46
      ordinary text without R code
    
    label: session-info
      ordinary text without R code
    
    output file: ggbio.tex
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ggbio.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: knit2pdf -> <Anonymous> -> texi2dvi
    Execution halted
    Makefile:14: recipe for target 'ggbio.pdf' failed
    make: *** [ggbio.pdf] Error 1
    Error in buildVignettes(dir = "/home/auguieba/Documents/github/gridextra/revdep/checks/ggbio/new/ggbio.Rcheck/vign_test/ggbio") : 
      running 'make' failed
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'S4Vectors:::top_prenv' 'ggplot2:::add_ggplot' 'ggplot2:::cunion'
      'ggplot2:::rename_aes' 'ggplot2:::rescale01'
      'ggplot2:::set_last_plot'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    layout_karyogram,GRanges: no visible binding for global variable
      'yend2'
    layout_karyogram,GRanges : <anonymous>: no visible binding for global
      variable 'name'
    layout_karyogram,GRanges : <anonymous>: no visible binding for global
      variable 'gieStain'
    plotFragLength,character-GRanges: no visible binding for global
      variable '.fragLength'
    plotSpliceSum,character-EnsDb: possible error in GRangesFilter(which,
      condition = "overlapping"): unused argument (condition =
      "overlapping")
    stat_mismatch,GRanges: no visible binding for global variable 'sts'
    stat_mismatch,GRanges: no visible binding for global variable 'eds'
    stat_mismatch,GRanges: no visible binding for global variable 'read'
    Undefined global functions or variables:
      .fragLength .layout_circle.stats .x breaks coefs cytobands data eds
      fe fl gieStain ideoCyto indexProbesProcessed midpoint mt name read se
      stepping sts value variable x xend y y.text y2 yend yend2
    Consider adding
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# ggCompNet

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc   6.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘ggmap’ ‘gridExtra’ ‘scales’ ‘tnet’
      All declared Imports should be used.
    ```

# ggcyto

Version: 1.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘ncdfFlow’ ‘flowWorkspace’
    
    Packages suggested but not available for checking: ‘flowStats’ ‘openCyto’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ggdmc

Version: 0.1.3.9

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rtdists’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ggfortify

Version: 0.4.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ggfortify-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: gglagplot
    > ### Title: Plot time series against lagged versions of themselves
    > ### Aliases: gglagplot
    > 
    > ### ** Examples
    > 
    > gglagplot(AirPassengers)
    Error: `x` must be a vector, not a ts object, do you want `stats::lag()`?
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
                    equals(c(4,3)))
                               ^
      
      
      testthat results ================================================================
      OK: 1618 SKIPPED: 0 FAILED: 6
      1. Failure: autoplot.aareg works for lung (@test-surv.R#220) 
      2. Failure: autoplot.aareg works for lung (@test-surv.R#221) 
      3. Failure: autoplot.aareg works for lung (@test-surv.R#222) 
      4. Failure: autoplot.aareg works for lung (@test-surv.R#223) 
      5. Error: gglagplot (@test-tslib.R#103) 
      6. Failure: Code Lint (@test_lint.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   5.0Mb
    ```

# ggguitar

Version: 0.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘lazyeval’ ‘readr’
      All declared Imports should be used.
    ```

# ggmcmc

Version: 1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Loading required package: tidyr
    Loading required package: ggplot2
    Registering fonts with R
    
    Attaching package: 'gridExtra'
    
    The following object is masked from 'package:dplyr':
    
        combine
    
    Quitting from lines 62-73 (v70i09.Rnw) 
    Error: processing vignette 'v70i09.Rnw' failed with diagnostics:
    there is no package called 'Cairo'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Cairo’
    ```

# ggmosaic

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘NHANES’ ‘gridExtra’
      All declared Imports should be used.
    ```

# ggpubr

Version: 0.1.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘FactoMineR’
    ```

# ggQC

Version: 0.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘plyr’ ‘reshape2’
      All declared Imports should be used.
    ```

# ggsci

Version: 2.7

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggtern

Version: 2.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sp’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘chemometrics’
    ```

# gogamer

Version: 0.4.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GOplot

Version: 1.0.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# granovaGG

Version: 1.4.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# h5vc

Version: 2.10.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    callVariantsSingle : <anonymous> : <anonymous>: no visible binding for
      global variable ‘BlockID’
    mergeTallyFiles : <anonymous>: no visible binding for global variable
      ‘group’
    mergeTallyFiles: no visible binding for global variable ‘SourceFile’
    mismatchPlot: no visible binding for global variable ‘Sample’
    plotMutationSpectrum: no visible binding for global variable
      ‘altAllele’
    plotMutationSpectrum: no visible binding for global variable ‘tmp’
    rerunBatchTallies: no visible binding for global variable ‘regID’
    resizeCohort: no visible binding for global variable ‘newSamples’
    tallyRangesBatch : <anonymous>: no visible binding for global variable
      ‘bamFiles’
    tallyRangesBatch: no visible binding for global variable ‘verbose’
    Undefined global functions or variables:
      AF BlockID Sample SourceFile SupFwd SupRev Support altAllele bamFiles
      binom.test fisher.test group hist newSamples pValue regID tmp verbose
    Consider adding
      importFrom("graphics", "hist")
      importFrom("stats", "binom.test", "fisher.test")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘deepSNV’
    ```

# hdnom

Version: 4.8

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# HH

Version: 3.1-34

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘Rmpfr’
    
    Package suggested but not available for checking: ‘RcmdrPlugin.HH’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# hhh4contacts

Version: 0.13.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rgeos’
    ```

# HistData

Version: 0.8-2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘psych’, ‘Guerry’, ‘alr3’, ‘agridat’, ‘coin’
    ```

# Hmisc

Version: 4.0-3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘rms’ ‘tables’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘rms’, ‘tables’
    ```

# hrbrthemes

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# hyfo

Version: 1.3.9

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgdal’ ‘rgeos’ ‘ncdf4’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ifaTools

Version: 0.14

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'pritikin-schmidt.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# IGM.MEA

Version: 0.3.5

## In both

*   checking whether package ‘IGM.MEA’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/IGM.MEA/new/IGM.MEA.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# IHW

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-16 (introduction_to_ihw.Rmd) 
    Error: processing vignette 'introduction_to_ihw.Rmd' failed with diagnostics:
    could not find function "pkg_ver"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    ihw.default: no visible global function definition for ‘p.adjust’
    ihw_convex: no visible global function definition for ‘gurobi’
    ihw_internal: no visible global function definition for ‘p.adjust’
    ihw_milp: no visible global function definition for ‘str’
    ihw_milp: no visible global function definition for ‘gurobi’
    plot_decisionboundary: no visible binding for global variable ‘stratum’
    plot_decisionboundary: no visible binding for global variable
      ‘covariate’
    plot_decisionboundary: no visible binding for global variable ‘pvalue’
    plot_decisionboundary: no visible binding for global variable ‘fold’
    thresholds_ihwResult: no visible global function definition for
      ‘na.exclude’
    thresholds,ihwResult: no visible global function definition for
      ‘na.exclude’
    Undefined global functions or variables:
      covariate fold gurobi mcols mcols<- metadata metadata<- na.exclude
      p.adjust pvalue runif str stratum
    Consider adding
      importFrom("stats", "na.exclude", "p.adjust", "runif")
      importFrom("utils", "str")
    to your NAMESPACE file.
    ```

# IHWpaper

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-14 (BH-explanation.Rmd) 
    Error: processing vignette 'BH-explanation.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.9Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   9.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    scott_fdrreg: no visible global function definition for ‘FDRreg’
    scott_fdrreg: no visible global function definition for ‘getFDR’
    sim_fun_eval: no visible binding for global variable ‘fdr_method’
    sim_fun_eval: no visible binding for global variable ‘fdr_pars’
    sim_fun_eval: no visible binding for global variable ‘FDP’
    sim_fun_eval: no visible binding for global variable ‘rj_ratio’
    sim_fun_eval: no visible binding for global variable ‘FPR’
    sim_fun_eval: no visible binding for global variable ‘FWER’
    Undefined global functions or variables:
      FDP FDRreg FPR FWER fdr_method fdr_pars getFDR rj_ratio
    ```

# IMAS

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Loading required package: GenomeInfoDb
    Loading required package: GenomicRanges
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with 'browseVignettes()'. To
        cite Bioconductor, see 'citation("Biobase")', and for packages
        'citation("pkgname")'.
    
    Loading required package: ggplot2
    Loading required package: IVAS
    'select()' returned 1:1 mapping between keys and columns
    'select()' returned 1:1 mapping between keys and columns
    'select()' returned 1:1 mapping between keys and columns
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'IMAS.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# IncDTW

Version: 0.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# iNEXT

Version: 2.0.12

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# iNextPD

Version: 0.3.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# IntClust

Version: 0.0.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘prodlim’
      All declared Imports should be used.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'IntClustVignette.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# IONiseR

Version: 2.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-14 (IONiseR.Rmd) 
    Error: processing vignette 'IONiseR.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   1.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘start_time’
    readFast5Summary.mc: no visible binding for global variable ‘duration’
    readFast5Summary.mc: no visible binding for global variable
      ‘num_events’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledTemplate’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledComplement’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘component’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘idx’
    show,Fast5Summary: no visible binding for global variable ‘full_2D’
    show,Fast5Summary: no visible binding for global variable ‘pass’
    Undefined global functions or variables:
      := AAAAA TTTTT accumulation baseCalledComplement baseCalledTemplate
      bases_called category channel circleFun component duration error freq
      full_2D group hour idx matrixCol matrixRow meanZValue mean_value
      median_signal minute mux name nbases new_reads num_events oddEven
      pass pentamer rbindlist readIDs seq_length start_time time_bin
      time_group x y zvalue
    ```

# iqspr

Version: 2.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rcdk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# isobar

Version: 1.22.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘MSnbase’
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.as.matrix’ ‘.as.vect’ ‘.convertPeptideModif’
      ‘.proteinGroupAsConciseDataFrame’ ‘.read.idfile’ ‘.sum.bool’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    coerce,IBSpectra-MSnSet: no visible binding for global variable ‘o’
    coerce,MSnSet-IBSpectra: no visible global function definition for
      ‘qual’
    df,Tlsd: no visible global function definition for ‘param’
    estimateRatio,IBSpectra-ANY-missing-missing-character-missing: no
      visible binding for global variable ‘i’
    estimateRatio,IBSpectra-ANY-missing-missing-missing-character: no
      visible binding for global variable ‘i’
    estimateRatioNumeric,numeric-numeric-NoiseModel: no visible binding for
      global variable ‘center.var’
    location,Tlsd: no visible global function definition for ‘param’
    plotRatio,IBSpectra-character-character-character: no visible binding
      for global variable ‘pch’
    plotRatio,IBSpectra-character-character-character: no visible binding
      for global variable ‘noise.model.col’
    plotRatio,IBSpectra-character-character-character: no visible binding
      for global variable ‘pch.p’
    scale,Tlsd: no visible global function definition for ‘param’
    Undefined global functions or variables:
      center.var d g i mz name noise.model.col o param pch pch.p peptide
      qual ratio type
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘MSnbase’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
    Welcome to isobar (v 1.22.0)
       'openVignette("isobar")' and '?isobar' provide help on usage.
    
    
    Attaching package: ‘isobar’
    
    The following object is masked from ‘package:BiocGenerics’:
    
        normalize
    
    The following object is masked from ‘package:base’:
    
        paste0
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'isobar-devel.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# isomiRs

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following object is masked from 'package:base':
    
        apply
    
    converting counts to integer mode
    factor levels were dropped which had no samples
    converting counts to integer mode
    factor levels were dropped which had no samples
    converting counts to integer mode
    factor levels were dropped which had no samples
    converting counts to integer mode
    factor levels were dropped which had no samples
    converting counts to integer mode
    factor levels were dropped which had no samples
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'isomiRs-intro.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    isoSelect.IsomirDataSeq: no visible binding for global variable ‘freq’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘mir’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘mism’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘add’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘t5’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘t3’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘id’
    isoSelect,IsomirDataSeq : <anonymous>: no visible binding for global
      variable ‘freq’
    isoSelect,IsomirDataSeq: no visible binding for global variable ‘freq’
    Undefined global functions or variables:
      Count DB X1 X2 add af ambiguity average change condition current
      enrich enrichGO error freq gene go group id mir mir_f mir_n mism
      mism_f mism_n ngene pct_abundance reference rowMax rowMin sel_genes
      t3 t5 term term_short type value y
    ```

# jcolors

Version: 0.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# kgschart

Version: 1.3.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# KSD

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# LBSPR

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# learningCurve

Version: 1.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘scales’ ‘tidyverse’
      All declared Imports should be used.
    ```

# lemon

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# likert

Version: 1.3.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked UTF-8 strings
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Loading required package: xtable
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'likert-xtable.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# LINC

Version: 1.4.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc    3.6Mb
        libs   1.4Mb
    ```

*   checking R/sysdata.rda ... NOTE
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                  old_size new_size compress
      sysdata.rda    449Kb    311Kb       xz
    ```

# lindia

Version: 0.9

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# lmms

Version: 1.3.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# Logolas

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'logolas.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# LSAmitR

Version: 1.0-0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# lsbclust

Version: 1.0.4

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ltbayes

Version: 0.4

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# LumReader

Version: 0.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# maftools

Version: 1.2.30

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Excluding 0 silent variants.
    
    Creating oncomatrix (this might take a while)..
    Sorting..
    Summarizing..
    Frequently mutated genes..
    Done !
    reading maf..
    NOTE: Non MAF specific values in Variant_Classification column:
    Mutation_Status not found. Assuming all variants are Somatic and validated.
    Excluding 0 silent variants.
    
    Creating oncomatrix (this might take a while)..
    Sorting..
    Summarizing..
    Frequently mutated genes..
    Done !
    Quitting from lines 637-639 (maftools.Rmd) 
    Error: processing vignette 'maftools.Rmd' failed with diagnostics:
    there is no package called 'corrplot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc       1.8Mb
        extdata   4.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      SubstitutionMotif SubstitutionTypeMotif T>A T>C T>G TCA TCGA TCT TGA
      T[C>A]A T[C>A]T T[C>G]A T[C>G]T T[C>T]A T[C>T]T T[G>A]A T[G>C]A
      T[G>T]A TiTv Time TumorSampleBarcode Tumor_Sample_Barcode
      Tumor_Seq_Allele2 Unique_Name V1 V2 Var1 Var2 Variant_Classification
      Variant_Type Wide_Peak_Limits aa.length amp assembly_version bg
      chromosome chromosome_end chromosome_start ci.low ci.up clusters
      cohort con con.class consequence_type conv count count2 cytoband dat
      distance downstream endDist ens_id fdr fisher_pvalue flow fract
      fract_muts_in_clusters fraction fraction_APOBEC_mutations fs gene
      gene_affected hgnc_symbol i.End_Position i.Start_Position
      icgc_sample_id id idx lab labThis label loc log10OR
      mutated_from_allele mutated_to_allele mutations muts_in_clusters
      nGenes nMut nMuts nSamples nVars n_A n_C n_C>G_and_C>T n_G n_T
      n_mutations nonApobec non_APOBEC_mutations or peakID pfam poissonFdr
      pos pos2 posRounded protein.ID pval qvalues reference_genome_allele
      refseq.ID sequencing_strategy significant site sort_by_anno startDist
      statFontSize survLower survProb survUp tCw tCw_to_A tCw_to_G
      tCw_to_G+tCw_to_T tCw_to_T tFdr t_alt_count t_ref_count t_vaf tcw th
      total trinucleotide uid updown upstream value variable variantId
      verification_platform verification_status wGa wGa_to_A wGa_to_C
      wGa_to_T wga x y ymax ymin ystart
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘corrplot’
    'library' or 'require' call not declared from: ‘corrplot’
    ```

# mbgraphic

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘scagnostics’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mcMST

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘parallelMap’ ‘reshape2’
      All declared Imports should be used.
    ```

# medicalrisk

Version: 1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# metaplotr

Version: 0.0.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# methylInheritance

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# Mirsynergy

Version: 1.12.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
        decompose, spectrum
    
    The following object is masked from ‘package:base’:
    
        union
    
    Loading required package: ggplot2
    Discard row/column of all zeros in W
    Loading required package: Matrix
    Loading required package: foreach
    Loaded glmnet 2.0-10
    
    Discard row/column of all zeros in W
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Mirsynergy.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# miscset

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mlrMBO

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mlt.docreg

Version: 0.2-0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'mgcv'
    
    The following object is masked from 'package:nnet':
    
        multinom
    
    
    Re-fitting to get Hessian
    
    
    Re-fitting to get Hessian
    
    
    Re-fitting to get Hessian
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mlt.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mlxR

Version: 3.2.0

## In both

*   checking whether package ‘mlxR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/mlxR/new/mlxR.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# morse

Version: 2.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rjags’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mosaic

Version: 1.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      failed to tidy R code in chunk <unnamed-chunk-21>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <unnamed-chunk-25>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <unnamed-chunk-26>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Warning in block_exec(params) :
      failed to tidy R code in chunk <unnamed-chunk-27>
    reason: Error in loadNamespace(name) : there is no package called 'formatR'
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'MinimalR.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastR’
    
    Package which this enhances but not available for checking: ‘manipulate’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cubature’
    ```

# moveVis

Version: 0.9.5

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘move’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MSnbase

Version: 2.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘mzR’
    
    Packages suggested but not available for checking: ‘pRoloc’ ‘pRolocdata’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MutationalPatterns

Version: 1.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Warning: Ignoring unknown aesthetics: ymax
    Using Group.1 as id variables
    Using Group.1, Group.2 as id variables
    Using type, Signature, significant as id variables
    Warning: Ignoring unknown aesthetics: ymax
    Warning: Removed 1 rows containing missing values (geom_bar).
    Warning: Removed 1 rows containing missing values (geom_text).
    Warning in self$trans$transform(x) : NaNs produced
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 51 rows containing missing values (geom_point).
    Warning in self$trans$transform(x) : NaNs produced
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 8 rows containing missing values (geom_point).
    Using by, region as id variables
    Warning: Ignoring unknown aesthetics: ymax
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Introduction_to_MutationalPatterns.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# MWASTools

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    MWAS_scatterplotMS: no visible binding for global variable ‘logpval’
    QC_CV_scatterplot: no visible binding for global variable ‘abs.CV’
    Undefined global functions or variables:
      abs.CV logpval
    ```

# myTAI

Version: 0.6.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    2.7Mb
    ```

# naniar

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 208 SKIPPED: 0 FAILED: 6
      1. Error: geom_miss_point works (@test-plots.R#13) 
      2. Error: gg_miss_case_works (@test-plots.R#22) 
      3. Error: gg_miss_var_works (@test-plots.R#31) 
      4. Error: gg_miss_which_works (@test-plots.R#40) 
      5. Error: gg_miss_fct works (@test-plots.R#49) 
      6. Error: gg_miss_span works (@test-plots.R#58) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘vdiffr’
    ```

# ncappc

Version: 0.2.1.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# netprioR

Version: 1.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# networktools

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# nima

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# npregfast

Version: 1.4.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# olsrr

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# OperaMate

Version: 1.8.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    generateReport: no visible global function definition for ‘write.table’
    operaMate : configParser: no visible global function definition for
      ‘read.csv’
    parseFullTab: no visible global function definition for ‘read.delim’
    parseMatrix: no visible global function definition for ‘read.delim’
    parseTab: no visible global function definition for ‘read.delim’
    wellQC : <anonymous>: no visible global function definition for
      ‘boxplot’
    wellQC: no visible global function definition for ‘boxplot’
    cellNorm,cellData: no visible global function definition for
      ‘capture.output’
    show,cellData: no visible global function definition for ‘str’
    show,expData: no visible global function definition for ‘str’
    Undefined global functions or variables:
      abline boxplot capture.output combn read.csv read.delim str strheight
      strwidth write.table
    Consider adding
      importFrom("graphics", "abline", "boxplot", "strheight", "strwidth")
      importFrom("utils", "capture.output", "combn", "read.csv",
                 "read.delim", "str", "write.table")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    [09-03-2017 14:05:16]
     OperaMate Data Processing & Analysis
    ********************************************************
    Loading data ...
    Data normalization ...
    Data visualization ...
    Quality control ...
    Hit detection ...
    Annotation ... 
    Hit analysis ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'OperaMate-vignette.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# pacotest

Version: 0.2.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘VineCopula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ParamHelpers

Version: 1.10

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pathVar

Version: 1.6.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotOneSample: no visible binding for global variable ‘Number_of_genes’
    plotTwoSamplesCont: no visible binding for global variable ‘PwayName’
    plotTwoSamplesCont: no visible binding for global variable
      ‘NumOfGenesFromDataSetInPathway’
    plotTwoSamplesCont: no visible binding for global variable ‘value’
    plotTwoSamplesCont: no visible binding for global variable
      ‘..density..’
    plotTwoSamplesCont: no visible binding for global variable ‘group’
    plotTwoSamplesDisc: no visible binding for global variable ‘Cluster’
    plotTwoSamplesDisc: no visible binding for global variable
      ‘Number_of_genes’
    sigOneSample: no visible binding for global variable ‘APval’
    sigOneSample: no visible binding for global variable ‘PwayName’
    sigTwoSamplesCont: no visible binding for global variable ‘APval’
    sigTwoSamplesCont: no visible binding for global variable ‘PwayName’
    sigTwoSamplesDisc: no visible binding for global variable ‘APval’
    sigTwoSamplesDisc: no visible binding for global variable ‘PwayName’
    Undefined global functions or variables:
      ..density.. APval Cluster NumOfGenesFromDataSetInPathway
      Number_of_genes PercOfGenesInPway PwayName avg cv group medAbsDev
      standDev value
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Loading required package: gridExtra
    Using X1, X2 as id variables
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'pathVar.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# patPRO

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Checking should be performed on sources prepared by ‘R CMD build’.
    ```

# pbcmc

Version: 1.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
          pmin, pmin.int, rank, rbind, rowMeans, rowSums, rownames, sapply,
          setdiff, sort, table, tapply, union, unique, unsplit, which,
          which.max, which.min
      
      Welcome to Bioconductor
      
          Vignettes contain introductory material; view with
          'browseVignettes()'. To cite Bioconductor, see
          'citation("Biobase")', and for packages 'citation("pkgname")'.
      
      No methods found in "BiocGenerics" for requests: unlist
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Getting PAM50 subtypes...
    50/50 probes are used for clustering
    no standardization of the gene expressions
    Obtaining 10000 permutations for 5 subjects...
    Obtaining 10000 permutations for 5 subjects... done.
    PAM50 Permutation Test results!!! 
    
    Permutations: 10000
    pcutoff < 0.01
    corCutoff > 0.1
    
    Global results:
    Assigned 
           5 
    Particular results:
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'pbcmc-vignette.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# pdp

Version: 0.6.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ICEbox’
    ```

# PGRdup

Version: 0.2.3.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RecordLinkage’
    ```

# Phxnlme

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# PhyInformR

Version: 1.0

## In both

*   checking whether package ‘PhyInformR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/PhyInformR/new/PhyInformR.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gplots’ ‘phytools’
      All declared Imports should be used.
    ```

# Pi

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-23 (Pi_vignettes.Rmd) 
    Error: processing vignette 'Pi_vignettes.Rmd' failed with diagnostics:
    could not find function "pkg_ver"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ggforce’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   5.2Mb
    ```

# pifpaf

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gridExtra’
      All declared Imports should be used.
    ```

# planar

Version: 1.6

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# Plasmidprofiler

Version: 0.1.6

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pmc

Version: 1.0.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pointRes

Version: 1.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# PPtreeViz

Version: 2.0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# prcbench

Version: 0.7.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rJava’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# precrec

Version: 0.9.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   7.4Mb
    ```

# preproviz

Version: 0.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# primerTree

Version: 1.0.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error in .requirePackage(package) : 
        unable to find required package 'RCurl'
      Calls: <Anonymous> ... .extendsForS3 -> extends -> getClassDef -> .requirePackage
      Execution halted
    ```

# PTXQC

Version: 0.90.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc        3.8Mb
        examples   2.3Mb
    ```

# qdap

Version: 2.2.7

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘openNLP’ ‘venneuler’ ‘xlsx’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# QuantumClone

Version: 1.0.0.4

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# r2glmm

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.table’ ‘dplyr’ ‘lmerTest’
      All declared Imports should be used.
    ```

# radiant.basics

Version: 0.8.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# radiant.data

Version: 0.8.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# radiant.model

Version: 0.8.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# radiant.multivariate

Version: 0.8.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# RAM

Version: 1.2.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rangeMapper

Version: 0.3-1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgdal’ ‘rgeos’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# raptr

Version: 0.0.5

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘rgdal’ ‘rgeos’ ‘hypervolume’ ‘gdalUtils’
    
    Packages suggested but not available for checking: ‘gurobi’ ‘rgurobi’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RATest

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Loading required package: RATest
    Loading required package: ggplot2
    Loading required package: gridExtra
    Warning in eval(family$initialize) :
      non-integer #successes in a binomial glm!
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      dots in figure paths replaced with _ ("figure/panel_a")
    Warning in eval(family$initialize) :
      non-integer #successes in a binomial glm!
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      dots in figure paths replaced with _ ("figure/panel_b")
    Warning in (if (out_format(c("latex", "sweave", "listings"))) sanitize_fn else paste0)(path,  :
      dots in figure paths replaced with _ ("figure/hist_cdf")
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'RDperm.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rattle

Version: 4.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘RGtk2’
    
    Packages suggested but not available for checking:
      ‘cairoDevice’ ‘gWidgetsRGtk2’ ‘playwith’ ‘rggobi’ ‘RGtk2Extras’
      ‘RODBC’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RcmdrPlugin.MA

Version: 0.0-2

## In both

*   checking whether package ‘RcmdrPlugin.MA’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/RcmdrPlugin.MA/new/RcmdrPlugin.MA.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RDS

Version: 0.7-8

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# refund.shiny

Version: 0.3.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# regionReport

Version: 1.10.2

## In both

*   checking examples ... ERROR
    ```
    ...
    +    design = ~ condition)
    > dds <- DESeq(dds)
    estimating size factors
    estimating dispersions
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    fitting model and testing
    > 
    > ## The output will be saved in the 'DESeq2Report-example' directory
    > dir.create('DESeq2Report-example', showWarnings = FALSE, recursive = TRUE)
    > 
    > ## Generate the HTML report
    > report <- DESeq2Report(dds, 'DESeq2-example', c('condition', 'type'),
    +     outdir = 'DESeq2Report-example')
    Warning in c.bibentry(knitcitations = citation("knitcitations"), regionReport = citation("regionReport")[1],  :
      method is only applicable to ‘bibentry’ objects
    Writing 9 Bibtex entries ... OK
    Results written to file 'DESeq2Report-example/DESeq2Exploration.bib'
    Error: pandoc version 1.12.3 or higher is required and was not found (see the help page ?rmarkdown::pandoc_available).
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-21 (bumphunterExample.Rmd) 
    Error: processing vignette 'bumphunterExample.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘DESeq2:::pvalueAdjustment’
      See the note in ?`:::` about the use of this operator.
    ```

# remote

Version: 1.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# reproducer

Version: 0.1.9

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rfPermute

Version: 2.1.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘graphics’
      All declared Imports should be used.
    ```

# RGraphics

Version: 2.0-14

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘gWidgetsRGtk2’ ‘iplots’ ‘playwith’ ‘pmg’ ‘rgdal’ ‘rggobi’
      ‘RGraphics’ ‘venneuler’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        extra   9.4Mb
    ```

# RITAN

Version: 1.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    summary.term_enrichment_by_subset: no visible global function
      definition for ‘head’
    term.test: no visible global function definition for ‘phyper’
    term_enrichment : process_source: no visible binding for global
      variable ‘active_genesets’
    term_enrichment : process_source: no visible global function definition
      for ‘head’
    write_simple_table: no visible global function definition for
      ‘write.table’
    Undefined global functions or variables:
      Var1 Var2 abline active_genesets all_net all_symbols box density e f
      geneset_list head hist mad median network_list p.adjust phyper plot
      polygon read.table rect setTxtProgressBar subSIF txtProgressBar
      write.table
    Consider adding
      importFrom("graphics", "abline", "box", "hist", "plot", "polygon",
                 "rect")
      importFrom("stats", "density", "mad", "median", "p.adjust", "phyper")
      importFrom("utils", "head", "read.table", "setTxtProgressBar",
                 "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# RnBeads

Version: 1.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      
          ozone
      
      The following object is masked from 'package:IRanges':
      
          desc
      
      The following object is masked from 'package:S4Vectors':
      
          rename
      
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GLAD’
    
    Depends: includes the non-default packages:
      ‘BiocGenerics’ ‘S4Vectors’ ‘GenomicRanges’ ‘MASS’ ‘cluster’ ‘ff’
      ‘fields’ ‘ggplot2’ ‘gplots’ ‘gridExtra’ ‘limma’ ‘matrixStats’
      ‘illuminaio’ ‘methylumi’ ‘plyr’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        bin   1.0Mb
        doc   3.1Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘RnBeads’ for: ‘samples’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'Gviz:::.getBMFeatureMap' 'doParallel:::.options'
      'grDevices:::.smoothScatterCalcDensity'
      'minfi:::.default.450k.annotation' 'minfi:::.extractFromRGSet450k'
      'minfi:::.normalizeFunnorm450k'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      BootRefFreeEwasModel ChrNumeric DataTrack Density Deviance Difference
      DoISVA Error EstDimRMT GenomeAxisTrack ID IdeogramTrack
      IlluminaHumanMethylation450kmanifest
      IlluminaHumanMethylationEPICmanifest Index Intensity Measure
      PairsBootRefFreeEwasModel Probe RGChannelSet RefFreeEwasModel SNP
      Sample Slide Target Term UcscTrack Value addSex as.profileCGH
      assayDataElement assayDataElementNames barcode bv chrom color
      combinedRank comma covgMedian covgPercLow covgPercUp cv.glmnet daglad
      diffmeth diffmeth.p.adj.fdr diffmeth.p.val dinucleotideFrequency
      expectedCounts featureData featureData<- featureNames featureNames<-
      foreach geneCounts genome<- getCN getDoParWorkers getGreen
      getManifest getMeth getRed getSex getUnmeth getVarCov glmnet
      grid.draw grid.newpage group group1 group2 i impute.knn intensities
      is.subsegmentation k letterFrequency lme mapToGenome mean.diff
      mean.g1 mean.g2 mean.mean.g1 mean.mean.g2 mean.quot.log2 melt muted
      n.sites num.sites numSites numeric.names oddsRatios pData
      percent_format phenoData phenoData<- plotOrder plotTracks
      preprocessSWAN pvalues refText reg.type region.size
      registerDoParallel relative.coord report samples seqlengths
      seqlevels<- sigCategories sites2ignore size solve.QP stopCluster sva
      target tsne type types universeCounts useMart v varLabels x y yint
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'RnBeads.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# rnoaa

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 135 SKIPPED: 1 FAILED: 25
      1. Error: buoy works (@test-buoy.R#31) 
      2. Error: buoy works with character buoy ids (@test-buoy.R#48) 
      3. Error: buoy works regardless of buoyid case (@test-buoy.R#62) 
      4. Failure: buoys fails well (@test-buoy.R#73) 
      5. Failure: buoys fails well (@test-buoy.R#74) 
      6. Error: check_response returns an error (@test-check_response.r#7) 
      7. Error: check_response returns the correct error messages (@test-check_response.r#26) 
      8. Failure: gefs errors (@test-gefs.R#15) 
      9. Error: gefs time and ensemble selection returns correct indices. (@test-gefs.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘ncdf4’ ‘rgdal’
    ```

# rorutadis

Version: 0.4.2

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘Rglpk’ ‘hitandrun’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rotations

Version: 1.5

## Newly broken

*   checking whether package ‘rotations’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/rotations/new/rotations.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'rotations-intro.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        libs   6.4Mb
    ```

## Installation

### Devel

```

   File /tmp/RtmplB1TXc/file6d3c9d336f8 contains invalid line(s)
      <8b>
   They were ignored

* installing *source* package ‘rotations’ ...
** package ‘rotations’ successfully unpacked and MD5 sums checked
** libs
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c CppBayesFunctions.cpp -o CppBayesFunctions.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from CppBayesFunctions.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c FisherMethod.cpp -o FisherMethod.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from FisherMethod.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RcppExports.cpp -o RcppExports.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from ../inst/include/rotations_RcppExports.h:7,
                 from ../inst/include/rotations.h:7,
                 from RcppExports.cpp:4:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ZhangMethod.cpp -o ZhangMethod.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from ZhangMethod.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c basics.cpp -o basics.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from basics.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c estimators.cpp -o estimators.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from estimators.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c robustCpp.cpp -o robustCpp.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from robustCpp.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++ -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o rotations.so CppBayesFunctions.o FisherMethod.o RcppExports.o ZhangMethod.o basics.o estimators.o robustCpp.o File /tmp/RtmplB1TXc/file6d3c9d336f8 contains invalid line(s) <8b> They were ignored -llapack -lblas -lgfortran -lm -lquadmath -L/usr/lib/R/lib -lR
g++: error: File: No such file or directory
g++: error: contains: No such file or directory
g++: error: invalid: No such file or directory
g++: error: line(s): No such file or directory
g++: error: <8b>: No such file or directory
g++: error: They: No such file or directory
g++: error: were: No such file or directory
g++: error: ignored: No such file or directory
/usr/share/R/share/make/shlib.mk:6: recipe for target 'rotations.so' failed
make: *** [rotations.so] Error 1
ERROR: compilation failed for package ‘rotations’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/rotations/new/rotations.Rcheck/rotations’

```
### CRAN

```
* installing *source* package ‘rotations’ ...
** package ‘rotations’ successfully unpacked and MD5 sums checked
** libs
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c CppBayesFunctions.cpp -o CppBayesFunctions.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from CppBayesFunctions.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c FisherMethod.cpp -o FisherMethod.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from FisherMethod.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RcppExports.cpp -o RcppExports.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from ../inst/include/rotations_RcppExports.h:7,
                 from ../inst/include/rotations.h:7,
                 from RcppExports.cpp:4:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ZhangMethod.cpp -o ZhangMethod.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from ZhangMethod.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c basics.cpp -o basics.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from basics.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c estimators.cpp -o estimators.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from estimators.cpp:1:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/Rcpp/include" -I"/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c robustCpp.cpp -o robustCpp.o
In file included from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo:52:0,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadilloForward.h:46,
                 from /home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/RcppArmadillo.h:31,
                 from robustCpp.cpp:2:
/home/auguieba/Documents/github/gridextra/revdep/library/rotations/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:474:96: note: #pragma message: WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+
   #pragma message ("WARNING: use of OpenMP disabled; this compiler doesn't support OpenMP 3.0+")
                                                                                                ^
g++ -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o rotations.so CppBayesFunctions.o FisherMethod.o RcppExports.o ZhangMethod.o basics.o estimators.o robustCpp.o -llapack -lblas -lgfortran -lm -lquadmath -L/usr/lib/R/lib -lR
installing to /home/auguieba/Documents/github/gridextra/revdep/checks/rotations/old/rotations.Rcheck/rotations/libs
** R
** data
** inst
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
* DONE (rotations)

```
# rpf

Version: 0.53

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        libs   8.5Mb
    ```

# rrepast

Version: 0.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rJava’ ‘xlsx’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RSPS

Version: 1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘rnbinom’
    negbin.pow : inner.fcn: no visible global function definition for
      ‘na.omit’
    negbin.pow : inner.fcn: no visible global function definition for
      ‘quantile’
    negbin.pow: no visible global function definition for ‘txtProgressBar’
    negbin.pow: no visible global function definition for
      ‘setTxtProgressBar’
    poiss.pow : inner.fcn: no visible global function definition for
      ‘rpois’
    poiss.pow : inner.fcn: no visible global function definition for
      ‘quantile’
    poiss.pow: no visible global function definition for ‘txtProgressBar’
    poiss.pow: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      na.omit quantile rnbinom rpois setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("stats", "na.omit", "quantile", "rnbinom", "rpois")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# rstan

Version: 2.16.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘shinystan’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 228.9Mb
      sub-directories of 1Mb or more:
        libs  226.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘coda’, ‘shinystan’, ‘rstanarm’
    ```

# rstanarm

Version: 2.15.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-15 (./children/SETTINGS-knitr.txt) 
    Quitting from lines NA-15 (./children/SETTINGS-knitr.txt) 
    Error: processing vignette 'aov.Rmd' failed with diagnostics:
    object 'params' not found
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 58.3Mb
      sub-directories of 1Mb or more:
        doc    2.2Mb
        libs  55.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘gamm4’, ‘biglm’
    ```

# RStoolbox

Version: 0.1.9

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rgeos’ ‘rgdal’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# RUVcorr

Version: 1.8.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_na[seq(0, 15, 4) + i], cor_Raw_na, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_na[seq(0, 15, 4) + i], cor_Raw_na, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_na[seq(0, 15, 4) + i], cor_Raw_na, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_bg[seq(0, 15, 4) + i], cor_Raw_bg, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_bg[seq(0, 15, 4) + i], cor_Raw_bg, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_bg[seq(0, 15, 4) + i], cor_Raw_bg, title = paste("nu=",  :
      Specified colors are no longer valid.
    Warning in histogramPlot(cor_AllRUV_bg[seq(0, 15, 4) + i], cor_Raw_bg, title = paste("nu=",  :
      Specified colors are no longer valid.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'RUVcorrVignetteNew.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotDesign: no visible global function definition for ‘par’
    plotDesign: no visible global function definition for ‘image’
    plotThreshold: no visible global function definition for ‘plot’
    plotThreshold : <anonymous>: no visible global function definition for
      ‘points’
    prioritise: no visible global function definition for ‘cor’
    simulateGEdata: no visible global function definition for ‘runif’
    simulateGEdata: no visible global function definition for ‘rnorm’
    simulateGEdata: no visible global function definition for ‘cor’
    wcor : <anonymous>: no visible global function definition for ‘cor’
    Undefined global functions or variables:
      abline boxplot cor density hist image layout legend lines loess
      median mtext par plot plot.new points prcomp rect rnorm runif var
      xtabs
    Consider adding
      importFrom("graphics", "abline", "boxplot", "hist", "image", "layout",
                 "legend", "lines", "mtext", "par", "plot", "plot.new",
                 "points", "rect")
      importFrom("stats", "cor", "density", "loess", "median", "prcomp",
                 "rnorm", "runif", "var", "xtabs")
    to your NAMESPACE file.
    ```

# savR

Version: 1.14.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Cairo’
    ```

*   checking R code for possible problems ... NOTE
    ```
    buildReports,savProject-character: no visible global function
      definition for ‘dev.off’
    qualityHeatmap,savProject-integer-integer-logical: no visible global
      function definition for ‘quantile’
    Undefined global functions or variables:
      dev.off quantile
    Consider adding
      importFrom("grDevices", "dev.off")
      importFrom("stats", "quantile")
    to your NAMESPACE file.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Warning: `position` is deprecated
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'savR.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# scDD

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following object is masked from 'package:base':
    
        apply
    
    
    Attaching package: 'gridExtra'
    
    The following object is masked from 'package:Biobase':
    
        combine
    
    The following object is masked from 'package:BiocGenerics':
    
        combine
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'scDD.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘grDevices’ ‘graphics’ ‘stats’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    testZeroes: no visible global function definition for ‘anova’
    validation : <anonymous>: no visible global function definition for
      ‘var’
    validation: no visible binding for global variable ‘var’
    validation: no visible global function definition for ‘par’
    validation: no visible global function definition for ‘plot’
    validation: no visible global function definition for ‘abline’
    validation: no visible global function definition for ‘points’
    Undefined global functions or variables:
      abline anova axis binomial density dev.off fisher.test hcl hist
      ks.test lines lm model.matrix p.adjust par pdf plot points quantile
      rbinom rect residuals rnbinom rt runif t.test var
    Consider adding
      importFrom("grDevices", "dev.off", "hcl", "pdf")
      importFrom("graphics", "abline", "axis", "hist", "lines", "par",
                 "plot", "points", "rect")
      importFrom("stats", "anova", "binomial", "density", "fisher.test",
                 "ks.test", "lm", "model.matrix", "p.adjust", "quantile",
                 "rbinom", "residuals", "rnbinom", "rt", "runif", "t.test",
                 "var")
    to your NAMESPACE file.
    ```

# SCGLR

Version: 2.0.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'scglrVignettes.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# seqplots

Version: 1.14.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.7Mb
      sub-directories of 1Mb or more:
        doc        2.6Mb
        seqplots  10.3Mb
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call("BWGFile_summary", ..., PACKAGE = "rtracklayer")
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotHeatmap,list: no visible global function definition for ‘kmeans’
    plotHeatmap,list: no visible global function definition for ‘hclust’
    plotHeatmap,list: no visible global function definition for ‘dist’
    plotHeatmap,list: no visible global function definition for ‘cutree’
    plotHeatmap,list: no visible global function definition for
      ‘as.dendrogram’
    plotHeatmap,list: no visible global function definition for ‘title’
    Undefined global functions or variables:
      Var1 Var2 abline adjustcolor approx as.dendrogram axis box
      capture.output colorRampPalette cutree dist hclust image kmeans
      layout lines mtext par plot.new qt rainbow rect rgb text title value
    Consider adding
      importFrom("grDevices", "adjustcolor", "colorRampPalette", "rainbow",
                 "rgb")
      importFrom("graphics", "abline", "axis", "box", "image", "layout",
                 "lines", "mtext", "par", "plot.new", "rect", "text",
                 "title")
      importFrom("stats", "approx", "as.dendrogram", "cutree", "dist",
                 "hclust", "kmeans", "qt")
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
    ```

# Seurat

Version: 2.0.1

## In both

*   checking examples ... ERROR
    ```
    ...
      |================================================================      |  91%
      |                                                                            
      |=================================================================     |  92%
      |                                                                            
      |==================================================================    |  94%
      |                                                                            
      |==================================================================    |  95%
      |                                                                            
      |===================================================================   |  96%
      |                                                                            
      |====================================================================  |  98%
      |                                                                            
      |===================================================================== |  99%
      |                                                                            
      |======================================================================| 100%
    sh: 1: java: not found
    Warning in file(file, "rt") :
      cannot open file '/home/auguieba/Documents/github/gridextra/revdep/checks/Seurat/new/Seurat.Rcheck/output_33895.txt': No such file or directory
    Error in file(file, "rt") : cannot open the connection
    Calls: FindClusters -> RunModularityClustering -> read.table -> file
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: read.table(file = output_file, header = FALSE, sep = "\t")
      4: file(file, "rt")
      
      sh: 1: java: not found
      Error in file(file, "rt") : cannot open the connection
      Calls: test_check ... FindClusters -> RunModularityClustering -> read.table -> file
      In addition: Warning message:
      In file(file, "rt") :
        cannot open file '/home/auguieba/Documents/github/gridextra/revdep/checks/Seurat/new/Seurat.Rcheck/output_25413.txt': No such file or directory
      testthat results ================================================================
      OK: 150 SKIPPED: 0 FAILED: 1
      1. Error: SNN calculations are correct and handled properly (@test_seurat_object.R#153) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘NMOF’ ‘compositions’ ‘e1071’
      All declared Imports should be used.
    ```

# sgd

Version: 1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 13 SKIPPED: 0 FAILED: 10
      1.  Error: MSE converges for linear regression with lasso (@test-lasso.R#6) 
      2.  Failure: MSE converges for linear models (@test-linear.R#37) 
      3.  Failure: MSE converges for linear models (@test-linear.R#40) 
      4.  Failure: MSE converges for linear models (@test-linear.R#42) 
      5.  Failure: MSE converges for linear models (@test-linear.R#55) 
      6.  Failure: MSE converges for linear models (@test-linear.R#56) 
      7.  Failure: MSE converges for linear models (@test-linear.R#57) 
      8.  Failure: MSE converges for linear models (@test-linear.R#60) 
      9.  Failure: MSE converges for linear models (@test-linear.R#61) 
      10. Failure: MSE converges for linear models (@test-linear.R#62) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ShinyItemAnalysis

Version: 1.2.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘data.table’ ‘gridExtra’ ‘knitr’ ‘latticeExtra’ ‘msm’ ‘plotly’
      ‘xtable’
      All declared Imports should be used.
    ```

# shinystan

Version: 2.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(shinystan)
      Loading required package: shiny
      
      This is shinystan version 2.4.0
      
      > 
      > test_check("shinystan")
      Error in library(rstanarm) : there is no package called 'rstanarm'
      Calls: test_check ... suppressPackageStartupMessages -> withCallingHandlers -> library
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rstanarm’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rstanarm’
    ```

# sights

Version: 1.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘xlsx’
    ```

# simPH

Version: 1.3.10

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    
    Converting "begin" to numeric. Things might get wacky. Please check.
    Converting "end" to numeric. Things might get wacky. Please check.
    Converting "event" to numeric. Things might get wacky. Please check.
    
    Expanding data.
    
    Keeping only needed observations.
    
    Doing a final clean up.
    All Xl set to 0.
    All Xl set to 0.
    `geom_smooth()` using method = 'gam'
    `geom_smooth()` using method = 'gam'
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'simPH-overview.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# simstudy

Version: 0.1.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# Single.mTEC.Transcriptomes

Version: 1.4.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following object is masked from 'package:geneplotter':
    
        imageMap
    
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    gene-wise dispersion estimates
    mean-dispersion relationship
    final dispersion estimates
    Warning: Removed 1634 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1634 rows containing non-finite values (stat_boxplot).
    Warning: Removed 1454 rows containing non-finite values (stat_ydensity).
    Warning: Removed 1454 rows containing non-finite values (stat_boxplot).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mTECs.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 911.9Mb
      sub-directories of 1Mb or more:
        data  895.1Mb
        doc    16.6Mb
    ```

# sjPlot

Version: 2.3.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggeffects’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plm’
    ```

# snht

Version: 1.0.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'pairwiseSNHT.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# SNPhood

Version: 1.6.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 2-135 (IntroductionToSNPhood.Rmd) 
    Error: processing vignette 'IntroductionToSNPhood.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data   3.8Mb
        doc    3.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    BugReports field is not a suitable URL but appears to contain an email address
      not specified by mailto: nor contained in < >
    ```

*   checking R code for possible problems ... NOTE
    ```
    .calcBinomTestVector: no visible binding for global variable ‘pp’
    Undefined global functions or variables:
      pp
    ```

# soc.ca

Version: 0.7.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 833 marked UTF-8 strings
    ```

# Sofi

Version: 0.16.4.8

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# solarius

Version: 0.3.0.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sparkTable

Version: 1.3.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘Cairo’ ‘Rglpk’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sparsereg

Version: 1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# spc4sts

Version: 0.2.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# speaq

Version: 2.0.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# SpidermiR

Version: 1.6.3

## Newly broken

*   checking whether package ‘SpidermiR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/SpidermiR/new/SpidermiR.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: IRanges
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    
    trying URL 'http://zmf.umm.uni-heidelberg.de/apps/zmf/mirwalk2/downloads/vtm/hsa-vtm-gene.rdata.zip'
    Content type 'application/zip' length 149099 bytes (145 KB)
    ==================================================
    downloaded 145 KB
    
    Quitting from lines 438-441 (SpidermiR.Rmd) 
    Error: processing vignette 'SpidermiR.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .SpidermiRvisualize_gene: possible error in simpleNetwork(NetworkData,
      linkColour = "gray", textColour = "black", zoom = TRUE): unused
      argument (textColour = "black")
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘miRNAs’
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘mRNA_target’
    Undefined global functions or variables:
      mRNA_target miRNAs
    ```

## Installation

### Devel

```
* installing *source* package ‘SpidermiR’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error : object ‘rbind.gtable’ is not exported by 'namespace:gridExtra'
ERROR: lazy loading failed for package ‘SpidermiR’
* removing ‘/home/auguieba/Documents/github/gridextra/revdep/checks/SpidermiR/new/SpidermiR.Rcheck/SpidermiR’

```
### CRAN

```
* installing *source* package ‘SpidermiR’ ...
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
* DONE (SpidermiR)

```
# spikeSlabGAM

Version: 1.1-11

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    
    The following object is masked from 'package:mboost':
    
        %+%
    
    Warning in (function (xnew)  :
      predictions outside fitted range for lin(glucose).
    Warning in (function (xnew)  :
      predictions outside fitted range for sm(glucose).
    Warning in bsplines(mf[[i]], knots = args$knots[[i]]$knots, boundary.knots = args$knots[[i]]$boundary.knots,  :
      Some 'x' values are beyond 'boundary.knots'; Linear extrapolation used.
    Warning in (function (xnew)  :
      predictions outside fitted range for lin(glucose).
    Warning in (function (xnew)  :
      predictions outside fitted range for sm(glucose).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'UsingSpikeSlabGAM.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# spup

Version: 0.1-1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# starmie

Version: 0.1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘iterpc’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# statebins

Version: 1.2.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# STATegRa

Version: 1.10.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   2.4Mb
        doc    2.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    biplotRes,caClass-character-numeric-character: no visible binding for
      global variable ‘values.1’
    biplotRes,caClass-character-numeric-character: no visible binding for
      global variable ‘values.2’
    biplotRes,caClass-character-numeric-character: no visible binding for
      global variable ‘color’
    plotVAF,caClass: no visible binding for global variable ‘comp’
    plotVAF,caClass: no visible binding for global variable ‘VAF’
    plotVAF,caClass: no visible binding for global variable ‘block’
    selectCommonComps,matrix-matrix-numeric: no visible binding for global
      variable ‘comps’
    selectCommonComps,matrix-matrix-numeric: no visible binding for global
      variable ‘block’
    selectCommonComps,matrix-matrix-numeric: no visible binding for global
      variable ‘comp’
    selectCommonComps,matrix-matrix-numeric: no visible binding for global
      variable ‘ratio’
    Undefined global functions or variables:
      VAF block color comp comps ratio values.1 values.2
    ```

# StatRank

Version: 0.0.6

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# stormwindmodel

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        intersect, setdiff, setequal, union
    
    
    Attaching package: 'gridExtra'
    
    The following object is masked from 'package:dplyr':
    
        combine
    
    Map from URL : http://maps.googleapis.com/maps/api/staticmap?center=georgia&zoom=5&size=640x640&scale=2&maptype=terrain&language=en-EN&sensor=false
    Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=georgia&sensor=false
    Warning: Removed 703 rows containing missing values (geom_point).
    Warning: Removed 89 rows containing missing values (geom_point).
    Warning: Removed 1 rows containing missing values (geom_path).
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 98-100 (Overview.Rmd) 
    Error: processing vignette 'Overview.Rmd' failed with diagnostics:
    there is no package called 'tigris'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘rgeos’ ‘tigris’
    ```

# strataG

Version: 2.0.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘copula’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# strvalidator

Version: 2.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘gWidgets2RGtk2’ ‘RGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# subspaceMOA

Version: 0.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘streamMOA’ ‘rJava’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# sure

Version: 0.1.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘truncdist’
    ```

# surveillance

Version: 1.14.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘rgeos’ ‘gsl’ ‘INLA’ ‘runjags’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        libs   1.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘rgeos’, ‘runjags’, ‘coin’, ‘VGAM’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    glrnb: Fitting Poisson model because alpha == 0
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'glrnb.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# survminer

Version: 0.4.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        doc   5.3Mb
    ```

# survMisc

Version: 0.5.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'plots.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# svdvis

Version: 0.1

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# SWMPr

Version: 2.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tcR

Version: 2.2.1.11

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        doc    3.9Mb
        libs   1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scales’
      All declared Imports should be used.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'top.fun':
      ‘slice.fun’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# TeachBayes

Version: 1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# TELP

Version: 1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TELP-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: telp
    > ### Title: The Base Function of This Package The Free Evocation of Words
    > ###   Technique
    > ### Aliases: telp
    > ### Keywords: function
    > 
    > ### ** Examples
    > 
    > telp()
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "toplevel".
    Calls: telp ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking whether package ‘TELP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/auguieba/Documents/github/gridextra/revdep/checks/TELP/new/TELP.Rcheck/00install.out’ for details.
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# texmex

Version: 2.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# TimerQuant

Version: 1.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Warning in min(x, na.rm = TRUE) :
      no non-missing arguments to min; returning Inf
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'genPaperFigures.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘rainbow’
    plotPrimordiumProfile: no visible binding for global variable ‘median’
    plotPrimordiumProfile: no visible binding for global variable ‘mad’
    plotPrimordiumProfile: no visible global function definition for ‘par’
    plotPrimordiumProfile: no visible global function definition for ‘plot’
    plotPrimordiumProfile: no visible global function definition for ‘axis’
    plotPrimordiumProfile: no visible global function definition for
      ‘points’
    plotPrimordiumProfile: no visible global function definition for
      ‘polygon’
    plotPrimordiumProfile: no visible global function definition for ‘rgb’
    simulatedRatio: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      approxfun axis mad median optimize par plot points polygon predict
      rainbow rgb rnorm
    Consider adding
      importFrom("grDevices", "rainbow", "rgb")
      importFrom("graphics", "axis", "par", "plot", "points", "polygon")
      importFrom("stats", "approxfun", "mad", "median", "optimize",
                 "predict", "rnorm")
    to your NAMESPACE file.
    ```

# TPP

Version: 3.4.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Evaluate goodness of fit of null and alternative models.
    Runtime (2 CPUs used): 15.6 secs
    
    Results table created successfully.
    
    Joining, by = "Protein_ID"
    Writing results to file: /home/auguieba/Documents/github/gridextra/revdep/checks/TPP/new/TPP.Rcheck/vign_test/TPP/vignettes/NPARC_Vignette_Example/results_TPP_TR.xlsx
    File created successfully!
    
    Creating QC plots to visualize median curve fits...
    done.
    
    Creating QC plots to visualize normalization effects...
    done.
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'NPARC_analysis_of_TPP_TR_data.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        data           1.9Mb
        example_data   8.0Mb
        test_data      1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘doParallel:::.options’ ‘mefa:::rep.data.frame’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    File ‘TPP/R/TPP.R’:
      .onLoad calls:
        packageStartupMessage(msgText, "\n")
    
    See section ‘Good practice’ in '?.onAttach'.
    
    plot_fSta_distribution: no visible binding for global variable
      ‘..density..’
    plot_pVal_distribution: no visible binding for global variable
      ‘..density..’
    Undefined global functions or variables:
      ..density..
    ```

# trackeR

Version: 0.0.5

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘colorspace’
      All declared Imports should be used.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Loading required package: zoo
    
    Attaching package: 'zoo'
    
    The following objects are masked from 'package:base':
    
        as.Date, as.Date.numeric
    
    Loading required package: ggplot2
    
    Attaching package: 'trackeR'
    
    The following object is masked from 'package:base':
    
        append
    
    Map from URL : http://maps.googleapis.com/maps/api/staticmap?center=57.157231,-2.104296&zoom=13&size=640x640&scale=2&maptype=terrain&language=en-EN&sensor=false
    Quitting from lines 96-97 (TourDetrackeR.Rmd) 
    Error: processing vignette 'TourDetrackeR.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

# TriMatch

Version: 0.9.7

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# TRONCO

Version: 2.8.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in strwidth(legend, units = "user", cex = cex, font = text.font) :
      font metrics unknown for character 0xa
    Warning in strheight(legend, units = "user", cex = cex) :
      font metrics unknown for character 0xa
    Warning in text.default(x, y, ...) :
      font metrics unknown for character 0xa
    Warning in text.default(x, y, ...) :
      font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Warning in replayPlot(x) : font metrics unknown for character 0xa
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'TRONCO.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tRophicPosition

Version: 0.7.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘rjags’ ‘runjags’ ‘SIBER’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# tukeytrend

Version: 0.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        aml
    
    
    Attaching package: 'aods3'
    
    The following object is masked from 'package:survival':
    
        rats
    
    Warning in RET$pfunction("adjusted", ...) :
      Completion with error > abseps
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 12 rows containing non-finite values (stat_boxplot).
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ExamplesTukeytrendtest.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# UpSetR

Version: 1.3.3

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        doc   7.9Mb
    ```

# userfriendlyscience

Version: 0.6-1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘MBESS’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# varian

Version: 0.2.2

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# vdg

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'vdg.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# viridis

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: vdiffr::expect_doppelganger at testthat/test-viridis.R:44
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 1
      1. Error: visual elements are correct (@test-viridis.R#44) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'raster'
    
    The following object is masked from 'package:colorspace':
    
        RGB
    
    Loading required package: lattice
    Loading required package: latticeExtra
    Loading required package: RColorBrewer
    
    Attaching package: 'latticeExtra'
    
    The following object is masked from 'package:ggplot2':
    
        layer
    
    Quitting from lines 204-213 (intro-to-viridis.Rmd) 
    Error: processing vignette 'intro-to-viridis.Rmd' failed with diagnostics:
    Cannot create RasterLayer object from this file; perhaps you need to install rgdal first
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘vdiffr’ ‘svglite’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# vortexR

Version: 1.1.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘glmulti’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# waffle

Version: 0.7.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# walker

Version: 0.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 46.9Mb
      sub-directories of 1Mb or more:
        libs  46.2Mb
    ```

# walkr

Version: 0.3.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘hitandrun’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# WRTDStidal

Version: 1.1.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# WVPlots

Version: 0.2.6

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mgcv’
      All declared Imports should be used.
    ```

# YAPSA

Version: 1.2.0

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# yorkr

Version: 0.0.7

## In both

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

