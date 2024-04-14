// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSaveFiles(){
	var save_files = [];
    var max_saves = 99;
    for (var i = 1; i <= max_saves; i++) {
        var file_name = "save" + string(i) + ".json";
        if (file_exists(file_name)) {
            save_files[| i-1] = file_name;
        }
    }
    return save_files;
}