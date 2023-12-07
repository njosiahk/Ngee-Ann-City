/// @description Insert description here
// You can write your code in this editor


//if the room is not startroom and is pausebutton is presses
buttonname=Pausemenu()

//else if room is startroom
buttonname=Mainmenu()



draw =true

swidth = sprite_get_width(Blank)
sheight = sprite_get_height(Blank)
startX=x
startY=y
linespace = 20
startX = (camera_get_view_width(view_camera[0]) - swidth )/ 2;
// to be changed

startY =(camera_get_view_height(view_camera[0]) - sheight )/ 2;