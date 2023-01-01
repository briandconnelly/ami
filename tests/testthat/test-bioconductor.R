test_that("on_bioconductor() works as expected", {
  withr::with_envvar(
    new = c("BBS_HOME" = "true"),
    expect_true(on_bioconductor())
  )

  withr::with_envvar(
    new = c("BBS_HOME" = NA),
    expect_false(on_bioconductor())
  )
})
