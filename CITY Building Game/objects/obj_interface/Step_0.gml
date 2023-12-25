
interface_x = x - interface_x_offset;
interface_y = y + interface_y_offset;

//center on player

/*if instance_exists( obj_mover )
{
	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_height/2));
}
*/
if instance_exists( obj_turnbutton )
{
	obj_turnbutton.x = (interface_x + obj_turnbutton.buttonXoffset);
	obj_turnbutton.y = (interface_y + obj_turnbutton.buttonYoffset);
}



































