#' @rdname testthat
#' @title Detect testthat
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_testthat()
using_testthat <- function() {
  is_envvar_set("TESTTHAT", to = "true")
}
