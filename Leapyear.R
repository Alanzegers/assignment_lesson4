# Name:     Stijn Wijdeven & Alan Zegers
# Teamname: Teamname*
# Date:     January 2016

#define function 
is.leap <- function(x, leap=FALSE) {
  
  # function should only work for Numeric input
  if(!is.numeric(x)) {
    stop("argument of class numeric expected")
  } else {
    
    # Input must be a integer 
    if (x - floor(x) != 0) {
      year <- sprintf('Please insert year as integer', x)
      return(year)}
    
    # if year is before 1582 then year is out of the valid range    
    if (x < 1582 ) {
      year <- sprintf('%s is out of the valid range', x) 
      return(year)}
    
        # else if year is not exactly divisible by 4 then it is a common year
    else if(x %% 4 != 0) {
      year <- FALSE 
      return(year)}
    
    # else if year is not exactly divisible by 100 then (it is a leap year
    else if (x %% 100 != 0) {
      year <- TRUE 
      return(year)}
    
    # else if year is not exactly divisible by 400 then it is a common year
    else if (x %% 400 != 0) {
      year <- FALSE 
      return(year)}
    
    
    # else it is a leap year
    else {year <- TRUE
    return(year)}
  }
  
}

## testing
is.leap(2000)
is.leap(1581)
is.leap(2002)
is.leap('john')
is.leap(2000.4)
is.leap(2001)
is.leap(2002)
is.leap(2003)
is.leap(2004)
