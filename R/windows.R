#' @rdname windows
#' @title Tests for 'Windows' environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_windows()
using_windows <- function() {
  grepl(
    pattern = "Windows",
    x = utils::sessionInfo("base")$running,
    ignore.case = TRUE
  )
}
