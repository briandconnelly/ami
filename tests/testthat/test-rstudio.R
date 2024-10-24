test_that("using_rstudio() validates input properly", {
  expect_error(using_rstudio(mode = NA))
  expect_error(using_rstudio(mode = NA_character_))
  expect_error(using_rstudio(mode = NULL))
  expect_error(using_rstudio(mode = "not_a_mode"))
  expect_error(using_rstudio(mode = c("server", "desktop")))
})

test_that("using_rstudio() works as expected", {
  expect_equal(using_rstudio(), rstudioapi::isAvailable())

  if (rstudioapi::isAvailable()) {
    expect_equal(using_rstudio_desktop(), rstudioapi::getMode() == "desktop")
    expect_equal(using_rstudio_server(), rstudioapi::getMode() == "server")
    expect_equal(using_rstudio_workbench(), rstudioapi::getMode() == "server")
  } else {
    expect_false(using_rstudio_desktop())
    expect_false(using_rstudio_server())
    expect_false(using_rstudio_workbench())
  }
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

test_that("using_rstudio_product validates input properly", {
  expect_error(using_rstudio_product(name = NA_character_))
  expect_error(using_rstudio_product(name = 1))
  expect_error(using_rstudio_product(name = FALSE))
  expect_error(using_rstudio_product(name = c("CONNECT", "WORKBENCH")))
})

test_that("using_rstudio_product works as expected when `RSTUDIO_PRODUCT` not set", { # nolint: line_length_linter
  withr::local_envvar(list("USING_RSTUDIO_PRODUCT" = NA))
  expect_false(using_rstudio_product())
  expect_false(using_rstudio_product(name = "CONNECT"))
  expect_false(using_posit_connect())
})

test_that("using_rstudio_product works as expected when `RSTUDIO_PRODUCT` is set", { # nolint: line_length_linter
  withr::local_envvar(list("RSTUDIO_PRODUCT" = "CONNECT"))
  expect_true(using_rstudio_product())
  expect_true(using_rstudio_product(name = "CONNECT"))
  expect_false(using_rstudio_product(name = "WORKBENCH"))
  expect_true(using_posit_connect())
})
