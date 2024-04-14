/// @description Insert description here
// You can write your code in this editor

application_surface_enable(true);


settings = {
	continue_index:0,
	audio: {
		music_volume: 100,
		game_volume: 100
	},
	viewData: {
		zoom_level: 2,
		full_screen: true,
		view_width: 0,
		view_height: 0
	},
	controls: {
		up: ord("W"),
		down: ord("S"),
		left: ord("A"),
		right: ord("D")
	},
	gameplay: {
		screenshake: true,
		nudity: true
	}
}

saveFiles = getSaveFiles();
newGame = true;
if (array_length(saveFiles) > 0){
	newGame = false;
}

cursorState = "ready";

currentActor = 0;

if (!instance_exists(obj__eventHandler)){
	eventHandler = instance_create_depth(0,0,0, obj__eventHandler);
}

