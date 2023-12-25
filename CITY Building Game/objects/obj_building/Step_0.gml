//change object_type to whichever building type you want

//CURRENTLY CODE ONLY WORKS IF ORIGIN IS AT TOP LEFT FOR SPRITE
//+-1 coins_perturn and score_perturn in here based on requirement
//add other checks inside directional checks if needed

// if obj_game.turn_start { //only run code at the start of the turn, then disable
	
	if position_meeting(x+1, y-1, object_type) { //checks up

	}

	if position_meeting(x+1, y+obj_game.cell_size+1, object_type) { //checks down

	}

	if position_meeting(x-1, y+1, object_type) { //checks left

	}

	if position_meeting(x+obj_game.cell_size+1, y+1, object_type) { //checks right

	}

//}
circlex=circlexx //cause  of original x and y very important
circlex2 = circlexx2
circley=circleyy
circley2 =circleyy2
//know whene the turn ends
if calculate {
	//var buildinglist = [obj_comm,obj_road,obj_park,obj_ind,obj_res]
	var scoreadd = 0
	var gold =0
	var my_dslist=ds_list_create()
	//what to do when turn ends
	if (self.object_index == obj_comm)
	{
		//check foursides building type and put in array
		//using loop do math for the coins
	var buildinglist = [obj_comm,obj_res]
		
	}
	else if (self.object_index == obj_ind)
	{	
		//show_message(object_get_name(self.object_index))// return obj_ind
	

	var buildinglist = [obj_res] // what to look out for
	scoreadd = 1 // because each industry produces 1 gold
	
	
	}
	else if (self.object_index == obj_park)
	{
		var buildinglist = [obj_park]
	}
	else if (self.object_index == obj_res)
	{
		var buildinglist = [obj_ind,obj_comm,obj_res,obj_park]
	}
	else if (self.object_index == obj_road)
	{
		//road calculation
		var buildinglist = [obj_road]// need to think what to do when  
		circley +=1;
		circley2 += -10;
	}
	//3 by 3 grids
	//var numbercollision=collision_rectangle_list(x-1,y-1,x+obj_game.cell_size+1,y+obj_game.cell_size+1,buildinglist,false,true,my_dslist,true)//0-4
	//cross grid
	var numbercollision=collision_ellipse_list(circlex,circley,circlex2,circley2,buildinglist,true,true,my_dslist,true)//0-4
	if (self.object_index == obj_ind)
	{
		gold = numbercollision
	}
	else if (self.object_index == obj_comm)
	{
		for (var i = 0;i<ds_list_size(my_dslist);i++)
		{
			var current_item = ds_list_find_value(my_dslist,i)
			var o = current_item.object_index
			if o == obj_res
			{
				gold +=1
			}
			else if o == obj_comm
			{
				scoreadd +=1
			}
		}
	}
	/*show_debug_message(id)
	show_debug_message("x points "+string(circlex)+" "+string(circlex2))
	show_debug_message("y points "+string(circley)+" "+string(circley2))
	show_debug_message("    ")
	show_debug_message(numbercollision)
	for (var i = 0;i<ds_list_size(my_dslist);i++)
	{
		var current_item = ds_list_find_value(my_dslist,i)
		show_debug_message("hit "+string(current_item.id))
	}
	show_debug_message("    ")
	*/
	else if (self.object_index == obj_res)
	{
		
		for (var i = 0;i<ds_list_size(my_dslist);i++)
		{
			var current_item = ds_list_find_value(my_dslist,i)
			var o = current_item.object_index//object name....obj_road
			//show_debug_message(object_get_name(current_item.object_index))
			//show_debug_message(string(o))
			if o == obj_ind// positon matters
			{
				scoreadd = 1
				i=ds_list_size(my_dslist)//break loop (somehow break not working)
				//show_debug_message("ind")
				//show_debug_message("ind "+string(scoreadd))
				break;

			}
			else
			{
				if o == obj_park
				{
					scoreadd += 2
					//show_debug_message("parktrue")
				}
				else
				{
					scoreadd += 1
					//show_debug_message("otherstru")
				}
			}
			//show_debug_message(string(scoreadd))
			
		}
		//show_message(string(scoreadd))
	}
	else
	{
	scoreadd += numbercollision
	}
	ds_list_clear(my_dslist)
	global.points += scoreadd
	global.gold += gold
	calculate = false; // to stop looping the function
}





