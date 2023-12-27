/// @description Insert description here
// You can write your code in this editor
//get camera width and height
	camW = camera_get_view_width(view_camera[0]);
	camH = camera_get_view_height(view_camera[0]);
// setting variable
if !variable_global_exists("saveload")
{
	global.saveload=false
}
if !variable_global_exists("room_from")
{
		global.room_from=room
}
if !variable_global_exists("prev_turn")
{
		global.prev_turn=0;
}
if !variable_global_exists("turn")
{
		global.turn=1;
}
if !variable_global_exists("gold")
{
		global.gold=16;
}
if !variable_global_exists("points")
{
		global.points=0;
}
if !variable_global_exists("grid")
{
		global.grid =[]
}
if !variable_global_exists("username")
{
	if file_exists("getheusernameoftheworldplaceholddder.txt")
	{
		getusername()
	}
	else
	{
		global.username=""
	}
}
//show_debug_log(true)
/////////////////////////////////////////////////
logoheight = sprite_get_height(spr_title)
logowidth = sprite_get_width(spr_title)
swidth = sprite_get_width(spr_button)
sheight = sprite_get_height(spr_button)

linespace = 20
layername = "Pause_layer"
//if the room is not startroom and is pausebutton is presses
roomname = room_get_name(room)
//placeholder for escape key
if (roomname == room_get_name(Room1)){
buttonname=Mainmenu()
menutype = "Main"

}
else if (roomname == room_get_name(fileroom))
{
	menutype = "saved"
	buttonname = searchfiles()// array for saved files
}
//else if room is startroom

else{
buttonname=Pausemenu()
menutype = "pause"

}
draw =true
//cameraX = camera_get_view_width(view_camera[0]) - swidth - 


logoXstart=(camera_get_view_width(view_camera[0]) - logowidth )/ 2;

drawtext=false

