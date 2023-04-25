test_that("using_option() validates input properly", {
  expect_error(
    using_option(c("ami", "ami")),
    class = "arg_not_scalar_string"
  )
  expect_error(using_option(NULL), class = "arg_not_scalar_string")
  expect_error(using_option(NA_character_), class = "arg_not_scalar_string")

  expect_error(
    using_option("HOME", c("val1", "val2")),
    class = "arg_not_scalar_string"
  )
  expect_error(
    using_option("ami", NA_character_),
    class = "arg_not_scalar_string"
  )
})

test_that("using_option() works as expected", {
  random_string <- paste0(sample(c(letters, LETTERS), 10), collapse = "")

  withr::with_options(new = c("ami" = random_string), {
    expect_true(using_option("ami"))
    expect_true(using_option("ami", value = random_string))
    expect_false(using_option("ami", value = "notthis"))
  })

  withr::with_options(new = c("ami" = NA), {
    expect_false(using_option("ami"))
  })
})
