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


//know whene the turn ends
if turncreated != global.turn
{
	//var buildinglist = [obj_comm,obj_road,obj_park,obj_ind,obj_res]
	var scoreadd = 0
	var totalscore = 0
	var my_dslist=ds_list_create()
	//what to do when turn ends
	if (self.object_index == obj_comm)
	{
		//check foursides building type and put in array
		//using loop do math for the coins
	var buildinglist = [obj_comm,obj_res]
		
	}
	if (self.object_index == obj_ind)
	{	
		//show_message(object_get_name(self.object_index))// return obj_ind
	
	
	var buildinglist = [obj_res] // what to look out for
	scoreadd = 1 // because each industry produces 1 gold
	
	
	}
	if (self.object_index == obj_park)
	{
		var buildinglist = [obj_park]
	}
	if (self.object_index == obj_res)
	{
		var buildinglist = [obj_ind,obj_comm,obj_res,obj_park]
	}
	if (self.object_index == obj_road)
	{
		//road calculation
		var buildinglist = [obj_road]// need to think what to do when 
	}
	var numbercollision=collision_rectangle_list(x-1,y-1,x+obj_game.cell_size+1,y+obj_game.cell_size+1,buildinglist,false,true,my_dslist,true)//0-4
	if (self.object_index == obj_res)
	{
		for (var i = 0;i<ds_list_size(my_dslist);i++)
		{
			var current_item = ds_list_find_value(my_dslist,i)
			var o = object_get_name(current_item.object_index)
			// show_message(string(o))
			if o != obj_ind
			{
				if o == obj_comm or obj_res
				{
					scoreadd = 1
				}
				else if o == obj_park
				{
					scoreadd = 2
				}
			}
			else
			{
				totalscore = 1
			}
		}
	}

	scoreadd += numbercollision
	totalscore += scoreadd
	
	ds_list_clear(my_dslist)
	global.points += totalscore
	turncreated=global.turn // to stop looping the function
}