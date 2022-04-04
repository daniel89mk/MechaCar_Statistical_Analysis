library(dplyr)
library(ggplot2)

Mecha_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table))

sus_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- sus_coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),
                                           Std_Dev_PSI=sd(PSI),Num_coil=n(), .groups='keep')
total_summary

lot_summary <- sus_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), 
    Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI),Num_coil=n(), .groups='keep')
lot_summary
