# classwork 2 - r basics II -----------------------------------------------
# q1 ----------------------------------------------------------------------

numbers <- 10:50

# q2 ----------------------------------------------------------------------

# greater than or equal to: >=
# less than or equal to: <=

ages <- c(15, 22, 18, 24, 30)
logical_vec <- ages >= 20

# q3 ----------------------------------------------------------------------
greeting <- "Hello, World!"
greeting

# q4 ----------------------------------------------------------------------
temp <- c(22, 28, 31, 25, 29)
range_temp <- max(temp) - min(temp)


# q5 ----------------------------------------------------------------------
char_vec <- c("1", "2", "3", "4")
num_vec <- as.numeric(char_vec)


# q6 ----------------------------------------------------------------------
first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

full_names <- str_c(first_names, last_names,
                    sep = " ")
full_names




# data.frame --------------------------------------------------------------


library(tidyverse)

# ggplot2 package provides mpg data.frame
df_mpg <- mpg


