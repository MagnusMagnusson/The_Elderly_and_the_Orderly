//Remember to destroy when no longer needed
var store_lvl = ds_list_create();

for(var i = 0; i < ds_grid_width(ctrl.store); i++){
    if(ctrl.store[# i, 9] == 1){
         ds_list_add(store_lvl, i)
    }
}
return store_lvl;
