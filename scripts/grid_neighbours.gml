///neighbours(x,y,exception) returns the reachable neighbours of (x,y)
///must use grid coordinates

var tempx = argument0;
var tempy = argument1;
var exception=argument2;

var resultsize=0;
var results;

//check if right neighbour is reachable
if(matrix_is_empty(tempx,tempy,2,1)
&& wallmatrix_is_empty(tempx,tempy,2,1))
{
    var tempcoords1;
    tempcoords1[0]=tempx+1;
    tempcoords1[1]=tempy;
    results[resultsize]=tempcoords1;
    resultsize +=1;
}
else if(tempx+1<room_width div 31 
&& ctrl.matrix[tempx+1,tempy]==exception
&& wallmatrix_is_empty(tempx,tempy,2,1))
{
    var tempcoords1;
    tempcoords1[0]=tempx+1;
    tempcoords1[1]=tempy;
    results[resultsize]=tempcoords1;
    resultsize +=1;
}

//check if left neighbour is reachable
if(matrix_is_empty(tempx-1,tempy,2,1)
&& wallmatrix_is_empty(tempx-1,tempy,2,1))
{
    var tempcoords2;
    tempcoords2[0]=tempx-1;
    tempcoords2[1]=tempy;
    results[resultsize]=tempcoords2;
    resultsize +=1;
}
else if(tempx-1<room_width div 31 
&& ctrl.matrix[(tempx-1)%(room_width div 31),tempy]==exception
&& wallmatrix_is_empty(tempx-1,tempy,2,1))
{
    var tempcoords2;
    tempcoords2[0]=tempx-1;
    tempcoords2[1]=tempy;
    results[resultsize]=tempcoords2;
    resultsize +=1;
}
//check if top neighbour is reachable
if(matrix_is_empty(tempx,tempy-1,1,2)
&& wallmatrix_is_empty(tempx,tempy-1,1,2))
{
    var tempcoords3;
    tempcoords3[0]=tempx;
    tempcoords3[1]=tempy-1;
    results[resultsize]=tempcoords3;
    resultsize +=1;
}
else if(tempy-1<room_height div 31 
&& ctrl.matrix[tempx,(tempy-1)%(room_height div 31)]==exception
&& wallmatrix_is_empty(tempx,tempy-1,1,2))
{
    var tempcoords3;
    tempcoords3[0]=tempx;
    tempcoords3[1]=tempy-1;
    results[resultsize]=tempcoords3;
    resultsize +=1;
}
//check if bottom neighbour is reachable
if(matrix_is_empty(tempx,tempy,1,2)
&& wallmatrix_is_empty(tempx,tempy,1,2))
{
    var tempcoords4;
    tempcoords4[0]=tempx;
    tempcoords4[1]=tempy+1;
    results[resultsize]=tempcoords4;
    resultsize +=1;
}
else if(tempy+1<room_height div 31 
&& ctrl.matrix[tempx,tempy+1]==exception
&& wallmatrix_is_empty(tempx,tempy,1,2))
{
    var tempcoords4;
    tempcoords4[0]=tempx;
    tempcoords4[1]=tempy+1;
    results[resultsize]=tempcoords4;
    resultsize +=1;
}
if(resultsize=0)
    return noone;
else return results;
