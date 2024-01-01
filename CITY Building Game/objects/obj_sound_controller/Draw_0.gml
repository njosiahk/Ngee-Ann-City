// Set the font for drawing text
draw_set_font(fnt_small);

// Set the horizontal alignment for drawing text to left
draw_set_halign(fa_left);

// Set the color for drawing text to SXGAMESLIME
draw_set_colour(c_green);

// Draw text at position (x, y) displaying "Music percentage: " followed by the percentage from obj_slider
draw_text(x, y, "Music percentage: " + string(obj_slider.percentage));

// Draw text at position (x, y+25) displaying "Music gain: " followed by the gain value from audig_soundget_gain
draw_text(x, y+25, "Music gain: " + string(audig_soundget_gain()));





