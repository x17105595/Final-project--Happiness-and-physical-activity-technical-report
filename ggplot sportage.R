
#create ggplot sport by age
library(ggplot2)

ggplot(Total_sport_by_age,aes(fill=Age, y=Total,x=Country))+ geom_bar(position="dodge",stat="identity")+ ggtitle("Sport by age")
