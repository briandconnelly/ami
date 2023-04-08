test_that("using_config() works as expected", {
  expect_error(using_config())

  withr::with_envvar(
    new = c("R_CONFIG_ACTIVE" = "default"),
    {
      expect_true(using_config("default"))
      expect_false(using_config(""))
    }
  )

  withr::with_envvar(
    new = c("R_CONFIG_ACTIVE" = "production"),
    {
      expect_true(using_config("production"))
      expect_false(using_config("default"))
    }
  )

  withr::with_envvar(
    new = c("R_CONFIG_ACTIVE" = NA),
    {
      expect_true(using_config("default"))
      expect_false(using_config("production"))
      expect_false(using_config(""))
    }
  )
})

test_that("using_config() is consistent with config::is_active()", {
  skip_if_not_installed("config")

  withr::with_envvar(
    new = c("R_CONFIG_ACTIVE" = "default"),
    expect_equal(config::is_active("default"), using_config("default"))
  )

  withr::with_envvar(
    new = c("R_CONFIG_ACTIVE" = NA),
    expect_equal(config::is_active("default"), using_config("default"))
  )
})
