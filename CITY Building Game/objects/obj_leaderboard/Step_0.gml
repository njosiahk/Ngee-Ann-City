//leaderboard = LLHighscoresTopFormatted();
//leader_format = string_replace_all(leaderboard," ", " ");


leader_rank = LLHighscoresTopRankList();
leader_name = LLHighscoresTopNamesList();
leader_score = LLHighscoresTopScoreList();

nospa = LLHighscoresCenteredFormatted()
if nospa !=""
{

	var  arr = string_split(nospa,"\n",true)

	var currentline =""
	for (var i =0;i<=array_length(arr);i++)
	{

		if (global.username!=""&&string_pos(global.username,arr[i]) != 0)
		{
			currentline = arr[i]
			break
		}
	}
	var currlinearr = string_split(currentline," ",true)
	current_rank = currlinearr[0]
	current_name = currlinearr[1]
	current_score =  currlinearr[2]
}