#' @rdname rstudio
#' @title RStudio environments
#' @description
#' These functions enable you to determine whether code is being run in the
#' presence of various features of the RStudio IDE.
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
  identical(.Platform$GUI, "RStudio")
}

#' @rdname rstudio
#' @description `using_rstudio_jobs()` determines whether code is running as
#' an [RStudio Job](https://docs.posit.co/ide/user/ide/guide/tools/jobs.html)
#'
#' @export
#' @examples
#' using_rstudio_jobs()
using_rstudio_jobs <- function() {
  using_envvar("RSTUDIOAPI_IPC_REQUESTS_FILE")
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
