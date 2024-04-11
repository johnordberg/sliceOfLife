// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fixAndSetPlayerMask(){
	var thisSprite = sprite_duplicate(sprite_index);
	sprite_set_offset(thisSprite, floor(sprite_get_width(thisSprite) / 2), floor(sprite_get_height(thisSprite) / 2));
	sprite_assign(sprite_index, thisSprite);
	sprite_delete(thisSprite);
}