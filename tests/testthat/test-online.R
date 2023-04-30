test_that("online() works as expected", {
  expect_equal(online(), curl::has_internet())

  skip_if_offline()
  expect_true(online())
})
