#' @rdname r
#' @title R session information
#' @description
#' Get information about the R environment being used.
#'
#' `using_r_version()` determines whether or not a particular version of R is
#' being used.
#' @param ver Version string or character vector of version strings
#' @return A logical vector
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
using_interactive_session <- function() rlang::is_interactive()


#' @noRd
get_latest_r_version <- function(url = "https://cran.r-project.org/src/base/VERSION-INFO.dcf") { # nolint: line_length_linter
  tryCatch(
    {
      con <- url(url, open = "rt")
      on.exit(close(con))
      package_version(read.dcf(con, fields = "Release")[1L, "Release"])
    },
    error = function(e) {
      rlang::abort("Could not retrieve the latest R version", parent = e)
    }
  )
}
