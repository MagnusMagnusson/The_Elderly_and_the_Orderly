///act_on(station,resident)

//station has it's effect on resident

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
        if(argument0.isrunning)
            //Add happiness for player??
            break;
    default:
        argument1.happiness =argument1.happiness + 0.01
}
        
