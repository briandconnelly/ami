test_that("use_container() works as expected", {
  expect_equal(
    using_container(),
    any(file.exists("/.dockerenv", "/run/.containerenv"))
  )
})

test_that("using_docker_container() works as expected", {
  expect_equal(using_docker_container(), file.exists("/.dockerenv"))
})

test_that("using_podman_container() works as expected", {
  expect_equal(using_podman_container(), file.exists("/run/.containerenv"))
})

