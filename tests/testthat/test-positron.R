test_that("using_positron() validates input properly", {
  expect_error(using_positron(mode = NA))
  expect_error(using_positron(mode = NA_character_))
  expect_error(using_positron(mode = NULL))
  expect_error(using_positron(mode = "not_a_mode"))
  expect_error(using_positron(mode = c("server", "desktop")))
})

test_that("using_positron works as expected when `POSITRON_MODE` not set", { # nolint: line_length_linter
  withr::local_envvar(list("POSITRON_MODE" = NA))
  expect_false(using_positron())
  expect_false(using_positron_desktop())
  expect_false(using_positron_server())
})

test_that("using_positron works as expected when `POSITRON_MODE` is 'desktop'", { # nolint: line_length_linter
  withr::local_envvar(list("POSITRON_MODE" = "desktop"))
  expect_true(using_positron())
  expect_true(using_positron_desktop())
  expect_false(using_positron_server())
})

test_that("using_positron works as expected when `POSITRON_MODE` is 'server'", { # nolint: line_length_linter
  withr::local_envvar(list("POSITRON_MODE" = "server"))
  expect_true(using_positron())
  expect_false(using_positron_desktop())
  expect_true(using_positron_server())
})
