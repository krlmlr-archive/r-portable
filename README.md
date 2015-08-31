
r-portable 
==========
[![Build status](https://ci.appveyor.com/api/projects/status/w016xch3qm00msde/branch/master)](https://ci.appveyor.com/project/krlmlr/r-portable/branch/master)

Archives and disk images that contain everything necessary to build R packages on Windows.

Built by [AppVeyor](http://www.appveyor.com/). Uses [innounp](http://innounp.sourceforge.net/) and [the cygwin port of cdrtools](http://www.student.tugraz.at/thomas.plank/index_en.html).

## Download

Most recent version:

- [R.tar.gz](https://rportable.blob.core.windows.net/r-portable/master/R.tar.gz) (268 MB, MD5 hash: `859692d04bafff176aaf658528ae7d06`, uncompressed 743.1 MB)
- [R.iso.gz](https://rportable.blob.core.windows.net/r-portable/master/R.iso.gz) (268.6 MB, MD5 hash: `2a91d79cda2ceb1dabac0d4dfa677bb7`, uncompressed 761.7 MB)
- [R.vhd.gz](https://rportable.blob.core.windows.net/r-portable/master/R.vhd.gz) (270.9 MB, MD5 hash: `fe51b56fd37a173b9260acd92bb0456e`, uncompressed 811.6 MB)

Earlier versions are available through the [AppVeyor build history](https://ci.appveyor.com/project/krlmlr/r-portable/history) in the corresponding "ARTIFACTS" section of the individual builds.  ([Direct link](https://ci.appveyor.com/project/krlmlr/r-portable/build/artifacts) to the artifacts for the *latest* build.)

## Contents

### R version

R Under development (unstable) (2015-08-28 r69202)

### Package versions

####  base 
[`base`](http://cran.r-project.org/package=base) (3.3.0),
[`compiler`](http://cran.r-project.org/package=compiler) (3.3.0),
[`datasets`](http://cran.r-project.org/package=datasets) (3.3.0),
[`graphics`](http://cran.r-project.org/package=graphics) (3.3.0),
[`grDevices`](http://cran.r-project.org/package=grDevices) (3.3.0),
[`grid`](http://cran.r-project.org/package=grid) (3.3.0),
[`methods`](http://cran.r-project.org/package=methods) (3.3.0),
[`parallel`](http://cran.r-project.org/package=parallel) (3.3.0),
[`splines`](http://cran.r-project.org/package=splines) (3.3.0),
[`stats`](http://cran.r-project.org/package=stats) (3.3.0),
[`stats4`](http://cran.r-project.org/package=stats4) (3.3.0),
[`tcltk`](http://cran.r-project.org/package=tcltk) (3.3.0),
[`tools`](http://cran.r-project.org/package=tools) (3.3.0),
[`utils`](http://cran.r-project.org/package=utils) (3.3.0) 
####  recommended 
[`boot`](http://cran.r-project.org/package=boot) (1.3-17),
[`class`](http://cran.r-project.org/package=class) (7.3-13),
[`cluster`](http://cran.r-project.org/package=cluster) (2.0.3),
[`codetools`](http://cran.r-project.org/package=codetools) (0.2-14),
[`foreign`](http://cran.r-project.org/package=foreign) (0.8-66),
[`KernSmooth`](http://cran.r-project.org/package=KernSmooth) (2.23-15),
[`lattice`](http://cran.r-project.org/package=lattice) (0.20-33),
[`MASS`](http://cran.r-project.org/package=MASS) (7.3-43),
[`Matrix`](http://cran.r-project.org/package=Matrix) (1.2-2),
[`mgcv`](http://cran.r-project.org/package=mgcv) (1.8-7),
[`nlme`](http://cran.r-project.org/package=nlme) (3.1-122),
[`nnet`](http://cran.r-project.org/package=nnet) (7.3-10),
[`rpart`](http://cran.r-project.org/package=rpart) (4.1-10),
[`spatial`](http://cran.r-project.org/package=spatial) (7.3-10),
[`survival`](http://cran.r-project.org/package=survival) (2.38-3) 
####  other 
[`BH`](http://cran.r-project.org/package=BH) (1.58.0-1),
[`bitops`](http://cran.r-project.org/package=bitops) (1.0-6),
[`brew`](http://cran.r-project.org/package=brew) (1.0-6),
[`crayon`](http://cran.r-project.org/package=crayon) (1.3.1),
[`curl`](http://cran.r-project.org/package=curl) (0.9.3),
[`devtools`](http://cran.r-project.org/package=devtools) (1.8.0),
[`digest`](http://cran.r-project.org/package=digest) (0.6.8),
[`evaluate`](http://cran.r-project.org/package=evaluate) (0.7.2),
[`formatR`](http://cran.r-project.org/package=formatR) (1.2),
[`git2r`](http://cran.r-project.org/package=git2r) (0.11.0),
[`highr`](http://cran.r-project.org/package=highr) (0.5),
[`httr`](http://cran.r-project.org/package=httr) (1.0.0),
[`jsonlite`](http://cran.r-project.org/package=jsonlite) (0.9.16),
[`knitr`](http://cran.r-project.org/package=knitr) (1.11),
[`magrittr`](http://cran.r-project.org/package=magrittr) (1.5),
[`markdown`](http://cran.r-project.org/package=markdown) (0.7.7),
[`memoise`](http://cran.r-project.org/package=memoise) (0.2.1),
[`mime`](http://cran.r-project.org/package=mime) (0.3),
[`plyr`](http://cran.r-project.org/package=plyr) (1.8.3),
[`R6`](http://cran.r-project.org/package=R6) (2.1.1),
[`Rcpp`](http://cran.r-project.org/package=Rcpp) (0.12.0),
[`RCurl`](http://cran.r-project.org/package=RCurl) (1.95-4.7),
[`roxygen2`](http://cran.r-project.org/package=roxygen2) (4.1.1),
[`rstudioapi`](http://cran.r-project.org/package=rstudioapi) (0.3.1),
[`rversions`](http://cran.r-project.org/package=rversions) (1.0.2),
[`stringi`](http://cran.r-project.org/package=stringi) (0.5-5),
[`stringr`](http://cran.r-project.org/package=stringr) (1.0.0),
[`testthat`](http://cran.r-project.org/package=testthat) (0.10.0),
[`translations`](http://cran.r-project.org/package=translations) (3.3.0),
[`whisker`](http://cran.r-project.org/package=whisker) (0.3-2),
[`xml2`](http://cran.r-project.org/package=xml2) (0.1.1),
[`yaml`](http://cran.r-project.org/package=yaml) (2.1.13) 
