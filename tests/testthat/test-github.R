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
