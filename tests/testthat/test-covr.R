test_that("using_covr() works as expected", {
  withr::with_envvar(
    new = c("R_COVR" = "true"),
    expect_true(using_covr())
  )

  withr::with_envvar(
    new = c("R_COVR" = NA),
    expect_false(using_covr())
  )
})
