# Customer Segmentation
![BigQuery badge](https://img.shields.io/badge/-BigQuery-blue.svg) 
![GG-Colab badge](https://img.shields.io/badge/-Google--Colab-blue.svg)
![SQL badge](https://img.shields.io/badge/-SQL-green.svg)
![Python badge](https://img.shields.io/badge/-Python-green.svg)

Notebook:open_book:: [Customer Segmentation.ipynb](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/11aa2c925832c4535f47d891aef752b372aab8d3/%2304%20Customer%20Segmentation/Customer_Segmentation.ipynb)

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
Choose the number of components as 21, which allows for explaining approximately 94% of the variance.

![pca](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/33d87561-ef42-411b-a2be-5bcd9c4cf32d)

### 5.) K-means Clustering:books:
5.1 Choose optimal K using Elbow method and select K=4

![k-means elbow](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/ce243f0f-fbc3-42d8-96ce-7640a19b37d3)

4.2 Perform K-means clustering

![k-means](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/f7808ae8-1337-41b2-a4d0-7992ddc286b0)

### 6.) Visualization:bar_chart:

![Visualize](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/70c4aba8-725c-42a0-87cb-7196177d3b17)

### 7.) Interpretation:family_man_woman_girl_boy:
<img width="960" alt="Customer Persona and Business Actions" src="https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/be4c819a-d932-4b21-b824-7b39b04dbe54">









