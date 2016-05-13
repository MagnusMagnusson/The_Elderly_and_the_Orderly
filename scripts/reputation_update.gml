ctrl.player_reputation *= 0.8;
ctrl.max_reputation *= 0.8;
var happ,n;
n = instance_number(O_Resident);
happ = 0;
for(var i = 0; i < n; i++){
    var I = instance_find(O_Resident,i);
    happ += I.happiness - 50;
}

ctrl.player_reputation += happ / n;
ctrl.max_reputation += 50;
