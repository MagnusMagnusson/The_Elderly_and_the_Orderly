//likes_get_nth(n)

var n = argument[0];
if(argument_count == 2){
    var secretmaxima = argument[1];
}
else{
    secretmaxima = 2;
}
var topval;
var topind;
topval = -1;
topind = -1;
for(var i = 0; i < ds_grid_width(ctrl.store); i++){
    if(likes[i] > topval){
        if(likes[i] < secretmaxima){
            topval = likes[i];
            topind = i;
        }
    }
}

if(n <= 1){
    return topind;
}
else{
    return likes_get_nth(n-1,topval);
}
