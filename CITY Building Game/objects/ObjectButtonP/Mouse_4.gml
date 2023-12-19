/// @description Insert description here
// You can write your code in this editor

//for now there is 8 items so far starting with main
switch (item)
{
case main[0]:
//start new game
	room_goto_next();
	global.turn=1
	global.gold=16
	global.points=0 // to be placed in obj_game
	break;
case main[1]:
//Display High Scores

break;
case main[2]:
load_game()
//go to gameroom

break;
case main[3]:
game_end()
break;

case pause[0]:
//resume game
instance_destroy(ObjectPause)

break;
case pause[1]:
save_game()
room_goto(Intro_0_MainMenu)

break;
case pause[2]:
load_game()
//go to gameroom

break;
case pause[3]:
game_end()
break;


}



