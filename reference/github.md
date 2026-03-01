# GitHub Environments

`using_github_codespaces` checks whether code is being run in a [GitHub
Codespaces](https://github.com/features/codespaces) environment.

`using_github_actions()` reports whether GitHub Actions is being used

## Usage

``` r
using_github_codespaces(name = NULL)

using_github_actions()
```

## Arguments

- name:

  Optional codespace name to compare against

## Value

A logical value

## Examples

``` r
# Check if GitHub Codespaces is being used
using_github_codespaces()
#> [1] FALSE

# Check if the 'octocat-literate-space-parakeet-mld5' codespace is being used
using_github_codespaces(name = "octocat-literate-space-parakeet-mld5")
#> [1] FALSE
using_github_actions()
#> [1] TRUE
```
