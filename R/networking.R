#' @rdname networking
#' @title Checks related to networking
#'
#' @description `online()` uses [curl::has_internet] to check whether the
#' machine is connected to the internet
#'
#' @return A logical value
#' @export
#'
#' @examples
#' online()
online <- function() {
  curl::has_internet()
}

#' @rdname networking
#' @param hostname String containing a hostname or hostnames to check
#' @export
#' @examples
#' using_host("somehost.fakedomain.com")
using_host <- function(hostname) {
  unname(Sys.info()["nodename"] == hostname)
}
