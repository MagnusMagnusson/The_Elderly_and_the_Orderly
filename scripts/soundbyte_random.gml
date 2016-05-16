///soundbyte_random(string character)
//param 0: a string naming a sound asset (f.i "christ")
//returns a random sound from the set of the param family.

var i = 0;
var list = ds_list_create();
while(audio_exists(i)){
    var name = audio_get_name(i);
    if(string_count("snd_"+string(argument0),name) == 1){
        ds_list_add(list,i);
    }
    i++;
}

if(ds_list_size(list) > 0){
    ds_list_shuffle(list);
    var ret = ds_list_find_value(list,0);
}
else{
    var ret = noone;
}

ds_list_destroy(list);
return ret;
