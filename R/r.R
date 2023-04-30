#' @rdname r
#' @title R session information
#' @description `using_interactive_session()` determines whether or not R is
#' being run interactively. Under the hood, [rlang::is_interactive] is used.
#' @export
#' @examples
#' using_interactive_session()
using_interactive_session <- rlang::is_interactive
