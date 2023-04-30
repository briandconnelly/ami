#' @title Check whether the machine is connected to the internet
#'
#' @return A logical value
#' @export
#'
#' @examples
#' online()
online <- function() {
  curl::has_internet()
}
