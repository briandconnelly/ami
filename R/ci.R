#' @rdname ci
#' @title Detect whether running in a CI environment
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_ci()
using_ci <- function() {
  envvar_set("CI")
}
