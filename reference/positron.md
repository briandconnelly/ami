# Positron environments

These functions enable you to determine whether code is being run in the
presence of various features of the [Positron
IDE](https://positron.posit.co)

`using_positron()` determines whether code is being run in Positron.
`using_positron_desktop()`, `using_positron_server()` are helpers to
determine whether those specific environments are being used.

## Usage

``` r
using_positron(mode = "any")

using_positron_desktop()

using_positron_server()
```

## Arguments

- mode:

  Optional argument specifying whether Positron is being used in
  `"desktop"` mode or in `"server"` mode.

## Value

A logical value

## Examples

``` r
using_positron()
#> [1] FALSE
```
