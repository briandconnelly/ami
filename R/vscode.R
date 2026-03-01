#' @rdname vscode
#' @title Detect whether code is running in Visual Studio Code
#'
#' @return A logical value
#'
#' @note Detection relies on the `TERM_PROGRAM` environment variable, which is
#'   only set in VS Code's integrated terminal. Code running in a background R
#'   session (e.g. via the R extension) will not be detected.
#' @export
#'
#' @examples
#' using_vscode()
using_vscode <- function() {
  using_envvar("TERM_PROGRAM", "vscode")
}
