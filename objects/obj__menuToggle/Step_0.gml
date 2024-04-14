/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj__menuBorder)){
	yOffset = obj__menuBorder.yOffset;
	y = initialY + yOffset;
	
	xOffset = obj__menuBorder.xOffset;
	x = initialX + xOffset;
	
	toggle_false_position = bbox_left + 8;
	toggle_true_position = bbox_right - 8;
	
	if (toggle_position < toggle_false_position){
		toggle_position = toggle_false_position;
		if (toggleValue){
			toggle_position = toggle_true_position;
		}
		toggle_target = toggle_position;
	}
}