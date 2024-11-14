library(tidyverse)

# proportion bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop),
                     group = 1) ) +
  geom_bar()

# mistake: forgetting group = 1 within
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop)
                     ) ) +
  geom_bar()




# geom_col() --------------------------------------------------------------
mpg <- mpg
df <- mpg |> 
  count(class)

ggplot(data = df,
       mapping = aes(y = class)) +
  geom_bar()

ggplot(data = df,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()


# sorted bar chart with geom_col() and fct_reorder(CATEGORICAL, NUMERICAL)

ggplot(data = df,
       mapping = aes(x = n,
                     y = fct_reorder(class, n) )) +
  geom_col() +
  labs(y = "Class")


diamonds <- diamonds




# classwork 12 - dist plot ------------------------------------------------

flights <- flights


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(binwidth = 1)

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_bar()







top5_n <- flights |> 
  count(carrier)

top5_n <- flights |> 
  count(carrier) |> 
  arrange(-n)

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

nrow(top5_carriers) / nrow(flights)



# q1e

# Provide ggplot() code to describe 
# the distribution of carrier using the top5_carriers data.frame.

ggplot(data = top5_carriers,
       mapping = aes(x = carrier)) +
  geom_histogram()

ggplot(data = top5_carriers,
       mapping = aes(x = carrier)) +
  geom_boxplot()

# best
ggplot(data = top5_carriers,
       mapping = aes(y = carrier)) +
  geom_bar()




# q1f
# stacked bar chart
ggplot(data = top5_carriers,
       mapping = aes(y = carrier,
                     fill = origin)) +
  geom_bar()

# correct y- and fill- mappings 
ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar()


# 100% stacked bar chart
ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "fill")


# clustered bar chart
ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge")


ggplot(data = top5_carriers,
       mapping = aes(y = carrier)) +
  geom_bar() +
  facet_wrap(~origin)



ggplot(data = top5_n,
       mapping = aes(x = n,
                     y = carrier)) +
  geom_col()

ggplot(data = top5_n,
       mapping = aes(x = n,
                     y =fct_reorder(carrier, n))) +
  geom_col()


carrier_per_origin <- flights |> 
  count(origin, carrier) |> 
  arrange(origin, -n)
