library(nycflights13)
library(tidyverse)

flights ## original dataset shape: 336776 x 19

filter(flights, month==1, day==1)  ## after filtering by month and day, 
                                   ## return a new dataframe with shape 842 x 19
                                   ## the result is not saved, have to save to
                                   ## some variable

dec25 <- filter(flights, month==12, day==25)


filter(flights, month == (11|12) )  ## find month == True not 11 or 12

filter(flights, month %in% c(11, 12)) ## this finds all flights depart at Nov or Dec


## Exercise 

## Find all flights 
## 1. that had an arrival delay of two or more hours

exe1 = filter(flights, arr_delay >= 120)

## 2. Flew to Houston (IAH or HOU)
exe2 = filter(flights, dest == 'IAH' | dest == 'HOU')

## 3. Were operated by United, American, or Delta
exe3 = filter(flights, carrier %in% c('UA', 'AA', 'DL'))

## 4. Departed in summer (July, August, and September)
exe4 = filter(flights, month %in% c(7, 8, 9))

## 5. Arrived more than two hours late, but didn't leave late
exe5 = filter(flights, arr_delay > 120 & !(dep_delay > 0))

## 6. Were delayed by at least an hour, but made up over 30 minutes in flight
exe6 = filter(flights, dep_delay >= 60 & ((dep_delay - arr_delay)>30))

## 7. Departed between midnight and 6am (inclusive)
exe7 = filter(flights, (between(dep_time, 0, 600)) | dep_time == 2400)
summary(exe7$dep_time)

## 8. How many flights have a missing dep_time? What other variables are missing? What might these rows represent?
exe8 = filter(flights, is.na(dep_time))



arrange(flights, year, month, day)

## Use desc() to re-order by a column in descending order
arrange(flights, desc(dep_delay))

# Missing values are always sorted at the end


## Exercise

## 1. How could you use arrange() to sort all missing values to the start? (Hint: use is.na()).
arrange(flights, desc(is.na(dep_time)), dep_time)


## 2. Sort flights to find the most delayed flights. Find the flights that left earliest.
arrange(flights, desc(dep_delay))
arrange(flights, dep_delay)

## 3. Sort flights to find the fastest (highest speed) flights.
head(arrange(flights, desc(distance / air_time)))
