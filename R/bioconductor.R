#' @rdname bioconductor
#' @title Detect Bioconductor
#'
#' @return A logical value
# nolint start
#' @references Check the Bioconductor Build System: https://github.com/Bioconductor/BBS/
# nolint end
#' @export
#'
#' @examples
#' on_bioconductor()
on_bioconductor <- function() {
  using_envvar("IS_BIOC_BUILD_MACHINE", "true")
}
