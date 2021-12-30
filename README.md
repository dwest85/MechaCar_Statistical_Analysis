# MechaCar_Statistical_Analysis

# Linear Regression to Predict MPG
* Which variables provided a non-random amount of variance to the MPG values in the dataset?

* The variables Vehicle_Length and Ground_Clearance reject the null hypothesis due to the correlation with the MPG unit change. The p-value for these variables were: 2.60e-12 and 5.21e-08, which were significantly lower than 5%, making a confident prediction to back the alternative hypothesis. Also, the total model prediction p-value shows that more than one variable does not accept the null hypothesis. 

* Deliverable 1 Code
![del_1_code](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/del_1_code.PNG)

* Deliverable 1 Output
![del_1_output](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/del_1_output.PNG)

* Is the slope of the linear model considered to be zero? Why or why not?

* Based on the model output, one or more variables do not accept the null hypothesis, having a direct correlation to the dependent variable. This means that the slope is not considered to be zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

* This model does predict a correlation of estimated change with a few variables, but would be more effectively driven if more variables were independently tested through the linear model formula. 

# Summary Statistics on Suspension Coils
* Based on the total summary and lot summary data, the total summary variance is met when all lots are examined, creating a total variance of 62.29356, but individually, lot 3 far exceeds the specification needs with an individual lot variance of 170.2861224.

* Total Summary
![total_sum](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/total_sum.PNG)

* Lot Summary
![lot_sum](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/lot_sum.PNG)

* Deliverable 2 Code
![del_2_code](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/del_2_code.PNG)

# T- Tests on Suspension Coils
* Based on the individual T-test data for all lots, Lot 3 was the only lot with a high p-value of 15.9%, meaning the PSI mean was affected only by this specific lot. The other two lots (lot 1 and lot 2) had very small p-values, meaning the null hypothesis was rejected and there was no correlation. The overall PSI T-test had a p-value of 1, as the Suspension Coil PSI mean and Total Summary mean were equal. 

* Deliverable 3 Code
![del_3_code](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/del_3_code.PNG)

* Overall PSI T-Test
![overall_PSI_output](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/overall_PSI_output.PNG)

* Lot 1 T-Test
![lot1_PSI](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/lot1_PSI.PNG)

* Lot 2 T-Test
![lot2_PSI](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/lot2_PSI.PNG)

* Lot 3 T-Test
![lot3_PSI](https://github.com/dwest85/MechaCar_Statistical_Analysis/blob/main/markdownpics/lot3_PSI.PNG)

# Study Design: MechaCar vs Competition

* What metrics are you going to test?
* Based on consumer needs, I would test the following variables against the competitors: safety rating, city and highway fuel economy, horsepower, towing capacity, and seating capacity. 

* What is the null hypothesis or alternative hypothesis?
* The alternative hypothesis would be if there was a direct correlation to the dependent variable (Safety Rating) against the model variables listed above.

* What statistical test would you use to test the hypothesis? And Why?
* I would use linear regression, as this model predicts a strong outcome, outweighing errors and strengthening the hypothesis.

* What data is needed to run the statistical test?
* MechaCar and competitor data would be needed for the following variables: safety ratings, city and highway fuel mpg averages, horsepower ratings, towing capacity pounds, and seating capacities. 

