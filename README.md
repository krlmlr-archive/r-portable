
r-portable 
==========
[![Build status](https://ci.appveyor.com/api/projects/status/w016xch3qm00msde/branch/master)](https://ci.appveyor.com/project/krlmlr/r-portable/branch/master)

ISO images that contain everything necessary to build R packages.

Built by [AppVeyor](http://www.appveyor.com/). Uses [innounp](http://innounp.sourceforge.net/) and [.NET DiscUtils](http://discutils.codeplex.com/).

Download
--------

- [R.iso](https://rportable.blob.core.windows.net/r-portable/master/R.iso) (372.4 MB, MD5 hash: 9a4385fe0136201247f06d365e1b8896)
- [R.iso.gz](https://rportable.blob.core.windows.net/r-portable/master/R.iso.gz) (much smaller)

Contents
--------


```r
sessionInfo()
```

```
## R Under development (unstable) (2014-08-14 r66373)
## Platform: i386-w64-mingw32/i386 (32-bit)
## 
## locale:
## [1] LC_COLLATE=English_United States.1252 
## [2] LC_CTYPE=English_United States.1252   
## [3] LC_MONETARY=English_United States.1252
## [4] LC_NUMERIC=C                          
## [5] LC_TIME=English_United States.1252    
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  base     
## 
## loaded via a namespace (and not attached):
## [1] evaluate_0.5.5 formatR_0.10   knitr_1.6      stringr_0.6.2 
## [5] tools_3.2.0
```

```r
as.data.frame(installed.packages())[c("Version", "Priority")]
```

```
##               Version    Priority
## base            3.2.0        base
## bitops          1.0-6        <NA>
## boot           1.3-11 recommended
## class          7.3-11 recommended
## cluster        1.15.2 recommended
## codetools       0.2-8 recommended
## compiler        3.2.0        base
## datasets        3.2.0        base
## devtools          1.5        <NA>
## digest          0.6.4        <NA>
## evaluate        0.5.5        <NA>
## foreign        0.8-61 recommended
## formatR          0.10        <NA>
## graphics        3.2.0        base
## grDevices       3.2.0        base
## grid            3.2.0        base
## highr             0.3        <NA>
## httr              0.4        <NA>
## jsonlite       0.9.10        <NA>
## KernSmooth    2.23-12 recommended
## knitr             1.6        <NA>
## lattice       0.20-29 recommended
## markdown        0.7.2        <NA>
## MASS           7.3-33 recommended
## Matrix          1.1-4 recommended
## memoise         0.2.1        <NA>
## methods         3.2.0        base
## mgcv            1.8-2 recommended
## mime            0.1.2        <NA>
## nlme          3.1-117 recommended
## nnet            7.3-8 recommended
## parallel        3.2.0        base
## RCurl        1.95-4.3        <NA>
## rpart           4.1-8 recommended
## spatial         7.3-8 recommended
## splines         3.2.0        base
## stats           3.2.0        base
## stats4          3.2.0        base
## stringr         0.6.2        <NA>
## survival       2.37-7 recommended
## tcltk           3.2.0        base
## testthat        0.8.1        <NA>
## tools           3.2.0        base
## translations    3.2.0        <NA>
## utils           3.2.0        base
## whisker         0.3-2        <NA>
```
