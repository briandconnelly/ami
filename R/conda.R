#' @rdname conda
#' @title Determine whether Conda environment is being used
#'
#' @param env Optional environment name to compare against
#'
#' @return A logical value
#' @export
#'
#' @examples
#' # Check if Conda is being used (regardless of environment name)
#' using_conda()
#'
#' # Check if the 'dev' Conda environment is being used
#' using_conda(env = "dev")
using_conda <- function(env = NULL) {
  using_envvar("CONDA_DEFAULT_ENV", value = env)
}
