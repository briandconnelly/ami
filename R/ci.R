#' @rdname ci
#' @title Detect whether running in a CI environment
#' @description `using_ci()` reports whether a continuous integration
#'   environment is being used.
#' @param service If provided, a particular CI service is checked. If not, the
#'   commonly-used `CI` environment variable is checked.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_ci()
using_ci <- function(service = NULL) {
  if (is.null(service)) {
    using_envvar("CI")
  } else {
    service_checks <- c(
      "appveyor" = using_appveyor,
      "circleci" = using_circle_ci,
      "codebuild" = using_codebuild,
      "github" = using_github_actions,
      "gitlab" = using_gitlab_ci,
      "jenkins" = using_jenkins,
      "travis" = using_travis_ci
    )

    service <- rlang::arg_match(service, values = names(service_checks))
    do.call(service_checks[[service]], args = list())
  }
}


#' @rdname ci
#' @description `using_appveyor()` reports whether AppVeyor is being used
#' @export
#' @examples
#' using_appveyor()
using_appveyor <- function() {
  using_envvar("APPVEYOR")
}


#' @rdname ci
#' @description `using_circle_ci()` reports whether CircleCI is being used
#' @export
#' @examples
#' using_circle_ci()
using_circle_ci <- function() {
  using_envvar("CIRCLECI")
}


#' @rdname ci
#' @description `using_codebuild()` reports whether AWS CodeBuild is being used
#' @export
#' @examples
#' using_codebuild()
using_codebuild <- function() {
  using_envvar("CODEBUILD_BUILD_ID")
}


#' @rdname ci
#' @description `using_github_actions()` reports whether GitHub Actions is being
#'   used
#' @export
#' @examples
#' using_github_actions()
using_github_actions <- function() {
  # Via https://github.com/r-lib/lintr/blob/3009505944493acdaeeec6ff819acede1f39250a/R/actions.R#L1 # nolint: line_length_linter
  using_envvar("GITHUB_ACTIONS", value = "true")
}


#' @rdname ci
#' @description `using_gitlab_ci()` reports whether GitLab CI/CD is being used
#' @export
#' @examples
#' using_gitlab_ci()
using_gitlab_ci <- function() {
  using_envvar("GITLAB_CI")
}


#' @rdname ci
#' @description `using_jenkins()` reports whether Jenkins is being used
#' @export
#' @examples
#' using_jenkins()
using_jenkins <- function() {
  using_envvar("BUILD_ID")
}


#' @rdname ci
#' @description `using_travis_ci()` reports whether Travis CI is being used
#' @export
#' @examples
#' using_travis_ci()
using_travis_ci <- function() {
  using_envvar("TRAVIS")
}
