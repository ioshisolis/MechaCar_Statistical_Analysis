
# Use the library() function to load the dplyr package.

library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.

MechaCar_mpg_df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(MechaCar_mpg_df)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
# To create a linear regression model, our R statement would be as follows:
  
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df) #create linear model


summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df)) #generate summary statistics

# Deliverable 2: Create Visualizations for the Trip Analysis

# Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #Create a total summary

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #Create a total summary

# Deliverable 3: T-Tests on Suspension Coils

# Wite an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test((coil_table$PSI),mu=1500) #compare sample versus population means

t.test(subset(coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500) #compare subset versus population means
t.test(subset(coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500) #compare subset versus population means
t.test(subset(coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500) #compare subset versus population means