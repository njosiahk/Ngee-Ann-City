


//change the room name correctly
switch (choice)
{
case main[0]:
//start new game
	global.room_from=room
	room_goto_next();
	global.prev_turn=0;
	global.turn=1;
	global.gold=16;
	global.points=0; // to be placed in obj_game
	break;
case main[1]:
//Display High Scores



break;
case main[2]://load game
// go to new room
global.room_from=room
room_goto(fileroom)
// array of saved games name

//load_game()
//go to gameroom

break;
case main[3]:
game_end()
break;

case pause[0]:
//resume game
instance_destroy(obj_pause)

break;
case pause[1]:
save_game()
global.room_from=room
room_goto(Intro_0_MainMenu)

break;
case pause[2]:
global.room_from=room
room_goto(fileroom)
//go to gameroom

break;
case pause[3]:
game_end()
break;

case num:
//
break;


//back button in saveroom
case othername[0]: // check how many items in the script
//go back to mainmenu
if global.room_from != noone
{
	var gt =global.room_from
	global.room_from=room
	room_goto(gt)
}

break;
case othername[1]:
// empty save load
//need to differentiate what to do of load and save
break;
}



