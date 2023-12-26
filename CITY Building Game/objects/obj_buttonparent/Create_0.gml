/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;

item = ""
select = ""
choice =""
num=noone
nextlinesp = 38
linewidth = sprite_get_width(spr_button)

global.silver_font = font_add("Silver.ttf", 32, false, false, 32, 128);
draw_set_font(global.silver_font);
font_enable_sdf(global.silver_font,true);

pausearray = Pausemenu();
// make pause button not seen
for (var i = 0; i<array_length(pausearray);i++)
{
	if item == pausearray[i]
	{
		visible =false
	}
}
