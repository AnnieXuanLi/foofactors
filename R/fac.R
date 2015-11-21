#' Factors
#'
#' Turn a vector to a factor and set levels to the order in which they appear in the data
#'
#' @param x
#'
#' @return factor
#' @export
#'
#' @examples
#' fac(c(3,2,5,1,1,1,6))
fac <- function(x) {
  if(!is.vector(x)) stop("argument must be a vector")
  factor(x, unique(x))
}
