/// @description Insert description here
// You can write your code in this editor
draw_self();

if (newGame == true){
	draw_set_alpha(.5);
}
else{
	draw_set_alpha(1);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(font__menuButtonFont);

draw_text(x, y, name);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1);