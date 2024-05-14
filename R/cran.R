#' @rdname cran
#' @title Detect CRAN
#'
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

  is_cran <- using_envvar("NOT_CRAN", value = "true")
  if (!is_cran) { # Not using the envvar
    index <- grep(CRAN_pattern, names(Sys.getenv()))
    is_cran <- length(index) >= n_CRAN_envvars
  }
  is_cran
}
