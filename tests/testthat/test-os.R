test_that("using_os() works", {
  current_os <- tolower(Sys.info()[["sysname"]])

  expect_equal(current_os == "linux", using_linux())
  expect_equal(current_os == "darwin", using_macos())
  expect_equal(current_os == "solaris", using_solaris())
  expect_equal(current_os == "windows", using_windows())

  expect_error(using_os("mac"))
  expect_error(using_os(""))
  expect_error(using_os(NA_character_))
  expect_error(using_os(NULL))
  expect_error(using_os(c("macos", "windows")))
})
