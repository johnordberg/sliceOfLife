/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(eventQueue); i++){
	var _event = eventQueue[i];
	var _hash = variable_get_hash(_event.event_name);
	var _method = struct_get_from_hash(gameEvents, _hash);
	show_debug_message("trying method: " + _event.event_name);
	var callArray = [_event.sender_id, _event.target_array];
	if (_event.input_data != -999){
		callArray = [_event.sender_id, _event.target_array, _event.input_data];
	}
	var success = method_call(_method, callArray);
	
	if (success){
		show_debug_message("success: " + _event.event_name);
		array_delete(eventQueue, i, 1);
	}
	else{
		show_debug_message("***FAIL***: " + _event.event_name);
	}
}