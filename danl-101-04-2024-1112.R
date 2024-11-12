library(tidyverse)

diamonds <- ggplot2::diamonds
ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar()


??diamonds
# quality of the cut (Fair, Good, Very Good, Premium, Ideal)


ggplot(data = diamonds,
       mapping = aes(y = cut)) +
  geom_bar()



# count() -----------------------------------------------------------------

diamonds_cut <- diamonds |> count(cut) |> 
  arrange(-n)



# colorful bars -----------------------------------------------------------

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar(show.legend = F)





# count() with two variables ----------------------------------------------

diamonds_cut_clarity <- diamonds |> 
  count(cut, clarity)

??diamonds
# a measurement of how clear the diamond is 
# (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best))




# various bar chart -------------------------------------------------------

# stacked bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar()

# 100% stacked bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "fill")

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")


# clustered bar chart

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "dodge") 



# command/ctrl + shirt + r: create a section
# classwork 12 - distribution plots ----------------------------------------
library(nycflights13)
flights <- flights

# q1a
# Provide ggplot() code to describe 
# the distribution of air_time 
# (amount of time spent in the air, in minutes).

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram()

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(bins = 100)


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(binwidth = 5)


# q1b
# Provide ggplot() code to describe 
# how the distribution of air_time varies by origin.


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~origin)


# q1c
# Create the data.frame, top5_n, 
# which include the two variables and 5 observations:
  # carrier: the value of the top 5 carriers 
            # in terms of the number of flights.
  # n: the number of flights operated 
        # by each of the top 5 carriers.


top5_n <- flights |> 
  count(carrier) |> 
  arrange(-n) |> 
  head(5)



top5_carriers <- flights |> 
  filter(carrier == "UA" |
           carrier == "B6" |
           carrier == "EV" |
           carrier == "DL" |
           carrier == "AA" ) 
