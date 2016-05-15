//Night menu
//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.
//If these 2 sentences are changed then ui_draw_menu also needs to change
if(!ctrl.isDay){
    var xwidth =  display_get_gui_width()/6;
    yoffset = (display_get_gui_height()/1.5)/10;
    
    /*CLICKS*/
    if(mouse_check_button_pressed(mb_left) && realmx() > 0 && realmx() < xwidth){
        //Select store
        if(realmy() > 0 && realmy() < yoffset){
            state = "store";
        }
        //Select Orderlies
        if(realmy() > yoffset && realmy() < yoffset*2){
            state = "staff";
        }
        
        //Select Residents
        if(realmy() > yoffset*2 && realmy() < yoffset*3){
            state = "resident";
        }
             
        //Select Start Day   
        if(realmy() > yoffset*3 && realmy() < yoffset*4){
            state = "startDay";
        }
    }
}

