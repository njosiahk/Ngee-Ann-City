
grid_width = 20;
grid_height = 20;
cell_size = 128;

total_cells = grid_width * grid_height;
cells_built = 0;

setup=true
turnsetup = true;
turnbuild = false;
if !variable_global_exists("loadditem")
{
	global.loadditem = false
}
load= global.loadditem
global.grid=[]
//building options
build_array = [obj_res, obj_ind, obj_comm, obj_park, obj_road]; 

prevA = noone;
prevB = noone;
optionA = noone;
optionB = noone;
buildingA = noone;
buildingB = noone;
buildSpriteA = noone;
buildSpriteB = noone;
buildAname = noone;
buildBname = noone;

//Calculate the needed space for grid

var _grid_width = grid_width * cell_size;
var _grid_height = grid_height * cell_size;

//Set a margin around for grid

margin = 128; //pixels

//set new room parameters

room_width = _grid_width + (margin * 2);
room_height	= _grid_height + (margin * 2);























