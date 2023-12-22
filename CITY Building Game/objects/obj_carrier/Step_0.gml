//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

//center on player
if instance_exists( obj_mover )
{
	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_height/2));
}
if instance_exists(obj_pause)
{
	visible=true
}
else 
{
	visible = false
}





















































