//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

interface_x = 0;
interface_y = 0;

text_x = 0;
text_y = 0;

interfaceXscale = camera_get_view_width(view_camera[0])/sprite_width;
interfaceYscale = (camera_get_view_height(view_camera[0])/4)/sprite_height;

interface_height = interfaceYscale * sprite_height;

interface_x_offset = (camW/2 - obj_mover.sprite_width/2);
interface_y_offset = (camH/2 + obj_mover.sprite_height/2 - interface_height);

option_difference = 180;

//amend room height to fit interface (FUCKED UP CODE)
//room_height += interface_height;




































