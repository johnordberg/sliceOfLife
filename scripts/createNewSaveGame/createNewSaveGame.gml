// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createNewSaveGame(){
	var current_datetime = date_current_datetime();
	var dateStruct = {
		month: date_get_month(current_datetime),
		day: date_get_day(current_datetime),
		year: date_get_year(current_datetime),
		hour: date_get_hour(current_datetime),
		minute: date_get_minute(current_datetime)
	}
	obj__saveDataStorage.saveData.save_create_date = dateStruct;
	obj__saveDataStorage.saveData.save_touch_date = dateStruct;
	
	var max_saves = 99;
    for (var i = 1; i <= max_saves; i++) {
        var file_name = "save" + string(i) + ".json";
        if (!file_exists(file_name)) {
            var file = file_text_open_write(file_name);
            var data = json_stringify(obj__saveDataStorage.saveData);
            file_text_write_string(file, data);
            file_text_write_string(file, "#"); // End with a newline or delimiter
            file_text_close(file);
            return true;
        }
    }
    return false;
}