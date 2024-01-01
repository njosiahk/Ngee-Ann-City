//get camera width and height
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);

buttonname = Pausemenu();
numberloops = array_length(buttonname);
buttonarray=[]



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
else
{
	
	x = (camW/2-(sprite_width/2));
	y = (camH/2-(sprite_height/2));
}
visible = false
xbegin=x
ybegin=y
xend = sprite_width
yend = sprite_height+100

barx=camW/4;
bary=y+50;
bar = instance_create_depth(barx,bary,(layer_get_depth("Pause_layer")-20),obj_bar)

sliderx =0// percentage of the current volume
slider = instance_create_depth(sliderx,bary,(layer_get_depth("Pause_layer")-25),obj_slider)
instance_deactivate_object(bar)
instance_deactivate_object(slider)