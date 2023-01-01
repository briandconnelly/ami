#' @rdname databricks
#' @title Detect Databricks Runtime Environment
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_databricks()
using_databricks <- function() {
  envvar_set("DATABRICKS_RUNTIME_VERSION")
}
