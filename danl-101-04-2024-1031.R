library(tidyverse)

# relationship plots ------------------------------------------------------
df <- read_csv("http://bcdanl.github.io/data/icecream-drowning.csv")

ggplot(data = df,
       mapping = aes(x = IceCreamSales,
                     y = DrowningIncidents)) +
  geom_point() +
  geom_smooth()


ggplot(data = df,
       mapping = aes(x = Month,
                     y = IceCreamSales)) +
  geom_point()

ggplot(data = df,
       mapping = aes(x = Month,
                     y = DrowningIncidents)) +
  geom_point()





# gapminder ---------------------------------------------------------------

install.packages("gapminder")
library(gapminder)

df_gapminder <- gapminder


ggplot(data = df_gapminder,
       mapping = aes(x = lifeExp,
                     y = gdpPercap)) +
  geom_point() +
  geom_smooth()


ggplot(data = df_gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point() +
  geom_smooth()




# aesthetic mappings ------------------------------------------------------

mpg <- mpg

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = class)) +
  geom_point()







