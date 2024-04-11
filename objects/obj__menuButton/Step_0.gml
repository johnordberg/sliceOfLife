/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj__menuBorder)){
	yOffset = obj__menuBorder.yOffset;
	y = initialY + yOffset;
}

if (hovering){
	xHoverOffset = lerp(xHoverOffset, xHoverOffsetTarget, .5);
}
else{
	xHoverOffset = lerp(xHoverOffset, 0, .5);
}
xInit = obj__gameController.viewData.view_width / 2;

x = xInit + xHoverOffset;