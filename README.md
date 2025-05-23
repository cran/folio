
<!-- README.md is generated from README.Rmd. Please edit that file -->

# folio <img width=120px src="man/figures/logo.png" align="right" />

<!-- badges: start -->

<a href="https://ci.codeberg.org/repos/14690" class="pkgdown-devel"><img
src="https://ci.codeberg.org/api/badges/14690/status.svg"
alt="status-badge" /></a>
<a href="https://cran.r-project.org/package=folio"
class="pkgdown-devel"><img
src="https://tinyverse.netlify.app/badge/folio"
alt="Dependencies" /></a>

<a href="https://tesselle.r-universe.dev" class="pkgdown-devel"><img
src="https://tesselle.r-universe.dev/badges/folio"
alt="r-universe" /></a>
<a href="https://cran.r-project.org/package=folio"
class="pkgdown-release"><img
src="https://www.r-pkg.org/badges/version/folio"
alt="CRAN Version" /></a>
<a href="https://cran.r-project.org/web/checks/check_results_folio.html"
class="pkgdown-release"><img
src="https://badges.cranchecks.info/worst/folio.svg"
alt="CRAN checks" /></a>
<a href="https://cran.r-project.org/package=folio"
class="pkgdown-release"><img
src="https://cranlogs.r-pkg.org/badges/folio"
alt="CRAN Downloads" /></a>

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4476182.svg)](https://doi.org/10.5281/zenodo.4476182)
<!-- badges: end -->

## Overview

Datasets for teaching quantitative approaches and modeling in
archaeology and paleontology. This package provides several types of
data related to broad topics (cultural evolution, radiocarbon dating,
paleoenvironments, etc.), which can be used to illustrate statistical
methods in the classroom (multivariate data analysis, compositional data
analysis, diversity measurement, etc.).

This package is for teaching purposes only: some datasets may be
outdated.

**When using folio, you must cite the relevant publications for each
dataset (see the documentation).**

------------------------------------------------------------------------

To cite folio in publications use:

Frerebeau N (2025). *folio: Datasets for Teaching Archaeology and
Paleontology*. Université Bordeaux Montaigne, Pessac, France.
<doi:10.5281/zenodo.4476182> <https://doi.org/10.5281/zenodo.4476182>, R
package version 1.5.1, <https://packages.tesselle.org/folio/>.

This package is a part of the tesselle project
<https://www.tesselle.org>.

## Installation

You can install the released version of **folio** from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("folio")
```

And the development version from [Codeberg](https://codeberg.org/) with:

``` r
# install.packages("remotes")
remotes::install_git("https://codeberg.org/tesselle/folio")
```

## Usage

``` r
## Arnold and Libby's Curve of Knowns
## Replicate fig. 1 from Arnold and Libby (1949)
data("arnold1949")

fit <- lm(activity_found ~ age_expected, data = arnold1949)
summary(fit)
#> 
#> Call:
#> lm(formula = activity_found ~ age_expected, data = arnold1949)
#> 
#> Residuals:
#>        1        2        3        4        5        6 
#>  0.31341 -0.27618 -0.04573 -0.19344  0.09780  0.10414 
#> 
#> Coefficients:
#>                Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)  12.2665215  0.2903726   42.24 1.88e-06 ***
#> age_expected -0.0011588  0.0000938  -12.35 0.000247 ***
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 0.2421 on 4 degrees of freedom
#> Multiple R-squared:  0.9745, Adjusted R-squared:  0.9681 
#> F-statistic: 152.6 on 1 and 4 DF,  p-value: 0.0002467

plot(
  x = arnold1949$age_expected,
  y = arnold1949$activity_found,
  type = "p",
  pch = 16,
  xlab = "Historical age (years)",
  ylab = "Specific activity (C/m/g)",
  main = "Samples of known ages"
)
segments(
  x0 = arnold1949$age_expected,
  y0 = arnold1949$activity_found - arnold1949$activity_found_error,
  x1 = arnold1949$age_expected,
  y1 = arnold1949$activity_found + arnold1949$activity_found_error
)
segments(
  x0 = arnold1949$age_expected - arnold1949$age_expected_error,
  y0 = arnold1949$activity_found,
  x1 = arnold1949$age_expected + arnold1949$age_expected_error,
  y1 = arnold1949$activity_found
)
abline(fit, col = "red")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" style="display: block; margin: auto;" />

## Related Works

- [**archdata**](https://cran.r-project.org/package=archdata) includes
  archaeological datasets used in [*Quantitative Methods in Archaeology
  Using R*](https://doi.org/10.1017/9781139628730) by David L. Carlson
  (2017).
- [**historydata**](https://cran.r-project.org/package=historydata)
  includes datasets intended for historians learning R.

## Contributing

Please note that the **folio** project is released with a [Contributor
Code of Conduct](https://www.tesselle.org/conduct.html). By contributing
to this project, you agree to abide by its terms.
