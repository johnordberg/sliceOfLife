/// @description Insert description here
// You can write your code in this editor

eventQueue = [];

gameEvents = {
	initiate_game: function(sender, targets){
		setView();
		room_goto(room__mainMenu);
		return true;
	},
	set_view: function(sender, targets){
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
		// Continue game
	},
	open_load_menu: function(sender, target){
		// Load Game
	},
	open_settings_menu: function(sender, target){
		// open settings menu here
		room_goto(room__settingsIndex);
		return true;
	},
	quit_game: function(sender, target){
		game_end();
		return true;
	},
	open_audio_settings: function(sender, target){
		room_goto(room__settingsAudio);
		return true;
	},
	open_keybind_settings: function(sender, target){
		// open audio settings
	},
	open_gameplay_settings: function(sender, target){
		// open audio settings
	},
	open_main_menu: function(sender, target){
		room_goto(room__mainMenu);
		return true;
	}
};