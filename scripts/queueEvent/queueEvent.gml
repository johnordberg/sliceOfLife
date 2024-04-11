// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function queueEvent(thisId, eventName, targets, inputData = -999){
	var eventData = {
		sender_id: thisId,
		event_name: eventName,
		target_array: targets,
		input_data: inputData
	};
	
	if (instance_exists(obj__eventHandler)){
		array_push(obj__eventHandler.eventQueue, eventData);
	}
}