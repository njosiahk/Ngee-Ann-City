if (global.turn != global.prev_turn) { //do new turn stuff
	
	if turnsetup {
	obj_turnbutton.pressed = false; //no longer pressed, new turn
	global.prev_turn = global.turn-1; //update previous turn
	turnbuild = false;
	
	//generate the 2 building choices
	optionA = irandom_range(0,4);
	optionB = irandom_range(0,4);
	
	//if option a or b are same as previous
	while (optionA == prevA || optionA == prevB || optionB == prevA || optionB == prevB || optionA == optionB) {
		optionA = irandom_range(0,4);
		optionB = irandom_range(0,4);
	}
	
	//assign actual building
	buildingA = build_array[optionA];
	buildingB = build_array[optionB];
	
	//assign name for building A
	switch (buildingA) {
		case obj_res:
			buildAname = "Residential";
		break;
		
		case obj_ind:
			buildAname = "Industry";
		break;
		
		case obj_comm:
			buildAname = "Commercial";
		break;
		
		case obj_park:
			buildAname = "Park";
		break;
		
		case obj_road:
			buildAname = "Road";
		break;
	}
	
	//assign name for building B
	switch (buildingB) {
		case obj_res:
			buildBname = "Residential";
		break;
		
		case obj_ind:
			buildBname = "Industry";
		break;
		
		case obj_comm:
			buildBname = "Commercial";
		break;
		
		case obj_park:
			buildBname = "Park";
		break;
		
		case obj_road:
			buildBname = "Road";
		break;
	}
	
	buildSpriteA = object_get_sprite(buildingA); //get sprite names
	buildSpriteB = object_get_sprite(buildingB); //get sprite names
	
	//record new previous choices
	prevA=optionA;
	prevB=optionB;
	
	turnsetup = false; //end setup
	}
	
}







