/// @description Insert description here
// You can write your code in this editor


logoheight = sprite_get_height(sTitle)
logowidth = sprite_get_width(sTitle)
swidth = sprite_get_width(Blank)
sheight = sprite_get_height(Blank)

linespace = 20
layername = "Pause_layer"
//if the room is not startroom and is pausebutton is presses
roomname = room_get_name(room)
//placeholder for escape key
if (roomname != room_get_name(Room1)){
buttonname=Pausemenu()
menutype = "pause"

}
//else if room is startroom
else{
buttonname=Mainmenu()
menutype = "Main"

}
draw =true
//cameraX = camera_get_view_width(view_camera[0]) - swidth - 


logoXstart=(camera_get_view_width(view_camera[0]) - logowidth )/ 2;
startX = (camera_get_view_width(view_camera[0]) - swidth )/ 2;
// to be changed for the scroll code

// height of camera minus the height 

