# classwork - relationship plot
# Provide both ggplot() and comment to describe 
# how the relationship between GDP per capita (gdpPercap) and 
# life expectancy (lifeExp) varies by continent.


# install.packages("ggthemes")

library(gapminder)
library(tidyverse)
library(ggthemes)


df_gapminder <- gapminder::gapminder

ggplot(data = df_gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp,
         color = continent
       ) ) +
  geom_point(alpha = .5) +
  scale_color_colorblind()

ggplot(data = df_gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp       
         ) ) +
  geom_point(alpha = .4) +
  facet_wrap( ~ continent) 




# facets ------------------------------------------------------------------



ggplot(data = df_gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp
       ) ) +
  geom_point(alpha = .4) +
  facet_wrap(~continent)



ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent,
              ncol = 3)


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent,
              scales = "free_x")



ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent,
              scales = "free")


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent)




# classwork - color vs. facets --------------------------------------------

nbc_show <- read_csv("https://bcdanl.github.io/data/nbc_show.csv")


# Provide ggplot() code to describe the relationship between GRP and PE.

ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth() +
  geom_smooth(method = "lm",
              color = "red") 




# Provide ggplot() code to describe 
# how the relationship between GRP and PE varies by Genre.

# color
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point() +
  geom_smooth(se = F) +
  geom_smooth(method = "lm",
              se = F) 

# FACET
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth(se = F) +
  geom_smooth(method = "lm",
              se = F) +
  facet_wrap(~Genre)


# FACET w/ color
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point(show.legend = F) +
  geom_smooth(se = F,
              show.legend = F) +
  geom_smooth(method = "lm",
              se = F,
              show.legend = F) +
  facet_wrap(~Genre)



# time trend --------------------------------------------------------------

path <- 
  "https://bcdanl.github.io/data/nvda_2015_2024.csv"
nvda <- read_csv(path)

ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = .5)



tech_october <- 
  read_csv(
    "https://bcdanl.github.io/data/tech_stocks_2024_10.csv"
  )

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_line() 




