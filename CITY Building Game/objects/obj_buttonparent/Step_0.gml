/// @description Insert description here
// You can write your code in this editor


if string_ends_with(item,".txt")
{
	choice=num
}
else
{
	choice=item
}

//center on player



for (var i = 0; i < array_length(pausearray); i++) {
	
	if instance_exists( obj_mover ) && (item == pausearray[i]) {

	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_height)-(sprite_height/2)*(array_length(pausearray)-i)+obj_buttonmaker.linespace+sprite_height*i);
		if instance_exists(obj_pause)
		{
			visible = true
		}
		else
		{
			visible = false
		}
	}

}