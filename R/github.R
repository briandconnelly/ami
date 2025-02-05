#' @rdname github
#' @title GitHub Environments
#'
#' @description `using_github_codespaces` checks whether code is being run in a
#' [GitHub Codespaces](https://github.com/features/codespaces) environment.
#'
#' @param name Optional codespace name to compare against
#'
#' @returns A logical value
#' @export
#'
#' @examples
#' # Check if GitHub Codespaces is being used
#' using_github_codespaces()
#'
#' # Check if the 'octocat-literate-space-parakeet-mld5' codespace is being used
#' using_python_venv(env = "octocat-literate-space-parakeet-mld5")
using_github_codespaces <- function(name = NULL) {
  if (is.null(name)) {
    using_envvar("CODESPACES", value = "true")
  } else {
    using_envvar("CODESPACE_NAME", value = name) &&
      using_envvar("CODESPACES", value = "true")
  }
}


#' @rdname github
#' @description `using_github_actions()` reports whether GitHub Actions is being
#'   used
#' @export
#' @examples
#' using_github_actions()
using_github_actions <- function() {
  # Via https://github.com/r-lib/lintr/blob/3009505944493acdaeeec6ff819acede1f39250a/R/actions.R#L1 # nolint: line_length_linter
  using_envvar("GITHUB_ACTIONS", value = "true")
}
