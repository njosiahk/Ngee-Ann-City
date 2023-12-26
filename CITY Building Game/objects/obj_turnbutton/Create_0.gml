/// @description Insert description here
// You can write your code in this editor

//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

buttonXoffset = camW * 0.775;
buttonYoffset = camH * 0.085;

image_speed = 0;
image_index = 0;
			
item = "Next Turn"
select = ""

silver_font = font_add("Silver.ttf", 32, false, false, 32, 128);
draw_set_font(silver_font);
font_enable_sdf(silver_font,true);

nextlinesp = 38
linewidth = sprite_get_width(spr_button)

pressed = false;
