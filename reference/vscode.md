# Detect whether code is running in Visual Studio Code

Detect whether code is running in Visual Studio Code

## Usage

``` r
using_vscode()
```

## Value

A logical value

## Note

Detection relies on the `TERM_PROGRAM` environment variable, which is
only set in VS Code's integrated terminal. Code running in a background
R session (e.g. via the R extension) will not be detected.

## Examples

``` r
using_vscode()
#> [1] FALSE
```
