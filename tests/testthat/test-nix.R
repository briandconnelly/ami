test_that("using_nix_shell validates input properly", {
  expect_error(using_nix_shell(pure = NA_character_))
  expect_error(using_nix_shell(pure = 1))
  expect_error(using_nix_shell(pure = "pure"))
  expect_error(using_nix_shell(pure = c(TRUE, TRUE)))
})

test_that("using_nix_shell works as expected when `IN_NIX_SHELL` not set", {
  withr::local_envvar(list("IN_NIX_SHELL" = NA))
  expect_false(using_nix_shell())
  expect_false(using_nix_shell(pure = TRUE))
  expect_false(using_nix_shell(pure = FALSE))
})

test_that("using_nix_shell works as expected in pure environment", {
  withr::local_envvar(list("IN_NIX_SHELL" = "pure"))
  expect_true(using_nix_shell())
  expect_true(using_nix_shell(pure = TRUE))
  expect_false(using_nix_shell(pure = FALSE))
})

test_that("using_nix_shell works as expected in impure environment", {
  withr::local_envvar(list("IN_NIX_SHELL" = "impure"))
  expect_true(using_nix_shell())
  expect_false(using_nix_shell(pure = TRUE))
  expect_true(using_nix_shell(pure = FALSE))
})
