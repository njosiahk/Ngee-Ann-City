// Draw sprite
draw_sprite_ext(spr_button, 0, x, y, 1, 1, 0, c_white, image_alpha);
// Explanation: Draw the sprite 'spr_slider' at the specified position (x, y) with a scale of 1 in both X and Y directions, rotation of 0 degrees, and in white color.

// Set drawing values
draw_set_color(c_green);
// Explanation: Set the drawing color.

draw_set_font(fnt_small);
// Explanation: Set the drawing font to the font resource 'fnt_small'.

draw_set_halign(fa_center);
// Explanation: Set the horizontal alignment for drawing to the center.

draw_set_valign(fa_middle);
// Explanation: Set the vertical alignment for drawing to the middle.

// Draw text
draw_text(165, y, string(percentage));
// Explanation: Draw text at the position (165, y) using the font and alignment settings previously specified.



