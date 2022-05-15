#install tidyverse package to read the csv file
install.packages("tidyverse")
library(readxl)
happiness <-read_excel("C:/Users/Izaskun.Sebastian/Downloads/Project/hap2019.xls")


#view table
View(happiness)
#view number of columns on the dataset
ncol(happiness)

#delete some rows based in a condition
#delete some rows based in a condition
happ <- subset(happiness, Country  != "Belarus" )
happ1 <- subset(happ, Country  != "Belgium" )

happ2 <- subset(happ1, Country  != "Bosnia and Hezegovina" )
happ3 <- subset(happ2, Country  != "Jordan" )
happ4 <- subset(happ3, Country  != "Laos" )
happ5 <- subset(happ4, Country  != "Netherlands" )

happ6 <- subset(happ5, Country  != "Northern Cyprus" )

happ7 <- subset(happ6, Country  != "Serbia" )
happ8 <- subset(happ7, Country  != "Switzerland" )
happ9 <- subset(happ8, Country  != "Turkey" )
happ_final <- subset(happ9, Country  != "Ukraine" )
View(happ_final)

#save happ_final on a csv file
write.csv(happ_final, file ="happ_final.csv")
