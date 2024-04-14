/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font__menuButtonFont);
draw_text(bbox_left, y - 28, label);
draw_set_valign(fa_middle);
draw_text(bbox_right + 8, y, display_value);
draw_set_valign(fa_top);

draw_sprite(spr__mainMenuSliderDot, toggleIndex, toggle_position, y);