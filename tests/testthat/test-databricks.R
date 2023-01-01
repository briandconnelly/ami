test_that("using_databricks() works as expected", {
  withr::with_envvar(
    new = c("DATABRICKS_RUNTIME_VERSION" = "true"),
    expect_true(using_databricks())
  )

  withr::with_envvar(
    new = c("DATABRICKS_RUNTIME_VERSION" = NA),
    expect_false(using_databricks())
  )
})
