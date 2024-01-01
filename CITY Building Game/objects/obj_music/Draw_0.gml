// Display the current volume on the screen
// Draw red background
draw_set_color(c_red);
draw_rectangle(0, 0, 200, 60, false);

// Display the current volume on the screen
draw_set_color(c_white);
draw_text(10, 10, "Volume: " + string(volume));


