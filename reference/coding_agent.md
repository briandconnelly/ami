# Detect AI coding agent environments

These functions determine whether code is being run within an AI coding
agent environment.

`using_coding_agent()` checks for any known coding agent.
`using_claude_code()`, `using_cline()`, `using_codex()`,
`using_gemini_cli()`, `using_goose()`, and `using_opencode()` check for
specific agents.

## Usage

``` r
using_coding_agent()

using_claude_code(entrypoint = NULL)

using_cline()

using_codex()

using_gemini_cli()

using_goose()

using_opencode()
```

## Arguments

- entrypoint:

  Optional entrypoint to check for. One of `"cli"`, `"claude-desktop"`,
  `"ide"`, or `"remote"`. If `NULL`, checks for any Claude Code
  environment.

## Value

A logical value

## Examples

``` r
using_coding_agent()
#> [1] FALSE
using_claude_code()
#> [1] FALSE

# Check for a specific entrypoint
using_claude_code(entrypoint = "cli")
#> [1] FALSE
using_cline()
#> [1] FALSE
using_codex()
#> [1] FALSE
using_gemini_cli()
#> [1] FALSE
using_goose()
#> [1] FALSE
using_opencode()
#> [1] FALSE
```
