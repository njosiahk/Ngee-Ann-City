
if instance_exists(obj_mover)
{
	x= obj_mover.x+(segmentwidth*obj_music.volume)-(obj_bar.w/2)
	y= obj_bar.y+sprite_height/2
}
else
{
	y=camera_get_view_height(view_camera[0])/2

}

var leftpress = mouse_check_button(mb_left)

if leftpress &&(position_meeting(mouse_x,mouse_y,id)||position_meeting(mouse_x,mouse_y,obj_bar))
{
	show_debug_message(string(position_meeting(mouse_x,mouse_y,id)))
	x=mouse_x
	x=clamp(x,obj_bar.x,obj_bar.x+obj_bar.w)
		//segement counting
		
		number = round((x-obj_bar.x)/segmentwidth)
		
	
	//set the volume
	obj_music.volume = number//number 0-10
}
