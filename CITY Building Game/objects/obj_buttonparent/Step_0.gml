/// @description Insert description here
// You can write your code in this editor

if item!=""{
	if string_ends_with(item,".txt")
	{
		choice=num
		itemname = string_replace(item,".txt","")
		
	}
	else 
	{
		choice=item
	}
}
//center on player



for (var i = 0; i < array_length(pausearray); i++) {
	
	if instance_exists( obj_mover ) && (item == pausearray[i]) {

	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_width/3)-(sprite_height/2)*(array_length(pausearray)-i)+obj_buttonmaker.linespace+(sprite_height/1.2)*i);
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

if choice == othername[2]
{
	if instance_exists(obj_mover)
	{
	x=obj_mover.x-sprite_get_width(spr_button)/2
	y=obj_mover.y+(obj_carrier.camH/4)
	}
}