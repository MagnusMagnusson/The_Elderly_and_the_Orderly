 ///Astar(x,y,targetx,targety)
//returns 

//naming paramaters since GML wont
var startx=argument0;
var starty=argument1;
var targetx=argument2;
var targety=argument3;

var tempcoords;
tempcoords[0]=startx;
tempcoords[1]=starty;


var checking=ds_list_create();
var checking_parent=ds_list_create();

//here the parent of checked[|i] is in checked_parent[|i];
//same goes for checking and checking_parent
var checked=ds_list_create();
var checked_parent=ds_list_create();

ds_list_add(checking,tempcoords);
ds_list_add(checking_parent,noone);
//debug variables
var iteration_debug=false;
var mainloop_debug=true;
var neighbour_debug=false;
var debug=neighbour_debug||iteration_debug||mainloop_debug; 
var iterations=0;
//at the start, checking contains exactly one coordinate pair
while(!(ds_list_size(checking)==0) && false)
{
    if(debug) sleep(500000);
    if(mainloop_debug) show_debug_message(iterations++);
    if(mainloop_debug) show_debug_message("--------------II---------------");
    if(mainloop_debug) show_debug_message("checking list:");
    if(mainloop_debug) for(var i=0;i<ds_list_size(checking);i++) show_debug_message(checking[|i]);
    if(mainloop_debug) show_debug_message("-------------------------------");
    if(mainloop_debug) show_debug_message("checked list:");
    if(mainloop_debug) for(var i=0;i<ds_list_size(checked);i++) show_debug_message(checked[|i]);
    if(mainloop_debug) show_debug_message("--------------------------------");
    
    if(iteration_debug) show_debug_message("main while of Astar");
    if(iteration_debug) show_debug_message(iterations++);
    var minimum=-1;
    var minindex=0;
    //choose cheapest square, sq, from checking
    for(var i=0;i<ds_list_size(checking);i++)
    {
        if(iteration_debug) show_debug_message("choosing cheapest from checking");
        if(iteration_debug) show_debug_message(i);
        //scost is sum of distance from start and distance to target
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
    //sq has a maximum of four neighbours, there is a finite number
    //of tiles so checking can only have a finite number of squares that
    //have been put into it at any time, eventually no squares will be added 
    var checkcoords = checking[|minindex]
    var checkx=checkcoords[0];
    var checky=checkcoords[1];
    var neighbours=grid_neighbours(checkx,checky);
   
    for(var i=0;i<array_length_1d(neighbours);i++)
    {
        if(iteration_debug||neighbour_debug) show_debug_message("adding eligible neighbours");
        if(iteration_debug||neighbour_debug) show_debug_message(i);
        var checkedbefore=false;
        //iterate trough checking as well to clean up
        for(var j=0;j<ds_list_size(checking);j++)
        {
            if(iteration_debug) show_debug_message("looking for neighbours in checked");
            if(iteration_debug) show_debug_message(j);
            //extracting neighbour coords
            var neighbourcoords=neighbours[i];
            var neighbourx=neighbourcoords[0];
            var neighboury=neighbourcoords[1];
            //extracting checked coords
            var checkingcoords=checking[|j];
            var checkingx=checkingcoords[0];
            var checkingy=checkingcoords[1];
            if(neighbourx=checkingx && neighboury==checkingy)
            {
                checkedbefore=true;
                break;
            }
        }
        for(var j=0;j<ds_list_size(checked);j++)
        {
            if(checkedbefore) break;
            if(iteration_debug) show_debug_message("looking for neighbours in checked");
            if(iteration_debug) show_debug_message(j);
            //extracting neighbour coords
            var neighbourcoords=neighbours[i];
            var neighbourx=neighbourcoords[0];
            var neighboury=neighbourcoords[1];
            //extracting checked coords
            var checkedcoords=checked[|j];
            var checkedx=checkedcoords[0];
            var checkedy=checkedcoords[1];
            if(neighbourx=checkedx && neighboury==checkedy)
            {
                checkedbefore=true;
                break;
            }
        }
        if(!checkedbefore)
        {
            if(neighbour_debug) show_debug_message("adding the following to checked");
            if(neighbour_debug) show_debug_message(neighbours[i]);
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
    //during each iteration, an element is removed from checking
    ds_list_delete(checking_parent,minindex);
    ds_list_delete(checking,minindex);
    //so checking must beome empty at some point.
}      
    if(max_Astar_iterations<iterations)
        max_Astar_iterations = iterations;
    var containstarget = false;
    for(var i=0;i<ds_list_size(checked);i++)
    {
        if(iteration_debug) show_debug_message("checking whether target was found");
        if(iteration_debug) show_debug_message(i);
        var checkingcoords=checked[|i]
        var checkx=checkingcoords[0];
        var checky=checkingcoords[1];
        if(checkx==targetx && checky==targety)
        {
            containstarget=true;
            break;
        }
    }
    if(!containstarget)
        return noone;
    //target was found
    
    var nextx=targetx;
    var nexty=targety;  
    //walk parents from target until start is reached.
    var reversetilepath=noone;
    var pathlength=0;
    iterations=0
    while(! (nextx==startx && nexty ==starty))
    {
        if(iteration_debug) show_debug_message("constructing reversetilepath");
        if(iteration_debug) show_debug_message(iterations++);   
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
        reversetilepath[pathlength]=checked[|nextindex];
        pathlength+=1;
        parentcoords=checked_parent[|nextindex];
        nextx=parentcoords[0];
        nexty=parentcoords[1];
    }
    var tilepath;
    if(reversetilepath==noone)
        return noone;
    for(var i=0;i<array_length_1d(reversetilepath);i++)
    {
        if(iteration_debug) show_debug_message("reversing reversetilepath");
        if(iteration_debug) show_debug_message(i);
        //the index into reversetilepath walks from last element to first element
        tilepath[i]=reversetilepath[array_length_1d(reversetilepath)-1-i]
    }
    ds_list_destroy(checking);
    ds_list_destroy(checked);
    ds_list_destroy(checking_parent);
    ds_list_destroy(checked_parent);
    return tilepath;
