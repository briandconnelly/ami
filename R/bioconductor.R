#' @rdname bioconductor
#' @title Detect Bioconductor
#'
#' @return A logical value
#' @export
#'
#' @examples
#' on_bioconductor()
on_bioconductor <- function() {
  envvar_set("BBS_HOME")
}
