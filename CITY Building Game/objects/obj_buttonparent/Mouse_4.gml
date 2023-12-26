


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
		var input=instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"keyboard",obj_userinput)
		input.messa="Please enter your username"
		input.action="name"
		break;
	case main[1]:
	//Display High Scores
	global.room_from=room
	//
	
	room_goto(LeaderBoard)


	break;
	case main[2]://load game
	// go to new room
	global.room_from=room
	room_goto(fileroom)


	break;
	case main[3]:
	game_end()
	break;

	case pause[0]:
	//resume game
	instance_destroy(obj_pause)

	break;
	case pause[1]:
	
	//save game
	global.room_from=room

	//room_instance_add(fileroom,0,0,obj_saveloader)
	
	global.saveload = true
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
	//end game and retrun to main menu also need to destroy load file if they use
	global.room_from=room
	instance_create_layer(0,0,"Game_layer",obj_submitscore)
	
	
	room_goto(Room1)//go to leaderboard room
	break;
	case pause[4]:
	game_end()
	break;

	case num://have file
	//save if have object then is save
	if ( global.saveload)
	{
		//show_debug_message(string(instance_exists(obj_saveloader))+" check 1 "+ room_get_name(room))
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
	if global.room_from != noone
	{
		var gt =global.room_from
		global.room_from=room
		room_goto(gt)
	}

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
		else// load the game
		{
			
		}
	break;
	}

}

