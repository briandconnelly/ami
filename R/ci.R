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
#' using_github_actions()
using_github_actions <- function() {
  # Via https://github.com/r-lib/lintr/blob/3009505944493acdaeeec6ff819acede1f39250a/R/actions.R#L1 # nolint
  is_envvar_set("GITHUB_ACTIONS", to = "true")
}


#' @rdname ci
#' @export
#' @examples
#' using_gitlab_ci()
using_gitlab_ci <- function() {
  is_envvar_set("GITLAB_CI")
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
