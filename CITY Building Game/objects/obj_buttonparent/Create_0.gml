/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;

item = ""
select = ""
choice =""
num=noone
nextlinesp = 25
linewidth = sprite_get_width(spr_button)



pausearray = Pausemenu();
// make pause button not seen
for (var i = 0; i<array_length(pausearray);i++)
{
	if item == pausearray[i]
	{
		visible =false
	}
}
