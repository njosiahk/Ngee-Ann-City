
if string_ends_with(item,".txt")
{
	choice=num
}
else
{
	choice=item
}

	if !instance_exists(obj_pause) {

if obj_game.turnbuild {
	image_index = 2;
	if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) {
	
		pressed = true;
		obj_game.turnsetup = true;

		if instance_exists(obj_building) {
			obj_building.calculate = true;
		}
	
	}
}

if pressed {	
	global.turn +=1;
	image_index = 1;
}

	}




