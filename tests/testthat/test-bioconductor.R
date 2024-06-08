test_that("on_bioconductor() works as expected", {
  withr::with_envvar(
    new = c("IS_BIOC_BUILD_MACHINE" = "true"),
    expect_true(on_bioconductor())
  )

  withr::with_envvar(
    new = c("IS_BIOC_BUILD_MACHINE" = NA),
    expect_false(on_bioconductor())
  )
})
