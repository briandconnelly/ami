#' @rdname positron
#' @title Positron environments
#' @param mode Optional argument specifying whether Positron is being used in
#'   `"desktop"` mode or in `"server"` mode.
#' @description
#' These functions enable you to determine whether code is being run in the
#' presence of various features of the
#' [Positron IDE](https://positron.posit.co)
#'
#' `using_positron()` determines whether code is being run in Positron.
#' `using_positron_desktop()`, `using_positron_server()` are helpers to
#' determine whether those specific
#' environments are being used.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_rstudio()
using_positron <- function(mode = "any") {
  mode <- rlang::arg_match(
    arg = mode,
    values = c("any", "desktop", "server"),
    multiple = FALSE
  )

  if (mode == "any") {
    using_envvar("POSITRON_MODE")
  } else {
    using_envvar("POSITRON_MODE", value = mode)
  }
}

#' @rdname positron
#' @export
using_positron_desktop <- function() {
  using_positron(mode = "desktop")
}

#' @rdname positron
#' @export
using_positron_server <- function() {
  using_positron(mode = "server")
}
