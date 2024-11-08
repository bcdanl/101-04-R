library(tidyverse)
library(ggthemes)

tech_october <- 
  read_csv(
    "https://bcdanl.github.io/data/tech_stocks_2024_10.csv"
  )

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_line() 



# `ggplot` needs to be 
# explicitly informed that 
# daily observations are grouped 
# by `Ticker`
# for it to understand 
# the grouping structure

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          color = Ticker) ) + 
  geom_line(size = 2) + 
  scale_color_colorblind()



ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker) ) + 
  geom_line() + 
  scale_color_colorblind()


ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          group = Ticker) ) + 
  geom_line() + 
  scale_color_colorblind()





ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker,
          color = Ticker) ) + 
  geom_line() + 
  scale_color_colorblind()




# classwork - time trend --------------------------------------------------
library(gapminder)
df_gapminder <- gapminder
# Provide ggplot() code to describe the time trend of GDP per capita (gdpPercap).
  # How would you take into account country-level data structure? 

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_point() +
  geom_line()


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_line(show.legend = FALSE)

gapminder_n <- df_gapminder |> 
  count(country)

nrow(gapminder_n)



# Provide ggplot() code to describe 
# how the overall time trend of GDP per capita (gdpPercap) varies by continent.


df_gapminder |> 
  count(continent)


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_line(show.legend = FALSE) +
  facet_wrap(~continent)




ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap)) +
  geom_line(mapping = aes(group = country)) +
  geom_smooth() +
  facet_wrap(~continent)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap)) +
  geom_line(mapping = aes(group = country),
            color = "grey") +
  geom_smooth() +
  facet_wrap(~continent)


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = log10(gdpPercap))) +
  geom_line(mapping = aes(group = country),
            color = "grey") +
  geom_smooth() +
  facet_wrap(~continent)




# histogram ---------------------------------------------------------------


titanic <- 
  read_csv(
    "https://bcdanl.github.io/data/titanic_cleaned.csv")

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram()

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram(bins = 5)

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram(binwidth = 1)

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram(binwidth = 2,
                 fill = 'darkorange')

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram(binwidth = 2,
                 fill = 'darkorange',
                 color = 'purple')



# boxplot -----------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = class,
                     y = hwy)) +
  geom_boxplot()


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class)) +
  geom_boxplot()


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class,
                     fill = class)) +
  geom_boxplot()
  


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class,
                     fill = class)) +
  geom_boxplot(show.legend = FALSE)



ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class,
                     fill = class)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau()


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class,
                     color = class)) +
  geom_boxplot(show.legend = FALSE) +
  scale_color_tableau()

# sorted boxplot
# using
# fct_reorder()
ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = fct_reorder(class, hwy),
                     fill = class)) +
  geom_boxplot(show.legend = F) +
  scale_fill_tableau()



# bar charts --------------------------------------------------------------


diamonds <- diamonds










