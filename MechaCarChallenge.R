library(dplyr)
library(ggplot2)

# Deliverable 1: Linear Regression to Predict MPG
Mecha_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table))

# Deliverable 2: Summary Statistics on Suspension Coils
sus_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- sus_coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),
                                           Std_Dev_PSI=sd(PSI),Num_coil=n(), .groups='keep')
total_summary

lot_summary <- sus_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), 
    Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI),Num_coil=n(), .groups='keep')
lot_summary

# Deliverable 3: T-Test on Suspension Coils
# determine if the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch.
t.test(sus_coil_table$PSI,mu=1500)

# determine if the PSI for each manufacturing lot is statistically different 
# from the population mean of 1,500 pounds per square inch.
lot1 <- subset(sus_coil_table, Manufacturing_Lot == "Lot1")
lot2 <- subset(sus_coil_table, Manufacturing_Lot == "Lot2")
lot3 <- subset(sus_coil_table, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
