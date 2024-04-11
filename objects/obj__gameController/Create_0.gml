/// @description Insert description here
// You can write your code in this editor

application_surface_enable(true);
viewData = {
	zoom_level: 2,
	full_screen: true,
}

currentActor = 0;

if (!instance_exists(obj__eventHandler)){
	eventHandler = instance_create_depth(0,0,0, obj__eventHandler);
}
queueEvent(id, "initiate_game", false);

