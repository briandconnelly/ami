# Determine whether an environment variable is being used

Determine whether an environment variable is being used

## Usage

``` r
using_envvar(x, value = NULL)
```

## Arguments

- x:

  Environment variable

- value:

  Optional value to compare against

## Value

A logical value

## Examples

``` r
using_envvar("NOT_CRAN")
#> [1] TRUE

using_envvar("CI", "true")
#> [1] TRUE
```
