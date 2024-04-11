/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(font__menuButtonFont);
draw_text(bbox_left, y - 28, label);

var dotXPosition = (((sliderValue / 100) * (bbox_right - bbox_left)) + bbox_left);
draw_sprite_ext(spr__mainMenuSliderDot, dot_index, dotXPosition, y, 1, 1, 0, c_white, 1);