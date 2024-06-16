#' @rdname rstudio
#' @title RStudio environments
#' @description
#' These functions enable you to determine whether code is being run in the
#' presence of various features of the RStudio IDE and other Posit products.
#'
#' `using_rstudio()` determines whether code is being run in
#' RStudio
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_rstudio()
using_rstudio <- function() {
  rstudioapi::isAvailable()
}

#' @rdname rstudio
#' @description `using_rstudio_jobs()` determines whether code is running as
#' an [RStudio Job](https://docs.posit.co/ide/user/ide/guide/tools/jobs.html)
#'
#' @export
#' @examples
#' using_rstudio_jobs()
using_rstudio_jobs <- function() {
  rstudioapi::isJob()
}

#' @rdname rstudio
#' @description `using_rstudio_dark_theme()` determines whether a dark theme is
#' being used
#'
#' @export
#' @examples
#' using_rstudio_dark_theme()
using_rstudio_dark_theme <- function() {
  if (rstudioapi::isAvailable()) {
    isTRUE(rstudioapi::getThemeInfo()$dark)
  } else {
    FALSE
  }
}

#' @noRd
#' @description `using_rstudio_product()` checks whether or not the
#' `RSTUDIO_PRODUCT` environment variable is set
#' @param name Optional name of a particular product
using_rstudio_product <- function(name = NULL) {
  using_envvar("RSTUDIO_PRODUCT", value = name)
}

#' @rdname rstudio
# nolint start
#' @description `using_posit_connect()` checks whether [Posit Connect](https://posit.co/products/enterprise/connect/)
# nolint end
#' is being used
#' @seealso https://docs.posit.co/connect/user/content-settings/#content-vars
#'
#' @export
#' @examples
#' using_posit_connect()
using_posit_connect <- function() {
  using_rstudio_product(name = "CONNECT")
}
