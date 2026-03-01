test_that("using_coding_agent() works as expected", {
  withr::with_envvar(
    new = c(
      "AGENT" = NA, "CLAUDECODE" = NA, "CLINE_ACTIVE" = NA,
      "CODEX_SANDBOX" = NA, "GEMINI_CLI" = NA,
      "GOOSE_TERMINAL" = NA, "OPENCODE" = NA
    ),
    expect_false(using_coding_agent())
  )

  withr::with_envvar(
    new = c("AGENT" = "1"),
    expect_true(using_coding_agent())
  )

  withr::with_envvar(
    new = c("CLAUDECODE" = "1"),
    expect_true(using_coding_agent())
  )
})


test_that("using_claude_code() validates input properly", {
  expect_error(using_claude_code(entrypoint = NA_character_))
  expect_error(using_claude_code(entrypoint = 1))
  expect_error(using_claude_code(entrypoint = "not_an_entrypoint"))
  expect_error(using_claude_code(entrypoint = c("cli", "ide")))
})

test_that("using_claude_code() works as expected when `CLAUDECODE` not set", {
  withr::local_envvar(list("CLAUDECODE" = NA, "CLAUDE_CODE_ENTRYPOINT" = NA))
  expect_false(using_claude_code())
  expect_false(using_claude_code(entrypoint = "cli"))
})

test_that("using_claude_code() works as expected when `CLAUDECODE` is set", {
  withr::local_envvar(
    list("CLAUDECODE" = "1", "CLAUDE_CODE_ENTRYPOINT" = "cli")
  )
  expect_true(using_claude_code())
  expect_true(using_claude_code(entrypoint = "cli"))
  expect_false(using_claude_code(entrypoint = "ide"))
})


test_that("using_cline() works as expected", {
  withr::with_envvar(
    new = c("CLINE_ACTIVE" = "true"),
    expect_true(using_cline())
  )

  withr::with_envvar(
    new = c("CLINE_ACTIVE" = NA),
    expect_false(using_cline())
  )
})


test_that("using_codex() works as expected", {
  withr::with_envvar(
    new = c("CODEX_SANDBOX" = "1"),
    expect_true(using_codex())
  )

  withr::with_envvar(
    new = c("CODEX_SANDBOX" = NA),
    expect_false(using_codex())
  )
})


test_that("using_gemini_cli() works as expected", {
  withr::with_envvar(
    new = c("GEMINI_CLI" = "1"),
    expect_true(using_gemini_cli())
  )

  withr::with_envvar(
    new = c("GEMINI_CLI" = NA),
    expect_false(using_gemini_cli())
  )
})


test_that("using_goose() works as expected", {
  withr::with_envvar(
    new = c("GOOSE_TERMINAL" = "1"),
    expect_true(using_goose())
  )

  withr::with_envvar(
    new = c("GOOSE_TERMINAL" = NA),
    expect_false(using_goose())
  )
})


test_that("using_opencode() works as expected", {
  withr::with_envvar(
    new = c("OPENCODE" = "1"),
    expect_true(using_opencode())
  )

  withr::with_envvar(
    new = c("OPENCODE" = NA),
    expect_false(using_opencode())
  )
})
