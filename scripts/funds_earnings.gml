var f;
f = 0;
for(var i = 0; i < instance_number(O_Resident);i++){
    var I = instance_find(O_Resident,i);
    f += 90 * (I.happiness/100);
}

return (f) div 5 * 5;
