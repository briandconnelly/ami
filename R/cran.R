#' @rdname cran
#' @title Detect CRAN
#'
#' @description This function detects whether the current R environment is a
#' CRAN machine or not. It returns `FALSE` if the `NOT_CRAN` environment
#' variable used in "github/r-lib" packages like \pkg{devtools} and
#' \pkg{testthat} is set to "true". If that variable is not set, the function
#' examines other environment variables typically set on CRAN machines, as
#' documented in the issue on this packages' GitHub repository at
#' \url{https://github.com/briandconnelly/ami/issues/14}.
#'
#' @param CRAN_pattern String to match against environment variables.
#' @param n_CRAN_envvars If at least this number of environment variables match
#' the `CRAN_pattern`, `on_cran()` returns `TRUE`.
#' @return A logical value
#' @export
#'
#' @examples
#' on_cran()
#' Sys.setenv("_R_1" = 1)
#' Sys.setenv("_R_2" = 2)
#' on_cran(n_CRAN_envvars = 2L) # TRUE
on_cran <- function(CRAN_pattern = "^_R_", n_CRAN_envvars = 5L) {
  assert_string(CRAN_pattern)
  assert_integer(n_CRAN_envvars, 1L)

  not_cran <- using_envvar("NOT_CRAN", value = "true")
  if (!not_cran) { # Not using the envvar
    index <- grep(CRAN_pattern, names(Sys.getenv()))
    not_cran <- length(index) < n_CRAN_envvars
  }
  !not_cran
}
