test_that("using_ci() works as expected", {
  withr::with_envvar(
    new = c("CI" = "true"),
    expect_true(using_ci())
  )

  withr::with_envvar(
    new = c("CI" = NA),
    expect_false(using_ci())
  )
})


test_that("using_appveyor() works as expected", {
  withr::with_envvar(
    new = c("APPVEYOR" = "true"),
    {
      expect_true(using_appveyor())
      expect_true(using_ci(service = "appveyor"))
    }
  )

  withr::with_envvar(
    new = c("APPVEYOR" = NA),
    {
      expect_false(using_appveyor())
      expect_false(using_ci(service = "appveyor"))
    }
  )
})


test_that("using_circle_ci() works as expected", {
  withr::with_envvar(
    new = c("CIRCLECI" = "true"),
    expect_true(using_circle_ci())
  )

  withr::with_envvar(
    new = c("CIRCLECI" = NA),
    expect_false(using_circle_ci())
  )
})


test_that("using_codebuild() works as expected", {
  withr::with_envvar(
    new = c("CODEBUILD_BUILD_ID" = "true"),
    expect_true(using_codebuild())
  )

  withr::with_envvar(
    new = c("CODEBUILD_BUILD_ID" = NA),
    expect_false(using_codebuild())
  )
})


test_that("using_github_actions() works as expected", {
  withr::with_envvar(
    new = c("GITHUB_ACTIONS" = "true"),
    expect_true(using_github_actions())
  )

  withr::with_envvar(
    new = c("GITHUB_ACTIONS" = NA),
    expect_false(using_github_actions())
  )
})


test_that("using_gitlab_ci() works as expected", {
  withr::with_envvar(
    new = c("GITLAB_CI" = "true"),
    expect_true(using_gitlab_ci())
  )

  withr::with_envvar(
    new = c("GITLAB_CI" = NA),
    expect_false(using_gitlab_ci())
  )
})


test_that("using_jenkins() works as expected", {
  withr::with_envvar(
    new = c("BUILD_ID" = "true"),
    expect_true(using_jenkins())
  )

  withr::with_envvar(
    new = c("BUILD_ID" = NA),
    expect_false(using_jenkins())
  )
})


test_that("using_travis_ci() works as expected", {
  withr::with_envvar(
    new = c("TRAVIS" = "true"),
    expect_true(using_travis_ci())
  )

  withr::with_envvar(
    new = c("TRAVIS" = NA),
    expect_false(using_travis_ci())
  )
})
