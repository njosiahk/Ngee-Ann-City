


//change the room name correctly
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
case main[2]://load game
// go to new room
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
room_goto(Intro_0_MainMenu)

break;
case pause[2]:
room_goto(fileroom)
//go to gameroom

break;
case pause[3]:
game_end()
break;
////////// need to make a loop so the case is == to how many files
case save[0]:
//load game in the file using load_game()
break;

case save[1]:
//load game in the file
break;

case save[2]:
//load game in the file
break;
/*case save[3]:
//load game in the file
break;*/
//back button in saveroom
case othername[0]: // check how many items in the script
//go back to mainmenu
room_goto(Room1)
break;
case othername[1]:
//need to differentiate what to do of load and save
break;
}



