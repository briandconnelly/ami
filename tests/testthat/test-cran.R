test_that("on_cran() works as expected", {
  withr::with_envvar(
    new = c("NOT_CRAN" = "true"),
    expect_false(on_cran())
  )

  withr::with_envvar(
    new = c("NOT_CRAN" = NA),
    expect_false(on_cran())
  )

  # Not on CRAN because default `n_CRAN_envvars` is 5:
  withr::with_envvar(
    new = list("_R_1" = 1, "_R_2" = 2, "NOT_CRAN" = NULL),
    expect_false(on_cran())
  )

  withr::with_envvar(
    new = list("_R_1" = 1, "_R_2" = 2, "NOT_CRAN" = NULL),
    expect_true(on_cran(n_CRAN_envvars = 2L))
  )

  # Not on CRAN because default `CRAN_pattern` is "^_R_":
  withr::with_envvar(
    new = list("_A_1" = 1, "_A_2" = 2, "NOT_CRAN" = NULL),
    expect_false(on_cran(n_CRAN_envvars = 2L))
  )

  withr::with_envvar(
    new = list("_A_1" = 1, "_A_2" = 2, "NOT_CRAN" = NULL),
    expect_true(on_cran(CRAN_pattern = "^_A_", n_CRAN_envvars = 2L))
  )
})
