///store_init()
//creates a new store listing and returns it as a ds_Grid
//If you change the order of stations or add to the store then it also needs to be added
//to the ui draw event

var n,i;
n = 6;
i = 0;
var store = ds_grid_create(n,7);

//0 - object_index
//1 - name
//2 - desc
//4 - price
//5 - width
//6 - height
//7 - # of orderlies needed
//8 - # of residents at a time

//0
/*store[#i,0] = o_Station; //obj_index
store[#i,1] = "Template Station"; //name
store[#i,2] = "Let's play Bingo!"; //desc
store[#i,3] = 0; //spr_icon
store[#i,4] = 0; //price
store[#i,5] = 0; //width
store[#i,6] = 0; //height

i++;*/
//1
store[#i,0] = o_wall; //obj_index
store[#i,1] = "a Wall"; //name
store[#i,2] = "Essential for a pretty home"; //desc
store[#i,3] = 1; //spr_icon
store[#i,4] = 15; //price
store[#i,5] = 1; //width
store[#i,6] = 1; //height
i++;
//2
store[#i,0] = o_bed; //obj_index
store[#i,1] = "a Warm bed"; //name
store[#i,2] = "Where people sleep happily"; //desc
store[#i,3] = 2; //spr_icon
store[#i,4] = 150; //price
store[#i,5] = 1; //width
store[#i,6] = 2; //height
i++;

//3
store[#i,0] = o_TV; //obj_index
store[#i,1] = "an Old Television"; //name
store[#i,2] = "clean the dust please."; //desc
store[#i,3] = 3; //spr_icon
store[#i,4] = 150; //price
store[#i,5] = 1; //width
store[#i,6] = 1; //height
i++;

//4
store[#i,0] = o_Bingo; //obj_index
store[#i,1] = "Bingo Set"; //name
store[#i,2] = "Fun for ages 8 to 80, for the entire family"; //desc
store[#i,3] = 4; //spr_icon
store[#i,4] = 300; //price
store[#i,5] = 2; //width
store[#i,6] = 2; //height
i++;

//5
store[#i,0] = o_disco; //obj_index
store[#i,1] = "A Disco floor"; //name
store[#i,2] = "Let's get boogie with it!"; //desc
store[#i,3] = 5; //spr_icon
store[#i,4] = 400; //price
store[#i,5] = 3; //width
store[#i,6] = 3; //height
i++;

//6
store[#i,0] = o_sofa; //obj_index
store[#i,1] = "A sofa"; //name
store[#i,2] = "It's every bit as comfy as it looks.#just ignore the stains."; //desc
store[#i,3] = 6; //spr_icon
store[#i,4] = 100; //price
store[#i,5] = 3; //width
store[#i,6] = 1; //height
i++;

//7
/*store[#i,0] = o_disco; //obj_index
store[#i,1] = "A Disco floor"; //name
store[#i,2] = "Let's get boogie with it!"; //desc
store[#i,3] = 5; //spr_icon
store[#i,4] = 400; //price
store[#i,5] = 3; //width
store[#i,6] = 3; //height
i++;*/

return store;
