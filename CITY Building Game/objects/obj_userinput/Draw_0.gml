/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_keyboard,-1,x-camwidth/2,y-camheight/2,camwidth,camheight)

draw_set_halign(fa_center)
draw_text_ext(x,y-sprheight/3,messa+"\n"+keyboard_string,lineheight,camheight)
//draw_text(x,y-sprheight/3,messa)

//draw_text(x,y-sprheight/3+lineheight,keyboard_string)
draw_set_halign(fa_left)
