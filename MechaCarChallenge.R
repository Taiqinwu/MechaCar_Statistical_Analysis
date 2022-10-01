# Deleveriable 1 -------------------------------------------------------------------------------------------------
library(dplyr)
MechaCar_df <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df))

# Deleveriable 2 -------------------------------------------------------------------------------------------------
Suspension_Coil_df <- read.csv('Suspension_Coil.csv', check.names = F,stringsAsFactors = F)
summarize_table <- Suspension_Coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deleveriable 3 -------------------------------------------------------------------------------------------------
t.test(lot_summary$Mean, mu=1500)

lot_1_summary <- subset(Suspension_Coil_df,Manufacturing_Lot=='Lot1')
t.test(lot_1_summary$PSI, mu=1500)

lot_2_summary <- subset(Suspension_Coil_df,Manufacturing_Lot=='Lot2')
t.test(lot_2_summary$PSI, mu=1500)

lot_3_summary <- subset(Suspension_Coil_df,Manufacturing_Lot=='Lot3')
t.test(lot_3_summary$PSI, mu=1500)