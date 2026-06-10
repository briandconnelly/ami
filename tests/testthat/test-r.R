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

test_that("get_latest_r_version() fails gracefully when unavailable", {
  expect_message(
    result <- get_latest_r_version(url = "file:///nonexistent-ami-test"),
    "Could not retrieve the latest R version"
  )
  expect_null(result)
})

test_that("using_latest_r_version() returns NA when version unavailable", {
  local_mocked_bindings(get_latest_r_version = function(...) NULL)
  expect_true(is.na(using_latest_r_version()))
})

test_that("using_latest_r_version() compares against the latest version", {
  local_mocked_bindings(
    get_latest_r_version = function(...) package_version("4.3.0")
  )
  expect_equal(using_latest_r_version(), getRversion() == "4.3.0")
})

test_that("using_interactive_session() works as expected", {
  expect_equal(using_interactive_session(), rlang::is_interactive())
  expect_true(is.logical(using_interactive_session()))
})
