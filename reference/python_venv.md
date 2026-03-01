# Determine whether a Python virtual environment is being used

Determine whether a Python virtual environment is being used

## Usage

``` r
using_python_venv(env = NULL)
```

## Arguments

- env:

  Optional environment name to compare against

## Value

A logical value

## Examples

``` r
# Check if a Python virtual environment is being used
using_python_venv()
#> [1] FALSE

# Check if the 'dev' virtual environment is being used
using_python_venv(env = "dev")
#> [1] FALSE
```
