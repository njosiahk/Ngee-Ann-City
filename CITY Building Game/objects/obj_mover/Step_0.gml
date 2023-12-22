//controls
right = global.rightKey;
left = global.leftKey;
up = global.upKey;
down = global.downKey;

inputX=0
inputY=0
inputX=right-left;
inputY=down-up;

//movement declare
moveSpeed = 16;

moveX=lerp(moveX,inputX*moveSpeed,0.2);
moveY=lerp(moveY,inputY*moveSpeed,0.2);


x+=moveX
y+=moveY

//get camera width and height
var _camW = camera_get_view_width(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

//clamp mover
x = clamp(x, 0 + _camW/2, room_width-_camW/2);
y = clamp(y, 0 + _camH/2, room_height-+_camH/2);