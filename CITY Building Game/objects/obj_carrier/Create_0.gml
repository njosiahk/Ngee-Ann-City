//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

buttonname = Pausemenu();
numberloops = array_length(buttonname);
buttonarray=[]
if instance_exists( obj_mover )
{
	x = (obj_mover.x-(sprite_width/2));
	y = (obj_mover.y-(sprite_height/2));
}
else
{
	
	x = (camW/2-(sprite_width/2));
	y = (camH/2-(sprite_height/2)-100);
}


if room != Room1
{
for (var i =0;i<numberloops;++i)
	{
	
		var obj = instance_create_depth(x,y+(i*(obj_buttonmaker.sheight-obj_buttonmaker.linespace)),(layer_get_depth("Pause_layer")-10),obj_buttonparent)
		//y += obj_buttonmaker.linespace //WARNING (MIGHT BREAK WHEN CLAMPED)

		obj.item =buttonname[i]

		obj.pause=Pausemenu()
		obj.main = Mainmenu()
		//show_message(array_length(arry))
		obj.save= searchfiles()
		obj.othername=otherbuttons()
		obj.num = i
		array_push(buttonarray,obj)

	}

}

visible = false
xbegin=x
ybegin=y

xend = sprite_width
yend = sprite_height+100



barx=camW/4;
bary=y+50;
bar = instance_create_depth(barx,bary,(layer_get_depth("Pause_layer")-200),obj_bar)

sliderx =0// percentage of the current volume
slider = instance_create_depth(sliderx,bary,(layer_get_depth("Pause_layer")-225),obj_slider)

returnbut = instance_create_depth(camW/2-sprite_get_width(spr_button)/2,camH/4*3,(layer_get_depth("Pause_layer")-200),obj_buttonparent)
//y += obj_buttonmaker.linespace //WARNING (MIGHT BREAK WHEN CLAMPED)

returnbut.item ="Exit Settings"

returnbut.pause=Pausemenu()
returnbut.main = Mainmenu()
//show_message(array_length(arry))
returnbut.save= searchfiles()
returnbut.othername=otherbuttons()

instance_deactivate_object(returnbut)
instance_deactivate_object(bar)
instance_deactivate_object(slider)
//obj_music.mainmenubut