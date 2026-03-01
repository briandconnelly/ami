# Detect whether running in a CI environment

`using_ci()` reports whether a continuous integration environment is
being used.

`using_appveyor()` reports whether AppVeyor is being used

`using_circle_ci()` reports whether CircleCI is being used

`using_codebuild()` reports whether AWS CodeBuild is being used

`using_gitlab_ci()` reports whether GitLab CI/CD is being used

`using_jenkins()` reports whether Jenkins is being used

`using_travis_ci()` reports whether Travis CI is being used

## Usage

``` r
using_ci(service = NULL)

using_appveyor()

using_circle_ci()

using_codebuild()

using_gitlab_ci()

using_jenkins()

using_travis_ci()
```

## Arguments

- service:

  If provided, a particular CI service is checked. If not, the
  commonly-used `CI` environment variable is checked.

## Value

A logical value

## Examples

``` r
using_ci()
#> [1] TRUE
using_appveyor()
#> [1] FALSE
using_circle_ci()
#> [1] FALSE
using_codebuild()
#> [1] FALSE
using_gitlab_ci()
#> [1] FALSE
using_jenkins()
#> [1] FALSE
using_travis_ci()
#> [1] FALSE
```
