

//center on player
if instance_exists( obj_mover )
{
	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_height/2));
}
if instance_exists(obj_pause)
{
	visible=true
	if obj_music.pausecreate > obj_music.pausedestroy
	{
			for( var ins =0 ; ins<array_length(buttonarray);ins++)
			{
				instance_activate_object(buttonarray[ins])
			}

	}
}

else if !instance_exists(obj_pause)&& room !=Room1
{
	visible = false
}
if obj_music.pausecreate==obj_music.pausedestroy
{
	xbegin=x
	xend = sprite_width
	obj_music.setting =false
	instance_deactivate_object(bar)
	instance_deactivate_object(slider)
}
if obj_music.setting 
{	
	if instance_exists(obj_pause)
	{
		for( var ins =0 ; ins<array_length(buttonarray);ins++)
		{
			instance_deactivate_object(buttonarray[ins])
		}
	}
	//setting the carrier
	xbegin = camW/4
	xend = camW/2
	instance_activate_object(bar)
	instance_activate_object(slider)
	
	// create the nameinput and edit button i guess
}



















































