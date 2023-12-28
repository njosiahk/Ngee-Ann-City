function linkleaderboard()
{ // to be called in create event
	var gameid = "dev_72a7ef59872d4d0c86ba2c43d7ed5eb1"
	var version ="0.0.0.1"
	var development = true // development mode or live mode still have no idea the diff need to learn more
	var leaderboardid = "19364"
 return [gameid,version,development,leaderboardid]
}

function save_grid()
{
	global.data=[]
	for (var i =0;i<array_length(global.grid);i++)
	{
		array_push(global.data,object_get_name(global.grid[i].object_index))
	}
}

function save_game(_filename,_previous)//filename is string and gameobjs is an array
{	
	
	var _struct =
	{
		//the data to be saved (example) // key and value
		turn: global.turn,
		point: global.points,
		gold: global.gold,
		buildings: global.data,
		username : global.username
	};
	
	
	var dir = getcurrentworkingdirectory()
	var _string =json_stringify(_struct);// convert to a json standard formatting
	var filename =  _filename+".txt";
	var _file = file_text_open_write(dir+filename);
	//show_message(dir+filename)
	if _previous !=""
	{
		//delete file
		file_delete(_previous)
	}
	file_text_write_string(_file,_string); // save the _struct in the file in text format
	file_text_close(_file);
	

}

function load_game(_filename)
{
	//file_exists checks if file exist
	//file_text_open_read    read the text
	var str = getcurrentworkingdirectory()
	var _file = file_text_open_read(str+_filename)
	var _json = file_text_read_string(_file);
	var _struct = json_parse(_json);// convert back to struct format
	global.turn = _struct.turn;
	global.points = _struct.point;
	global.gold= _struct.gold;
	global.data= _struct.buildings;
	global.username=_struct.username;
		
	file_text_close(_file);
	
}

function saveusername()
{
	var dir = getcurrentworkingdirectory()
	var file = file_text_open_write(dir+"getheusernameoftheworldplaceholddder.txt")
	var _struct =
	{
		username : global.username
	};
	var _string =json_stringify(_struct);
	file_text_write_string(file,_string); // save the _struct in the file in text format
	file_text_close(file);
}
function getusername()
{
	if file_exists(str+"getheusernameoftheworldplaceholddder.txt")
	{
		var str = getcurrentworkingdirectory()
		var _file = file_text_open_read(str+"getheusernameoftheworldplaceholddder.txt")
		var _json = file_text_read_string(_file);
		var _struct = json_parse(_json);
		global.username = _struct.username;
		file_text_close(_file);
	}
}
function searchfiles()
{ 
		var str = getcurrentworkingdirectory()
		// get the directory str = the directory
		var files =[]
		var dirfind = str + "*.txt"
		var filename = file_find_first(dirfind, fa_none);//filename of saved file
		

//		show_debug_message(dirfind)
		
		while (filename != "")
		{
			if filename != "getheusernameoftheworldplaceholddder.txt"
			{
				array_push(files,filename)
				//show_message(filename)
			}
			filename = file_find_next();
		}
		file_find_close()
	 return files
}
function getcurrentworkingdirectory()
{
		var dir = working_directory
		var ar = string_split(dir,"\\")
		var str="";
		for (var i =0;i<array_length(ar)-4;i++)
		{
			str+=ar[i]+"\\"
			//str+=ar[i]+"/"
		}
		
		str+=string(game_project_name)+"\\"
		//var str = program_directory
		//show_message(str)
		//show_message(working_directory)

		return str
		
}

