test_that("using_interactive_session() works as expected", {
  expect_equal(using_interactive_session(), rlang::is_interactive())
})
