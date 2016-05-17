///happyhappy

var n = ds_grid_width(ctrl.store);

for(var i = 0; i < n; i++){
happiness += (1/(3*room_speed)) *instance_number(ctrl.store[#i,0])*(likes_get(ctrl.store[#i,0]) - random(0.4));
}
