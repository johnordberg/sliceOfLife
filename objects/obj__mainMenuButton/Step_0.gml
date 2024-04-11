/// @description Insert description here
// You can write your code in this editor

if (yOffset == 0 && instance_exists(obj__mainMenuBorder)){
	yOffset = obj__mainMenuBorder.yOffset;
	y += yOffset;
}

if (hovering){
	xHoverOffset = lerp(xHoverOffset, xHoverOffsetTarget, .5);
}
else{
	xHoverOffset = lerp(xHoverOffset, 0, .5);
}

x = xInit + xHoverOffset;