//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

//clamp camera to room borders
x = clamp(x, 0, room_width - camW);
y = clamp(y, 0, room_height - camH);

//set camera pos
camera_set_view_pos( view_camera[0], x, y);






