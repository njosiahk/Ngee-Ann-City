//variable settings

var _leaderboard_W = sprite_width*leaderboardXscale;
var _leaderboard_H = sprite_height*leaderboardYscale;
var _leaderboard_boardx = camW/2 - (_leaderboard_W/2);
var _leaderboard_boardy = camH/2 - (_leaderboard_H/2);
var _header_x = _leaderboard_boardx + (_leaderboard_W/2);
var _header_xscale = 2.5;
var _header_yscale = 2.5;
var _frame_W = _leaderboard_W * 0.8;
var _frame_H = _leaderboard_H * 0.6;
var _frame_x = _leaderboard_boardx + (_leaderboard_W/2) - (_frame_W/2);
var _frame_y = _leaderboard_boardy + (font_get_size(global.silver_font) * _header_yscale) + margin *1.5;
var _boardtext_rankx = _frame_x + margin; //left
var _boardtext_namex = _frame_x + _frame_W/2; //middle
var _boardtext_scorex = _frame_x + _frame_W - margin; //right
var _boardtext_y = _frame_y + margin/4;

if loaded {

	///////////////////////draw backboard
	draw_sprite_ext(spr_interface,0,_leaderboard_boardx, _leaderboard_boardy, leaderboardXscale, leaderboardYscale, 0, c_white, 1);

	///////////////////////draw title
	draw_set_halign(fa_center);
	draw_text_transformed(_header_x, _leaderboard_boardy + margin, "Top 10", _header_xscale, _header_yscale, 0);
	draw_set_halign(fa_left);

	///////////////////////draw frame
	draw_sprite_ext(spr_interface,0,_frame_x, _frame_y, _frame_W/sprite_width, _frame_H/sprite_height, 0, c_white, 1);

	///////////////////////draw leaderboard
	//draw rank

	for (var i = 0; i <= 9; i++) {

		draw_text_transformed(_boardtext_rankx, _boardtext_y + ((font_get_size(global.silver_font)+ margin/1.75)*i), leader_rank[i] + ".", 1.675, 1.675, 0);
	
		draw_set_halign(fa_center);
		draw_text_transformed(_boardtext_namex, _boardtext_y + ((font_get_size(global.silver_font)+ margin/1.75)*i), leader_name[i], 1.675, 1.675, 0);
		draw_set_halign(fa_left);
	
		draw_set_halign(fa_right);
		draw_text_transformed(_boardtext_scorex, _boardtext_y + ((font_get_size(global.silver_font)+ margin/1.75)*i), leader_score[i], 1.675, 1.675, 0);
		draw_set_halign(fa_left);
	
	}
}
else {
	
	var loadtext = "|||LOADING|||"
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(camW/2, camH/2, loadtext, 8, 8, 0)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left);
}
#region //show current stats

if global.username != "" &&loaded{
	//show_message(current_rank);
	draw_text_transformed(_boardtext_rankx, _frame_y + _frame_H + margin/1.75, current_rank , 1.675, 1.675, 0);
	//show_message(current_name);
	draw_set_halign(fa_center);
	draw_text_transformed(_boardtext_namex, _frame_y + _frame_H + margin/1.75, current_name, 1.675, 1.675, 0);
	draw_set_halign(fa_left);
	//show_message(current_score);
	draw_set_halign(fa_right);
	draw_text_transformed(_boardtext_scorex, _frame_y + _frame_H + margin/1.75, current_score, 1.675, 1.675, 0);
	draw_set_halign(fa_left);
}

#endregion