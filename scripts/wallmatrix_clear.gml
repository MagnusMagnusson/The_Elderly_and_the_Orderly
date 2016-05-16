///wallmatrix_reserve(x,y,direction)

var _x,_y,dir,myid,cost;

_x = argument0;
_y = argument1;
dir = argument2; // 3
myid = ctrl.matrix[_x,_y];
cost = 0;


if(dir & 1 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x + 1,_y] != myid){
            cost += !(ctrl.wallMatrix[_x,_y] & 1 > 0)
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~1;
            ctrl.wallMatrix[_x+1,_y] = ctrl.wallMatrix[_x+1,_y] & ~4;
        }
    }
    else{
        cost += !(ctrl.wallMatrix[_x,_y] & 1 > 0)
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~1;
        ctrl.wallMatrix[_x+1,_y] = ctrl.wallMatrix[_x+1,_y] & ~4;
    }
}
else if(dir & 2 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y+1] != myid){
            cost += !(ctrl.wallMatrix[_x,_y] & 2 > 0)
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~2;
            ctrl.wallMatrix[_x,_y+1] = ctrl.wallMatrix[_x,_y+1] & ~8;
        }
    }
    else{
        cost += !(ctrl.wallMatrix[_x,_y] & 2 > 0)
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~2;
        ctrl.wallMatrix[_x,_y+1] = ctrl.wallMatrix[_x,_y+1] & ~8;
    }
}
else if(dir & 4 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x-1,_y] != myid){
            cost += !(ctrl.wallMatrix[_x,_y] & 4 > 0)
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~4;
            ctrl.wallMatrix[_x-1,_y] = ctrl.wallMatrix[_x-1,_y] & ~1;
        }
    }
    else{
        cost += !(ctrl.wallMatrix[_x,_y] & 4 > 0)
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~4;
        ctrl.wallMatrix[_x-1,_y] = ctrl.wallMatrix[_x-1,_y] & ~1;
    }
}
else if(dir & 8 > 0){
    if(myid != noone){
        if(ctrl.matrix[_x,_y-1] != myid){
            cost += !(ctrl.wallMatrix[_x,_y] & 8 > 0)
            ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~8;
            ctrl.wallMatrix[_x,_y-1] = ctrl.wallMatrix[_x,_y-1] & ~2;
        }
    }
    else{
        cost += !(ctrl.wallMatrix[_x,_y] & 8 > 0)
        ctrl.wallMatrix[_x,_y] = ctrl.wallMatrix[_x,_y] & ~8;
        ctrl.wallMatrix[_x,_y-1] = ctrl.wallMatrix[_x,_y-1] & ~2;
    }
}

return cost;
