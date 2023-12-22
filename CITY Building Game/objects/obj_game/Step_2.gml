if (global.turn != global.prev_turn) { //do new turn stuff
	
	if turnsetup {
	obj_turnbutton.pressed = false; //no longer pressed, new turn
	global.prev_turn = global.turn-1; //update previous turn
	turnbuild = false;
	
	//generate the 2 building choices
	optionA = irandom_range(0,4);
	optionB = irandom_range(0,4);
	
	//if option a or b are same as previous
	while (optionA == prevA || optionA == prevB || optionB == prevA || optionB == prevB || optionA == optionB) 
	{
		optionA = irandom_range(0,4);
		optionB = irandom_range(0,4);
	}
	//record new previous choices
	prevA=optionA;
	prevB=optionB;
	
	turnsetup = false; //end setup
	}
	
}







