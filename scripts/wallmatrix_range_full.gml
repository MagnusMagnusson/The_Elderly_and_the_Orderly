///wallmatrix_range_empty(x0,y0,x1,y1);
var xx,yy,_xx,_yy;
xx = argument0;
yy = argument1;
_xx = argument2;
_yy = argument3;

if(yy == _yy){
    for(var i = min(_xx,xx); i < max(xx,_xx); i++){
        if(!wallmatrix_empty(i,yy,8)){
            return true;
        }
    }
}
if(xx == _xx){
    for(var i = min(_yy,yy); i < max(_yy,yy); i++){
        if(!wallmatrix_empty(xx,i,4)){
            return true;
        }
    }
}

if(xx != _xx && yy != _yy){
    return true;
}
return false;
