///store_get_id(store,object index)
//Takes in an object index, and returns where in the store grid it is

var store,obj;
store = argument0;
obj = argument1;
for(var i = 0; i < ds_grid_height(store);i++){
    if(store[#i,0] == obj){
        return i;
    }
}
return -1;
