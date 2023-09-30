test_that("using_conda validates input properly", {
  expect_error(using_conda(env = NA_character_))
  expect_error(using_conda(env = 1))
  expect_error(using_conda(env = c("dev", "prod")))
})

test_that("using_conda works as expected when `CONDA_DEFAULT_ENV` not set", {
  withr::local_envvar(list("CONDA_DEFAULT_ENV" = NA))
  expect_false(using_conda())
  expect_false(using_conda(env = "dev"))
})

test_that("using_conda works as expected in 'dev' environment", {
  withr::local_envvar(list("CONDA_DEFAULT_ENV" = "dev"))
  expect_true(using_conda())
  expect_true(using_conda(env = "dev"))
  expect_false(using_conda(env = "prod"))
})
