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
if (draw){
	if (menutype=="Main")
	{
		startY = ((startY*2)-linespace-logoheight)/2
		var logo= instance_create_layer(logoXstart,startY,layername,obj_title)
		
		startY +=logoheight+linespace
	}

	//code for background in menu for pause
	var numberloops = array_length(buttonname)
	if(menutype == "saved")
	{
		numberloops = 4// so that there is always 4 slots no matter what
	}
	
if (menutype == "pause") {
	
	var carrier = instance_create_layer(x, y, layername, obj_carrier);
	
}
else {
	for (var i =0;i<numberloops;++i)
	{
	
		var obj=instance_create_layer(startX,startY+(i*sheight),layername,obj_buttonparent)
		startY +=linespace
		if (i >= array_length(buttonname))// what the name should be when there is no file
		{
			//var slotnum = i+1     // need further research for the what it do in objectbutton
			//obj.item = "save slot "+string(slotnum)
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
}
	if (menutype == "saved")
	{
		//back button
		var xvalue=(camera_get_view_width(view_camera[0]) - logowidth )/ 5//x value for button
		var yvalue = (camera_get_view_height(view_camera[0]) - logowidth )/ 5// y value for button
		var obj=instance_create_layer(xvalue,yvalue,layername,obj_buttonparent)
		obj.item ="back to mainmenu" // item added into list in menuscript
		obj.pause=Pausemenu()
		obj.main = Mainmenu()
		obj.save= searchfiles()
		obj.othername=otherbuttons()
		obj.num = i
	}
//	if (menutype=="pause")
//	{
//		instance_deactivate_layer("Pause_layer")
//	}
draw=false
}

