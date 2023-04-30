test_that("using_r_version() works as expected", {
  expect_true(using_r_version(getRversion()))
  expect_true(is.logical(using_r_version(getRversion())))

  expect_length(
    using_r_version(c("1.2.3", "4.5.6", as.character(getRversion()))),
    3
  )

  expect_true(
    any(using_r_version(c("1.2.3", "4.5.6", as.character(getRversion()))))
  )
  expect_false(
    all(using_r_version(c("9.2.3", "4.5.6", as.character(getRversion()))))
  )
})

test_that("using_interactive_session() works as expected", {
  expect_equal(using_interactive_session(), rlang::is_interactive())
  expect_true(is.logical(using_interactive_session()))
})
