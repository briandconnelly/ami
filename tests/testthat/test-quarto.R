test_that("using_quarto() works as expected", {
  withr::with_envvar(
    new = c("QUARTO_DOCUMENT_PATH" = "/tmp"),
    expect_true(using_quarto())
  )

  withr::with_envvar(
    new = c("QUARTO_PROJECT_ROOT" = "."),
    expect_true(using_quarto())
  )

  withr::with_envvar(
    new = c("QUARTO_DOCUMENT_PATH" = "/tmp", "QUARTO_PROJECT_ROOT" = "."),
    expect_true(using_quarto())
  )

  withr::with_envvar(
    new = c("QUARTO_DOCUMENT_PATH" = NA, "QUARTO_PROJECT_ROOT" = NA),
    expect_false(using_quarto())
  )
})
