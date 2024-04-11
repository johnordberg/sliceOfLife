// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setView(){
	window_set_fullscreen(true);
	var gameController = obj__gameController;
	var ww = display_get_width();
	var wh = display_get_height();
	var zoomed_ww = ww / gameController.viewData.zoom_level;
	var zoomed_wh = wh / gameController.viewData.zoom_level;
	view_camera[0] = camera_create_view(0, 0, zoomed_ww, zoomed_wh, 0, obj__camera, -1, -1, round(zoomed_ww/2), round(zoomed_wh/2));
	view_visible[0] = true;
	view_enabled = true;
	view_set_wport(0, zoomed_ww);
	view_set_hport(0, zoomed_wh);
	surface_resize(application_surface, ww, wh);
}