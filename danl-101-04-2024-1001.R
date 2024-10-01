library(tidyverse)

# pipe operator
# windows: ctrl + shift + m
# mac: command + shift + m

x <- data.frame(
  key = c(1, 2, 3),
  val_x = c('x1', 'x2', 'x3')
)

y <- data.frame(
  key = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)


x |> 
  left_join(y)



# classwork 3 - joining data.frames with left_join() ----------------------


# Q1.
# Install the nycflights13 R package and load it into your R session in your Posit Cloud project.

install.packages("nycflights13")



# Q2

# to load R package:
library(nycflights13)

nycflights13::flights
nycflights13::airlines

flights <- flights
airlines <- airlines

??flights

# Use the left_join() function to create a new data.frame, flight_airline, 
# that includes all observations and variables from the flights data.frame, 
# along with the name variable from the airlines data.frame 
# that corresponds to the carrier variable in the flights data.frame.

flight_airline <- left_join(flights, airlines)

flight_airline <- flights |> 
  left_join(airlines)


# flight_airline <- flights |> 
  # left_join(airlines) |> 
  # SOME_TIDYVERSE_FUNCTION_WE_WANT_TO_USE |> 
  # SOME_TIDYVERSE_FUNCTION_WE_WANT_TO_USE |>  ...



# FILTER() ----------------------------------------------------------------

jan1 <- flights |> 
  filter(month == 1, day == 1)

dec25 <- flights |> 
  filter(month == 12, day == 25)

# $: extraction operator
flights$month

flights$month == 1
dec25$month == 1

class(flights$month == 1)


# dec25 <- flights |> 
  # filter(flights$month == 12, flights$day == 25) #don't do this


nrow(dec25)




# logical operator --------------------------------------------------------


jan_1 <- flights |> 
  filter(month == 1 & day == 1)
jan_1 <- flights |> 
  filter(month == 1, day == 1)


jan_or_1 <- flights |> 
  filter(month == 1 | day == 1)

non_jan <- flights |> 
  filter( !(month == 1) )

non_january <- flights |> 
  filter(month != 1) # keeps obs if the value of month is NOT equal to 1



non_january_2 <- flights |> 
  filter(month > 1) # keeps obs if the value of month is greater than 1





# classwork with filter() -------------------------------------------------


# Find all flights that
  # Had an arrival delay of two or more hours
  # arr_delay

  # Flew to Houston (IAH or HOU)
  # dest

  # Departed in summer (July, August, and September)
  # month

  # Arrived more than two hours late, but didn’t leave late
  #  we can use arr_delay and dep_delay varialbes

  # Departed between midnight and 6am (inclusive)
  # dep_time


