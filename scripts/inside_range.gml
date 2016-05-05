///inside_range(x,y,x0,y0,x1,y1);

var _x,_y,xx,yy_xx,_yy;
_x = argument0;
_y = argument1;
xx = argument2;
yy = argument3;
_xx = argument4;
_yy = argument5;

if(_x > xx){
    if(_x < _xx){
        if(_y > yy){
            if(_y < _yy){
                return true;
            }
        }
    }
}

return false;
