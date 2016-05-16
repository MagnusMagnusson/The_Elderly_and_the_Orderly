///check_in(resident,station)

//naming parameters
var resident=argument0;
var station=argument1;

if(station.current_resident_count<station.resident_capacity)
{
    station.current_residents[station.current_resident_count]=resident;
    station.current_resident_count+=1;
    //move resident off-screen, station will animate them
    //as participating
    resident.x=-10000000000000000000000000000;
    resident.y=-10000000000000000000000000000;
    
    resident.stay_time=station.minimum_stay_time;
       
}
