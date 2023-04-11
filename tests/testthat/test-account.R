test_that("using_account() works as expected", {
  expect_error(using_account())
  expect_error(using_account(NULL))
  expect_error(using_account(NA_character_))
  expect_error(using_account(c("root", "something")))

  current_user <- Sys.info()[["effective_user"]]

  expect_true(using_account(current_user))
  expect_false(using_account(paste(c(current_user, "x"), collapse = "")))
})
