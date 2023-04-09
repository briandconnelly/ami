#' @rdname cpu
#' @title Processor Checks
#' @description `using_cpu()` checks whether the machine uses the given type
#'   of processor or not.
#'
#' @param arch CPU architecture name. Either `"arm"` or `"x86"`.
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_arm_cpu()
using_cpu <- function(arch = c("arm", "x86")) {
  if (length(arch) > 1) {
    rlang::abort("`arch` should be a string scalar (e.g., \"x86\")")
  }

  arch <- rlang::arg_match(
    arg = arch,
    values = c("arm", "x86"),
    multiple = FALSE
  )

  switch(arch,
    "arm" = grepl("arm|aarch", Sys.info()[["machine"]]),
    "x86" = grepl("x86", Sys.info()[["machine"]])
  )
}

#' @rdname cpu
#' @description `using_x86_cpu()` checks whether the machine uses an x86
#'   processor
#' @export
#' @examples
#' using_x86_cpu()
using_x86_cpu <- function() {
  using_cpu("x86")
}

#' @rdname cpu
#' @description `using_arm_cpu()` checks whether the machine uses an ARM-based
#'   processor
#' @export
#' @examples
#' using_arm_cpu()
using_arm_cpu <- function() {
  using_cpu("arm")
}
