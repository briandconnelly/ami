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
