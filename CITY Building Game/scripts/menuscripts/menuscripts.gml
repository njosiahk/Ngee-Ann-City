function save_game(_filename)//filename is string and gameobjs is an array
{

	

	
	var _struct =
	{
		//the data to be saved (example) // key and value
		turn: global.turn,
		point: global.points,
		gold: global.gold,
		buildings: global.data
	};
	
	
	
	var _string =json_stringify(_struct);// convert to a json standard formatting
	var filename =  _filename+".txt";
	var _file = file_text_open_write(filename);
	file_text_write_string(_file,_string); // save the _struct in the file in text format
	file_text_close(_file);
	

}

function load_game(_filename)
{
	//rework everything here
	
	filethere = false
	global.chosenfile="CityGame.txt"
	global.choosing ="CityGame.txt"
	var _file;
	if (file_exists("CityGame.txt")&& global.choosing=="CityGame.txt" )
	{
		_file = file_text_open_read("CityGame.txt");
		filethere =true
		show_message("citygame is there")
	}
	else if (file_exists("Saved1.txt")&& global.choosing = "Saved1.txt")
	{
		_file = file_text_open_read("Saved1.txt")
		filethere =true
	}
	else 
	{
		exit
	}
	if (filethere)
	{
		//testing (example)
		var _json = file_text_read_string(_file);
		var _struct = json_parse(_json);// convert back to struct format
		global.turn = _struct.turn;
		
		file_text_close(_file);
	}
	
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

