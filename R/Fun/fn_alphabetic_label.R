################################################################################
### Function to rename the levels of a factor by letter
################################################################################

## x is a the levels of a factor
fn_alphabetic_label <- function(string){
  for ( i in 1:length(string)){
    string[i] <- letters[i]
  }
  return(string) 
}
