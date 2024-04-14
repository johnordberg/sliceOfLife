/// @description Insert description here
// You can write your code in this editor
if (obj__gameController.cursorState == "ready" || obj__gameController.cursorState == "sliding" + string(id)){
	hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
}

if (hovering && mouse_check_button(mb_left)){
	clicked = true;
	obj__gameController.cursorState = "sliding" + string(id);
}
else if (mouse_check_button_released(mb_left)){
	clicked = false;
	obj__gameController.cursorState = "ready";
	obj__gameController.settings[$ settings_category][$ target_settings_variable_name] = sliderValue;
	show_debug_message("Slider Value: " + string(sliderValue));
	
	saveSettings();
}

if (clicked){
	dot_index = 2;	
}
else if (hovering){
	dot_index = 1;
}
else{
	dot_index = 0;
}

if (clicked){
	
	var currentValue = round(((device_mouse_x_to_gui(0) - bbox_left) / (bbox_right - bbox_left)) * 100);
	if (currentValue < min_value){
		currentValue = min_value;	
	}
	if (currentValue > max_value){
		currentValue = max_value;	
	}
	
	sliderValue = currentValue;
	
}