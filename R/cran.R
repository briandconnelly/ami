#' @rdname cran
#' @title Detect CRAN
#'
#' @return A logical value
#' @export
#'
#' @examples
#' on_cran()
on_cran <- function() {
  !envvar_match("NOT_CRAN", "true")
}
