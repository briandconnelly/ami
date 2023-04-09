test_that("using_X_cpu() work as expected", {
  expect_equal(using_x86_cpu(), grepl("x86", Sys.info()[["machine"]]))
  expect_equal(using_arm_cpu(), grepl("arm|aarch", Sys.info()[["machine"]]))
})
