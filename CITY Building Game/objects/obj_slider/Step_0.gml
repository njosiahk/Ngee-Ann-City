
//&& position_meeting(mouse_x,mouse_y,id)
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