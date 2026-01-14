#Abstract:
The main aim is to apply different classification techniques like Linear
Regression, Logistic Regression, K-Nearest neighbours, Decision tree models to
predict Diabetes increase rate in different ages from Pima Indians Diabetes
Database to Evaluating the accuracy of different classification models.
#Introduction:
Classification is a process of categorizing a given set of data into classes, it can
be performed on both structured or unstructured data. The process starts with
predicting the class of given data points. The classes are often referred to as target,
label or categories.
Classification is supervised learning even input data is given to identify the
classification in the dataset. There are different classification models to evaluate
the accuracy of data set are Logistic Regression, Decision tree model, K-Nearest
neighbours, Linear Regression etc.., that uses one or more independent variables
to determine the outcome.
Usually In Logistic Regression, the outcome of the target variable is in binary
classification having only two possible outcomes true or false, or 0 to 1. These
are to find best fitting relationship between dependant variable and independent
variables.
In the K-Nearest neighbours’ algorithm that stores all instances corresponding to
training data in n- dimensional space. It is a lazy learning algorithm as it does not
focus on constructing a general internal model, instead, it works on storing
instances of training data.
In the Decision tree model builds the classification model in the form of a tree
structure. It utilizes the if-then rules which are equally exhaustive and mutually
exclusive in classification.
Diabetes is the most occurring disease in common age from 12 or over ages of
young and adults who having blood glucose or insulin reached too high. In the
present running world, several people effecting to this disease due to their food
habits, stress levels, and from inheritance, there is no cure for this diabetes all we
need to maintain certain food diet to control the disease.
From this Pima Diabetes dataset, find that the relationship between the disease
occurring variables of blood glucose, insulin, age, BMI are classified using
Logistic Regression and Decision tree model. The age and BMI are the two highly
corelated variables in mostly occurring in this dataset, where the BMI is also the
main factor to increase diabetes that means the weight of a person is not balanced
with their age leads to cause diabetes disease.
#Datasets:
For this classification model to evaluate the different classification techniques, I
have downloaded data set from data.world - https://data.world/datasociety/pima-indians-diabetes-database . of Pima Indians Diabetes dataset. This
dataset is originally from the National Institute of Diabetes and Digestive and
kidney disease, mostly this dataset having female patients at least 21 years old
from Pima Indian Heritage. The objective is to predict based on diagnostic
measurements of how many patients having diabetes. I could use this dataset to
predict the relationship between most occurring cause in patients that leading to
effect with Diabetes using Classification models.
Explanation and preparation of dataset:
Pima Indian Diabetes dataset is about the diagnostic measurements of the female
patients from the Pima Indian origin. The different measurements are included in
this dataset are Number of times pregnancies, “Blood glucose”,” Insulin”, “Age”,
“Skin thickness”, “BMI” are the independent variables in the dataset whereas
“Diabetes pedigree function” as the dependant variable or target variable.
#Implementation in R:
Preparation of dataset:
1.The dataset is loaded into R studio by using Go to working directory and
selecting diabetes.csv and set as working directory.
2. Identifying any missing or NA values.
The following dataset is having 0 null values.
3. finding the dimensionality of dataset using nrow, ncol, dim, str.
4. Summary of the dataset consists of Mean, Median Minimum, Maximum values
of independent and dependant variables.
5. Training and validating of dataset.
6. A package called “party” is a laboratory for recursive partitioning. It is a
computational toolbox for recursive partitioning, the core of this package is
“ctree”, which implements the conditional interference trees which tree
embedded tree structured regression models into a well-defined procedure. This
class of regression is applicable to ordinal, nominal and multi variate response
variables.
7. Decision tree model of dataset.
8.Prediction of dataset score of the dataset for Decision tree model.
Where the accuracy of the decision tree trained model is about AUC=0.83%
accurate score obtained by using ROC curve.
#Visualisation in R:
Plots of the variables in dataset.


