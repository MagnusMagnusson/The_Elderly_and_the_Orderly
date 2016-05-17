///act_on(station,resident)

//station has it's effect on resident
resident.stay_time-=deltafy(1);
switch(argument0.type)
{
    //need to subtract funds in bingo
    case "TV":
        argument1.happiness = argument1.happiness + 0.05;
        break;
    case "bingo":
        if(argument0.isrunning)
            argument1.happiness = argument1.happiness + 0.05*argument0.prizelevel;
        break;
    case "Bed":
        //Add happiness for player??
        break;
    case "toilet":
        argument1.bladder=0;
        argument1.happiness+=0.2
        break;
    case "buffet":
        argument1.hunger=0;
        argument1.happiness+=0.2;
    default:
        argument1.happiness =argument1.happiness + 0.01
}

station_animate();
        
