
if position_meeting(mouse_x, mouse_y, id){ //check if mouse is on tile
	if (mouse_check_button_pressed(mb_left)) { //select if clicked
		chooseBuild = true;
		image_index = 1; //highlight selected
	}
}
else { //else disable bool
	chooseBuild = false;
	image_index = 0;
}

if (chooseBuild = true) { //if is chosen
	if (keyboard_check_pressed(ord("1"))) { //press 1 to choose building 1
		instance_create_layer(x, y, "Instances", obj_building); //creates building 1
		deactivate = true; //destroy cell later
	}
	else if (keyboard_check_pressed(ord("2"))) {
		instance_create_layer(x, y, "Instances", obj_building2);
		deactivate = true;
	}
}



























