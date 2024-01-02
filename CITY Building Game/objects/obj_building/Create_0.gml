object_type = object_index; //gets the current object's type

score_perturn = 0; //increase/decrease this in step
coins_perturn = 0; //increase/decrease this in step
build_cost = 1; //coins cost to build
global.gold -= build_cost
calculate = false;

rad = (sprite_get_height(spr_cell)+1)/2//folow cell size

circlexx=x-1 //cause  of original x and y very important
circlexx2 = x+obj_game.cell_size+1
circleyy=y-1
circleyy2 = y+obj_game.cell_size+1

savecal =false
//show_debug_log(true)