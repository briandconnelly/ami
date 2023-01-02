get_envvar <- function(x) {
  Sys.getenv(x, unset = NA_character_)
}

is_envvar_set <- function(x, to = NULL) {
  value <- get_envvar(x)
  if (is.null(to)) {
    !is.na(value)
  } else {
    identical(Sys.getenv(x, unset = NA_character_), to)
  }
}
