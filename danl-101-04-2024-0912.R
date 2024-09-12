library(tidyverse)



# measure of centrality ---------------------------------------------------

# mode
c(1,1,1,1,
  2,2,
  3,3,
  4,4,4,4
  5,
  6,6)


# measure of dispersion --------------------------------------------------
x <- c(1,2,3,4,5)
var(x)
sd(x)


y <- 1:100
var(y)
sd(y)


# measure of centrality ---------------------------------------------------

x <- c(1, 2, 3, 4, 5)
sum(x)
mean(x)


# quartiles
quantile(x)
quantile(x, 0)
quantile(x, 0.25)
quantile(x, .5)
quantile(x, .75)
quantile(x, 1)

quantile(x, .2)
quantile(x, .8)
quantile(x, 1.5) # error





# pathname ----------------------------------------------------------------


library(tidyverse)
getwd()
custdata <- read_csv("data/custdata_rev.csv")

View(custdata)
class(custdata) # data.frame
dim(custdata)
nrow(custdata)
ncol(custdata)




# installing skimr --------------------------------------------------------

# install.packages("skimr")
library(skimr)
skim(custdata)

summary(custdata)

tvshows <- read_csv(
  'https://bcdanl.github.io/data/tvshows.csv')

