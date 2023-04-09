test_that("using_X_cpu() work as expected", {
  expect_error(using_cpu())
  expect_error(using_cpu(""))
  expect_error(using_cpu(NA_character_))
  expect_error(using_cpu(NULL))
  expect_error(using_cpu(c("arm", "x86")))

  expect_equal(using_x86_cpu(), grepl("x86", Sys.info()[["machine"]]))
  expect_equal(using_arm_cpu(), grepl("arm|aarch", Sys.info()[["machine"]]))
})
