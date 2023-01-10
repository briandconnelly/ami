#' @rdname vscode
#' @title Detect whether code is running in Visual Studio Code
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_vscode()
using_vscode <- function() {
  using_envvar("TERM_PROGRAM", "vscode")
}
