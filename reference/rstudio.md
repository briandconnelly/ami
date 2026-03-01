# RStudio environments

These functions enable you to determine whether code is being run in the
presence of various features of the RStudio IDE and other Posit
products.

`using_rstudio()` determines whether code is being run in RStudio.
`using_rstudio_desktop()`, `using_rstudio_server()`, and
`using_rstudio_workbench()` are helpers to determine whether those
specific environments are being used.

`using_rstudio_jobs()` determines whether code is running as an [RStudio
Job](https://docs.posit.co/ide/user/ide/guide/tools/jobs.html)

`using_rstudio_dark_theme()` determines whether a dark theme is being
used

`using_posit_connect()` checks whether [Posit
Connect](https://posit.co/products/enterprise/connect/) is being used

## Usage

``` r
using_rstudio(mode = "any")

using_rstudio_desktop()

using_rstudio_server()

using_rstudio_workbench()

using_rstudio_jobs()

using_rstudio_dark_theme()

using_posit_connect()
```

## Arguments

- mode:

  Optional argument specifying whether RStudio is being used in
  `"desktop"` mode or in `"server"`/`"workbench"` mode.

## Value

A logical value

## See also

https://docs.posit.co/connect/user/content-settings/#content-vars

## Examples

``` r
using_rstudio()
#> [1] FALSE
using_rstudio_jobs()
#> [1] FALSE
using_rstudio_dark_theme()
#> [1] FALSE
using_posit_connect()
#> [1] FALSE
```
