
var buttonname = Pausemenu();
var numberloops = array_length(buttonname);

visible = false
for (var i =0;i<numberloops;++i)
	{
	
		var obj = instance_create_depth(x,y+(i*obj_buttonmaker.sheight),(layer_get_depth("Pause_layer")-10),obj_buttonparent)
		y += obj_buttonmaker.linespace //WARNING (MIGHT BREAK WHEN CLAMPED)

		obj.item =buttonname[i]

		obj.pause=Pausemenu()
		obj.main = Mainmenu()
		//show_message(array_length(arry))
		obj.save= searchfiles()
		obj.othername=otherbuttons()
		obj.num = i

	}

