# NBA_Analysis_Final_Project

## Team Members: Shaun Stewart & Christian Hargett

•	Current presentation of our project: https://docs.google.com/presentation/d/12ejlmgQIRVO0LbfAsxKkh3drddwy_zq03CxWQu24zEw/edit?usp=sharing

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
    
# Dashboard: <br>

•	Through Tableau we were able to perform some high-level exploratory analysis on teams' FG, FG3, and FT percentages as well as individual player performance. The below visualizations depict different analyses of the aforementioned categories from our dataset.

### Home Team Wins by Player
![](https://github.com/Stewartsl17/NBA_Analysis_Final_Project/blob/main/Images/Home%20Team%20Wins%20By%20Player%20-%20Tableau.png)
•	In this visualization, we can observe the collection of players in our dataset based on the amount of wins that they have. When utilzing the filter on the right, we can see that only about 20 players in our dataset have more than 700 wins. When we scale up to 800 wins, only four players remain visible. Given the longevity of some players, the names that make the latest stages are not overtly suprising.

### Player Points and Home Team Wins
![](https://github.com/Stewartsl17/NBA_Analysis_Final_Project/blob/main/Images/Pts%20and%20Home%20Team%20Wins%20-%20Tableau.png)
•	In this visualization, we have shown a single data point for each player which showcases the amount of points that individual players have amassed over their time in the leagues. Similarly, when using the filter on the right, you can see that as you get to higher amounts of wins, the players tend to have higher amounts of points as well.

### FG PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FG%20PCTs%20Wins%20vs.%20Losses.png)
•	In this visualization we can tell that there is a noticeable difference in teams' average FG% when they win versus when they lose. Across all teams and seasons, teams average about 38% from the field in games that they win and about 31% in games that they lose. This is a relatively large variance, indicating that this data point will be an important feature when building a machine learning model.

### FG3 PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FG3%20PCTs%20Wins%20vs.%20Losses.png)
•	Similar to the previous graphic, this visualization indicates a noticeable difference in teams average FG3% when they win versus win they lose. Across all teams and seasons, teams average about 48% from three in games that they win and about 43% in games that they lose. This data point will also be an important feature when building a machine learning model.

### FT PCTs Wins vs. Losses
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Images/FT%20PCTs%20Wins%20vs%20Losses.png)
•	Interestingly enough, there is not a noticeable difference in teams' FT% when they win versus when they lose. No matter the outcome of the game, teams generally make around 75% of their free throws. This feature will likely not be as important in predicting wins in our machine learning model.

### Turnovers By Player By City
![](https://github.com/Stewartsl17/NBA_Analysis_Final_Project/blob/main/Images/Turnovers%20by%20Player%20and%20City%20-%20Tableau.png)
•	In order to look at the some of the negative aspects that may hinder winning, we also looked turnovers by player. Each of the small boxes represent one of the NBA teams and cities. We can see that for most of the more long-standing teams have accumulated more players with higher amounts of turnovers.

### Points vs Turnovers By Player
![](https://github.com/Stewartsl17/NBA_Analysis_Final_Project/blob/main/Images/Pts%20vs%20TO%20-%20Tableau.png)
•	After plotting turnovers by player and by city, we also wanted to be able to look at the typical conversion rate (Pts per TO) for each individual player in the NBA. For each player, we have average points, average turnovers, and average pts per turnover.

### Player Stats
![](https://github.com/christianhargett/NBA_Analysis_Final_Project/blob/main/Player%20Stats.png)
•	In our Player Stats dashboard we wanted to look at general offensive statistics for individual players. In this dashboard we are able to look at players with the most points as well as most three-pointers made. These visualizations can be filtered by season and by player. We were interested in these data points to get a general sense of how superstar players perform and how that might affect the total wins for a particular team.

### Tableau Visualizations:
#### https://public.tableau.com/profile/christian.hargett#!/vizhome/NBA_Final_Project_16085049213070/FGPCTsWinsvs_Losses  (cycle through worksheets in the Metadata)
#### https://public.tableau.com/profile/shaun.stewart8125#!/vizhome/NBA_Analysis_Final_Project/MLModels (cycle through worksheets in the Metadata)

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
  
  •	Overall we were able to achieve accuracy scores of 82-83%, with the Logistic Regression model leading the pack in the accuracy measure. Our next steps will be to test this model with data from the 2021 season when we are able to gather more data.
