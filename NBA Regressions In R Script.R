# Import libraries 
library(caTools)
library(reshape2)
library(tidyverse)

# 1. Performing OLS Regression on the NBA Data

# Import NBA data into R
NBA = read.csv("Resources/NBA_Data_R.csv")

# See the structure of the datafiles
str(NBA)

# Look a selection of our data
head(NBA)

# Get a summary of the data
summary(NBA)

# Setting up out seed function for building models
set.seed(125)

# Dividing our data into training and test data. Setting the data division to 75% training/25% test
data_split = sample.split(NBA, SplitRatio = 0.75)
train <- subset(NBA, data_split == TRUE)
test <-subset(NBA, data_split == FALSE)

# Implement out linear modeling 
model <- lm(home_team_wins ~ season + pts_home + fg_pct_home + ft_pct_home + fg3_pct_home + ast_home + reb_home + pts_away + fg_pct_away + ft_pct_away + fg3_pct_away + ast_away + reb_away + fgm + pf + pts + fga + fg_pct + fg3m + fg3a + fg3_pct + ftm + fta + ft_pct + oreb + dreb + reb + ast + stl + blk + tos + pf, data = train)

# Get a summary of our model 
summary(model)

# 2. Performing a correlation matrix using our NBA data

# Prepare the data for making the correlation matrix

NBA = read.csv("Resources/NBA_Data_R.csv")

# Look at the head of the data 
head(NBA)

# Compute the correlation matrix 
cormat <- round(cor(NBA),2)
head(cormat)

# Create the correlation matrix by melting data
melted_cormat <- melt(cormat)
head(melted_cormat)

# Form the matrix using ggplot
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

# Melt the correlation matrix
library(reshape2)
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
library(ggplot2)
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

reorder_cormat <- function(cormat){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat)/2)
  hc <- hclust(dd)
  cormat <-cormat[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat <- reorder_cormat(cormat)
upper_tri <- get_upper_tri(cormat)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)


# 3. Performing OLS Regression on the Games Data

Games = read.csv("Resources/games_clean.csv")

# See the structure of the datafiles
str(Games)

# Look a selection of our data
head(Games)

# Get a summary of the data
summary(Games)

# Setting up out seed function for building models
set.seed(125)

# Dividing our data into training and test data. Setting the data division to 75% training/25% test
data_split2 = sample.split(Games, SplitRatio = 0.75)
train2 <- subset(Games, data_split2 == TRUE)
test2 <-subset(Games, data_split2 == FALSE)

# Implement out linear modeling 
model2 <- lm(HOME_TEAM_WINS ~ FG_PCT_home + FT_PCT_home + FG3_PCT_home + AST_home + REB_home + FG_PCT_away + FT_PCT_away + FG3_PCT_away + AST_away + REB_away, data = train2)

# Get a summary of our model 
summary(model2)

# 4. Performing a correlation matrix using our Games data

# Prepare the data for making the correlation matrix

Games = read.csv("Resources/games_clean.csv")

# Look at the head of the data 
head(Games)

# Compute the correlation matrix 
cormat2 <- round(cor(Games),2)
head(cormat2)

# Create the correlation matrix by melting data
melted_cormat2 <- melt(cormat2)
head(melted_cormat2)

# Form the matrix using ggplot
ggplot(data = melted_cormat2, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

# Get lower triangle of the correlation matrix
get_lower_tri2<-function(cormat2){
  cormat2[upper.tri(cormat2)] <- NA
  return(cormat2)
}
# Get upper triangle of the correlation matrix
get_upper_tri2 <- function(cormat2){
  cormat2[lower.tri(cormat2)]<- NA
  return(cormat2)
}

upper_tri2 <- get_upper_tri2(cormat2)
upper_tri2

# Melt the correlation matrix
melted_cormat2 <- melt(upper_tri2, na.rm = TRUE)
# Heatmap
library(ggplot2)
ggplot(data = melted_cormat2, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

reorder_cormat2 <- function(cormat2){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat2)/2)
  hc <- hclust(dd)
  cormat2 <-cormat2[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat2 <- reorder_cormat2(cormat2)
upper_tri2 <- get_upper_tri2(cormat2)
# Melt the correlation matrix
melted_cormat2 <- melt(upper_tri2, na.rm = TRUE)
# Create a ggheatmap
ggheatmap2 <- ggplot(melted_cormat2, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap2)




