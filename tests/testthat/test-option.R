test_that("using_option() validates input properly", {
  expect_error(
    using_option(c("checkenv.test1", "checkenv.test2")),
    class = "arg_not_scalar_string"
  )
  expect_error(using_option(NULL), class = "arg_not_scalar_string")
  expect_error(using_option(NA_character_), class = "arg_not_scalar_string")

  expect_error(
    using_option("HOME", c("val1", "val2")),
    class = "arg_not_scalar_string"
  )
  expect_error(
    using_option("checkenv.test1", NA_character_),
    class = "arg_not_scalar_string"
  )
})

test_that("using_option() works as expected", {
  random_string <- paste0(sample(c(letters, LETTERS), 10), collapse = "")

  withr::with_options(new = c("checkenv.test1" = random_string), {
    expect_true(using_option("checkenv.test1"))
    expect_true(using_option("checkenv.test1", value = random_string))
    expect_false(using_option("checkenv.test1", value = "notthis"))
  })

  withr::with_options(new = c("checkenv.test_notset" = NA), {
    expect_false(using_option("checkenv.test_notset"))
  })
})
