#' @rdname os
#' @title Tests for operating systems
#'
#' @param os Operating system name. One of `"linux"`, `"macos"`, `"solaris"`, or
#'   `"windows"`
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_os(os = "linux")
using_os <- function(os = c("linux", "macos", "solaris", "windows")) {
  os <- rlang::arg_match(
    os,
    multiple = FALSE
  )

  switch(tolower(Sys.info()[["sysname"]]),
    darwin = os == "macos",
    linux = os == "linux",
    sunos = os == "solaris",
    windows = os == "windows"
  ) %||% FALSE
}


#' @rdname os
#' @export
#' @examples
#' using_linux()
using_linux <- function() {
  using_os("linux")
}


#' @rdname os
#' @export
#' @examples
#' using_macos()
using_macos <- function() {
  using_os("macos")
}


#' @rdname os
#' @export
#' @examples
#' using_solaris()
using_solaris <- function() {
  using_os("solaris")
}


#' @rdname os
#' @export
#' @examples
#' using_windows()
using_windows <- function() {
  using_os("windows")
}
