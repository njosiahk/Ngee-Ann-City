var _Asprite = obj_game.buildSpriteA;
var _Bsprite = obj_game.buildSpriteB;

//text information
turnnum = "Turn: "+string(global.turn);
gold = "Gold: "+string(global.gold);
curr_score = "Score: "+string(global.points);
//prevturn = "Prev Turn: "+string(global.prev_turn); //remove in end prod
//optiona = "A: " + object_get_name(obj_game.buildingA); //remove in end prod
//optionb = "B: " + object_get_name(obj_game.buildingB); //remove in end prod

text = turnnum+"\n"+curr_score+"\n"+gold;//"\n"+prevturn++"\n"+optiona+"\n"+optionb;

//draw interface "backboard"
draw_sprite_ext(spr_interface,0,interface_x,interface_y,interfaceXscale,interfaceYscale,0,c_white,1);

//options' variables
#region //blah blah stuff
var _Aspritex = interface_x + camW/2 - sprite_get_width(_Asprite)/2 - option_difference;
var _Bspritex = interface_x + camW/2 - sprite_get_width(_Bsprite)/2 + option_difference;
var _optY = interface_y+(interface_height*0.2);
var _optfont_wantsize = 36;
var _optfootfont_wantsize = 54;
var _statfont_wantsize = 64;
var _font_currsize = string_height("hello world");
var _statfont_scale = _statfont_wantsize/_font_currsize;
var _optfont_scale = _optfont_wantsize/_font_currsize
var _optfootfont_scale = _optfootfont_wantsize/_font_currsize
var _Aoptx = _Aspritex + (sprite_get_width(_Asprite)/2);
var _Boptx = _Bspritex + (sprite_get_width(_Bsprite)/2);
var _optheady = interface_y+(interface_height*0.11);
var _optfooty = interface_y+(interface_height*0.8);
#endregion

#region //draw middle segment

//draw A frame
draw_sprite(spr_frame,0,_Aspritex-4, _optY-4);
//draw option A
draw_sprite(_Asprite,0,_Aspritex,_optY);
//write "option A"
#region
draw_set_halign(fa_center);	
draw_set_valign(fa_middle);
draw_text_transformed(_Aoptx, _optheady, "Option A", _optfont_scale, _optfont_scale, 0); //header
draw_text_transformed(_Aoptx, _optfooty, obj_game.buildAname, _optfootfont_scale, _optfootfont_scale, 0); //footer
draw_set_halign(fa_left);
draw_set_valign(fa_top);
#endregion
//show option button A
draw_sprite_ext(spr_pickA, spr_img_index, interface_x + (camW*0.35), _optY, 5, 5, 0, c_white, 1);
//draw B frame
draw_sprite(spr_frame,0,_Bspritex-4, _optY-4);
//draw option B
draw_sprite(_Bsprite,0,_Bspritex,_optY);
//write "option B"
#region
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(_Boptx, _optheady, "Option B", _optfont_scale, _optfont_scale, 0); //header
draw_text_transformed(_Boptx, _optfooty, obj_game.buildBname, _optfootfont_scale, _optfootfont_scale, 0); //footer
draw_set_halign(fa_left);
draw_set_valign(fa_top);
#endregion
//show option button B
draw_sprite_ext(spr_pickB, spr_img_index, interface_x + (camW*0.65), _optY, 5, 5, 0, c_white, 1);
spr_img_index+=new_image_speed;
if spr_img_index >= 3
{
	spr_img_index = 0;	
}
#endregion

//draw stats variables
var _statX = interface_x + (camW*0.05);
var _statY = interface_y + (interface_height/2);

//draw stats (refine)
draw_set_valign(fa_middle);
draw_text_transformed(_statX,_statY,text,_statfont_scale,_statfont_scale,0);
draw_set_valign(fa_top);
