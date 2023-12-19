/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
turn="\nTurn "+string((global.turn+1))
text =item+turn
if (item != ""){
	if (select != "" )
		{
			draw_text(x,y,select)
			x+=string_width(select)
		}
	draw_text_ext(x,y,text,nextlinesp,linewidth)
	x-=string_width(select)

}
