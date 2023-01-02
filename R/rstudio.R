#' @rdname rstudio
#' @title RStudio environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_rstudio()
using_rstudio <- function() {
  identical(.Platform$GUI, "RStudio")
}

#' @rdname rstudio
#' @export
#' @examples
#' using_rstudio_jobs()
using_rstudio_jobs <- function() {
  is_envvar_set("RSTUDIOAPI_IPC_REQUESTS_FILE")
}
