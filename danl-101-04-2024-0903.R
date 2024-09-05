# install.packages("tidyverse")
# make a comment on your R code
#   or the result of your code
#   or any idea

library(tidyverse)

ggplot(data = mpg) +
  geom_histogram(mapping = aes(x = hwy))

mpg



