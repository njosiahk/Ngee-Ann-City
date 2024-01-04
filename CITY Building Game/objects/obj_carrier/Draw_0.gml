/// @description Insert description here
// You can write your code in this editor

var marg = 64
var lsidebarx = x - (sprite_width*0.9 + marg)
var rsidebarx = x + sprite_width + marg
var ltextx = lsidebarx + sprite_width*0.45
var sidebary = y + sprite_height/10
var sidebarxscale = (sprite_width*0.9)/sprite_get_width(spr_interface)
var sidebaryscale = (sprite_height*0.8)/sprite_get_height(spr_interface)
var ltext = "CONTROLS:"
var rtext = "There are 5 types of buildings:\n\nResidential: If next to an Industry, it scores 1 point only. Otherwise, it scores 1 point for each adjacent Residential or Commercial, and 2 points for each adjacent Park.\n\nIndustry: Scores 1 point per Industry in the City. Each Industry generates 1 coin per Residential adjacent to it.\n\nCommercial: Scores 1 point per Commercial adjacent to it. Each Commercial generates 1 coin per Residential adjacent to it.\n\nPark: Scores 1 point per Park adjacent to it.\n\nRoad: Scores 1 point per adjacent Road in the same horizontal row."
var keyscalex = (sprite_width*0.10)/sprite_get_width(spr_movement)
var wx = lsidebarx + sprite_width*0.45 - (sprite_get_width(spr_movement)/2)*keyscalex
var wy = sidebary + sprite_height*0.2


//draw_text(x,y,string(xbegin)+" "+string(ybegin) )
// tutorial
if !obj_music.setting && room!=Room1
{
draw_self();
draw_sprite_ext(spr_interface,0,lsidebarx,sidebary,sidebarxscale,sidebaryscale,0,c_white,1)
draw_sprite_ext(spr_interface,0,rsidebarx,sidebary,sidebarxscale,sidebaryscale,0,c_white,1)

draw_set_halign(fa_center)
draw_text_ext_transformed(ltextx,sidebary + 20,ltext,32,sprite_width*0.85,2,2,0)
draw_set_halign(fa_left)
draw_text_ext_transformed(rsidebarx + 16,sidebary + 20,rtext,32,sprite_width*0.85,1,1,0)

draw_set_halign(fa_center)
draw_text_ext_transformed(ltextx,sidebary + 100,"MOVE CAMERA",32,sprite_width*0.85,1.75,1.75,0)
draw_set_halign(fa_left)
draw_sprite_ext(spr_movement,0,wx,wy,keyscalex,keyscalex,0,c_white,1)
draw_sprite_ext(spr_movement,1,wx - sprite_width*0.1,wy + sprite_width*0.1,keyscalex,keyscalex,0,c_white,1)
draw_sprite_ext(spr_movement,2,wx,wy + sprite_width*0.1,keyscalex,keyscalex,0,c_white,1)
draw_sprite_ext(spr_movement,3,wx + sprite_width*0.1,wy + sprite_width*0.1,keyscalex,keyscalex,0,c_white,1)

draw_set_halign(fa_center)
draw_text_ext_transformed(ltextx,sidebary + 200 + sprite_width*0.2,"SELECT GREEN TILE",32,sprite_width*0.85,1.75,1.75,0)
draw_set_halign(fa_left)
draw_sprite_ext(spr_lmb,0,wx,wy + sprite_width*0.3 + 40,keyscalex,keyscalex,0,c_white,1)

draw_set_halign(fa_center)
draw_text_ext_transformed(ltextx,sidebary + 315 + sprite_width*0.3,"SELECT BUILDING",32,sprite_width*0.85,1.75,1.75,0)
draw_set_halign(fa_left)
draw_sprite_ext(spr_pick,0,wx - sprite_width*0.1,wy + 225 + sprite_width*0.3,keyscalex,keyscalex,0,c_white,1)
draw_set_halign(fa_center)
draw_text_transformed(ltextx,wy + 205 + sprite_width*0.3,"/",3,3,0)
draw_set_halign(fa_left)
draw_sprite_ext(spr_pick,1,wx + sprite_width*0.1,wy + 225 + sprite_width*0.3,keyscalex,keyscalex,0,c_white,1)
}
else {
draw_sprite_stretched(spr_carrier,image_index,xbegin,ybegin,xend,yend)	
}