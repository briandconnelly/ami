test_that("envvar_set", {
  withr::with_envvar(new = c("CHECKENV_TEST1" = "abcdef"), {
    expect_true(envvar_set("CHECKENV_TEST1"))
    expect_equal(get_envvar("CHECKENV_TEST1"), "abcdef")
    expect_true(envvar_match("CHECKENV_TEST1", "abcdef"))
  })
})

test_that("envvar_set", {
  expect_false(envvar_set("CHECKENV_NOTSET"))
  expect_true(is.na(get_envvar("CHECKENV_NOTSET")))
})
