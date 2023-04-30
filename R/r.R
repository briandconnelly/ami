#' @rdname r
#' @title R session information
#' @description
#' Get information about the R environment being used.
#'
#' `using_r_version()` determines whether or not a particular version of R is
#' being used.
#' @param ver Version string
#' @export
#' @examples
#' using_r_version(ver = "4.3.0")
using_r_version <- function(ver) {
  getRversion() == ver
}


#' @rdname r
#' @description `using_interactive_session()` determines whether or not R is
#' being run interactively. Under the hood, [rlang::is_interactive] is used.
#' @export
#' @examples
#' using_interactive_session()
using_interactive_session <- rlang::is_interactive
