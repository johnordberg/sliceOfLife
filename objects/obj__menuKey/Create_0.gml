/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 0;
active = false;
hovering = false;
clicked = false;
uiElement = true;

yOffset = 0;
xOffset = 0;
initialY = y;
initialX = x;


boundKey = obj__gameController.settings[$ settings_category][$ target_settings_variable_name];

displayChar = getKeyName(boundKey);
displayLabel = label;