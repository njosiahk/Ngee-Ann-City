


//change the room name correctly
if visible && !instance_exists(obj_userinput)
{
	switch (choice)
	{
	case main[0]:
	//start new game

	//put in a script or something
		global.room_from=room
		global.prev_turn=0;
		global.turn=1;
		global.gold=16;
		global.points=0; 
		global.grid =[]
		global.data=noone // saving game array
		var input=instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"keyboard",obj_userinput)
		input.messa="Please enter your username"
		input.action="name"
		break;
	case main[1]://load game
	// go to new room
	global.room_from=room
	room_goto(fileroom)
	break;
	
	case main[2]:
	//Display High Scores
	global.room_from=room
	//
	room_goto(LeaderBoard)
	break;

	case main[3]:
//setting
obj_music.mainroom = 0
obj_carrier.visible = true
	obj_music.setting = true
	break;
	case main[4]:
	game_end()
	break;

	case pause[0]:
	//resume game
	instance_destroy(obj_pause)

	break;
	case pause[1]:
	
	//save game
	global.room_from=room	
	global.saveload = true
	//obj_building.calculate=true
	//global.turn+=1
	save_grid()
	room_goto(fileroom)

	break;
	case pause[2]:
	//load game

	global.room_from=room
	room_goto(fileroom)
	//go to gameroom

	break;
	case pause[3]:
//setting
	obj_music.mainroom = 0
	obj_music.setting = true
	break;
	case pause[4]:
	//end game and retrun to main menu also need to destroy load file if they use
	global.room_from=room
	instance_create_layer(0,0,"Game_layer",obj_submitscore)
	room_goto(LeaderBoard)//go to leaderboard room
	break;
	case pause[5]:
	game_end()
	break;

	case num://have file
	//save if have object then is save

	if ( global.saveload)
	{
		var input=instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"keyboard",obj_userinput)
		input.messa ="Replace filename"
		input.previousname= item
		input.action ="save"
	} 
	else// load the game
	{
		load_game(item)
		global.loadditem=true
		room_goto(test_spawn)
	}
	
	break;


	//back button in saveroom
	case othername[0]: // check how many items in the script
	//go back to mainmenu

		var gt =global.room_from
		global.room_from=room
		room_goto(gt)
	

	break;
	case othername[1]:// no file at all
		// empty save file
		//save if have object then is save
		if ( global.saveload)
		{
			var input= instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"keyboard",obj_userinput)
			input.messa ="Enter File Name (Max 20 Characters)"
			input.action ="save"
		} 

	break;
	case othername[2]:
	obj_carrier.visible = false
	obj_music.setting =false
	obj_music.mainroom = 1
	break;
	case "Back to Menu":
		global.room_from=room
		room_goto(Room1);
	break;
	
	
	}

}

