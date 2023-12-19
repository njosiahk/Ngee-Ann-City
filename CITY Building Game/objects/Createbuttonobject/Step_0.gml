/// @description Insert description here
// You can write your code in this editor

startY =(camera_get_view_height(view_camera[0]) -sheight*array_length(buttonname))/2;


if keyboard_check_pressed(vk_escape) && menutype == "pause" //check for object that ddeactivates all objects
{
	if  !instance_exists(ObjectPause)
	{
	
	instance_create_layer(0,0,"Instances",ObjectPause)
	}
	else
	{
		instance_destroy(ObjectPause)
	}

}
if (draw){
	if (menutype=="Main")
	{
		startY = ((startY*2)-linespace-logoheight)/2
		var logo= instance_create_layer(logoXstart,startY,layername,oTitle)
		
		startY +=logoheight+linespace
	}

	//code for background in menu for pause
for (var i =0;i<array_length(buttonname);++i)
{
	
	var obj=instance_create_layer(startX,startY+(i*sheight),layername,ObjectButtonP)
	startY +=linespace
	obj.item =buttonname[i]
	obj.pause=Pausemenu()
	obj.main = Mainmenu()

}
	if (menutype=="pause")
	{
		instance_deactivate_layer("Pause_layer")
	}
draw=false
}

