/*
// Draw sprite
draw_sprite_ext(spr_button, 0, x, y, 1, 1, 0, c_white, image_alpha);
// Explanation: Draw the sprite 'spr_slider' at the specified position (x, y) with a scale of 1 in both X and Y directions, rotation of 0 degrees, and in white color.

// Set drawing values
draw_set_color(c_green);
// Explanation: Set the drawing color.

draw_set_font(global.silver_font);
// Explanation: Set the drawing font to the font resource 'fnt_small'.

draw_set_halign(fa_center);
// Explanation: Set the horizontal alignment for drawing to the center.

draw_set_valign(fa_middle);
// Explanation: Set the vertical alignment for drawing to the middle.

// Draw text
draw_text(x, y, string(percentage));
draw_self()
// Explanation: Draw text at the position (165, y) using the font and alignment settings previously specified.



*/
draw_self()
draw_sprite_ext(spr_slider,image_index,x,y,multi,multi,0,c_white,1)
draw_set_halign(fa_center)

draw_text_ext_transformed(x,y-obj_bar.h/4,string(obj_music.volume),10,obj_bar.h,2.5,2.5,0)
draw_set_halign(fa_left)
