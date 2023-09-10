# Customer Segmentation
![BigQuery badge](https://img.shields.io/badge/-BigQuery--Colab-blue.svg) 
![GG-Colab badge](https://img.shields.io/badge/-Google--Colab-blue.svg) 

### 1.) Import Dataset:open_file_folder:
Use Supermarket dataset that is previously used in generating cusotmer single view. This dataset contains 578K records of sales transactions

### 2.) Create Customer Single View:bar_chart:
See full details of creating the Customer Single View at [Customer Data Platform & Customer Single View Design](https://github.com/JamjureeK/MADT8101-Customer-Analytics/tree/ce0a0bc994e51d92f49ac2549f41992d750a26f9/%2301%20Customer%20Data%20Platfrom%20%26%20Customer%20Single%20View%20Design)

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

### 5.) Interpretation:family_man_woman_girl_boy:

![Visualize](https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/70c4aba8-725c-42a0-87cb-7196177d3b17)

