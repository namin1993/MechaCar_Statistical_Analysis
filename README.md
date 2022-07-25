## MechaCar Statistical Analysis

## Linear Regression to Predict MPG
![Linear Model Summary](https://github.com/namin1993/MechaCar_Statistical_Analysis/blob/cdee49e8ed64f8710f4bb622cf8c5b60f1922fe1/Resources/Linear%20Model%20Summary.png)

Q: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
A: The variables which provided a non-random amount of variance in the multiple linear regression model were the vehicle_length and ground_clearance.

Q: Is the slope of the linear model considered to be zero? Why or why not?
A: The slope of the multiple linear model is not zero because the coefficients of each independent variable in the equation is a non-zero value.

Q: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
A: The multiple linear model does predict the mpg of the MechaCar protoypes effectively because the p-value is significantly less than 0.05 (meaning that the linear model fits the dataset well) and the adjusted r-squared is 0.68 meaning that the model explains 68% of variation within the data.

## Summary Statistics on Suspension Coils
When examining the variance and standard deviation of the PSI measured for each suspension coil for each MechaCar Manufacturing Lot Number, the design specifications for Lot 1 and 2 adhere to the variance stipulation of 100 PSI wheres as Lot 3 does not adhere to the variance requirement by going over the variance by 170.29 PSI.
![Lot Summary](https://github.com/namin1993/MechaCar_Statistical_Analysis/blob/cdee49e8ed64f8710f4bb622cf8c5b60f1922fe1/Resources/Lot%20Summary.png)

If we examine the total summary for all suspension coil tests, then we would assume that all manufacturing lots met the design specification.
![Total Summary](https://github.com/namin1993/MechaCar_Statistical_Analysis/blob/cdee49e8ed64f8710f4bb622cf8c5b60f1922fe1/Resources/Total%20Summary.png)

## T-Tests on Suspension Coils
![One Sample T-Test Summary](https://github.com/namin1993/MechaCar_Statistical_Analysis/blob/cdee49e8ed64f8710f4bb622cf8c5b60f1922fe1/Resources/One%20Sample%20T-Test.png)
According to the One Sample T-test, if we take the population mean to be 1500 PSI and the significance value to be 0.05, then we must reject the null hypothesis. The p-value for all MechaCar suspension coil data is 0.06. Therefore, we cannot reject the null hypothesis where the mean is close to or equal to 1500 PSI. This is depicted by the table above.

However, if we were to perform a t-test on each MechaCar Lot number, we will see that the p-values from using Lot 1 or Lot 2 as the sample will be above 0.05; meaning that the null hypothesis cannot be disregarded.

For Lot 3, we will find that the p-value is 0.04, meaning that the alternative hypothesis must be accepted. The alternative hypothesis in this t-test is that the mean of PSI measured is not equal to 1500. 

The summary of the 3 two-sample t-tests are depicted below.
![Two Sample T-Test Summary](https://github.com/namin1993/MechaCar_Statistical_Analysis/blob/cdee49e8ed64f8710f4bb622cf8c5b60f1922fe1/Resources/Two%20Sample%20T-Tests.png)

## Study Design: MechaCar vs Competition
If I were to perform another statistical study that compared the safety rating of MechaCar vehicles to several competitors, I would perform a One-Way ANOVA test.  The One-Way ANOVA test allows for multiple groups to be tested against each other to determine if there is a statistical difference between the distribution means of each group.

The data required for the ANOVA test would be the mean safety rating (assuming the rating is numerical) from each different car manufacturer and it's car model (like a sedan, SUV, Universal, Liftback, etc...).

If I were to only look at the safety rating of sedans, then I would only require the mean safety rating of each manufacturer's sedan by the same year. 

The null hypothesis would be that safety rating of all sedans created in 2012 are equal across all manufacturers.

The alternative hypothesis would be that the average safety rating of one manufacturer's 2012 sedan models is significantly different (safer) than all other competitors.
