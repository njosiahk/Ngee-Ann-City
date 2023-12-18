//change object_type to whichever building type you want

//CURRENTLY CODE ONLY WORKS IF ORIGIN IS AT TOP LEFT FOR SPRITE
//+-1 coins_perturn and score_perturn in here based on requirement
//add other checks inside directional checks if needed

// if obj_game.turn_start { //only run code at the start of the turn, then disable
	
	if position_meeting(x+1, y-1, obj_road) { //checks up
	
	//nothing
	
	}

	if position_meeting(x+1, y+obj_game.cell_size+1, obj_road) { //checks down

	//add road

	}

	if position_meeting(x-1, y+1, obj_road) { //checks left (row)
	
	if !calculated {
		score_perturn+=1; //add score
	}
	
	//nothing else
	
	}

	if position_meeting(x+obj_game.cell_size+1, y+1, obj_road) { //checks right (row)
	
	if !calculated {
		score_perturn+=1; //add score
	}

	}

//}