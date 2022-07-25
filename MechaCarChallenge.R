## Deliverable 1
library(dplyr)
## Read MechaCar data to table
mechacar_table <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
## Read multiple linear regression
mpg_model <- lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)
mpg_model
## Get r and p-values of linear regression model
summary(mpg_model)

## Deliverable 2
## Read Suspension data to table
suspension_table <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI, na.rm = FALSE), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI, na.rm = FALSE), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## Deliverable 3
one_sample_ttest <- t.test(suspension_table$PSI, mu=1500, paired=FALSE)
summary(one_sample_ttest)

lot_1 <- subset(suspension_table, Manufacturing_Lot == "Lot1")
lot_2 <- subset(suspension_table, Manufacturing_Lot == "Lot2")
lot_3 <- subset(suspension_table, Manufacturing_Lot == "Lot3")

two_sample_ttest1 <- t.test(lot_1$PSI, mu=1500, paired=FALSE)
two_sample_ttest2 <- t.test(lot_2$PSI, mu=1500, paired=FALSE)
two_sample_ttest3 <- t.test(lot_3$PSI, mu=1500, paired=FALSE)

two_sample_ttest1
two_sample_ttest2
two_sample_ttest3
