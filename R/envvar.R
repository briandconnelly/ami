#' Determine whether an environment variable is being used
#'
#' @param x Environment variable
#' @param value Optional value to compare against
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_envvar("NOT_CRAN")
#'
#' using_envvar("CI", "true")
using_envvar <- function(x, value = NULL) {
  assert_string(x)
  assert_string(value, null_ok = TRUE)

  curr <- get_envvar(x)
  if (is.null(value)) {
    !is.na(curr)
  } else {
    assert_string(value)
    identical(curr, value)
  }
}

get_envvar <- function(x) {
  Sys.getenv(x, unset = NA_character_)
}
