test_that("using_positron() validates input properly", {
  expect_error(using_positron(mode = NA))
  expect_error(using_positron(mode = NA_character_))
  expect_error(using_positron(mode = NULL))
  expect_error(using_positron(mode = "not_a_mode"))
  expect_error(using_positron(mode = c("server", "desktop")))
})

test_that("using_positron works as expected when not in Positron", {
  withr::local_envvar(list("POSITRON" = NA, "POSITRON_MODE" = NA))
  expect_false(using_positron())
  expect_false(using_positron_desktop())
  expect_false(using_positron_server())
})

test_that("using_positron works as expected in desktop mode", {
  withr::local_envvar(list("POSITRON" = "1", "POSITRON_MODE" = "desktop"))
  expect_true(using_positron())
  expect_true(using_positron_desktop())
  expect_false(using_positron_server())
})

test_that("using_positron works as expected in server mode", {
  withr::local_envvar(list("POSITRON" = "1", "POSITRON_MODE" = "server"))
  expect_true(using_positron())
  expect_false(using_positron_desktop())
  expect_true(using_positron_server())
})
