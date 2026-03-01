# Determine whether Conda environment is being used

Determine whether Conda environment is being used

## Usage

``` r
using_conda(env = NULL)
```

## Arguments

- env:

  Optional environment name to compare against

## Value

A logical value

## Examples

``` r
# Check if Conda is being used (regardless of environment name)
using_conda()
#> [1] FALSE

# Check if the 'dev' Conda environment is being used
using_conda(env = "dev")
#> [1] FALSE
```
