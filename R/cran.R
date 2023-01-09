#' @rdname cran
#' @title Detect CRAN
#'
#' @return A logical value
#' @export
#'
#' @examples
#' on_cran()
on_cran <- function() {
  !using_envvar("NOT_CRAN", value = "true")
}
