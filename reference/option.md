# Determine whether a global option is being used

Determine whether a global option is being used

## Usage

``` r
using_option(x, value = NULL)
```

## Arguments

- x:

  Option name

- value:

  Optional value to compare against

## Value

A logical value

## Examples

``` r
using_option("width")
#> [1] TRUE

using_option("boot.parallel", value = "multicore")
#> [1] FALSE
```
