#' Should a factor be character?
#'
#' Detect factors that should be character because # unique values = length
#'
#' @param x
#'
#' @return boolean
#' @export
#'
#' @examples
#' is_char(factor(c("a", "b", "c", "d")))

is_char <- function(x) {
  if(is.null(x)) stop("argument can not be NULL")
  if(!is.factor(x)) stop("argument must be a factor")

  length(unique(x)) == length(x)
}
