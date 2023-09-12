# Churn Scoring
## Dataset
The dataset contains various customer attributes such as tenure, gender, distance from warehouse to home, number of address, complain, order amount hike from last year, and cashback amount. The target variable 'Churn' indicates whether customers have churned.

#### Notebook: [Churn_Prediction](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/main/%2303%20Churn%20Scoring/Churn_Prediction.ipynb)

## Steps
* Data processing - encoding categorical data
* Model creation and evaluation
* Resampling: undersampling, oversampling, SMOTE
* Feature importance and selection using XGBoost

## Data Exploration
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/EDA1.png)

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

*In the first round, The Random Forest Classifier emerged as the top-performing model. Employing undersampling for resampling, it achieved metrics on the test set: an AUC of 0.89, a precision of 0.91, a recall of 0.88, and an f1-score of 0.89.*

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/Random%20Forest_SMOTE_1.png)
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/Random%20Forest_SMOTE_2.png)

* Feature Importance of the 1st round
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/Feature%20importance.png)

*Since the model score of the 1st round is too good to be true. In the second round, features with importance scores exceeding 0.075 were selected for model training. The results highlighted XGBoost as the superior model, employing undersampling, oversampling, and SMOTE. It achieved notable performance metrics on the test set, including an AUC of 0.79, a precision of 0.86, a recall of 0.77, and an f1-score of 0.80.*

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/XGBoost_1.png)
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/XGBoost_2.png)

* Feature Importance of the 2nd round
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/146a21a5bb268665843e5518eea7a7fe439974ef/%2303%20Churn%20Scoring/Feature%20importance%202.png)




