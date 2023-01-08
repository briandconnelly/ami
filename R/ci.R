#' @rdname ci
#' @title Detect whether running in a CI environment
#' @description `using_ci()` reports whether a continuous integration
#'   environment is being used.
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
#' @description `using_appveyor()` reports whether AppVeyor is being used
#' @export
#' @examples
#' using_appveyor()
using_appveyor <- function() {
  is_envvar_set("APPVEYOR")
}


#' @rdname ci
#' @description `using_circle_ci()` reports whether CircleCI is being used
#' @export
#' @examples
#' using_circle_ci()
using_circle_ci <- function() {
  is_envvar_set("CIRCLECI")
}


#' @rdname ci
#' @description `using_codebuild()` reports whether AWS CodeBuild is being used
#' @export
#' @examples
#' using_codebuild()
using_codebuild <- function() {
  is_envvar_set("CODEBUILD_BUILD_ID")
}


#' @rdname ci
#' @description `using_github_actions()` reports whether GitHub Actions is being
#'   used
#' @export
#' @examples
#' using_github_actions()
using_github_actions <- function() {
  # Via https://github.com/r-lib/lintr/blob/3009505944493acdaeeec6ff819acede1f39250a/R/actions.R#L1 # nolint
  is_envvar_set("GITHUB_ACTIONS", to = "true")
}


#' @rdname ci
#' @description `using_gitlab_ci()` reports whether GitLab CI/CD is being used
#' @export
#' @examples
#' using_gitlab_ci()
using_gitlab_ci <- function() {
  is_envvar_set("GITLAB_CI")
}


#' @rdname ci
#' @description `using_jenkins()` reports whether Jenkins is being used
#' @export
#' @examples
#' using_jenkins()
using_jenkins <- function() {
  is_envvar_set("BUILD_ID")
}


#' @rdname ci
#' @description `using_travis_ci()` reports whether Travis CI is being used
#' @export
#' @examples
#' using_travis_ci()
using_travis_ci <- function() {
  is_envvar_set("TRAVIS")
}
