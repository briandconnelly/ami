#' @rdname bioconductor
#' @title Detect Bioconductor
#'
#' @return A logical value
#' @export
#'
#' @examples
#' on_bioconductor()
on_bioconductor <- function() {
  using_envvar("BBS_HOME")
}
