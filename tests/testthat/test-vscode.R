test_that("using_vscode() works as expected", {
  withr::with_envvar(
    new = c("TERM_PROGRAM" = "vscode"),
    expect_true(using_vscode())
  )

  withr::with_envvar(
    new = c("TERM_PROGRAM" = NA),
    expect_false(using_vscode())
  )

  withr::with_envvar(
    new = c("TERM_PROGRAM" = "not_vscode"),
    expect_false(using_vscode())
  )
})
