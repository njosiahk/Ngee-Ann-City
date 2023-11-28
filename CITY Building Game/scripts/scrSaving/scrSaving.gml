function save_game()
{
	global.chosenfile="CityGame.txt"// variable used to chose which saves    Name
	// will only have 2 saved files for now named "CityGame.txt" and "Saved1.txt"
	

	
	var _struct =
	{
		//the data to be saved (example)
		hunger: global.hunger // key and value
		
	};
	
	
	
	var _string =json_stringify(_struct);// convert to a json standard formatting
	var filename =  global.chosenfile;
	var _file = file_text_open_write(filename);
	file_text_write_string(_file,_string); // save the _struct in the file in text format
	file_text_close(_file);
	
	//ini_open("godwhere.bob")
	//ini_write_real("save slots","Staff",global.hunger);
	//ini_write_string("testing1","pls help me","where is this whereee...")
	//ini_close()
}

function load_game()
{
	//global.choosing is the name of the file that you want to load
	filethere = false
	var _file;
	if (file_exists("CityGame.txt")&& global.choosing=="CityGame.txt" )
	{
		_file = file_text_open_read("CityGame.text");
		filethere =true
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
		global.hunger = _struct.hunger;
		
		file_text_close(_file);
	}
	
}