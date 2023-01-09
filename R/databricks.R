#' @rdname databricks
#' @title Detect Databricks Runtime Environment
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_databricks()
using_databricks <- function() {
  using_envvar("DATABRICKS_RUNTIME_VERSION")
}
