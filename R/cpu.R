#' @rdname cpu
#' @title Processor Checks
#' @description `using_x86_cpu()` checks whether the machine uses an x86
#'   processor or not
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_x86_cpu()
using_x86_cpu <- function() {
  grepl("x86", Sys.info()[["machine"]])
}

#' @rdname cpu
#' @description `using_arm_cpu()` checks whether the machine uses an ARM-based
#'   processor or not
#'
#' @return A logical value
#' @export
#'
#' @examples
#' using_arm_cpu()
using_arm_cpu <- function() {
  grepl("arm", Sys.info()[["machine"]])
}
