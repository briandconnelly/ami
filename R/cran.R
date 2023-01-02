#' @rdname cran
#' @title Detect CRAN
#'
#' @return A logical value
#' @export
#'
#' @examples
#' on_cran()
on_cran <- function() {
  !is_envvar_set("NOT_CRAN", to = "true")
}
