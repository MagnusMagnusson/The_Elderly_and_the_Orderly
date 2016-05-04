///store_init()
//creates a new store listing and returns it as a ds_Grid

var n,i;
n = 4;
i = 0;
var store = ds_grid_create(n,7);

//0 - object_index
//1 - name
//2 - desc
//3 - price
//4 - width
//5 - height

//0
store[#i,0] = o_Station; //obj_index
store[#i,1] = "Template Station"; //name
store[#i,2] = o_Station; //desc
store[#i,3] = 0; //spr_icon
store[#i,4] = 0; //price
store[#i,5] = 0; //width
store[#i,6] = 0; //height
i++;
//1
store[#i,0] = o_wall; //obj_index
store[#i,1] = "a Wall"; //name
store[#i,2] = "Essential for a pretty home"; //desc
store[#i,3] = 1; //spr_icon
store[#i,4] = 15; //price
store[#i,5] = 0; //width
store[#i,6] = 0; //height
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
store[#i,6] = 2; //height
i++;


return store;
