event_inherited()

var _cell_offset = obj_game.cell_size/2

if position_meeting(x+obj_game.cell_size+1, y+1, obj_road) { //checks right
	
	//add road
	draw_sprite_ext(spr_road_connect,image_index,x+_cell_offset,y+_cell_offset,image_xscale,image_yscale,0,image_blend,image_alpha);
	
	}
	
if position_meeting(x+1, y+obj_game.cell_size+1, obj_road) { //checks down

	//add road
	draw_sprite_ext(spr_road_connect,image_index,x+_cell_offset,y+_cell_offset,image_xscale,image_yscale,270,image_blend,image_alpha);

	}



