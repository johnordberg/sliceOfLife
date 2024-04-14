/// @description Insert description here
// You can write your code in this editor
if (obj__gameController.cursorState == "ready"){
	hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
}

if (hovering && mouse_check_button_pressed(mb_left)){
	clicked = true;
	obj__gameController.cursorState = "binding";
	displayLabel = "Press any key to assign";
}

if (clicked){
	image_index = 2;	
}
else if (hovering){
	image_index = 1;
}
else{
	image_index = 0;
}

if (clicked){
	if keyboard_check_pressed(vk_anykey){
		boundKey = keyboard_key;
		displayChar = getKeyName(boundKey);
		displayLabel = label;
		obj__gameController.controls[$ target_settings_variable_name] = boundKey;
		obj__gameController.cursorState = "ready";
		clicked = false;
		show_debug_message("Key Assigned to: " + string(boundKey));
	}
}