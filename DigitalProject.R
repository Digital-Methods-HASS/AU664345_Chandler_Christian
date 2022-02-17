library(tidyverse)
library(dplyr)

# Downloading the dataset:
list_of_emperors <- list_of_emperors_exam
# I just uploaded the dataset from the "Files", but I could have done it using a command.


#Setting up the various values, variables, et cetera:

Start <- cbind(list_of_emperors$Start_reign_year,list_of_emperors$Start_reign_month,list_of_emperors$Start_reign_day)
End <- cbind(list_of_emperors$End_reign_year,list_of_emperors$End_reign_month,list_of_emperors$End_reign_day)



Dead <- list_of_emperors$Death


#Failed attempt to count the manner of death
dead_count <- Dead
dead_count("Method_unknown", "Natural_death", "Stabbed", "Poison", "Suicide", "Strangled", "Abdicated")

#Plotting the various manner of deaths of the emperors 
list_of_emperors %>%
  ggplot(aes(x = Dead)) +
  geom_bar()
# As we can see from the ggplot a considerably larger amount of emperors were murdered, by methods unknown or otherwise compared to those who died a natural death.

# Plotting the circumstances of death, such as who killed them?
list_of_emperors %>%
  ggplot(aes(x = Circumstance_death)) +
  geom_bar()

# Plotting the imperial dynasties to illustrate which dynasty had the largest amount 

list_of_emperors %>%
  ggplot(aes(x = Imperial_dynasty)) +
  geom_bar()
# From the ggplot concerning the dynasties we can conclude that the vast majority of the emperors weren't of a continuously ruling dynasty, although the largest imperial dynasty, according to the spreadsheet, was the Adoptive Antoine Emperors.

# Plotting out whom appointed the emperors to the emperorship 
list_of_emperors %>%
  ggplot(aes(x = First_Appointed_by)) +
  geom_bar()
# From the ggplot it is quite clear that it was predominantly the Senate who was the first one to appoint emperors to the emperorship, which makes sense as they would commonly do this during times of peace and in crises, sometimes appointing rival emperors.

# Plotting the notes_reign to see how many emperors had corulers, and how many emperors declared their emperorship or usurped the emperorship during the reign of another emperor.
list_of_emperors %>%
  ggplot(aes(x = Notes_reign)) +
  geom_bar()

# A little less than half of the emperors were declared co-emperor and a little less than that usurped or tried to usurp the emperorship.



