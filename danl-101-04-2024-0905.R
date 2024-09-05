
# to load R package, tidyverse
library(tidyverse)

# to see mpg object from ggplot2 package
mpg
# 

a <- 1

x <- 2

# the following has a typo on assignment
# < - is not the assignment operator

x < - 3

x <- 2
y <- x + 12

y <- z + 12


z <- .05


# c is assiged to character "100"
c <- "100"



# data type ---------------------------------------------------------------

myname <- "my_name"
class(myname)
class(a)
class(c)

myname_quoted <- "'my_name'"


favorite.integer <- as.integer(2)
class(favorite.integer)

favorite.integer_ <- 2
class(favorite.integer_)


favorite.numeric <- as.numeric(8.8)
class(favorite.numeric)



# logical -----------------------------------------------------------------

TRUE
FALSE

class(TRUE)

favorite.numeric == 8.8
favorite.numeric == 9.9

class(favorite.numeric == 8.8)

class(T)
class(F)



# vectors -----------------------------------------------------------------

a <- 1:10
class(a)

b <- c("3", 4, 5)
vec <- c(3, 4, "5")
num <- c(3, 4, 5)

beers <- c("BUD LIGHT", 
           "BUSCH LIGHT", 
           "COORS LIGHT", 
           "MILLER LITE", 
           "NATURAL LIGHT")
class(beers)


# factors -----------------------------------------------------------------


beers_fct <- as.factor(beers)
beers_fct


beers_2 <- c("BUD LIGHT", 
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT",
             "BUSCH LIGHT", 
           "COORS LIGHT",  
           "COORS LIGHT", 
           "MILLER LITE", 
           "MILLER LITE", 
           "MILLER LITE", 
           "MILLER LITE", 
           "NATURAL LIGHT", 
           "NATURAL LIGHT")

beers_2_fct <- as.factor(beers_2)
class(beers_2_fct)
beers_2_fct

levels(beers_2_fct)
nlevels(beers_2_fct)


