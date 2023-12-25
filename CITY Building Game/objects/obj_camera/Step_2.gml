//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

//center on player
/*if instance_exists( obj_mover )
{
	x = obj_mover.x - camW/2;
	y = obj_mover.y - camH/2;
}
*/
//clamp camera to room borders
x = clamp(x, 0, room_width - camW);
y = clamp(y, 0, room_height - camH + obj_interface.interface_height);

//set camera pos
camera_set_view_pos( view_camera[0], x, y);






