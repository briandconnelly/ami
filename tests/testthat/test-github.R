test_that("using_github_codespaces validates input properly", {
  # env should be a single string or NULL
  expect_error(using_github_codespaces(name = NA_character_))
  expect_error(using_github_codespaces(name = 1))
  expect_error(using_github_codespaces(name = c("dev", "prod")))
})


test_that("using_github_codespaces works as expected when `CODESPACES` not set", { # nolint: line_length_linter
  withr::local_envvar(list("CODESPACES" = NA))
  expect_false(using_github_codespaces())
  expect_false(using_github_codespaces(name = "test_codespace"))
})


test_that("using_github_codespaces works as expected in 'named' environment", {
  codespace_name <- "test_codespace_name"

  withr::local_envvar(
    list("CODESPACES" = "true", "CODESPACE_NAME" = codespace_name)
  )
  expect_true(using_github_codespaces())
  expect_true(using_github_codespaces(name = codespace_name))
  expect_false(using_github_codespaces(name = "other_name"))
})


test_that("using_github_actions() works as expected", {
  withr::with_envvar(
    new = c("GITHUB_ACTIONS" = "true"),
    expect_true(using_github_actions())
  )

  withr::with_envvar(
    new = c("GITHUB_ACTIONS" = NA),
    expect_false(using_github_actions())
  )
})
