function save_grid()
{
	global.data=[] // saving game array
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
	
	
	
	var _string =json_stringify(_struct);// convert to a json standard formatting
	var filename =  _filename+".txt";
	var _file = file_text_open_write(filename);
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

	var _file = file_text_open_read(_filename)
	var _json = file_text_read_string(_file);
	var _struct = json_parse(_json);// convert back to struct format
	global.turn = _struct.turn;
	global.points = _struct.point;
	global.gold= _struct.gold;
	global.data= _struct.buildings;
	global.username=_struct.username;
		
	file_text_close(_file);
	
}
function searchfiles()
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

		
		// get the directory str = the directory
		var files =[]
		var dirfind = str + "*.txt"
		var filename = file_find_first(dirfind, fa_directory);//filename of saved file
		
		while (filename != "")
		{
			array_push(files,filename)
			//show_message(filename)
			filename = file_find_next();
		}
		file_find_close()
	 return files
}

