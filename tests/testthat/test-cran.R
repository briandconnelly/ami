test_that("on_cran() works as expected", {
  withr::with_envvar(
    new = c("NOT_CRAN" = "true"),
    expect_false(on_cran())
  )

  withr::with_envvar(
    new = c("NOT_CRAN" = NA),
    expect_true(on_cran())
  )
})
