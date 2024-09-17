
# vector indexing ---------------------------------------------------------

# single index
my_vector <- c(10, 20, 30, 40, 50, 60)
my_vector[2]
my_vector[6]


# vecor of indices
my_vector[c(2,4,6)]
my_vector[2:4] # 2:4 is equivalent to c(2,3,4) in terms of values


# logical vector
is_greater_than_10 <- my_vector > 10
is_greater_than_10

my_vector[is_greater_than_10]

my_vector == 10

my_vector[ my_vector == 10 ]




# classwork ---------------------------------------------------------------


# q1 ----------------------------------------------------------------------

US_states <- state.name


# R is case-sensitive
us_states <- state.name



# q2 ----------------------------------------------------------------------

temp_F <- c(35, 88, 42, 84, 81, 30)

temp_C <- (5/9) * (temp_F - 32)
temp_C



# q3 ----------------------------------------------------------------------

x <- 1:25
x
# difference between each element and the mean of x
diff <- x - mean(x)
diff

diff_sq <- diff^2
diff_sq

numerator <- sum(diff_sq)
denominator <- 25 - 1
denominator <- length(x) - 1

var_x <- numerator / denominator
sd_x <- sqrt(var_x)

sd(x) == sd_x


# q4 ----------------------------------------------------------------------
my_vec <- c(-10, -20, 30, 10, 50, 40, -100)
beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")

# logical indexing
is_positive <- my_vec > 0
my_vec[is_positive]
beers[c(2,4,6)]




# q5 ----------------------------------------------------------------------

library(tidyverse)
MLB_teams <- read_csv("https://bcdanl.github.io/data/mlb_teams.csv")
MLB_teams



# q6 ----------------------------------------------------------------------

library(skimr)
skim(MLB_teams)
MLB_teams_sum <- skim(MLB_teams)
