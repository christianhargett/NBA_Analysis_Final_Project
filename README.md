# NBA_Analysis_Final_Project

## Team Members: Shaun Stewart & Christian Hargett

# Selected Topic: 
•	Examining the different variables of the NBA and determining which have the most effect on winning.

# Reason why topic was selected: 
•	There are a lot of interesting things to be pulled from the vast amount of data that the NBA has for their players and teams. In some ways, understanding the dynamics in which a   team is more poised to win or to lose in critical in variety of situations would be very helpful. This could be anything from winning a simple argument with friend about “Does     defense actually win championships or does offensive stats matter more?” to who is the opportune player to pick up off of the waiver wire in Fantasy Sports. I think there is       rise for some interesting outputs to come from looking at this dataset. 

# Description of source of data:
•	 For our project, we have utilized a couple of datafiles from Kaggle that have been scrapped directly from the stats.nba.com website. We have also ensured that our data files and the different variables that are within can be tied back to the naming from the NBA API. Below are links to both the data files on Kaggle, as well as, the NBA API information that we used to check. 
### API:
-    https://rapidapi.com/api-sports/api/api-nba/details <br>
-    https://pypi.org/project/nba-api/ <br>

### Kaggle:
-    https://www.kaggle.com/nathanlauga/nba-games

# Questions that we hope to answer with the data:
•	Based on the data that we’ve seen from the past in relation to the NBA, we believe that we might be able to answer the following questions: <br>
    - What is the biggest factor for wins in the NBA? <br>
    - Is there a particular position that accounts for the most wins in the NBA? <br>
    - What factors can we use and accurately predict player usage and win chances? <br>

# Machine Learning Model:

## Modeling in Python
•	For our project, we will have several different models based on the questions that we are hoping to answer: 

### SVC Model <br>
  ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/SVC%20Model%20-%20ML%20Modeling.png)
### Logistic Regression <br>
  ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/Logistic%20Regression%20-%20ML%20Modeling.png)
### Random Forest <br>
  ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/Random%20Forest%20-%20ML%20Modeling.png)
### Easy Ensemble AdaBoost Classifier <br>
  ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/EA%20Classifier%20-%20ML%20Modeling.png)

## Modeling in R 
•	Multiple linear regressions and correlations were done in R <br>
-	Multiple linear regressions of Games Data <br>
    ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/Games%20Model%20-%20Multiple%20Regression.png)
-	Correlation Matrix of Games Data <br>
    ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/Games_Heatmap.png) <br>
-	Multiple linear regressions of total NBA Data <br>
    ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/All%20Data%20Model%20-%20Multiple%20Regression.png)
-	Correlation of Entire Dataset <br>
    ![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/NBA%20Data%20Heatmap.png)
  

# Dashboard: <br>
•	Through Tableau we were able to perform some additional, high-level exploratory analysis on teams' FG, FG3, and FT percentages. The below visualizations depict teams' averages in the aforementioned statistics when they win versus when they lose while playing at home. The graphed averages in the below visuals have been taken across all seasons in the dataset (2003-2019). In the Tableau Public provided below these visuals, you can filter by team and by season as well:

### FG PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FG%20PCTs%20Wins%20vs.%20Losses.png)
•	In this visualization we can tell that there is a noticeable difference in teams' average FG% when they win versus when they lose. Across all teams and seasons, teams average about 38% from the field in games that they win and about 31% in games that they lose. This is a relatively large variance, indicating that this data point will be an important feature when building a machine learning model.

### FG3 PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FG3%20PCTs%20Wins%20vs.%20Losses.png)
•	Similar to the previous graphic, this visualization indicates a noticeable difference in teams average FG3% when they win versus win they lose. Across all teams and seasons, teams average about 48% from three in games that they win and about 43% in games that they lose. This data point will also be an important feature when building a machine learning model.

### FT PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FT%20PCTs%20Wins%20vs%20Losses.png)
•	Interestingly enough, there is not a noticeable difference in teams' FT% when they win versus when they lose. No matter the outcome of the game, teams generally make around 75% of their free throws. This feature will likely not be as important in predicting wins in our machine learning model.


•	Tableau Vizzes: https://public.tableau.com/profile/christian.hargett#!/vizhome/NBA_Final_Project_16085049213070/FGPCTsWinsvs_Losses  (cycle through worksheets in the Metadata)

•	Current presentation of our project: https://docs.google.com/presentation/d/12ejlmgQIRVO0LbfAsxKkh3drddwy_zq03CxWQu24zEw/edit?usp=sharing
