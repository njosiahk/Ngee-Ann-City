/// @description Insert description here
// You can write your code in this editor
gameinfo = linkleaderboard()
LootLockerInitialize(gameinfo[0],gameinfo[1],gameinfo[2],gameinfo[3])
LootLockerSetPlayerName(global.username);

LootLockerSubmitScore("Points", string(global.points));
//show_debug_message("submit points")
// all in an array
Ranklist = LLHighscoresTopRankList()
Namelist = LLHighscoresTopNamesList()
Scorelist= LLHighscoresTopScoreList() 

// current player data important their ddata need to be in the leaderboard
C_rank = LLPlayerRank()
C_Name =LLPlayerName()
C_Score =LLPlayerScore() 
// might need a refresh button

LootLockerReset()









