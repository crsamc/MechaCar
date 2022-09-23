# Deliverable 1
# load dplyr package
library(dplyr)
# Import csv file
Car_Data <- read.csv('Resources/MechaCar_mpg.csv') 
head(Car_Data)
# Perform Linear Regression using lm () function, pass all 6 variables, & add df created in Step 4 as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)
# Use summary() function, determine p-value and r-squared value for linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data))

# Deliverable 2
# Import csv file
Coil_Data <- read.csv('Resources/Suspension_Coil.csv')
head(Coil_Data)
# Create a total_summary dataframe using summarize() to get mean, median, variance, and sd
total_summary <- Coil_Data %>% summarize(Mean_PSI=mean(PSI),
                                         Median_PSI=median(PSI),
                                         Var_PSI=var(PSI),
                                         Std_Dev_PSI=sd(PSI),
                                         Num_Coil=n(), .groups = 'keep') 
head(total_summary)
# Creat a lot_summary dataframe using group_by() and summarize() to group each lot by mean, median, variance and sd
lot_summary <- Coil_Data  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        Std_Dev_PSI=sd(PSI),
                                                                        Num_Coil=n(), .groups = 'keep')
head(lot_summary)

# Deliverable 3
# Use t.test() function to determine if PSI across all lots is diff from pop mean of 1,500 lbs per sq.inch
t.test(Coil_Data$PSI,mu=1500)
# Use t.test() function and subset() argument to determine if PSI across each lots is diff from pop mean of 1,500 lbs per sq.inch
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)