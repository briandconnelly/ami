# Detect container environments

Detect container environments

## Usage

``` r
using_container()

using_docker_container()

using_podman_container()

using_kubernetes()

using_runpod()
```

## Value

A logical value

## Examples

``` r
using_container()
#> [1] FALSE
using_docker_container()
#> [1] FALSE
using_podman_container()
#> [1] FALSE
using_kubernetes()
#> [1] FALSE
using_runpod()
#> [1] FALSE
```
