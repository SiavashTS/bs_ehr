library(RUnit)
library(roxygen2)

#’ Convert cm to inches and inches to cm
#’ @param value A value that needs to be converted
#’ @param units A unit which show the result unit
#’ @return The value of desired unit
#’ @examples
#’ convert_height(174,cm)
#’ convert_height(65,inches)

convert_height <- function (value, unit="cm"){
  if (missing(value))
    stop("Enter the value correctly")
  if (value<=0)
    stop("Invalid value")
  if (unit == "cm")
    return (value*2.58)
  if (unit=="inches")
    return (value/2.58)
  else
    stop("unit not supported")
}

#function used for testing

test.height <- function(){
  checkEquals(
    convert_height(1,"cm"), 2.58
  )
  checkEquals(
    convert_height(1,"inches"), 0.3875969
  )
}

test.height()