///matrix_is_empty(x,y,w,h,id);
var _x,_y,w,h,ID;
_x = argument0;
_y = argument1;
w = argument2;
h = argument3;
ID = argument4;

if(!matrix_is_empty(_x,_y,w,h)){
    return false;
}
for(var i = _x; i < _x + w; i++){
    for(var j = _y; j < _y + h; j++){
        ctrl.matrix[i,j] = ID;
    }
}
return true;

