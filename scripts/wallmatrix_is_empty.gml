///wallmatrix_is_empty(x,y,w,h)

var _x,_y,w,h;

_x = argument0;
_y = argument1;
w = argument2;
h = argument3;

if(_x < 0 || (_x + w) > (room_width div 31) || _y < 0 || (_y + h) > (room_height div 31)){
    return false;
} 
for(var i = _x; i < _x + w; i++){
    for(var j = _y; j < _y + h; j++){
        if(i - _x != 0){
            if(ctrl.wallMatrix[i,j] & 4 > 0){
                return false;
            }
        }
        if(j - _y != 0){
            if(ctrl.wallMatrix[i,j] & 8 > 0){
                return false;
            }
        } 
    }
}

return true;
