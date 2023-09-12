# Customer Segmentation
![BigQuery badge](https://img.shields.io/badge/-BigQuery-blue.svg) 
![GG-Colab badge](https://img.shields.io/badge/-Google--Colab-blue.svg)
![SQL badge](https://img.shields.io/badge/-SQL-green.svg)
![Python badge](https://img.shields.io/badge/-Python-green.svg)

Notebook:open_book:: [Customer Segmentation.ipynb](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/ef10943e9567a434fea8a68aec0c7e8a8447851f/%2304%20Customer%20Segmentation/Customer_Segmentation.ipynb)

### 1.) Import Dataset:open_file_folder:
Use Supermarket dataset that is previously used in generating cusotmer single view. This dataset contains 578K records of sales transactions

### 2.) Create Single View of Customer(SVoC):bar_chart:

:round_pushpin: [SVoC of Supermarket](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/11aa2c925832c4535f47d891aef752b372aab8d3/%2304%20Customer%20Segmentation/svoc_supermarket.csv)

See full details of creating the SVoC at [Customer Data Platform & Customer Single View Design](https://github.com/JamjureeK/MADT8101-Customer-Analytics/tree/41d322e452e9e9e00917b749b96a06de5ac8d5f5/%2301%20Customer%20Data%20Platfrom%20%26%20Customer%20Single%20View%20Design)

### 3.) Data Processing:gear:
- Encode categorical data
- Remove outliers when z-score > abs|3|
- Normalize data

### 4.) Perform Principal Component Analysis (PCA):file_cabinet:
Choose the number of components as 33, which allows for explaining approximately 100% of the variance.

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/1476da3dd4c1386d308cc6e90da9e7a5bb32d37b/%2304%20Customer%20Segmentation/pca.png)

### 5.) K-means Clustering:books:
5.1 Choose optimal K using Elbow method and select K=4

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/1476da3dd4c1386d308cc6e90da9e7a5bb32d37b/%2304%20Customer%20Segmentation/k-means%20elbow.png)

4.2 Perform K-means clustering

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/1476da3dd4c1386d308cc6e90da9e7a5bb32d37b/%2304%20Customer%20Segmentation/k-means.png)

### 6.) Visualization:bar_chart:

![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/1476da3dd4c1386d308cc6e90da9e7a5bb32d37b/%2304%20Customer%20Segmentation/Visualize.png)

### 7.) Interpretation:family_man_woman_girl_boy:
![Alt text](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/1476da3dd4c1386d308cc6e90da9e7a5bb32d37b/%2304%20Customer%20Segmentation/Customer%20Persona%20and%20Business%20Actions.png)









