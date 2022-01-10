library(tidyverse)
library(readr)
#test 1
#importing the dataset
dataset <- read_csv("~/List_of_emperors_1/list_of_emperors_test.csv", 
                    col_types = cols(Start_reign_year = col_number(), 
                                     Start_reign_month = col_number(), 
                                     Start_reign_day = col_number(), End_reign_year = col_number(), 
                                     End_reign_month = col_number(), End_reign_day = col_number()))
view(dataset)

#test 2
#testing if I can make the numbers into dates of YYYY/MM/DD
library(lubridate)
class(dataset)
start_date <-as.Date(dataset, format("%Y%m%d")
class(start_date)
as.Date()


start_dates <- 