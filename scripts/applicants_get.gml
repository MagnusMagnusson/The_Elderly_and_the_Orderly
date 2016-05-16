///applicants_get()
//returns a pretty pretty list of suitable applicants. 

var happ;
happ = 0;



for(var i = 0; i < instance_number(O_Resident);i++){
    var I = instance_find(O_Resident,i);
    happ += I.happiness;
}
var n = 0;
show_debug_message(string(n));
n = ((happ / instance_number(O_Resident))/100 * 15 ) 
* reputation_get_normalized()


for(var j = 0; j <= n; j++){
    var I = instance_create(0,0,o_applicant);
    name = I.name;
    head = I.head;
}
