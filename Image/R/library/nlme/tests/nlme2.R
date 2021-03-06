library(nlme)
is64bit <- .Machine$sizeof.pointer == 8

options(digits = 10)# <- see more, as we have *no* *.Rout.save file here
## https://stat.ethz.ch/pipermail/r-help/2014-September/422123.html
nfm <- nlme(circumference ~ SSlogis(age, Asym, xmid, scal),
            data = Orange,
            fixed = Asym + xmid + scal ~ 1)
(sO <- summary(nfm))
vc <- VarCorr(nfm, rdig = 5)# def. 3
storage.mode(vc) <- "double" # -> (correct) NA warning
cfO <- sO$tTable
if(FALSE)
    dput(signif(cfO[,c("Std.Error", "t-value")], 8))
cfO.T <- array(
    if(is64bit)## R-devel 2016-01-11; [lynne]:
        c(14.052671, 34.587947, 30.497593,
          13.669776, 21.036087, 11.692943)
    else ## R-devel 2016-01-11; [f32sfs-2]:
        c(14.053663, 34.589821, 30.49412,
          13.668653, 21.034544, 11.693889)
   , dim = 3:2, dimnames = list(c("Asym", "xmid", "scal"),
				c("Std.Error", "t-value")))
if(FALSE)
    dput(signif(as.vector(vc[,"StdDev"]), 8))
vcSD <- setNames(if(is64bit)## R-devel 2016-01-11; [lynne]:
		     c(27.051312, 24.258159, 36.597078, 7.321525)
		 else ## R-devel 2016-01-11; [f32sfs-2]:
		     c(27.053964, 24.275286, 36.58682, 7.321365),
		 c("Asym", "xmid", "scal", "Residual"))
stopifnot(
    identical(cfO[,"Value"], fixef(nfm)),
    all.equal(cfO[,c("Std.Error", "t-value")], cfO.T, tol = 2e-4)# 8.7e-5 (R 3.0.3, 32b)
   ,
    cfO[,"DF"] == 28,
    all.equal(vc[,"Variance"], vc[,"StdDev"]^2, tol= 5e-7)
   ,
    all.equal(vc[,"StdDev"], vcSD, tol = 6e-4) # 3.5e-4 (R 3.0.3, 32b)
   ,
    all.equal(unname(vc[2:3, 3:4]), # "Corr"
              rbind(c(-0.3273, NA),
		    c(-0.9920, 0.4430)), tol = 2e-3)# ~ 2e-4 / 8e-4
)

## Confirm  predict(*, newdata=.)  works
(n <- nrow(Orange)) # 35
set.seed(17)
newOr <- within(Orange[sample(n, 64, replace=TRUE), ],
		age <- round(jitter(age, amount = 50)))
fit.v <- predict(nfm, newdata = newOr)
resiv <- newOr$circumference - fit.v
res.T <- c(48, 115, 74, 15, 44, -94, 47, -51, 20, -52, -16, 12, -135,
           -85, 136, 100, 24, 181, -88, -102, -26, 52, -148, 8, -83, 73,
           -27, -34, 91, 42, 34, -8, 0, 83, 84, -90, -123, 94, -157, -11,
           56, -164, -28, 72, 15, 148, 95, -122, 169, 84, -19, -124, 45,
           -66, -10, 119, -110, -43, 12, 94, -108, 45, 48, 46)
if(!all((res10 <- round(10 * as.vector(resiv))) == res.T)) {
    iD <- which(res10 != res.T)
    cat("Differing rounded residuals, at indices", paste(iD, collapse=", "),
        "; with values:\n")
    print(cbind(resiv, res10, res.T)[iD,])
}
## -> indices  14 [64-bit]  or  27 [32-bit], respectively