#ROC curve:
Data Mining using SAS Enterprise Minor:
1. By using the file import node imported diabetes.csv file into SAS
Enterprise Minor.
2. Using the data partition node to divide the data as train, validate and tests
3. Statistics summary of the dataset is viewed by selecting Stats Explore node.
4. Build and analyse the Decision tree model by selecting Decision tree node
from model tool bar.
File Edit View Window
Tree
TRUE
Node Id: 1
Statistic Train Validation
Average: 0.4698 0.4693
Count: 307 230
outcome
Node Id: 2
Statistic Train Validation
Average: 0.5721 0.5403
Count: 113 82
FALSE Or Missing
Node Id: 3
Statistic Train Validation
Average: 0.4101
Count: 194
0.4300
148
File
#Results- Node: Decision Tree Diagram: Decision Tree
Edit View Window
Score Rankings Matrix: diabetespedigreefunction
Mean Predicted
0.55-
0.50-
0.45-
040
10
Leaf Statistics
0.4-
無
02-
0.0-
Data Role=TRAIN
20
Depth
Mean Predicted- -Mean Target
Tree
Node Id:
Statistic Average:
Count
Walidation
0.4698 0.4693
307 230
outcome
Node
Statistic
Average:
TRUE
Train
0.5721
nt: 113
Validation
0.5403
82
FALSE Or Missing
Node Id: Statistic
Average:
Come ount:
Train
0.4101 194
Validation 0.4300
X
Fit Statistics
Target
diabetespedigreef.
X
Target Label Fit Statistics Statistics Label Train Validation Test NOBS Sum of Frequencies 307 230 231
diabetespedigreef. MAX Maximum Absolut. 1.847876 1.370851 1.918851
diabetespedigreef. SSE Sum of Squared E. 32.98029 23.12099 25.87135
diabetespedigreef ASE Average Squared.. 0.107428 0.100526 0.111997 diabetespedigreef RASE Root Average Squ.. 0.327762 0.317058 0.33466 diabetespedigreef. DV Divisor for ASE 307 230 231
diabetespedigreef DFT Total Degrees of F. 307
Index
Average Validation Average
Treemap X Output
2 User: User
3 Date:
4 Time:
10 March 2022
01:53:13
5
6 * Training Output
10
11
12 Variable Summary
13
14 Measurement Frequency
15 Role Level Count
16
X
#5. The Model Comparison node provides a common framework for
comparing models and predictions from any of the modeling tools (such as
Regression, Decision Tree, and Neural Network tools). The comparison is
based on standard model fits statistics as well as potential expected and
actual profits or losses that would result from implementing the model.
84 Test: Divisor for TASE 231.000 231.000
85 Test: Maximum Absolute Error 1.850 1.919
86 Test: Sum of Frequencies 231.000 231.000
87 Test: Root Average Squared Error 0.325 0.335
88 Test: Sum of Squared Errors 24.466 25.871
89 Test: Sum of Weights Times Freqs 231.000
90
91
92
93 * Score Output
94
95
96
97
98 * Report Output
68
69 Statistics HPTree Tree
70
71 Valid: Average Squared Error 0.099 0.101
72 Valid: Divisor for VASE 230.000 230.000
73 Valid: Maximum Absolute Error 1.445 1.371
74 Valid: Sum of Frequencies 230.000 230.000
75 Valid: Root Average Squared Error 0.315 0.317
76 Valid: Sum of Squared Errors 22.823 23.121
77
78
79 Data Role=Test
80
81 Statistics HPTree Tree
82
83 Test: Average Souared Error 0.106 0.112
52
53 Data Role=Train
54
55 Statistics HPTree Tree
56
57 Train: Average Squared Error 0.098 0.107
58 Selection Criterion: Valid: Average Squared Error 0.099 0.101
59 Train: Total Degrees of Freedom 307.000
60 Train: Divisor for ASE 307.000 307.000
61 Train: Maximum Absolute Error 1.667 1.848
62 Train: Sum of Frequencies 307.000 307.000
63 Train: Root Average Squared Error 0.314 0.328
64 Train: Sum of Squared Errors 30.236 32.980
65
66
67 Data Role=Valid
Fit Statistics
Model Selection based on Valid: Average Squared Error (_VASE_)
Valid: Train:
Average Average
Selected
Model
Model
Node
Model Squared Squared
Description Error Error
Y HPTree
Tree
HP Tree 0.09923 0.09849
Decision Tree 0.10053 0.10743
6. The HP Tree node enables to create and visualize a tree model and
determine input variable importance in a high-performance data mining
environment. The HP Tree node includes many of the tools and results
found in the Decision Tree node.
Results analysis and discussion:
Based on the above results, able to prove not only accuracy of imbalanced
dataset but also obtained better results from feature selection. In the results it
shows Decision tree model performed better accuracy rate of AUC=0.83%.
This model is more useful to detect the diabetes in early stages as its not required
any lab reagents and this process is very time consuming and not much expensive.
All the features in dataset are more helpful symptoms in finding the diabetes.
In this dataset blood insulin is the main feature to detect the diabetes. Where the
blood insulin increases in middle age people due to their food habits, stress levels,
over weight BMI also the factor to increase insulin. This insulin stops the working
stamina of pancreas. The pancreas produces chemicals (hormones) that regulates
blood sugar that are Insulin, Glucagon. Insulin works in food digestion using
enzymes are Amylase which uses to digest the carbo-hydrates in the food.
The results confirms that the age is also significant in diabetes in female. Some
of the female patients gets diabetes in their pregnancy due their temporary organ
develops to connect the mother and fetus, called the placenta The placenta
supplies the fetus with nutrients and oxygen, as well as produces a number of
hormones that works to maintain pregnancy. Some of these hormones impair the
action of insulin, making it less effective. The gestational diabetes occurs through
overweight/obesity or family/personal history of diabetes.
Conclusions:
As the increasing rate in diabetes in most people in the world due their functional
habits that effects occurrence of this disease, is to be examined in early stages.
The above machine learning model shows importance of decision-making in
detecting diabetes in early stages in health care industry and reducing cost for its
diagnosis.
References:
[1] Blum, A., Mitchell, T.: In: Proceeding of the eleventh annual conference on Computational
learning theory, pp.92-100. ACM, Madison, Wisconsin (1998).
[2] Chapelle, O., Sindhwani, V., Keerthi, S.S.: Optimization techniques for semi-supervised
support vector machines. Journal of Machine Learning Research 9(2), (2008).
Task_2: Association Rules Mining
Abstract:
The main objective is to apply Association rules mining to obtain the statuary
status of public libraries in United Kingdom upto July 2016, by applying apriori
algorithm to identify insights and frequent patterns of different objects in the
dataset.
#Introduction:
Association rule is unsupervised learning where algorithm tries to learn without
a teacher as data are not labelled. Association is the descriptive not the predictive
model.
Association rules mining is used identify new and interesting insights between
the different objects in a dataset, frequent pattern in transactional data or any sort
of databases. An association rule must have an associated population, the
population consist of set of instances. Rules have an associated support and
confidence. There are four different types of association rules are there, they are:
single dimensional association rules, multi-dimensional association rule, single
level and multi-level association rule which deals with single and multiple
abstractions.
In the Association rules mining the most popular algorithm is APRIORI
algorithm. It is useful to finding for all frequent item sets. apriori employs an
iterative approach known as level-wise search where k-item sets are used to
explore k+1 item sets. The advantages of apriori algorithm is it uses large item
set properties, and easily parallelized and also easy to implement.
Datasets:
For the Association rule mining I chosen statuary status of public libraries in
United Kingdom from data.gov.uk website, here is the data link Public libraries
in England: basic dataset - data.gov.uk . This data set is consists of statuary status
of public libraries in England from 2010 to July 2016. The public libraries are
funded and run by the local governments. Library authorities have statuary duty
under the Public libraries and Museum act 1964 to provide comprehensive and
efficient service to the public in the country. In this dataset there is two columns
that describes the statuary status of the libraries which are under the renovation
or some of them are closed due to old infrastructures and replacing new buildings
instead of old buildings.
#Explanation and preparation of dataset:
This data set is consisting of three attributes that are
“Statuary_service_1_April_2010”, “statutory_service_on_1_July_2016”,
“Did_the_new_building_replace_an_existing_library: Yes/No”. In this dataset I
used “arules” package. Which use Apriori Algorithm. The apriori algorithm is an
influential algorithm for mining frequent item sets for Boolean association rules.
Apriori uses a bottom up approach where frequent subsets are extended one item
at a time.
#Implementation in R:
1. In the Go to working directory dialogue navigate to open select folder and
selecting public_libraries.csv file and set as working directory. And by
clicking file followed by open new R script window. And reading and
exploring the dataset.
2. Inspecting the dataset.
3. Exploring the dataset with barplot().
4. Installing arules package.
The apriori () function from the arule package implements the Apriori
algorithm to create frequent itemsets.
5. Summary of these rules.
6. Inspecting of the rules.
7. This reduced the rule to 5 rules.
8. Inspecting the rules.
#Results:
9. To visualise these results I used “arulesviz” package.
Arulesviz package provide various visualization techniques for association
rules and item sets. Plotting the rules.
Scatter plot for 5 rules.
Plot rules using grouped.
Plot rules@quality.
Plotly_arules() can be used to create interactive scatter plot for association
rules.
Parallel coordination of 10 rules.
Data Mining using SAS Enterprise Minor:
1. Creating diagram in by clicking left on the diagram tab and given
association_rule_mining.
2. Loading dataset
3. Exploring association rules.
In the diagram work space selecting Association rule node and connecting
it to file import.
Results:
The results window shows scatter plot, rule matrix, statistics line plot and
output.
Output:
4. Link graph.
Size of nodes corresponding to number of transactions while thickness of
links between nodes corresponded to confidence.
5. 3-D scattered graph plot with count.
confidence (x-axis), support(y-axis), and lift(z-axis).
Results analysis and discussion:
Association rules mining is performed on the statuary status of public libraries in
United Kingdom dataset. The Apriori algorithm is used to identify mining
frequent items in the dataset.
The libraries are funded and run by the local governments in UK to provide
statuary service to the public. Libraries are important to be maintained time to
time to store the data from the past to present. These libraries are the main sources
of knowledge sharing among the peoples. Most of the libraries in United
Kingdom are old ones and they need to be refurbished. And some of the library
buildings are using for other government departmental offices. In this analysis
find that the number of libraries are in statuary status and some them are closed
and used for other purposes by using Apriori algorithm which performs the
number of items sets frequency by taking k iterations among the variable in the
dataset. It checks for the confidence and support between the variables in dataset
using corelation plots is performed.
#Conclusions:
Association rule mining has increased in identifying the different patterns among
mining the algorithms. Apriori algorithm is a set of item frequents, then all of its
subsets also frequent. The algorithm produces large number of items and executes
k iterations. The algorithm is inefficiency in dealing with large datasets by
checking k-1 items, to overcome this the algorithm performs for finding every
frequent items for k+1 set.
References:
[1] Algorithms for Association Rule Mining – A General Survey and Comparison,
Jochen Hipp, Ulrich Guntzer, Gholamreza
[2] Applications of association rule mining in different databases, Dr. Renuka Devi,
Mrs. A. Baby sarojini2
[3] Association Rule Mining: Applications in Various Areas, Akash Rajak and
Mahendra Kumar Gupta
Task-3: K-means Clustering
#Abstract:
The main objective of this K-means clustering on the NBA heights dataset is to
perform similarity between the players of their heights in meters and inches and
dividing them into two clusters.
Introduction:
K-means clustering is an unsupervised learning, which separates the data based
on the distance-algorithm where we calculate the distance to assign a point to the
cluster.
In clustering we do not have a target variable to predict, we need to merge the
data with the similar groups. K-means is centroid base algorithm, where each
cluster associated with a centroid.so in the NBA heights dataset having the
players heights in meters and in inches variables of unsupervised dataset to
predict the distance between these two variables how their heights impacting the
basketball game to get the goal point.
In today’s world basketball is the most famous game in world. Height of a player
is much important in this game to score the goal, when a player is in offensive
position its easy to get a goal with less force. Regulation of professional
basketball is 10 feet tall. The average height of a player is 6 feet, 6.9 inches. In
the basket ball centre position plays both offensive and defensive role, the centre
position is also need to be height contributes to longer wingspan and reach. Kmeans cluster is most suitable clustering method to divide the both height
characteristics from the given dataset to identify the similar group of players
among the different teams from the NBA heights dataset.
#Datasets:
NBA heights dataset is an unsupervised learning dataset which is has no target
variable to predict, so it is most suitable to analyse using cluster analysis, in
cluster analysis k-means clustering is most used cluster technique to find the
distance between the similar group of clusters in the dataset. The dataset is
download from UCI Machine Learning Repository: Data Sets.
#Explanation and preparation of dataset:
In the NBA heights dataset it having four variables that are related to NBA
basketball players details of “first name”, “last name”, “height in metres”,
“height in inches”. This dataset is an unsupervised hence “cluster” package is
used which uses k-means clustering algorithm is one of the simplest unsupervised
algorithm. The procedure follows a simple and easy way to classify a given
dataset set through a certain given number of clusters.
Implementation in R :
1. Importing the dataset using Go to working directory dialogue and
navigating to select the dataset folder and setting the path directory as
the set working directory.
2. Reading the dataset.
3. Inspecting the dataset.

