/// @description Insert description here
// You can write your code in this editor
if (newGame == false){
	if (obj__gameController.cursorState == "ready"){
		hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
	}

	if (hovering && mouse_check_button(mb_left)){
		clicked = true;
	}
	else{
		clicked = false;	
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

	if (hovering && mouse_check_button_released(mb_left)){
		queueEvent(id, action_name, false);
	}
}