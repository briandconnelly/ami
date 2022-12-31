test_that("using_testthat() works as expected", {
  withr::with_envvar(
    new = c("TESTTHAT" = "true"),
    expect_true(using_testthat())
  )

  withr::with_envvar(
    new = c("TESTTHAT" = NA),
    expect_false(using_testthat())
  )
})
