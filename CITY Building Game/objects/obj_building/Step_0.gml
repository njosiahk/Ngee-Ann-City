//change object_type to whichever building type you want

//CURRENTLY CODE ONLY WORKS IF ORIGIN IS AT TOP LEFT FOR SPRITE
//+-1 coins_perturn and score_perturn in here based on requirement
//add other checks inside directional checks if needed

// if obj_game.turn_start { //only run code at the start of the turn, then disable
	
	if position_meeting(x+1, y-1, object_type) { //checks up

	}

	if position_meeting(x+1, y+obj_game.cell_size+1, object_type) { //checks down

	}

	if position_meeting(x-1, y+1, object_type) { //checks left

	}

	if position_meeting(x+obj_game.cell_size+1, y+1, object_type) { //checks right

	}

//}





