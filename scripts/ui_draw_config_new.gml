//Night menu

//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.
if(!ctrl.isDay){
    //The menu box
    draw_set_colour($ffcc99);
    draw_rectangle(0, 0,display_get_gui_width()/6 , display_get_gui_height()/1.5, false);
    
    button[0] = "Back";
    if(!instance_exists(o_contex)){
        state = noone;
        return 1;
    }
    switch(o_contex.station.object_index){
        case o_Bingo:{
            button[1] = "Prize Level: " + string(15 + o_contex.station.prizelevel*15) +" per day"; 
            break;
        }        
        case o_buffet:{
            var name;
            name[0] = "Salad bar";
            name[1] = "Meat table";
            name[2] = "Desert bar";
            name[3] = "Oatmeal";
            name[4] = "Seafood";
            button[1] = "Menu: " + name[o_contex.station.image_index] ; 
            break;
        }
        default:{
            break;
        }
    }
    
    var xwidth =  display_get_gui_width()/6;
    yoffset = (display_get_gui_height()/1.5)/10; //string_height("Word");
    draw_set_colour(c_black);
    draw_set_colour(c_fuchsia);
    //Draw box for each item within the menu
    for(var i = 0; i < 4; i ++){
        if(realmx() > 0 && realmx() < xwidth && realmy() > yoffset*i && realmy() <= yoffset * (i+1)){
            draw_set_colour(c_aqua);
        }
       draw_rectangle(0,yoffset*i, xwidth, yoffset *(i+1), true);
       draw_text(12, yoffset*i, button[i]);
       draw_set_colour(c_fuchsia);
       
    }
}  
