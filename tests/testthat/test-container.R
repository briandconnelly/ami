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

test_that("using_kubernetes() works as expected", {
  withr::with_envvar(
    new = c("KUBERNETES_SERVICE_HOST" = "true"),
    expect_true(using_kubernetes())
  )

  withr::with_envvar(
    new = c("KUBERNETES_SERVICE_HOST" = NA),
    expect_false(using_kubernetes())
  )
})
