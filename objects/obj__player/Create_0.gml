/// @description Insert description here
// You can write your code in this editor

fixAndSetPlayerMask();
state = "standing";
stateHistory = ["standing"];

controls = obj__gameController.controls;

movementVars = {
	walkSpeed: 4,
	runSpeed: 6,
	dashSpeed: 20,
	currentSpeed: 0,
	previous_x: 0,
	previous_y: 0,
};