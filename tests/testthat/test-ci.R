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
