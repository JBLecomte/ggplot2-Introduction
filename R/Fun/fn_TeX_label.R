
label_TeX <- function(label){
  require(latex2exp)
  
  if (!is.character(label)) {
    stop("label must be a character vector")
  }
  ### function that take a Latex string as input
  ### and return an R version of the expression
  
  label <- TeX(label)
  
  return(label)
}
