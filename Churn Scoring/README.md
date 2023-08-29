## Dataset
The dataset contains various customer attributes such as tenure, gender, distance from warehouse to home, number of address, complain, order amount hike from last year, and cashback amount. The target variable 'Churn' indicates whether customers have churned.

#### Notebook: 

## Steps
* Data processing - encoding categorical data
* Model creation and evaluation
* Resampling: undersampling, oversampling, SMOTE
* Feature importance and selection using XGBoost

## Data Exploration
![EDA1](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/8c880c66-f3b1-48ed-9d35-1585065adbbf)

The following are some interesting observations from the boxplots:

* The median tenure of customers who have churned is lower than the median tenure of customers who have not churned, suggesting that customers who churn tend to have shorter tenures.
  
* The distribution of the warehouse to home distance for customers who have churned is more spread out than the distribution for customers who have not churned. This suggests that customers who have churned tend to live further away from warehouses than customers who have not churned.
  
* The distribution of the hour spend on app for customers who have churned is more spread out than the distribution for customers who have not churned. It is implied that there is a wider range of hour spend on app for customers who churn.
  
* The median number of devices registered for customers who have churned is higher than the median number of devices registered for customers who have not churned. This suggests that customers who have not churned tend to have fewer devices registered to their account.
  
* The median satisfaction score is lower for customers who churned than for customers who did not churn. This suggests that customers who churn tend to be less satisfied with the company.

## Model Creation and Evaluation
1.) Employ all available features for model training utilizing classifiers such as KNeighborsClassifier, LogisticRegression, GradientBoostingClassifier, RandomForestClassifier, BaggingClassifier, GaussianNB, and XGBoost.

2.) Apply three resampling techniques: oversampling, undersampling, and SMOTE.

3.) Evaluate the optimal model using metrics including precision, recall, f1-score, support, and test-AUC.

4.) Identify the significant features by their importance scores and retain only those with scores exceeding the threshold of 0.075.

In the first round, The Random Forest Classifier emerged as the top-performing model. Employing undersampling for resampling, it achieved metrics on the test set: an AUC of 0.89, a precision of 0.91, a recall of 0.88, and an f1-score of 0.89.

![Random Forest_SMOTE_1](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/6cb54b6d-7b5d-4cc9-806b-8119a1570532) ![Random Forest_SMOTE_2](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/7d7aac93-8559-486e-843b-1ddd8c6c47c9)

* Feature Importance of the 1st round
![Random Forest_SMOTE_featureIm_XG1](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/81b54354-ae0a-4482-8740-0d8a9fd1cada)

In the second round, features with importance scores exceeding 0.075 were selected for model training. The results highlighted XGBoost as the superior model, employing undersampling, oversampling, and SMOTE. It achieved notable performance metrics on the test set, including an AUC of 0.79, a precision of 0.86, a recall of 0.77, and an f1-score of 0.80.

![XGBoost_1](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/6d0f9b54-3989-44dc-9182-883ec86545a3) 
![XGBoost_2](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/de472aa8-8f8a-47a7-96f3-ceef94496462)

* Feature Importance of the 2nd round
![Feature importance 2](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/d15d40bf-47fb-477f-b9bf-22328f584262)




