#' @rdname coding_agent
#' @title Detect AI coding agent environments
#' @description
#' These functions determine whether code is being run within an AI coding
#' agent environment.
#'
#' `using_coding_agent()` checks for any known coding agent.
#' `using_claude_code()`, `using_gemini_cli()`, `using_goose()`, and
#' `using_opencode()` check for specific agents.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_coding_agent()
using_coding_agent <- function() {
  using_envvar("AGENT", value = "1") ||
    using_claude_code() ||
    using_gemini_cli() ||
    using_goose() ||
    using_opencode()
}


#' @rdname coding_agent
#' @param entrypoint Optional entrypoint to check for. One of `"cli"`,
#'   `"claude-desktop"`, `"ide"`, or `"remote"`. If `NULL`, checks for any
#'   Claude Code environment.
#' @export
#'
#' @examples
#' using_claude_code()
#'
#' # Check for a specific entrypoint
#' using_claude_code(entrypoint = "cli")
using_claude_code <- function(entrypoint = NULL) {
  if (!is.null(entrypoint)) {
    entrypoint <- rlang::arg_match(
      arg = entrypoint,
      values = c("cli", "claude-desktop", "ide", "remote"),
      multiple = FALSE
    )
  }

  if (!using_envvar("CLAUDECODE", value = "1")) {
    return(FALSE)
  }

  if (!is.null(entrypoint)) {
    using_envvar("CLAUDE_CODE_ENTRYPOINT", value = entrypoint)
  } else {
    TRUE
  }
}


#' @rdname coding_agent
#' @export
#'
#' @examples
#' using_gemini_cli()
using_gemini_cli <- function() {
  using_envvar("GEMINI_CLI", value = "1")
}


#' @rdname coding_agent
#' @export
#'
#' @examples
#' using_goose()
using_goose <- function() {
  using_envvar("GOOSE_TERMINAL", value = "1")
}


#' @rdname coding_agent
#' @export
#'
#' @examples
#' using_opencode()
using_opencode <- function() {
  using_envvar("OPENCODE", value = "1")
}
