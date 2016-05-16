///adjecent_to(station,xcoord,ycoord)
//returns a true if xcoord,ycoord is adjecent to the station
//stupid GML
var station=argument0;
var xcoord=argument1;
var ycoord=argument2;


//this should be the top left corner
var origin_x=station.x div 31;
var origin_y=station.y div 31;


for(var i=0;i<station.height;i++)
{
        
    if((xcoord==origin_x-1 && ycoord==origin_y-1+i)
    || (xcoord==origin_x+station.width && ycoord==origin_y-1+i)
    )
        return true;
    
}

for(var i=0;i<station.height;i++)
{
    if((xcoord==origin_x-1+i && ycoord==origin_y-1)
    || (xcoord==origin_x-1+i && ycoord==origin_y+height)
    )
        return true;
}
