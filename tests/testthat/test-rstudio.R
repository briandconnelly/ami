test_that("using_rstudio() works as expected", {
  expect_equal(using_rstudio(), identical(.Platform$GUI, "RStudio"))
})

test_that("using_rstudio_jobs() works as expected", {
  withr::with_envvar(
    new = c("RSTUDIOAPI_IPC_REQUESTS_FILE" = "true"),
    expect_true(using_rstudio_jobs())
  )

  withr::with_envvar(
    new = c("RSTUDIOAPI_IPC_REQUESTS_FILE" = NA),
    expect_false(using_rstudio_jobs())
  )
})

test_that("using_rstudio_dark_theme() returns a boolean", {
  expect_true(is.logical(using_rstudio_dark_theme()))
})
