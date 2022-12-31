test_that("is_online() works as expected", {
  expect_equal(is_online(), curl::has_internet())

  skip_if_offline()
  expect_true(is_online())
})
