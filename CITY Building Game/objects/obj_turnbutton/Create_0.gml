/// @description Insert description here
// You can write your code in this editor

//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

buttonXoffset = camW * 0.85;
buttonYoffset = camH * 0.085;

image_speed = 0;
image_index = 0;
			
item = "Next Turn"
select = ""

nextlinesp = 25
linewidth = sprite_get_width(spr_button)

pressed = false;
