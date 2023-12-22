if (global.turn != global.prev_turn) { //do new turn stuff
	
	if turnsetup {
	obj_turnbutton.pressed = false; //no longer pressed, new turn
	global.prev_turn = global.turn; //update previous turn
	
	//generate the 2 building choices
	optionA = irandom_range(0,4);
	optionB = irandom_range(0,4);
	//if option a and b are the same
	while optionA == optionB {
	//generate again for option b
		optionB = irandom_range(0,4);
	}

	turnsetup = false; //end setup
	}
	
	if global.turn == 1 { //initial turn code
		
	}
	
	else { //every turn except 1
		
	}
	
}

///////////////////////////////////////////////////////////////////
//start turn in "preparing turn" state, random buildings get selected
//newly available plots are highlighted

//move to "play" state where player can place buildings or press end turn

//move to "end turn" state after button is pressed, score and etc are updated