4. Installing and activating “cluster” package.
5. Plotting the scatter plot to compare the variables in the dataset.
6. Understating the relationship between the heights in meters and heights
in inches using this following command.
7. Removing overlaps of names of players.
8. Normalisation before clustering is specifically needed for distance
matrix, like the Euclidian distance that are sensitive to variations within
the magnitudes or scales.
9. Now we can calculate the Euclidian matrix using this normalised data.
10.Visualising the distance matrix using fviz_dist() in factoextra package.
11.K-means clustering :
k-means clustering can be used for any kind of grouping. K-means
function performs k-means clustering on data matrix.

12.Results are produced using clustplot() , fviz_cluster(), fviz_nbclust().
#compute k-means
Data Mining using SAS Enterprise Minor:
1. Creating a new project in SAS terminal window and creating a diagram
workspace by left clicking on the diagrams tab on the left side of the
solution explorer window.
2. Loading the dataset by selecting import file node located on the sample
tab.
Placing the file import node in the tab.
3. After importing data file into diagram space needs to edit variables by
clicking left on file import node.
4. Exploring clusters.
In the diagram workspace tab drag the cluster node and connect it to the
file import node.
Set specification method to Automatic.
Run the cluster node using run option in the sample tab.
Results:
Observing the pie chart the observations are dived into three segments.
Maximise the mean statistics window.
Clustering profile of tree diagram.
5. Segment profile.
In the diagram workspace drag the segment profile tab from the asses
tab and connect it to cluster node.
Run the segment profile.
Double click on the segment window we will see change in the new
window.
Output:
#Results analysis and discussion:
From the above K-means clustering analysis on the NBA heights dataset find that
the average height of the player in a team must be around 6 feet in height to score
the goals. Where the height plays key role in the basketball game. Clustering
analysis is performed between the players of their heights in meters and in inches.
k-means clustering uses the elbow method to recommend an ideal number of
clusters and every data point is close to the median.
The decision of merging two clusters is taken on the basis of closeness of these
clusters. There are multiple metrics for deciding the closeness of two clusters:
 Euclidean distance ‖𝑎 − 𝑏‖ଶ = √(𝛴(𝑎௜ − 𝑏௜)
ଶ).
This algorithm has been implemented above using bottom up approach.it is also
possible to follow top-down approach starting with all data points assigned in the
same cluster and recursively performing splits till each data points is assigned a
separate cluster.
#Conclusions:
It is very simple to implement and is scalable to a huge dataset and also faster to
larger datasets. Its performance is determined by initialisation and appropriate
distance measure. There are several variants of K-means to overcome its
weakness:
K-means: resistance to noise and/or outliers.
K-modes: extension to categorical data clustering analysis.
CLARA: dealing with large datasets.
References:
[1] R.Amutha, Renuka. K, Different Data Mining Techniques And Clustering Algorithms,
International Journal Of Technology Enhancements And Emerging Engineering Research,
VOL 3, ISSUE 11, ISSN 2347-4289.
[2] Nidhi Singh,. Divakar Singh, Performance Evaluation of K-Means and Heirarichal
Clustering in Terms of Accuracy and Running Time, International Journal of Computer
Science and Information Technologies, Vol. 3 (3) , 2012,4119-4121.
#Task-4: Sentimental Analysis
#Abstract:
The main objective of the Sentimental analysis on the hotel reviews dataset is to
extract the emotions of the customer satisfaction about the hotels. And to identify
the positive and negative reviews from the dataset using.
Introduction:
Sentimental analysis is the process of identifying emotion from the text data. The
different customer express their opinion in different text formats and different
natural languages, it is hard to label the data in uniform way. Sentimental analysis
is a binary diction of positive vs. negative. Identifying specific emotion of an
author like joy, fear, or anger.
Sentimental analysis plays a key role in the business sectors and organizational
benefits. It can give customer service based companies to know about their
opinion towards the products which they purchased. Through these reviews they
improvise their business standards and more focused on the customer satisfaction
to bring growth in their organizational development.
Now a days tourism sector has increasing more rapidly. People are moving from
one place to another place to full fill their dreams and targets and in the mean
while they stays in hotels according to their schedules and they search for the
hotels in online based on the rating of the hotel and past customer reviews about
the hotel features. Some might may get positive reviews and negative reviews
about hotel hygiene, facilities, food supply and management etc.., to overcome
these reviews business organization apply some sentimental analysis to improvise
customer facilities. With the sentiment analysis hotelier come up with the
negative sentiment attached. With this information hotel would know evaluate
negative areas when it comes to make decisions.
In some cases sentimental analysis cannot give accurate results. However it can
be useful to summarize the some quality of text.
Datasets:
Tourist accommodation reviews dataset is download from the blackboard given
in the assessment page. The dataset is belongs to Thai tourism.
Explanation and preparation of dataset:
The dataset consist of 5 attributes of “ID”, “Review date”, “Location”, “Hotel
Restaurant name”, “ Review”. This dataset contains customer reviews from
various hotels in Thai tourism. It consists of different natural language reviews
that cannot be labelled at once. To identify positive and negative reviews from
the customers is identified using sentimental analysis method by using R
programming using some graphical visualisation of histograms, word cloud
representation of positive and negative reviews. The R packages like wordcloud
and tm are used to identify the positive and negative reviews over the dataset.
#Implementation in R:
1. Reading the dataset by selecting Go to working directory from the
panel and selecting the hotel_reviews.xls file and setting it as the
working directory.
2. Loading necessary packages.
3. Inspecting the dataset
4. Inspecting specific subsets.
5. Converting text to vectors.
6. Creating function for sentiment analysis.
Result:
#Data Mining using SAS Enterprise Minor:
1. Importing the two datasets of “pos_model_new”, “neg_model_new”. And
drag the two datasets into diagram work space. Connecting the data sources
with text minor nodes.
2. Connect the “pos_model_new” to text parsing node and run the text
parsing node to see the text topic results from positive comments with
default settings.
3. Text topic results from positive comments from custom settings.
4. Attach the text cluster node to both process flows positive and negative
models and run the text cluster node with default settings.
Results of text cluster node for positive comments and hierarchical clustering
results for positive comments.
Results of text cluster node for negative comments and hierarchical clustering
results for negative comments.

 Cluster frequency by RMS Long distance betweenclusters
