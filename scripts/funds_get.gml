var fund;
fund = 0;

for(var i = 0; i < instance_number(O_Resident); i++){
    var I = instance_find(O_Resident,i);
    fund -= 10 + i;
    fund += I.happiness;
}

for(var i = 0; i < instance_number(O_Orderly); i++){
    fund -= 40;
}

return fund;
