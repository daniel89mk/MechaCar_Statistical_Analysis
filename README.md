# MechaCar_Statistical_Analysis using R 

## Linear Regression to Predict MPG
- Columns: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD

![Deliverable1_1](Deliverable1_1.png)
![Deliverable1_2](Deliverable1_2.png)

##### By the screenshot of the output from the linear regression:
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to the linear model, 
      in other words, Vehicle length and Ground clearance have a significant impact on the MPG. 
- Is the slope of the linear model considered to be zero? Why or why not?
  - No, the slope of this linear model is not considered to be zero. Based on the result, r-squared value is 0.71 and p-value is 5.35e-11 ,
       which can tell us that roughly 70% of the variablity of our dependent variable(MPG) is explained using this linear model and
       p-value being much smaller than our significance level of 0.05% can lead us to state that there is sufficient evidence to reject our null hypothesis
       which means that the slope of our linear model is not zero. 
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, this muliple linear regression model predicts the MPG of MechaCar prototypes effectively because the r-squared value is 0.71 which
     can tell us that probability metric to determine the likelihood that the future data points will fit this linear model. 
  
## Summary Statistics on Suspension Coils
