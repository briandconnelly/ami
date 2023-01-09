#' @rdname container
#' @title Detect container environments
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_container()
using_container <- function() {
  using_docker_container() || using_podman_container()
}


#' @rdname container
#' @export
#' @examples
#' using_docker_container()
using_docker_container <- function() {
  # This may not work 100%
  file.exists("/.dockerenv")
}


#' @rdname container
#' @export
#' @examples
#' using_podman_container()
using_podman_container <- function() {
  # This may not work 100%
  file.exists("/run/.containerenv")
}


#' @rdname container
#' @export
#' @examples
#' using_kubernetes()
using_kubernetes <- function() {
  using_envvar("KUBERNETES_SERVICE_HOST")
}
