///Astar(x,y,targetx,targety)
//returns 

//naming paramaters since GML won't
var startx=argument0;
var starty=argument1;
var targetx=argument2;
var targety=argument3;

var tempcoords;
tempcoords[0]=startx;
tempcoords[1]=starty;

//TODO:parent of start should be noone
var checking=ds_list_create();
var checking_parent=ds_list_create();

//here the parent of checked[|i] is in checked_parent[|i];
//same goes for checking and checking_parent
var checked=ds_list_create();
var checked_parent=ds_list_create();

ds_list_add(checking,tempcoords);
ds_list_add(checking_parent,noone);

while(!array_length_1d(checking)==0)
{
    var minimum=-1;
    var minindex=0;
    //choose cheapest square, sq, from checking
    for(var i=0;i<array_length_1d(checking);i++)
    {
        //ccost is sum of distance from start and distance to target
        var gcost;
        var checkcoords=checking[|i];
        var checkx=checkcoords[0];
        var checky=checkcoords[1];
        var gcost=orthodist(checkx,checky,startx,starty);
        var hcost=orthodist(checkx,checky,targetx,targety);
        var scost=gcost+hcost;
        if(minimum<0)
            minumum=scost;
        else if(scost<minimum)
        {
            minimum=scost;
            minindex=i;
        }
    }
    //minindex now points at cheapest square in checking    
    //add sq's neighbours to checking, unless they are in checked.
    var checkcoords = checking[|minindex]
    var checkx=checkcoords[0];
    var checy=checkcoords[1];
    neigbours=grid_neighbours(checkx,checky);
   
    for(var i=0;i<array_length_1d(neighbours);i++)
    {
        var checkedbefore=false;
        for(var j=0;j<ds_list_size(checked);i++)
        {
            if(neighbours[i]==checked[|j])
                checkedbefore=true;
        }
        if(!checkedbefore)
        {
            ds_list_add(checking,neighbours[i]);
            ds_list_add(checking_parent,checking[|minindex]);
        }
    }
    //add sq to checked
    ds_list_add(checked,checking[|minindex]);
    ds_list_add(checked_parent,checking_parent[|minindex]);
    if(checkx==targetx && checky==targety)
    {
        //target added to checked, best path ound
        break;
    }
    ds_list_delete(checking_parent,minindex);
    ds_list_delete(checking,minindex);
    var nextx=targetx;
    var nexty=targety;
}        
    //walk parents from target until start is reached.
    var reversetilepath;
    var pathlength=0;
    while(! (nextx==startx &&nexty ==starty))
    {
        
        var nextindex;
        for(var i=0;i<ds_list_size(checked);i++)
        {
            var checkingcoords=checked[|i]
            var checkx=checkingcoords[0];
            var checky=checkingcoords[1];
            if(checkx==nextx && checky==nexty)
            {
                nextindex=i;
                break;
            }

        }
        reversetilepath[pathsize]=checked[|nextindex];
        parentcoords=checked_parent[|nextindex];
        nextx=parentcoords[0];
        nexty=parentcoords[1];
    }
    var tilepath;
    for(var i=0;i<array_length_1d(reversetilepath);i++)
    {
        tilepath[i]=reversetilepath[array_length_1d(reversetilepath)-i]
    }
    ds_list_destroy(checking);
    ds_list_destroy(checked);
    ds_list_destroy(checking_parent);
    ds_list_destroy(checked_parent);
    return tilepath;
