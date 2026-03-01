# Processor Checks

`using_cpu()` checks whether the machine uses the given type of
processor or not.

`using_x86_cpu()` checks whether the machine uses an x86 processor

`using_arm_cpu()` checks whether the machine uses an ARM-based processor

## Usage

``` r
using_cpu(arch = c("arm", "x86"))

using_x86_cpu()

using_arm_cpu()
```

## Arguments

- arch:

  CPU architecture name. Either `"arm"` or `"x86"`.

## Value

A logical value

## Examples

``` r
using_arm_cpu()
#> [1] FALSE
using_x86_cpu()
#> [1] TRUE
using_arm_cpu()
#> [1] FALSE
```
