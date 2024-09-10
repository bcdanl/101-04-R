library(tidyverse)


# logical -----------------------------------------------------------------

TRUE
class(TRUE)



FALSE
class(FALSE)

as.numeric(TRUE)
as.numeric(FALSE)




# factor review -----------------------------------------------------------


beers <- c("BUD LIGHT", 
           "BUSCH LIGHT", 
           "COORS LIGHT", 
           "MILLER LITE", 
           "NATURAL LIGHT")
class(beers)


beers_fct <- as.factor(beers)
class(beers_fct)
beers_fct

ton_of_beers <- c("BUD LIGHT", 
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

ton_of_beers_fct <- as.factor(ton_of_beers)
ton_of_beers_fct
nlevels(ton_of_beers_fct)

levels(ton_of_beers_fct)



# workflow with quotation -------------------------------------------------

x <- "hello"
""
()



# function with str_c() example -------------------------------------------

str_c("Data", "Analytics")
str_c(1,2)

str_c("Data", "Analytics", sep = "!")
str_c("Data", "Analytics", sep = "")
str_c("Data", "Analytics", sep = " ")



# some math functions -----------------------------------------------------

5 * abs(-3)
sqrt(17) / 2
exp(3)
log(3)
log(exp(3))
exp(log(3))


# vectorized operations ---------------------------------------------------

a <- c(1, 2, 3, 4, 5)
b <- c(5, 4, 3, 2, 1)

a + b

1 + 5
2 + 4
3 + 3
4 + 2
5+ 1


a - b
a * b
a / b
sqrt(a)



# measure of centrality ---------------------------------------------------

x <- c(1, 2, 3, 4, 5)
sum(x)
mean(x)

