#' @rdname config
#' @title Detect whether a configuration is currently active
#'
#' @description
#' Environment-specific configuration values can be used to alter code's
#' behavior in different environments. The
#' [config](https://CRAN.R-project.org/package=config) package uses the
#' `R_CONFIG_ACTIVE` environment variable to specify the active environment.
#' If `R_CONFIG_ACTIVE` is not set, the `"default"` configuration is used.
#'
#' @param config Configuration name
#'
#' @return A logical value
#' @export
#'
#' @examples
#' # See whether the default configuration is being used
#' using_config("default")
#'
#' # See whether the "production" configuration is being used
#' using_config("production")
using_config <- function(config) {
  assert_string(config)
  identical(config, Sys.getenv("R_CONFIG_ACTIVE", "default"))
}
