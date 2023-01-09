#' @rdname testthat
#' @title Detect testthat
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_testthat()
using_testthat <- function() {
  using_envvar("TESTTHAT", value = "true")
}
