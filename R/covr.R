#' @rdname covr
#' @title Detect covr
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_covr()
using_covr <- function() {
  using_envvar("R_COVR", value = "true")
}
