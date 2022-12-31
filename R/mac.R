#' @rdname mac
#' @title Tests for 'MacOS' environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_macos()
using_macos <- function() {
  grepl(
    pattern = "macOS",
    x = utils::sessionInfo("base")$running,
    ignore.case = TRUE
  )
}
