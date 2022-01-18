# MechaCar_Statistical_Analysis
Using R for statistical analysis 

Upper management has approached Jeremy and the data analytics team to solve the production troubles that are blocking the manufacturing’s team´s progress for AutosRU´s newest prototype, the MechaCar. 

## Deliverable 1: Linear Regression to Predict MPG

Our first task is to perform a multiple linear regression analysis to identify which variables in the data set predict the Mile per Gallon (mpg) of MechaCar prototypes. 

Multiple linear regression builds a linear regression model with two or more independent variables.

linear regression tests the following hypotheses:

H0 : The slope of the linear model is zero, or m = 0

Ha : The slope of the linear model is not zero, or m ≠ 0

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Since each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length, and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. Therefore, the vehicle weight and spoiler angle provide a random amount of variance to the mpg values in the data set. 

Is the slope of the linear model considered to be zero? Why or why not?

From our linear regression model, the r-squared value is 0.71, which means that 71% of the variability of our dependent variable is explained using linear model. In addition, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model. According to the summary output of the multiple linear regression model, the r-squared value of 0.71, which is good at predicting our current data set. Unfortunately the lack of significant variables is evidence of overfitting, which means that the performance of a model performs well with the current dataset, but fails to generalize and predict future data correctly. 

<img width="519" alt="Captura de Pantalla 2022-01-16 a la(s) 11 14 45 p  m" src="https://user-images.githubusercontent.com/37987602/149880140-c3c742e3-af7f-4d3b-a6ca-342334f91040.png">


## Deliverable 2: Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to the total summary we see the variance is close to the 100 pounds which is not ideal, therefore is better to look at each lot individually to understand the data. When we take a closer look at the Variance from Lot 3 is clear that there is a problem with the manufacturing of MechaCar suspension coils, thus not meeting the current manufacturing requirements. 

<img width="332" alt="Captura de Pantalla 2022-01-17 a la(s) 9 14 22 a  m" src="https://user-images.githubusercontent.com/37987602/149880240-f3d7390a-1a2c-456a-8106-7cc866ccd6ca.png">
<img width="488" alt="Captura de Pantalla 2022-01-17 a la(s) 9 14 37 a  m" src="https://user-images.githubusercontent.com/37987602/149880242-32e70c73-75b0-4529-91c0-eadcd129d07e.png">
s


## Deliverable 3: T-Tests on Suspension Coil

We use a t-test to compare the mean of one dataset to another under a few assumptions.

Ho : There is no statistical difference between the observed sample mean of PSI and its presumed population mean of 1500.
Ha : There is a statistical difference between the observed sample mean of PSI and its presumed population mean.

Assuming our significance level was the common 0.05 percent, our p-value of 0.06 for all Lots is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis and there is no statistical difference between the observed sample mean and its presumed population mean. 

<img width="497" alt="all_lots" src="https://user-images.githubusercontent.com/37987602/149880389-9e52268f-bf6d-4960-ac83-515415111138.png">

Assuming our significance level was the common 0.05 percent, our p-value of 1 for Lot 1 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis and there is no statistical difference between the observed sample mean and its presumed population mean. 

<img width="495" alt="Lot1" src="https://user-images.githubusercontent.com/37987602/149880405-ca092530-9af4-4dad-9ad4-8decb0d10b9b.png">


Assuming our significance level was the common 0.05 percent, our p-value of 0.60 for Lot 2 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis and there is no statistical difference between the observed sample mean and its presumed population mean.

<img width="491" alt="Lot2" src="https://user-images.githubusercontent.com/37987602/149880418-8809f898-ff74-4e64-98d3-1a046a492467.png">


Assuming our significance level was the common 0.05 percent, our p-value of 0.04 for Lot 3 is below our significance level. Therefore, we do have sufficient evidence to reject the null hypothesis and there is statistical difference between the observed sample mean and its presumed population mean. 

<img width="496" alt="Lot3" src="https://user-images.githubusercontent.com/37987602/149880425-553ab2fc-4a16-41a7-8cd5-582145d3df28.png">


## Study Design: MechaCar vs Competition

A new statistical study is to be designed to compare performance of the MechaCar vehicles against performance vehicles from other manufactures. In the study we can use metrics of interest to the consumer such as cost, highway fuel efficiency, horsepower, maintenance cost, safety rating, and an approximate cost of insurance. 

### What metric or metrics are you going to test?

In this case we would use the following metrics: Cost of the car, maintenance cost, time of acceleration from 0 to 60 and cost of insurance. The relationship that we would like to understand is between the cost of the car, the maintenance cost and safety rating and how this impacts the cost of insurance. 

### What is the null hypothesis or alternative hypothesis?

The null hypothesis is that the multiple metrics do not affects the cost of insurance to be greater than 150 a month. 
The alternate hypothesis is that the multiple metrics do influence the cost of insurance to be greater than 150 a month. 

### What statistical test would you use to test the hypothesis? And why?

Linear regression is a statistical model that is used to predict a continuous dependent variable based on one or more independent variables fitted to the equation of a line.For this purpose, we would use a Multiple Linear Regression. we'll look at each independent variable to determine if there is a significant relationship with the dependent variable.

- Dependent Variable – insurance cost
- Independent Variables – Cost of the car, the maintenance costs, time of acceleration from 0 to 60

Once we have evaluated each independent variable, we'll evaluate the r-squared value of the model to determine if the model sufficiently predicts our dependent variable. The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model. When using a simple linear regression model, the r-squared metric can be approximated by calculating the square of the Pearson correlation coefficient between the two variables of interest.

By combining the p-value of our hypothesis test with the r-squared value, the linear regression model becomes a powerful statistics tool that both quantifies a relationship between variables and provides a meaningful model to be used in any decision-making process.

![MLR2](https://user-images.githubusercontent.com/37987602/149880506-82acd113-e896-477a-bb88-26362db1892f.png)
![MLR](https://user-images.githubusercontent.com/37987602/149880513-e6bd56d2-9ff8-445a-84c5-086771e0b0ba.png)


### What data is needed to run the statistical test?

- We must collect Numerical Continuous Data
- Insurance Cost – e.g. $185.50
- Cost of the Car – e.g. $25,000.00
- Maintenance Cost – e.g. $50.00
- Time of acceleration from 0 to 60 – e.g. 5.7 seconds

