/// @description Insert description here
// You can write your code in this editor
LootLockerInitialize(leaderboardtesting.leaderboardid,"0.0.0.1",true,"Points")
LootLockerSetPlayerName(global.username);
LootLockerSubmitScore("Points", string(global.points));
show_debug_message("submit points")











