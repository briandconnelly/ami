# Tests for operating systems

Tests for operating systems

## Usage

``` r
using_os(os = c("linux", "macos", "solaris", "windows"))

using_linux()

using_macos()

using_solaris()

using_windows()
```

## Arguments

- os:

  Operating system name. One of `"linux"`, `"macos"`, `"solaris"`, or
  `"windows"`

## Value

A logical value

## Examples

``` r
using_os(os = "linux")
#> [1] TRUE
using_linux()
#> [1] TRUE
using_macos()
#> [1] FALSE
using_solaris()
#> [1] FALSE
using_windows()
#> [1] FALSE
```
