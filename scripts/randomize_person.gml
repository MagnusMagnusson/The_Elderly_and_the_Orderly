///randomize_person(isMale);

var m,f,n;
m = 4;
f = 1;
var prefix;

if(argument0){
    prefix = "ml_";
    n = m;
}
else{
    prefix = "fm_";
    n = f;
}

var str;
str = "spr_person_hair_"+prefix+string(irandom(n-1)+1);
show_debug_message(str);
hair = asset_get_index(str);

str = "spr_person_head_"+prefix+string(irandom(n-1)+1);
show_debug_message(str);
head = asset_get_index(str);

str = "spr_person_body_"+prefix+string(irandom(n-1)+1);
show_debug_message(str);
body = asset_get_index(str);

str = "spr_person_feet_"+prefix+string(irandom(n-1)+1);
show_debug_message(str);
legs = asset_get_index(str);
