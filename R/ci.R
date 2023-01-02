#' @rdname ci
#' @title Detect whether running in a CI environment
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_ci()
using_ci <- function() {
  is_envvar_set("CI")
}


#' @rdname ci
#' @export
#' @examples
#' using_jenkins()
using_jenkins <- function() {
  is_envvar_set("BUILD_ID")
}


#' @rdname ci
#' @export
#' @examples
#' using_travis_ci()
using_travis_ci <- function() {
  is_envvar_set("TRAVIS")
}


#' @rdname ci
#' @export
#' @examples
#' using_gitlab_ci()
using_gitlab_ci <- function() {
  is_envvar_set("GITLAB_CI")
}
