#' @rdname nix
#' @title Detect `Nix` Shell
#'
#' @description `using_nix_shell()` checks whether code is running within an
# nolint start
#' environment defined by a [Nix expression](https://nixos.org/manual/nix/unstable/command-ref/nix-shell.html).
# nolint end
#'
#' @param pure Whether or not the environment is pure, meaning most environment
#'   variables have been cleared before the shell started.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' # Check for Nix
#' using_nix_shell()
#'
#' # Check for Nix in a pure environment
#' using_nix_shell(pure = TRUE)
using_nix_shell <- function(pure = NULL) {
  if (!rlang::is_logical(pure, n = 1) && !rlang::is_null(pure)) {
    rlang::abort(
      message = "`pure` should be a logical scalar",
      class = "arg_not_scalar_logical"
    )
  }

  if (isTRUE(pure)) {
    using_envvar("IN_NIX_SHELL", "pure")
  } else if (isFALSE(pure)) {
    using_envvar("IN_NIX_SHELL", "impure")
  } else {
    using_envvar("IN_NIX_SHELL")
  }
}
