/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_mover)
{
	//y=obj_mover.y-sprite_height/2-obj_carrier.yend/2+50
	y=obj_mover.y
	x=obj_mover.x-sprite_width/2
}
else 
{
	y=obj_carrier.camH/2
}