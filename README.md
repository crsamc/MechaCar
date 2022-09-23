# MechaCar_Challenge
## Overview 
In this challenge, perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, run t-tests to determine if the manufacturing lots are statistically different from the mean population and design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Linear Regression to Predict MPG
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- The variables that provided a non-random amount of variance to the mpg were vehicle_length and ground_clearance.
2. Is the slope of the linear model considered to be zero? Why or why not?
- The p-value for this model equals 5.35e-11 and significantly lower than the assumed significance level of 0.05%. The slope is not considered to be zero.
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. This would predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

![image](https://user-images.githubusercontent.com/101649525/191889332-f3108612-b652-43df-ab14-bf0ab2737064.png)

![image](https://user-images.githubusercontent.com/101649525/191889430-aaafcc83-fa3f-45c3-bcfc-5686f874d4fb.png)

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- When looking at the total summary of all the lots, the variance of the coils is 62.29 PSI, which is within the 100 PSI variance limitation.
- Individually, Lot 1 and Lot 2 are well within the 100 PSI variance limitations with variances of 0.98 and 7.47 respectively. However, Lot 3 that is showing a variance of 170.29, outside of the 100 PSI limitation. It is Lot 3 that is disproportionately causing the variance at the full lot level.

## T-Tests on Suspension Coils

![image](https://user-images.githubusercontent.com/101649525/191892289-ccbc93f1-5087-499a-a8ba-09dfb99360f7.png)

![image](https://user-images.githubusercontent.com/101649525/191892430-f35ab06d-240b-49e3-9b0c-9eca46f6d9df.png)


## Study Design: MechaCar vs Competition
- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?
