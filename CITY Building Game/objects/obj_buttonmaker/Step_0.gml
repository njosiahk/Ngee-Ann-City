/// @description Insert description here
// You can write your code in this editor
startX = (camera_get_view_width(view_camera[0]) - swidth )/ 2;
startY = (camera_get_view_height(view_camera[0]) - sheight*array_length(buttonname))/2;


if keyboard_check_pressed(vk_escape) && menutype == "pause" //check for object that ddeactivates all objects
{
	if  !instance_exists(obj_pause)
	{
	
	instance_create_layer(0,0,"Instances",obj_pause)
	}
	else
	{
		instance_destroy(obj_pause)
	}

}
if room == LeaderBoard && draw {
	var xvalue = camW/2 - swidth/2// value for button
	var yvalue = camH*0.75// y value for button
	var obj=instance_create_depth(xvalue,yvalue,-2000,obj_buttonparent)
	obj.pause=Pausemenu()
	obj.main = Mainmenu()
	obj.save= searchfiles()
	obj.othername=otherbuttons()
	obj.item = "Back to Menu"// item added into list in menuscript
	obj.num = ""
	draw = false;
}
if (draw){
	if (menutype=="Main")
	{
		startY = ((startY*2)-linespace-logoheight)/2
		var logo= instance_create_layer(logoXstart,startY,layername,obj_title)
		var carrier = instance_create_depth(x, y,layer_get_depth(layername)-100, obj_carrier);
		startY +=logoheight+linespace
	}

	//code for background in menu for pause
	var numberloops = array_length(buttonname)
	if(menutype == "saved")&&global.saveload
	{
		numberloops = 4// so that there is always 4 slots no matter what
	}
	
	if (menutype == "pause") {
	
		var carrier = instance_create_layer(x, y, layername, obj_carrier);
	
	}
	else {
		if numberloops > 0
		{
			for (var i =0;i<numberloops;++i)
			{
		
				var obj=instance_create_layer(startX,startY+(i*sheight),layername,obj_buttonparent)
				startY +=linespace
				if (i >= array_length(buttonname))// what the name should be when there is no file
				{
					obj.item="Free Save Slot"
				}
				else
				{
					obj.item =buttonname[i]
				}
				obj.pause=Pausemenu()
				obj.main = Mainmenu()
				//show_message(array_length(arry))
				obj.save= searchfiles()
				obj.othername=otherbuttons()
				obj.num = i
			}
			drawtext = false
		}
		else 
		{
			drawtext = true
		}
	}
	if (menutype == "saved")
	{
		//back button
		
		var xvalue=(camera_get_view_width(view_camera[0]) - logowidth )/ 5//x value for button
		var yvalue = (camera_get_view_height(view_camera[0]) - logowidth )/ 5// y value for button
		var obj=instance_create_layer(xvalue,yvalue,layername,obj_buttonparent)
		obj.pause=Pausemenu()
		obj.main = Mainmenu()
		obj.save= searchfiles()
		obj.othername=otherbuttons()
		obj.item = obj.othername[0]// item added into list in menuscript
		obj.typ="back"
		obj.num = ""
	}
/*	if (menutype=="pause")
	{
			instance_deactivate_layer("Pause_layer")
	}*/
draw=false
}

