test_that("on_cran() works as expected", {
  withr::with_envvar(
    new = c("NOT_CRAN" = "true"),
    {
      expect_true(using_envvar("NOT_CRAN", value = "true"))
      expect_false(on_cran())
    }
  )

  withr::with_envvar(
    new = c("NOT_CRAN" = "false"),
    {
      expect_false(using_envvar("NOT_CRAN", value = "true"))
      # R CMD check, and therefore also `rcmdcheck::rcmdcheck`, sets enough
      # "_R_..." envvars to pass `on_cran()` tests, but `testthat` generally
      # sets only one. Note that can't use `using_testthat()` here, because R
      # CMD check loads testthat to runs tests, and so `using_testthat()` is
      # always TRUE.
      expect_true(using_testthat())
      n <- length(grep("_R_", names(Sys.getenv()), fixed = TRUE))
      if (n > 1L) {
        expect_true(on_cran(n_cran_envvars = n)) # R CMD check / CRAN
      } else {
        expect_false(on_cran()) # testthat
      }
    }
  )

  # Use a custom `CRAN_pattern` to test all cases. the first fails because
  # default `n_CRAN_envvars` is 5:
  withr::with_envvar(
    new = list("_A_1" = 1, "_A_2" = 2, "NOT_CRAN" = "false"),
    expect_false(on_cran(cran_pattern = "_A_"))
  )

  withr::with_envvar(
    new = list("_A_1" = 1, "_A_2" = 2, "NOT_CRAN" = "false"),
    expect_true(on_cran(cran_pattern = "_A_", n_cran_envvars = 2L))
  )
})
