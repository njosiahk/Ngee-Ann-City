//call leaderboard
LootLockerInitialize("dev_72a7ef59872d4d0c86ba2c43d7ed5eb1","0.0.0.1",false,"19364");

//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

leaderboardXscale = (camera_get_view_width(view_camera[0])*0.6)/sprite_get_width(spr_interface);
leaderboardYscale = (camera_get_view_height(view_camera[0])*0.75)/sprite_get_height(spr_interface);

//interface_height = interfaceYscale * sprite_height;

margin = 24;
leaderboard_x = 0;

leaderboard_x_offset = (camW/2 - sprite_width/2);
leaderboard_y_offset = (camH/2 - sprite_height/2);

loaded = false;

current_rank = ""
current_name = ""
current_score = ""

