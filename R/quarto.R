#' @rdname quarto
#' @title Quarto documents
#' @description
#' `using_quarto()` determines whether code is being run within a Quarto
#' document
#'
# nolint start
#' @note The `is_using_quarto()` function in the [quarto](https://cran.r-project.org/package=quarto)
# nolint end
#' package can be used to determine whether your are in a quarto project.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_quarto()
using_quarto <- function() {
  using_envvar("QUARTO_DOCUMENT_PATH") || using_envvar("QUARTO_PROJECT_ROOT")
}
