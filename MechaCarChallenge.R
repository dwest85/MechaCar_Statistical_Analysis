library(tidyverse)
library(dbplyr)
library(ggplot2)

# Read in MechaCar Data
MechaCar_mpg <- read.csv("C:/Users/dwest/MSU/HW/R_Analysis/01_Demo/MechaCar_mpg.csv")
# Deliverable 1 lm and summary
mecha_reg <- lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


# Read in Suspension Coil Data
Suspension_Coil <- read.csv("C:/Users/dwest/MSU/HW/R_Analysis/01_Demo/Suspension_Coil.csv")
# Deliverable 2 summarize PSI
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 2 group_by and summarize
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')




# Deliverable 3
lot_overall_test <- t.test(Suspension_Coil$PSI,mu=total_summary$Mean)
lot_1_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI,mu=total_summary$Mean)
lot_2_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI,mu=total_summary$Mean)
lot_3_test <- t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI,mu=total_summary$Mean)



# mean(Suspension_Coil$PSI) --> total_summary$Mean
Suspension_Coil

#Deliverable 1 hypothesis
#Vehicle length and ground_clearance reject the null hypothesis and accept
# the alternative hypothesis based on MPG unit change. 
# weight, angle, and AWD do not.
# Total p-value shows that more than one variables accepts the alternative
# based on MPG units and that the model does not accept the null hypothesis

#Deliverable 3 hypothesis
# The Suspension Coil PSI mean and total_summary mean have a large p-value, 
# which accepts the null hypothesis that there is no alternate change between
# both means.
# Lot 3 had a p-value of 15.9%, meaning that is is equal to 1498.78 and that
# the PSI mean was affected by Lot 3.
# Lot 1 and Lot 2 had very small p-values meaning that the null (equal mean)
# was not accepted and that alternate hypothesis of mean values occurred.




