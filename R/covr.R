#' @rdname covr
#' @title Detect covr
#'
#' @return A logical value
#' @export
#'
#' @examples
#' in_covr()
using_covr <- function() {
  envvar_true("R_COVR")
}
