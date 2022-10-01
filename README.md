# MechaCar_Statistical_Analysis
Jeremy has been working with AutosRUs for 10 years. In his time he's seen a lot of cars come and go, and the company is finally realizing that their decision making process could be moved into the 21st century. Jeremy with his strong internal connections and exhaustive knowledge of the product has been selected as the primary analyst for the company's data analytics team. The data analytics team is in charge of performing retrospective analysis of historical data and analytical verification and validation of current automotive specifications, and study design of future product testing. The AutosRUs executive team recognizes that the most successful automobile watches utilize data analytics in every decision making process. Therefore, Jeremy must ensure that his analyses contain a statistical backbone, a quantitative metric and clear interpretation of the results in order to keep upper management happy. Additionally, the AutosRUs data team consists of five members who only know how to program using R. So Jeremy will need to learn a new language in order to perform those statistical tests. We'll help Jeremy perform statistical tests using the R programming language. We will need to provide summary statistics for different variables visualizations for different datasets and our interpretation of statistical test results. In addition, we will need to use our critical thinking skills to propose our own study design hypothesis, and analysis workflow in order to make AutosRUs manufacturing process, even better.

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG 

<img width="565" alt="image" src="https://user-images.githubusercontent.com/107168891/193430547-e633ad5d-f3b4-40c2-87ed-8668421e5636.png">

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - From the analysis above, the non-random variances are the spoiler_weight, vehicle_angle, and AWD.
* Is the slope of the linear model considered to be zero? Why or why not?
  - From the analysis above, the p-value = 5.35e-11, which is less than 0.05 and we can tell that our slope is not zero.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - From the analysis above, the R-square = 0.7149 , 71.49% of mpg variations can be attributed to variations in the vehicle length, vehicle weight, the spoiler angle, the drivetrain, and the ground clearance. Therefore, this linear model predict mpg of MechaCar prototypes effectively. 
  
## Create Visualizations for the Trip Analysis
### Summary of PSI
<img width="335" alt="image" src="https://user-images.githubusercontent.com/107168891/193431016-3e4068ea-d2f7-43eb-8b4e-6485fc41ea39.png">

### Summary of PSI by Manufacturing Lot
<img width="496" alt="image" src="https://user-images.githubusercontent.com/107168891/193431019-8cbbfaed-381e-490c-a0a3-0a188e44355a.png">

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 
  - Base on the summary of PSI by lot, Lot 1 have a variance of 0.98 psi, Lot 2 have a variance of 7.4 psi, and Lot 3 have a variance of 170 psi. Lot 3 is does not meet this design specification. 

## T-Tests on Suspension Coils
### All Manufacturing
<img width="411" alt="image" src="https://user-images.githubusercontent.com/107168891/193431287-f834a44c-1b43-47c3-b326-42a51f5a6c72.png">
* Based on the summary, the p-value = 0.45 which is above the significance level. Therefore, we cannot reject the null hypothesis.

### Lot 1
<img width="425" alt="image" src="https://user-images.githubusercontent.com/107168891/193431295-b6e5b785-1bca-41d3-a81a-1138b02e732b.png">
* Based on the summary, the p-value = 1 which is above the significance level. Therefore, we cannot reject the null hypothesis.

### Lot 2
<img width="430" alt="image" src="https://user-images.githubusercontent.com/107168891/193431302-7a3c79d7-56cd-4a7f-a783-484184cda7cc.png">
* Based on the summary, the p-value = 0.6 which is above the significance level. Therefore, we cannot reject the null hypothesis.

### Lot 3
<img width="429" alt="image" src="https://user-images.githubusercontent.com/107168891/193431327-5303e460-bf3d-4269-8875-41b81fe769ba.png">
* Based on the summary, the p-value = 0.04 which is below the significance level. Therefore, we can reject the null hypothesis.

## Study Design: MechaCar vs Competition
* What metric or metrics are you going to test?
  - In this analysis, the cost of the vehicles will be comparing to their fuel efficiency, safety rating, and horsepower. 
* What is the null hypothesis or alternative hypothesis?
  - The null hypothesis is that the MechaCar's price of the vehicale are correctly set based on its performance. 
* What statistical test would you use to test the hypothesis? And why?
  - The multiple linear regression allow us to put in multiple variables and model a relationship toward vehical cost under specific metrics.
* What data is needed to run the statistical test?
  - In order to conduct the test, we would need datas from MechaCar and it's competitior, and group their metrics into different columns.
