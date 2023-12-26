/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
turn="\nTurn "+string((global.turn+1))
text =item+turn
if (item != ""){
	if (select != "" )
		{
			draw_text(x,y,select)
			x+=string_width(select)
		}
		draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext(x + sprite_width/2,y + sprite_height/2 + font_get_size(global.silver_font)/4,text,nextlinesp,linewidth)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	x-=string_width(select)

}
