/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_keyboard,-1,x-camwidth/2,y-camheight/2,camwidth,camheight)
/*actionx=
actiony=
resx=
resy=*/
draw_set_halign(fa_center)
draw_text(x,y-sprheight/3,messa)

draw_text(x,y-sprheight/3+lineheight,keyboard_string)
draw_set_halign(fa_left)