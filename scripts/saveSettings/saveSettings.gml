// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveSettings(){
	var file_name = "settings.json";
	var json_string = json_stringify(obj__gameController.settings);
	var file = file_text_open_write(file_name);
    file_text_write_string(file, json_string);
    file_text_close(file);
}