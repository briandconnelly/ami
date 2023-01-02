test_that("get_envvar() works as expected", {
  random_string <- paste0(sample(c(letters, LETTERS), 10), collapse = "")

  withr::with_envvar(new = c("CHECKENV_TEST_SET" = random_string), {
    expect_equal(get_envvar("CHECKENV_TEST_SET"), random_string)
  })

  withr::with_envvar(new = c("CHECKENV_TEST_NOTSET" = NA), {
    expect_true(is.na(get_envvar("CHECKENV_TEST_NOTSET")))
  })
})


test_that("is_envvar_set() works as expected", {
  random_string <- paste0(sample(c(letters, LETTERS), 10), collapse = "")

  withr::with_envvar(new = c("CHECKENV_TEST_SET" = random_string), {
    expect_true(is_envvar_set("CHECKENV_TEST_SET"))
    expect_true(is_envvar_set("CHECKENV_TEST_SET", to = random_string))
    expect_false(is_envvar_set("CHECKENV_TEST_SET", to = "notthis"))
  })

  withr::with_envvar(new = c("CHECKENV_TEST_NOTSET" = NA), {
    expect_false(is_envvar_set("CHECKENV_TEST_NOTSET"))
  })
})
