///matrix_is_empty(x,y,w,h);
var _x,_y,w,h;
_x = argument0;
_y = argument1;
w = argument2;
h = argument3;
for(var i = _x; i < _x + w; i++){
    for(var j = _y; j < _y + h; j++){
        if(ctrl.matrix[i,j] != noone){
            return false;
        }
    }
}
return true;
