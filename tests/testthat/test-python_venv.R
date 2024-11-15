test_that("using_python_venv validates input properly", {
  # env should be a single string or NULL
  expect_error(using_python_venv(env = NA_character_))
  expect_error(using_python_venv(env = 1))
  expect_error(using_python_venv(env = c("dev", "prod")))
})

test_that("using_python_venv works as expected when `VIRTUAL_ENV` not set", {
  withr::local_envvar(list("VIRTUAL_ENV" = NA))
  expect_false(using_python_venv())
  expect_false(using_python_venv(env = "/tmp/fake/.venv"))
})

test_that("using_python_venv works as expected in 'dev' environment", {
  withr::local_envvar(list("VIRTUAL_ENV" = "/tmp/fake/.venv"))
  expect_true(using_python_venv())
  expect_true(using_python_venv(env = "/tmp/fake/.venv"))
  expect_false(using_python_venv(env = "/tmp/otherenv/.venv"))
})
