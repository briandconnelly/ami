# Detect `Nix` Shell

`using_nix_shell()` checks whether code is running within an environment
defined by a [Nix
expression](https://nixos.org/manual/nix/unstable/command-ref/nix-shell.html).

## Usage

``` r
using_nix_shell(pure = NULL)
```

## Arguments

- pure:

  Whether or not the environment is pure, meaning most environment
  variables have been cleared before the shell started.

## Value

A logical value

## Examples

``` r
# Check for Nix
using_nix_shell()
#> [1] FALSE

# Check for Nix in a pure environment
using_nix_shell(pure = TRUE)
#> [1] FALSE
```
