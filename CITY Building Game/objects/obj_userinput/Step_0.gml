/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_enter) && action == "save"
{
	name=keyboard_string
	save_game(name,previousname)
	// end game or go to main menu
	global.saveload=false
	room_goto(Room1)
	instance_destroy()
}
if keyboard_check_pressed(vk_enter) && action == "name"
{
	global.username = keyboard_string
	saveusername()
	room_goto(test_spawn);
	instance_destroy()
}