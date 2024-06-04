test_that("on_cran() works as expected", {
  withr::with_envvar(
    new = c("NOT_CRAN" = "true"),
    {
      expect_true(using_envvar("NOT_CRAN", value = "true"))
      expect_false(on_cran())
    }
  )

  # But R CMD check is by default `--as-cran`, which sets enough "_R_..."
  # envvars to pass `on_cran()` tests:
  withr::with_envvar(
    new = c("NOT_CRAN" = "false"),
    {
      expect_false(using_envvar("NOT_CRAN", value = "true"))
      expect_true(on_cran())
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
