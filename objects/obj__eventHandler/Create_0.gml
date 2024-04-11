/// @description Insert description here
// You can write your code in this editor

eventQueue = [];

gameEvents = {
	initiate_game: function(sender, targets){
		setView();
		return true;
	},
	create_player: function(sender, target){
		if (instance_exists(obj__playerSpawner)){
			var player = instance_create_depth(obj__playerSpawner.x, obj__playerSpawner.y, 0, obj__player);
			var camera = instance_create_depth(obj__playerSpawner.x, obj__playerSpawner.y, 0, obj__camera);
			camera.target = player;
			obj__gameController.currentActor = player;
			return true;
		}
		return false;
	},
	new_game: function(sender, target){
		queueEvent(-1, "create_player", false);
		room_goto(Room2);
		return true;
	},
	continue_game: function(sender, target){
		// continue game goes here SET THE BUTTON TO THIS METHOD WHEN FINISHED
	},
	open_settings: function(sender, target){
		// open settings menu here
		return true;
	},
	quit_game: function(sender, target){
		game_end();
		return true;
	}
};