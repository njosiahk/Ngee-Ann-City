/// @description Insert description here
// You can write your code in this editor

if (draw){
	if (menutype=="Main")
	{
		var logo= instance_create_layer(startX,startY,0,oTitle)
		
		startY +=logoheight+linespace
	}
for (var i =0;i<array_length(buttonname);++i)
{
	var obj=instance_create_layer(startX,startY+(i*sheight),0,ObjectButtonP)
	startY +=linespace
	obj.item =	buttonname[i]
	obj.pause=Pausemenu()
	obj.main = Mainmenu()

}
draw=false
}

