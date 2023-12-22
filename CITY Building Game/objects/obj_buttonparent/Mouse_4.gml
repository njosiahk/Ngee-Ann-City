


//change the room name correctly
if visible
{
	switch (choice)
	{
	case main[0]:
	//start new game
		global.room_from=room
		global.prev_turn=0;
		global.turn=1;
		global.gold=16;
		global.points=0; // to be placed in obj_game
		global.grid =[]
		room_goto_next();
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
	
	//save game
	global.room_from=room
	var saveload = obj_saveloader
	room_instance_add(fileroom,0,0,obj_saveloader)
	global.data = []
	for (var i =0;i<array_length(global.grid);i++)
	{
		array_push(global.data,object_get_name(global.grid[i].object_index))
	}
	
	
	room_goto(fileroom)

	break;
	case pause[2]:
	//load game
	global.room_from=room

	
	room_goto(fileroom)
	//go to gameroom

	break;
	case pause[3]:
	game_end()
	break;

	case num://have file
	//save if have object then is save
	if ( instance_exists(obj_saveloader))
	{
		instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"keyboard",obj_userinput)
	} 
	else// load the game
	{
		
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

	break;
	}

}

