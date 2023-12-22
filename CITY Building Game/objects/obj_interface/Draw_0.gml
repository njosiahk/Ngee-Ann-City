/// @description Insert description here
// You can write your code in this editor


Turnnumber = "Turn: "+string(global.turn);
prevturn = "Prev Turn: "+string(global.prev_turn);
gold = "Gold: "+string(global.gold);
scores = "points: "+string(global.points);
optiona = "A: " + string(obj_game.optionA);
optionb = "B: " + string(obj_game.optionB);
text = Turnnumber+"\n"+prevturn+"\n"+gold+"\n"+scores+"\n"+optiona+"\n"+optionb;

draw_text_color(x,y,text,c_red,c_red,c_red,c_red,1);

