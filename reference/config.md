# Detect whether a configuration is currently active

Environment-specific configuration values can be used to alter code's
behavior in different environments. The
[config](https://CRAN.R-project.org/package=config) package uses the
`R_CONFIG_ACTIVE` environment variable to specify the active
environment. If `R_CONFIG_ACTIVE` is not set, the `"default"`
configuration is used.

## Usage

``` r
using_config(config)
```

## Arguments

- config:

  Configuration name

## Value

A logical value

## Examples

``` r
# See whether the default configuration is being used
using_config("default")
#> [1] TRUE

# See whether the "production" configuration is being used
using_config("production")
#> [1] FALSE
```
