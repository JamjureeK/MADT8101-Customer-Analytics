# Churn Prediction
## :books:Dataset
The dataset contains various customer attributes such as tenure, gender, distance from warehouse to home, number of address, complain, order amount hike from last year, and cashback amount. The target variable 'Churn' indicates whether customers have churned.

#### Notebook:open_book: [Churn_Prediction](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/83f680aa140624f5270094b7ff873d0e40735909/%2303%20Churn%20Prediction/Churn_Prediction.ipynb)

## :round_pushpin:Steps
* Data processing - encoding categorical data
* Model creation and evaluation
* Resampling: undersampling, oversampling, SMOTE
* Feature importance using XGBoost

## :mag_right:Data Exploration
The following are some interesting observations from data exploration:
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/3ca1986e2e19c306706d7e17db06bddcf55603c7/%2303%20Churn%20Prediction/EDA_1.png)

* Customers with shorter tenure may be more likely to churn

* The number of customers who have churned is highest for single customers. This graph also suggests that married customers are less likely to churn.

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/3ca1986e2e19c306706d7e17db06bddcf55603c7/%2303%20Churn%20Prediction/EDA_2.png)

* The graph shows that the churn rate is higher for customers with fewer devices registered and for customers with lower satisfaction scores. This suggests that customers who are more satisfied with the service and who have more devices registered are less likely to churn.

* The churn rate is higher for customers who have filed a complaint. This suggests that customers who are unhappy with the service are more likely to churn.
  
## :hammer_and_wrench:Model Creation and Evaluation
1.) Employ all available features for model training utilizing classifiers such as KNeighborsClassifier, LogisticRegression, GradientBoostingClassifier, RandomForestClassifier, BaggingClassifier, GaussianNB, and XGBoost.

2.) Apply three resampling techniques: oversampling, undersampling, and SMOTE.

3.) Evaluate the optimal model using metrics including precision, recall, f1-score, support, and test-AUC.

#### *XGBoost emerged as the top-performing model. Employing Oversampling for resampling, it achieved metrics on the test set: an AUC of 0.93, a precision of 0.85, a recall of 0.89, and an f1-score of 0.87.*

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/83f680aa140624f5270094b7ff873d0e40735909/%2303%20Churn%20Prediction/XGB_AUC.png)
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/83f680aa140624f5270094b7ff873d0e40735909/%2303%20Churn%20Prediction/XGB_heatmap.png)

## Feature Importance

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/83f680aa140624f5270094b7ff873d0e40735909/%2303%20Churn%20Prediction/Feature_Importance.png
)
