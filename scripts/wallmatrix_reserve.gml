///ctrl.wallMatrix_reserve(x,y,direction)

var _x,_y,dir,myid;

_x = argument0;
_y = argument1;
dir = argument2; // 3
myid = matrix[_x,_y];


if(dir & 1 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x + 1,_y] != myid){
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 1;
            ctrl.wallMatrix[_x+1,_y] = ctrl.wallMatrix[_x+1,_y] | 4;
        }
    }
    else{
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 1;
        ctrl.wallMatrix[_x+1,_y] = ctrl.wallMatrix[_x+1,_y] | 4;
    }
}
if(dir & 2 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y+1] != myid){
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 2;
            ctrl.wallMatrix[_x,_y+1] = ctrl.wallMatrix[_x,_y+1] | 8;
        }
    }
    else{
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 2;
        ctrl.wallMatrix[_x,_y+1] = ctrl.wallMatrix[_x,_y+1] | 8;
    }
}
if(dir & 4 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x-1,_y] != myid){
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 4;
            ctrl.wallMatrix[_x-1,_y] = ctrl.wallMatrix[_x-1,_y] | 1;
        }
    }
    else{
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 4;
        ctrl.wallMatrix[_x-1,_y] = ctrl.wallMatrix[_x-1,_y] | 1;
    }
}
if(dir & 8 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y-1] != myid){
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 8;
            ctrl.wallMatrix[_x,_y-1] = ctrl.wallMatrix[_x,_y-1] | 2;
        }
    }
    else{
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] | 8;
        ctrl.wallMatrix[_x,_y-1] = ctrl.wallMatrix[_x,_y-1] | 2;
    }
}
