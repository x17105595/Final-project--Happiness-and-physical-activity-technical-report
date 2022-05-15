#create ggplot death by age

library(ggplot2)
ggplot (deathcause_final, aes(fill= AGE, y= Value, x= GEO))+
  geom_bar(position="dodge", stat="identity") + ggtitle("Deaths by age")


