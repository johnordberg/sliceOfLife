// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadSettings(){
	var file_name = "settings.json";

    if (file_exists(file_name)) {
        var file = file_text_open_read(file_name);
        var json_string = file_text_read_string(file);
        file_text_readln(file);  // Move past the newline or delimiter
        file_text_close(file);

        obj__gameController.settings = json_parse(json_string);
    }
}