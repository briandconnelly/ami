test_that("online() works as expected", {
  expect_equal(online(), curl::has_internet())

  skip_if_offline()
  expect_true(online())
})

test_that("using_host() validates input properly", {
  expect_error(using_host(NULL), class = "arg_not_scalar_string")
  expect_error(using_host(NA_character_), class = "arg_not_scalar_string")
  expect_error(using_host(c("host1", "host2")), class = "arg_not_scalar_string")
})

test_that("using_host() works as expected", {
  expect_true(using_host(Sys.info()["nodename"]))
  expect_false(using_host("notarealhostname.biz"))
})
