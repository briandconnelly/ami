test_that("online() works as expected", {
  expect_equal(online(), curl::has_internet())

  skip_if_offline()
  expect_true(online())
})

test_that("using_host() works as expected", {
  expect_true(using_host(Sys.info()["nodename"]))
  expect_false(using_host("notarealhostname.biz"))
})
