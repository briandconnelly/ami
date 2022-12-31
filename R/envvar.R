envvar_set <- function(x) {
  # TODO
  !is.na(get_envvar(x))
}

get_envvar <- function(x) {
  Sys.getenv(x, unset = NA_character_)
}

envvar_match <- function(x, y) {
  identical(get_envvar(x), y)
}

envvar_true <- function(x) {
  identical(get_envvar(x), "true")
}
