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


#' @rdname ci
#' @export
#' @examples
#' using_jenkins()
using_jenkins <- function() {
  envvar_set("BUILD_ID")
}


#' @rdname ci
#' @export
#' @examples
#' using_travis_ci()
using_travis_ci <- function() {
  envvar_set("TRAVIS")
}
