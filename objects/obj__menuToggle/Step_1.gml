/// @description Insert description here
// You can write your code in this editor
if (obj__gameController.cursorState == "ready"){
	hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
}

if (hovering && mouse_check_button_pressed(mb_left)){
	clicked = true;
}
else{
	clicked = false;	
}

if (hovering){
	toggleIndex = 1;
}
else{
	if (toggleValue){
		toggleIndex = 2;
	}
	else{
		toggleIndex = 0;
	}
}

if (clicked){
	if (toggleValue){
		toggleValue = false;
		toggle_target = toggle_false_position;
		display_value = "Off";
	}
	else{
		toggleValue = true;
		toggle_target = toggle_true_position;
		display_value = "On";
	}
	obj__gameController.settings[$ settings_category][$ target_settings_variable_name] = toggleValue;
	
	saveSettings();
}

toggle_position = lerp(toggle_position, toggle_target, .4);
