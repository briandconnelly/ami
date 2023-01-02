#' @rdname covr
#' @title Detect covr
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_covr()
using_covr <- function() {
  is_envvar_set("R_COVR", to = "true")
}
