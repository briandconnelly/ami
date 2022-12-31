test_that("using_rstudio() works as expected", {
  skip_if_not_installed("rstudioapi")
  expect_equal(using_rstudio(), rstudioapi::isAvailable())
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
