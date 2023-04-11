#' @rdname account
#' @title Determine whether a given user account is being used
#'
#' @param username Username to check for
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_account("root")
using_account <- function(username) {
  assert_string(username)
  identical(Sys.info()[["effective_user"]], username)
}
