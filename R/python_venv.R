#' @rdname python_venv
#' @title Determine whether a Python virtual environment is being used
#'
#' @param env Optional environment name to compare against
#'
#' @return A logical value
#' @export
#'
#' @examples
#' # Check if a Python virtual environment is being used
#' using_python_venv()
#'
#' # Check if the 'dev' virtual environment is being used
#' using_python_venv(env = "dev")
using_python_venv <- function(env = NULL) {
  using_envvar("VIRTUAL_ENV", value = env)
}
