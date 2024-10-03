
# NA ----------------------------------------------------------------------



NA > 5
10 == NA
NA + 10
NA / 2
(1 + NA + 3) / 3
mean( c(1, NA, 3) )
sd( c(1, NA, 3) )


skimr::skim(c(1, NA, 3))
(1 + 3) / 2


x <- NA
y <- NA
x == y


x <- NA
is.na(x)


y <- "missing"
is.na(y) # is y NA?

v1 <- c(1, NA, 3)
is.na(v1) # is v1 NA?

df <- data.frame(v1 = c(1, NA, 3),
                 v2 = c(1, 2, 3))

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )



# arrange() ---------------------------------------------------------------


library(nycflights13)
flights <- nycflights13::flights

df <- flights |> 
  arrange(dep_delay)

df_desc <- flights |> 
  arrange( desc(dep_delay) )

df_desc <- flights |> 
  arrange( -dep_delay )




# distinct() --------------------------------------------------------------


df <- data.frame(
  v1 = c("USA", "Korea", "USA"),
  v2 = c("D.C.", "Seoul", "D.C."),
  v3 = c("Georgetown", "Gangnam", 
         "Georgetown") 
)

# Remove duplicate observations
df |> 
  distinct()

flights_distinct <- flights |> 
  distinct()

flights

nrow(flights_distinct) == nrow(flights)


df_unique_routes <- flights |> 
  distinct(origin, dest)


flights |> 
  distinct(origin)


# select() ----------------------------------------------------------------

flights |> 
  select(year, month, day)

# removal of variable

flights |> 
  select(-year)

# rename() ----------------------------------------------------------------

df_renamed <- flights |> 
  rename( tail_num = tailnum )


# classwork 4 - filter(), arrange() and distinct() ------------------------------------

flights <- nycflights13::flights

# Q2. How many flights have a missing `dep_time`?

df <- flights |> 
  filter( is.na(dep_time) )

nrow(df)
# 8255



# Q3. Sort flights to find the most delayed flights.

q3 <- flights |> 
  arrange( desc(dep_delay) )
# 1301 minute dealy


# Q4. Was there a flight on every day of 2013?
flights |> 
  distinct(year)

q4 <- flights |> 
  distinct(month, day)

nrow(q4) # 365

# classwork 5 - select() and rename() -------------------------------------
nyc_payroll_new <- read_csv(
  "https://bcdanl.github.io/data/nyc_payroll_2024.csv")


# Q1. Create a new data.frame, df 
# that keeps only the following five variables—
# Fiscal_Year, Agency_Name, First_Name, Last_Name, and 
# Base_Salary—
# from the data.frame nyc_payroll_new.

df <- nyc_payroll_new |> 
  select(Fiscal_Year, Agency_Name, 
         First_Name, Last_Name, Base_Salary)



# Q2. Given the data.frame df with a variable named Agency_Name, 
# how would you rename it to Agency?

df <- df |> 
  rename(Agency = Agency_Name)



# Q3. How would you remove the Fiscal_Year variable 
# using select()?

df <- df |> 
  select(-Fiscal_Year)



# classwork 4 - filter() --------------------------------------------------




