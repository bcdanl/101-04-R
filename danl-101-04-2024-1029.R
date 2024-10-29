library(tidyverse)
ggplot2::mpg
??mpg

mpg <- ggplot2::mpg


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point()

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_smooth()

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth()


# wrong workflow
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() 
  + geom_smooth()
  

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() + 
  geom_smooth(method = "lm")




ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() + 
  geom_smooth() +
  geom_smooth(method = "lm")



# overplotting with alpha
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0.33)

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0) # full transparency

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 1) # no transparency


