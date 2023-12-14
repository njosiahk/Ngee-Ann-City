/// @description Insert description here
// You can write your code in this editor
draw =true

logoheight = sprite_get_height(sTitle)
swidth = sprite_get_width(Blank)
sheight = sprite_get_height(Blank)

linespace = 20

//if the room is not startroom and is pausebutton is presses
buttonname=Pausemenu()
menutype = "pause"
//else if room is startroom
buttonname=Mainmenu()
menutype = "Main"
//cameraX = camera_get_view_width(view_camera[0]) - swidth - 



startX = (camera_get_view_width(view_camera[0]) - swidth )/ 2;
// to be changed

startY =(camera_get_view_height(view_camera[0]) - sheight )/ 2;