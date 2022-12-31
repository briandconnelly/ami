#' Check whether the machine is connected to the internet
#'
#' @return A logical value
#' @export
#'
#' @examples
#' is_online()
is_online <- function() {
  curl::has_internet()
}
