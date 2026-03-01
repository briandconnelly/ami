# Package index

## Environment variables, Configurations, and Global Options

- [`using_config()`](https://briandconnelly.github.io/ami/reference/config.md)
  : Detect whether a configuration is currently active
- [`using_envvar()`](https://briandconnelly.github.io/ami/reference/using_envvar.md)
  : Determine whether an environment variable is being used
- [`using_option()`](https://briandconnelly.github.io/ami/reference/option.md)
  : Determine whether a global option is being used

## CPU Architecture

Determine the architecture of the machine being used

- [`using_cpu()`](https://briandconnelly.github.io/ami/reference/cpu.md)
  [`using_x86_cpu()`](https://briandconnelly.github.io/ami/reference/cpu.md)
  [`using_arm_cpu()`](https://briandconnelly.github.io/ami/reference/cpu.md)
  : Processor Checks

## Operating Systems

Determine information about the computer’s operating system

- [`using_os()`](https://briandconnelly.github.io/ami/reference/os.md)
  [`using_linux()`](https://briandconnelly.github.io/ami/reference/os.md)
  [`using_macos()`](https://briandconnelly.github.io/ami/reference/os.md)
  [`using_solaris()`](https://briandconnelly.github.io/ami/reference/os.md)
  [`using_windows()`](https://briandconnelly.github.io/ami/reference/os.md)
  : Tests for operating systems
- [`using_account()`](https://briandconnelly.github.io/ami/reference/account.md)
  : Determine whether a given user account is being used

## Containers

Detect whether code is running in a containerized environment

- [`using_container()`](https://briandconnelly.github.io/ami/reference/container.md)
  [`using_docker_container()`](https://briandconnelly.github.io/ami/reference/container.md)
  [`using_podman_container()`](https://briandconnelly.github.io/ami/reference/container.md)
  [`using_kubernetes()`](https://briandconnelly.github.io/ami/reference/container.md)
  [`using_runpod()`](https://briandconnelly.github.io/ami/reference/container.md)
  : Detect container environments

## R, IDEs, and Programming Environment

Detect the R environment being used

- [`using_r_version()`](https://briandconnelly.github.io/ami/reference/r.md)
  [`using_latest_r_version()`](https://briandconnelly.github.io/ami/reference/r.md)
  [`using_interactive_session()`](https://briandconnelly.github.io/ami/reference/r.md)
  : R session information
- [`using_rstudio()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_rstudio_desktop()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_rstudio_server()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_rstudio_workbench()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_rstudio_jobs()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_rstudio_dark_theme()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  [`using_posit_connect()`](https://briandconnelly.github.io/ami/reference/rstudio.md)
  : RStudio environments
- [`using_positron()`](https://briandconnelly.github.io/ami/reference/positron.md)
  [`using_positron_desktop()`](https://briandconnelly.github.io/ami/reference/positron.md)
  [`using_positron_server()`](https://briandconnelly.github.io/ami/reference/positron.md)
  : Positron environments
- [`using_vscode()`](https://briandconnelly.github.io/ami/reference/vscode.md)
  : Detect whether code is running in Visual Studio Code
- [`using_conda()`](https://briandconnelly.github.io/ami/reference/conda.md)
  : Determine whether Conda environment is being used
- [`using_python_venv()`](https://briandconnelly.github.io/ami/reference/python_venv.md)
  : Determine whether a Python virtual environment is being used
- [`using_github_codespaces()`](https://briandconnelly.github.io/ami/reference/github.md)
  [`using_github_actions()`](https://briandconnelly.github.io/ami/reference/github.md)
  : GitHub Environments

## AI Coding Agents

Detect AI coding agent environments

- [`using_coding_agent()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_claude_code()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_cline()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_codex()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_gemini_cli()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_goose()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  [`using_opencode()`](https://briandconnelly.github.io/ami/reference/coding_agent.md)
  : Detect AI coding agent environments

## Continuous Integration

Determine whether code is being run in a continuous integration
environment

- [`using_ci()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_appveyor()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_circle_ci()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_codebuild()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_gitlab_ci()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_jenkins()`](https://briandconnelly.github.io/ami/reference/ci.md)
  [`using_travis_ci()`](https://briandconnelly.github.io/ami/reference/ci.md)
  : Detect whether running in a CI environment
- [`using_github_codespaces()`](https://briandconnelly.github.io/ami/reference/github.md)
  [`using_github_actions()`](https://briandconnelly.github.io/ami/reference/github.md)
  : GitHub Environments

## Network

Determine whether or not the machine is connected to the internet

- [`online()`](https://briandconnelly.github.io/ami/reference/networking.md)
  [`using_host()`](https://briandconnelly.github.io/ami/reference/networking.md)
  : Checks related to networking

## Development

Detect various development environments

- [`on_bioconductor()`](https://briandconnelly.github.io/ami/reference/bioconductor.md)
  : Detect Bioconductor
- [`on_cran()`](https://briandconnelly.github.io/ami/reference/cran.md)
  : Detect CRAN
- [`using_covr()`](https://briandconnelly.github.io/ami/reference/covr.md)
  : Detect covr
- [`using_testthat()`](https://briandconnelly.github.io/ami/reference/testthat.md)
  : Detect testthat

## Misc

Additional checks

- [`using_databricks()`](https://briandconnelly.github.io/ami/reference/databricks.md)
  : Detect Databricks Runtime Environment

- [`using_nix_shell()`](https://briandconnelly.github.io/ami/reference/nix.md)
  :

  Detect `Nix` Shell

- [`using_quarto()`](https://briandconnelly.github.io/ami/reference/quarto.md)
  : Quarto documents
