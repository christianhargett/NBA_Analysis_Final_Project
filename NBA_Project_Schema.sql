-- Creating tables for NBA Project Analysis

-- 1. creating games tables for our games.csv file 
CREATE TABLE games (
	GAME_ID VARCHAR(10) NOT NULL,
	SEASON VARCHAR(5) NOT NULL,
	TEAM_ID_home VARCHAR(10) NOT NULL,
	PTS_home REAL NOT NULL,
	FG_PCT_home NUMERIC NOT NULL,
	FT_PCT_home NUMERIC NOT NULL,
    FG3_PCT_home NUMERIC NOT NULL,
	AST_home REAL NOT NULL,
	REB_home REAL NOT NULL,
	TEAM_ID_away VARCHAR(10) NOT NULL,
	PTS_away REAL NOT NULL,
	FG_PCT_away NUMERIC NOT NULL,
    FT_PCT_away NUMERIC NOT NULL,
	FG3_PCT_away NUMERIC NOT NULL,
	AST_away REAL NOT NULL,
	REB_away REAL NOT NULL,
    HOME_TEAM_WINS VARCHAR(2) NOT NULL,
	PRIMARY KEY (GAME_ID)
);

-- 2. creating game details tables for our games_details.csv file
CREATE TABLE games_details (
	GAME_ID VARCHAR(10) NOT NULL,
	TEAM_ID VARCHAR(10) NOT NULL,
	TEAM_CITY VARCHAR(40) NOT NULL,
	PLAYER_ID VARCHAR(10) NOT NULL,
	PLAYER_NAME VARCHAR(35) NOT NULL,
	FGM REAL NOT NULL,
	FGA REAL NOT NULL,
	FG_PCT NUMERIC NOT NULL,
	FG3M REAL NOT NULL,
	FG3A REAL NOT NULL,
	FG3_PCT NUMERIC NOT NULL,
	FTM REAL NOT NULL,
	FTA REAL NOT NULL,
	FT_PCT NUMERIC NOT NULL,
	OREB REAL NOT NULL,
	DREB REAL NOT NULL,
	REB REAL NOT NULL,
	AST REAL NOT NULL,
	STL REAL NOT NULL,
	BLK REAL NOT NULL,
    TOS REAL NOT NULL,
	PF REAL NOT NULL,
	PTS REAL NOT NULL,
	FOREIGN KEY (GAME_ID) REFERENCES games (GAME_ID)
);

-- Checking the coulumn headers of each of the new tables
SELECT * FROM games LIMIT 50
SELECT * FROM games_details LIMIT 50

-- Drop tables in order to update fields 
DROP TABLE games; 
DROP TABLE games_details; 
DROP TABLE NBA_Project_Data;

-- Creating the merge between games and games_details datafiles 
SELECT ga.GAME_ID, 
	   ga.SEASON,
	   ga.TEAM_ID_home,
	   ga.PTS_home,
	   ga.FG_PCT_home,
	   ga.FT_PCT_home, 
	   ga.FG3_PCT_home,
	   ga.AST_home,
	   ga.REB_home, 
	   ga.TEAM_ID_away,
	   ga.PTS_away,
	   ga.FG_PCT_away,
	   ga.FT_PCT_away,
	   ga.FG3_PCT_away,
	   ga.AST_away,
	   ga.REB_away,
	   ga.HOME_TEAM_WINS,
	   gd.TEAM_ID,
	   gd.TEAM_CITY,
	   gd.PLAYER_ID,
	   gd.PLAYER_NAME,
	   gd.FGM,
	   gd.FGA,
	   gd.FG_PCT,
	   gd.FG3M,
	   gd.FG3A,
	   gd.FG3_PCT,
	   gd.FTM,
	   gd.FTA,
	   gd.FT_PCT,
	   gd.OREB,
	   gd.DREB,
	   gd.REB,
	   gd.AST,
	   gd.STL,
	   gd.BLK,
	   gd.TOS,
	   gd.PF,
	   gd.PTS
INTO NBA_Project_Data
FROM games AS ga
INNER JOIN games_details AS gd
ON ga.GAME_ID = gd.GAME_ID

-- Looking at the new tables 
SELECT * FROM NBA_Project_Data LIMIT 30



