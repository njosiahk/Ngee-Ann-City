
//text information
Turnnumber = "Turn: "+string(global.turn);
prevturn = "Prev Turn: "+string(global.prev_turn); //remove in end prod
gold = "Gold: "+string(global.gold);
scores = "points: "+string(global.points);
optiona = "A: " //+ string(obj_game.buildingA); //remove in end prod
optionb = "B: " //+ string(obj_game.buildingB); //remove in end prod
text = Turnnumber+"\n"+prevturn+"\n"+gold+"\n"+scores+"\n"+optiona+"\n"+optionb;

//draw interface "backboard"
draw_sprite_ext(spr_interface,0,interface_x,interface_y,interfaceXscale,interfaceYscale,0,c_white,1);

//draw options

draw_text_transformed_color(interface_x,interface_y,text,2,2,0,c_red,c_red,c_red,c_red,1);

