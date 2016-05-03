///wallmatrix_colmatrix(x,y,dir)
//Takes in a grid location and a direction.
//if some object intersects that wall, return false



var _x,_y,dir;

_x = argument0;
_y = argument1;
dir = argument2;

myid = ctrl.matrix[_x,_y];

if(dir & 1 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x + 1,_y] == myid){
            return false;
        }
    }
}
if(dir & 2 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y+1] == myid){
            return false;
        }
    }
}
if(dir & 4 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x-1,_y] == myid){
            return false;
        }
    }
}
if(dir & 8 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y-1] == myid){
            return false;
        }
    }
}

return true;
