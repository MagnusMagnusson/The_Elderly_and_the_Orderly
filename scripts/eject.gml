///var happyhappy;

/*current_residents //hver er hér[]
current_station //Resident
resident_capacity //stærğ
current_resident_count //hve margir er  hér*/

var player, station;
player = argument0;
station = argument1;
//d

player.current_station = noone;
station.current_resident_count--;

for(var i = 0; i < station.resident_capacity; i++){
	if(station.current_residents[i] == player){
		station.current_residents[i] = noone;
	}
}
for(var i = 0; i < station.resident_capacity; i++){
	for(var j = 0; j < station.resident_capacity; j++){
		if(station.current_residents[j] == noone){
			station.current_residents[j] = station.current_residents[j+1];
			station.current_residents[j+1] = noone;
		}
	}
}

player.x = station.x;
player.y = station.y;

while(ctrl.matrix[player.x div 31, player.y div 31] != noone){
	player.x += 31;
}