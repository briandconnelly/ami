check_string <- function(x, na_ok = FALSE, null_ok = FALSE) {
  rlang::is_string(x) ||
    (length(x) == 1 && is.na(x) && isTRUE(na_ok)) ||
    (is.null(x) && isTRUE(null_ok))
}

assert_string <- function(x, na_ok = FALSE, null_ok = FALSE) {
  if (!check_string(x, na_ok, null_ok)) {
    rlang::abort(
      message = glue::glue("`{deparse(x)}` is not a string (a length one character vector)"), # nolint: line_length_linter
      class = "arg_not_scalar_string"
    )
  }
  invisible(x)
}

assert_integer <- function(x, len = 1L, null_ok = FALSE) {
  rlang::is_integerish(x, n = len) ||
    (length(x) == 1L && is.na(x) && isTRUE(null_ok)) ||
    (is.null(x) && isTRUE(null_ok))
}
