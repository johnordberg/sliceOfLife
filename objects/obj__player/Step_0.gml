// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var move_x = 0;
var move_y = 0;
var new_x = 0;
var new_y = 0;
	
var move_speed = movementVars.walkSpeed;

if (keyboard_check(controls.right)) {
	move_x += 1;
}
if (keyboard_check(controls.left)) {
	move_x -= 1;
}

if (keyboard_check(controls.down)) {
	move_y += 1;
}
if (keyboard_check(controls.up)) {
	move_y -= 1;
}
	
movementVars.currentSpeed = move_speed;

var dir = point_direction(0, 0, move_x, move_y);
	
if (move_x != 0 || move_y != 0) {
	new_x = x + lengthdir_x(move_speed, dir);
	new_y = y + lengthdir_y(move_speed, dir);
		
	if (place_free(new_x, y)){
		x = new_x;
	}
	if (place_free(x, new_y)){
		y = new_y;
	}
}
