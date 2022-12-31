#' @rdname container
#' @title Detect container environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_container()
using_container <- function() {
  using_docker_container()
}


#' @rdname container
#' @export
#' @examples
#' using_docker_container()
using_docker_container <- function() {
  # This may not work 100%
  file.exists("/.dockerenv")
}
