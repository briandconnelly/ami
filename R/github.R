#' @rdname github
#' @title Detect GitHub Workflow environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_github_actions()
using_github_actions <- function() {
  # Via https://github.com/r-lib/lintr/blob/3009505944493acdaeeec6ff819acede1f39250a/R/actions.R#L1 # nolint
  envvar_match("GITHUB_ACTIONS", "true")
}
