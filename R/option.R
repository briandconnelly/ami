#' @rdname option
#' @title Determine whether a global option is being used
#'
#' @param x Option name
#' @param value Optional value to compare against
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_option("width")
#'
#' using_option("boot.parallel", value = "multicore")
using_option <- function(x, value = NULL) {
  assert_string(x)
  assert_string(value, null_ok = TRUE)

  curr <- getOption(x, default = NA_character_)
  if (is.null(value)) {
    !is.na(curr)
  } else {
    identical(curr, value)
  }
}
