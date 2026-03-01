# Checks related to networking

`online()` uses
[curl::has_internet](https://jeroen.r-universe.dev/curl/reference/nslookup.html)
to check whether the machine is connected to the internet

## Usage

``` r
online()

using_host(hostname)
```

## Arguments

- hostname:

  String containing a hostname to check

## Value

A logical value

## Examples

``` r
online()
#> [1] TRUE
using_host("somehost.fakedomain.com")
#> [1] FALSE
```
