/// @description Insert description here
// You can write your code in this editor

initialY = y;
initialX = x;
x = obj__gameController.settings.viewData.view_width / 2;
y = obj__gameController.settings.viewData.view_height / 2;
yOffset = abs(y - initialY);
xOffset = abs(x - initialX);
uiElement = true;