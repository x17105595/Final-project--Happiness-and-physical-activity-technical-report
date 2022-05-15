#install tidyverse package to read the csv file
install.packages("tidyverse")
library(readxl)
Cactivity2019 <-read_excel("C:/Users/Izaskun.Sebastian/Downloads/Project/hlth_ehis_pe3e2019 actividad fisica por sexo/activity2019.xls")

#view table
View(Cactivity2019)
#view number of columns on the dataset
ncol(Cactivity2019)

#remove scientific notation on large numbers
options(scipen = 999)

library(dplyr)

#delete columns we dont need and create new dataframe (flag and foodnotes unit and time variables)
Captivity20192 <-select (Cactivity2019, -c(3,4,9))
View(Captivity20192)

#delete some rows baased in a condition
activity_3 <- subset(Captivity20192, ISCED11 !="Less than primary, primary and lower secondary education (levels 0-2)")
View(activity_3)

activity_4 <- subset(activity_3, ISCED11 !="Tertiary education (levels 5-8)")

activity_5 <- subset(activity_4, ISCED11 !="Upper secondary and post-secondary non-tertiary education (levels 3 and 4)")

activity_final <- subset(activity_5, AGE !="Total")
View(activity_final)

activity2019_final <- subset(activity_final, SEX !="Total")
View(activity2019_final)

#checking if there is any NA or missing data
sum(is.na(activity2019_final))

#save activity2019_final on a csv file
write.csv(activity2019_final, file ="activity2019_final.csv")
