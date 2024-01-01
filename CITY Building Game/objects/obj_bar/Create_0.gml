// Calculate leftLimit before using it
leftLimit = x - (sprite_get_width(spr_button) / 2) + 30;

// Calculate rightLimit using the updated leftLimit
rightLimit = x + (sprite_get_width(spr_button) / 2) - 30;

// Create the slider for this bar and assign it some values
a = instance_create(x, y, obj_slider);
a.image_xscale = l; // Set the horizontal scale of the slider sprite
a.image_yscale = l; // Set the vertical scale of the slider sprite
a.barLength = sprite_get_width(spr_button); // Assign the width of the slider sprite to the 'barLength' variable
a.rightLimit = rightLimit; // Set the right limit of the slider
a.leftLimit = leftLimit; // Set the left limit of the slider
a.percentage = 100; // Initialize the percentage value to 100%

// Calculate its current x value using the above percentage value
a.x = a.leftLimit + (a.percentage / 100) * (a.rightLimit - a.leftLimit); // Calculate the initial x position of the slider based on the percentage
a.clicked = false; // Initialize the 'clicked' variable to false, indicating the slider is not clicked






