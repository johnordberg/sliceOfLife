// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setView(){
	var gameController = obj__gameController;
	display_reset(0, true);
	window_set_fullscreen(gameController.viewData.full_screen);
	var ww = window_get_width();
	var wh = window_get_height();
	if (os_browser == browser_not_a_browser){
	  ww = window_get_width();
	  wh = window_get_height();
	  show_debug_message("non-browser");
	}
	else{
	   ww = 900;
	   wh = 600;
	   window_set_size(ww, wh);
	   window_center();
	   show_debug_message("browser");
	}
	
	gameController.viewData.view_width = ww;
	gameController.viewData.view_height = wh;
	
	var zoomed_ww = ww / gameController.viewData.zoom_level;
	var zoomed_wh = wh / gameController.viewData.zoom_level;
	
	view_camera[0] = camera_create_view(0, 0, zoomed_ww, zoomed_wh, 0, obj__camera, -1, -1, round(zoomed_ww/2), round(zoomed_wh/2));
	view_visible[0] = true;
	view_enabled = true;
	
	view_set_wport(0, zoomed_ww);
	view_set_hport(0, zoomed_wh);
	
	surface_resize(application_surface, ww, wh);
}