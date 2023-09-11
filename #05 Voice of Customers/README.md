# Voice of Customers
![GG-Colab badge](https://img.shields.io/badge/-Google--Colab-blue.svg) 
![Python badge](https://img.shields.io/badge/-Python-green.svg)
![NLP badge](https://img.shields.io/badge/-NLP-yellow.svg)
![Topic-Modeling badge](https://img.shields.io/badge/-Topic--Modeling-yellow.svg)
![pyLDAvis badge](https://img.shields.io/badge/-pythainlp-grey.svg)
![pyLDAvis badge](https://img.shields.io/badge/-gensim-grey.svg)
![pyLDAvis badge](https://img.shields.io/badge/-pyLDAvis-grey.svg)

## :file_folder:Dataset
:round_pushpin:[Grab Reviews]():
This dataset comprises reviews and comments of a restaurant gathered from the Grab Food app in the last two weeks. These insights reflect customer experiences and opinions, aiding in evaluating the restaurant's performance and identifying potential areas for improvement.

#### Notebook:open_book: [Topic_Modeling.ipynb](https://github.com/JamjureeK/MADT8101-Customer-Analytics/blob/main/%2305%20Voice%20of%20Customers/Topic_Modeling.ipynb)

## :books:Libraries
Python libraries pythainlp, gensim, and 'pyLDAvis'

## :mag_right:Step-by-Step Explanation of the Code

#### 1.) Installing Required Libraries:
Install the required libraries pythainlp and pyLDAvis.

#### 2.) Importing Libraries:
The necessary libraries are imported, including pandas for data handling, pythainlp for Thai language processing, gensim for topic modeling, and pyLDAvis.gensim for visualizing LDA results.

#### 3.) Loading Data:
The code reads a CSV file using the pd.read_csv() function and assigns it to a DataFrame named df.

<img width="299" alt="Dataset" src="https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/4787e69a-13bb-4226-828f-2f75ed648148">

#### 4.) Tokenization and Preprocessing:
The code defines a list of stopwords and other words to be removed from the text data. Then, a function named tokenize_with_space is defined. This function takes a sentence, tokenizes it using the 'newmm' word segmentation engine from pythainlp, filters out stopwords and removed words, and returns the tokenized sentence. The function is applied to each review in the DataFrame using the .apply() function, and the tokenized reviews are stored in a new column named 'Review_tokenized'.

<img width="514" alt="Tokenize" src="https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/e62ed156-feaf-4c47-b0a6-0806b81fa5eb">


#### 5.) Creating Dictionary and Corpus:
The reviews are split into individual words and stored in the texts list of lists. A gensim dictionary is created from these tokenized texts, and word IDs are assigned. The code then converts the tokenized texts into bag-of-words representations (corpus) using the dictionary. Word frequencies are also computed for each document in the corpus.

#### 6.) Topic Modeling with LDA:
The code sets parameters for topic modeling, such as the number of topics (num_topics), chunk size, passes, iterations, and evaluation frequency. A LDA model is trained using the gensim.models.LdaModel() function, with the corpus, dictionary, and other parameters provided.

#### 7.) Generating Visualization Data:
The pyLDAvis.gensim.prepare() function is used to create data for visualization. This function takes the trained LDA model, the gensim corpus, the dictionary, and a multidimensional scaling (MDS) method as arguments. The result is stored in the vis_data variable.

#### 8.) Displaying Visualization Data:
The vis_data variable holds the prepared visualization data. This data can be used to generate an interactive visualization of the topics and their relationships using the pyLDAvis.display() function.

<img width="464" alt="Visualize" src="https://github.com/JamjureeK/MADT8101-Customer-Analytics/assets/142724038/73651f74-226e-4a0d-9729-77da8f607d10">
