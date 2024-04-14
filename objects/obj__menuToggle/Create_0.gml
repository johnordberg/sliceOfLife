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

toggle_false_position = bbox_left + 8;
toggle_true_position = bbox_right - 8;

toggleIndex = 0;
toggleValue = obj__gameController.settings[$ settings_category][$ target_settings_variable_name];

toggle_position = toggle_false_position;
display_value = "Off";
if (toggleValue){
	toggle_position = toggle_true_position;
	display_value = "On";	
}

toggle_target = toggle_position;