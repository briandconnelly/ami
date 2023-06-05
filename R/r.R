#' @rdname r
#' @title R session information
#' @description
#' Get information about the R environment being used.
#'
#' `using_r_version()` determines whether or not a particular version of R is
#' being used.
#' @param ver Version string
#' @return A logical value
#' @export
#' @examples
#' using_r_version(ver = "4.3.0")
using_r_version <- function(ver) {
  getRversion() == ver
}

#' @rdname r
#' @description
#' `using_latest_r_version()` determines whether or not the latest stable
#' version of R is being used.
#' @export
#' @examples
#' using_latest_r_version()
using_latest_r_version <- function() {
  using_r_version(get_latest_r_version())
}


#' @rdname r
#' @description `using_interactive_session()` determines whether or not R is
#' being run interactively.
#' @export
#' @examples
#' using_interactive_session()
using_interactive_session <- rlang::is_interactive


#' @noRd
get_latest_r_version <- function(news_url = "https://cloud.r-project.org/doc/manuals/r-release/NEWS.html") { # nolint: line_length_linter
  contents <- readLines(news_url)
  releases <- contents[grep("CHANGES IN R [0-9]+\\.[0-9]+\\.[0-9]+", contents)]

  package_version(sub("</h3>$", "", sub(".*CHANGES IN R ", "", releases[[1]])))
}
