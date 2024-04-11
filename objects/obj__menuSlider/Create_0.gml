/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 0;
active = false;
hovering = false;
clicked = false;
uiElement = true;

x = obj__gameController.viewData.view_width / 2;
yOffset = 0;
initialY = y;

sliderValue = obj__gameController.settings[$ target_settings_variable_name];
dot_index = 0;