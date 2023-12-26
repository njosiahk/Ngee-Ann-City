/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_enter) && action == "save"
{
	name=keyboard_string
	save_game(name,previousname)
	// end game or go to main menu
	global.saveload=false
	//show_debug_message(string(instance_exists(obj_saveloader))+"check 2 "+room_get_name(room))
	room_goto(Room1)
	instance_destroy()
}
if keyboard_check_pressed(vk_enter) && action == "name"
{
	global.username = keyboard_string
	room_goto_next();
	instance_destroy()
}