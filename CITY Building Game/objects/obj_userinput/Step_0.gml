/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_enter) && action == "save"
{
	name=keyboard_string
	save_game(name,previousname)
	// end game or go to main menu
	game_end()
}
if keyboard_check_pressed(vk_enter) && action == "name"
{
	global.username = keyboard_string
	room_goto_next();
	instance_destroy()
}