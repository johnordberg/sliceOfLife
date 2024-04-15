// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSaveFilesSortedByTouchDate(unsortedArray){
	var n = array_length(unsortedArray);
    var swapped = true;
    var j = 0;
    var temp;

    // Prepare to hold datetime values temporarily for sorting
    var datetime_values = [];

    // First, load all datetime values from files
    for (var i = 0; i < n; i++) {
        var file = file_text_open_read(unsortedArray[i]);
        var json_string = file_text_read_string(file);
        file_text_close(file);
        var json_data = json_parse(json_string);
        var save_date = json_data.save_touch_date;
        var datetime = date_create_datetime(save_date.year,
                                            save_date.month,
                                            save_date.day,
                                            save_date.hour,
                                            save_date.minute,
                                            0);
        datetime_values[i] = {datetime: datetime, filename: unsortedArray[i]};
    }

    // Bubble sort by datetime
    while (swapped) {
        swapped = false;
        j++;
        for (var i = 0; i < n - j; i++) {
            if (datetime_values[i].datetime < datetime_values[i + 1].datetime) {
                temp = datetime_values[i];
                datetime_values[i] = datetime_values[i + 1];
                datetime_values[i + 1] = temp;
                swapped = true;
            }
        }
    }

    // Create a new array to return sorted filenames
    var sortedArray = [];
    for (var i = 0; i < n; i++) {
        sortedArray[i] = datetime_values[i].filename;
    }
    return sortedArray;
}