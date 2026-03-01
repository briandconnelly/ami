# Changelog

## ami (development version)

- Added
  [`using_coding_agent()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  and helpers
  [`using_claude_code()`](https://briandconnelly.github.io/ami/reference/coding_agent.md),
  [`using_cline()`](https://briandconnelly.github.io/ami/reference/coding_agent.md),
  [`using_codex()`](https://briandconnelly.github.io/ami/reference/coding_agent.md),
  [`using_gemini_cli()`](https://briandconnelly.github.io/ami/reference/coding_agent.md),
  [`using_goose()`](https://briandconnelly.github.io/ami/reference/coding_agent.md),
  and
  [`using_opencode()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  to detect AI coding agent environments
- Added
  [`using_runpod()`](https://briandconnelly.github.io/ami/reference/container.md)
  to detect RunPod.io environments
  ([\#32](https://github.com/briandconnelly/ami/issues/32))
- Added
  [`using_github_codespaces()`](https://briandconnelly.github.io/ami/reference/github.md)
  to detect GitHub Codespaces environments
  ([\#35](https://github.com/briandconnelly/ami/issues/35))

## ami 0.2.1

CRAN release: 2024-11-15

- Added
  [`using_positron()`](https://briandconnelly.github.io/ami/reference/positron.md)
  and helpers
  [`using_positron_desktop()`](https://briandconnelly.github.io/ami/reference/positron.md)
  and
  [`using_positron_server()`](https://briandconnelly.github.io/ami/reference/positron.md)
  to detect the Positron IDE
  ([\#29](https://github.com/briandconnelly/ami/issues/29))
- Added
  [`using_python_venv()`](https://briandconnelly.github.io/ami/reference/python_venv.md)
  to detect Python virtual environments
  ([\#30](https://github.com/briandconnelly/ami/issues/30))

## ami 0.2.0

CRAN release: 2024-10-25

- Added
  [`using_quarto()`](https://briandconnelly.github.io/ami/reference/quarto.md)
  for detecting whether code is running as part of a Quarto document
  ([\#25](https://github.com/briandconnelly/ami/issues/25))
- [`using_rstudio()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  gains a `mode` argument, which can specify a particular RStudio
  environment (desktop, server, or workbench). These can also be checked
  via new helper functions
  [`using_rstudio_desktop()`](https://briandconnelly.github.io/ami/reference/rstudio.md),
  [`using_rstudio_server()`](https://briandconnelly.github.io/ami/reference/rstudio.md),
  and
  [`using_rstudio_workbench()`](https://briandconnelly.github.io/ami/reference/rstudio.md).
  ([\#24](https://github.com/briandconnelly/ami/issues/24))

## ami 0.1.1

CRAN release: 2024-06-16

## ami 0.1.0.9000

- [`on_cran()`](https://briandconnelly.github.io/ami/reference/cran.md)
  now checks a more robust set of environment variables
  ([\#15](https://github.com/briandconnelly/ami/issues/15))
- [`on_bioconductor()`](https://briandconnelly.github.io/ami/reference/bioconductor.md)
  now checks the proper environment variable
  ([\#19](https://github.com/briandconnelly/ami/issues/19))
- Added
  [`using_nix_shell()`](https://briandconnelly.github.io/ami/reference/nix.md)
  for detecting Nix shell environments

## ami 0.1.0

CRAN release: 2023-06-06

- Initial public release
- Added a `NEWS.md` file to track changes to the package.