5. Relationship between two clusters is produced using merge node joining
with positive and negative text clusters.
For negative text cluster.

#Results analysis and discussion:
From the above results of hotel reviews dataset observed that the customer
reviews from various hotels and various location in Thai tourism. Using
sentimental analysis on dataset to extract the different textual natural languages
of customer emotions were discussed using “word cloud” package. The hotels
and their business improvements depends on identifying the customer experience.
Every hotel will get reviewed by the most customer about their emotions it
includes some positive and some negative reviews. To analyse these reviews
every hotel most focused on the customer reviews only. This sentimental analysis
more helps in finding the performance of their business organisation or hotels. It
includes every aspect of the hotel from cleaning to food serving. Customer
attraction is the key factor in tourism sector by providing healthy environment to
their customers.
Sentimental analysis is much used technique in this sector to get easy results and
identifying the problems. It is easy to implement.
#Conclusions:
Sentimental analysis is a study of people’s sentiments, emotions and attitudes
towards the products or any other business organisations performance. Thai
tourist accommodation dataset is used to extract the emotions of the customers
from various hotels. Sentence level and review level categorization have been
performed using word cloud package in R programming. Using the sentimental
analysis converted the text data into vectors data to understand by the machine
learning model using Corpus.
#References:
[1]. W. Gao and F. Sebastiani, „„Tweet sentiment: From classification to quantification,‟‟ in
Proc. IEEE/ACM Int. Conf. Adv. Social Netw. Anal. Mining (ASONAM), Aug. 2015, pp. 97–
104.
[2]. J. M. Soler, F. Cuartero, and M. Roblizo, „„Twitter as a tool for predicting elections
results,‟‟ in Proc. IEEE/ACM Int. Conf. Adv. Social Netw. Anal. Mining (ASONAM), Aug.
2012, pp. 1194–1200.
