///neighbours(x,y) returns the reachable neighbours of (x,y)
///must use grid coordinates

var tempx = argument0;
var tempy = argument1;
var cellsize=31;
//make temps into pixel coordinates
var resultsize=0;
var results;
var tempcoords;
//check if right neighbour is reachable
if(matrix_is_empty(tempx,tempy,2,1)
&& wallmatrix_is_empty(tempx,tempy,2,1))
{
    tempcoords[0]=tempx+1;
    tempcoords[1]=tempy;
    results[resultsize]=tempcoords;
    results +=1;
}

//check if left neighbour is reachable
if(matrix_is_empty(tempx-1,tempy,2,1)
&& wallmatrix_is_empty(tempx-1,tempy,2,1))
{
    tempcoords[0]=tempx-1;
    tempcoords[1]=tempy;
    results[resultsize]=tempcoords;
    results +=1;
}
//check if top neighbour is reachable
if(matrix_is_empty(tempx,tempy-1,2,1)
&& wallmatrix_is_empty(tempx,tempy-1,2,1))
{
    tempcoords[0]=tempx;
    tempcoords[1]=tempy-1;
    results[resultsize]=tempcoords;
    results +=1;
}
//check if bottom neighbour is reachable
if(matrix_is_empty(tempx,tempy,1,2)
&& wallmatrix_is_empty(tempx,tempy,1,2))
{
    tempcoords[0]=tempx;
    tempcoords[1]=tempy+1;
    results[resultsize]=tempcoords;
    results +=1;
}

if(resultsize=0)
    return noone;
else return results;
