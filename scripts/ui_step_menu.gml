//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.
//If these 2 sentences are changed then ui_draw_menu also needs to change
var xwidth =  display_get_width()/6;
yoffset = (display_get_height()/1.5)/10;

/*CLICKS*/
if(mouse_check_button_pressed(mb_left)){
    //Select store
    if(mouse_x > 0 && mouse_x < xwidth && mouse_y > 0 && mouse_y < yoffset){
        state = "store";
    }
    //Select Orderlies
    if(mouse_x > 0 && mouse_x < xwidth && mouse_y  > yoffset && mouse_y < yoffset*2){
        state = "staff"
    }
    
    //Select Residents
    if(mouse_x > 0 && mouse_x < xwidth && mouse_y > yoffset*2 && mouse_y < yoffset*3){
        state = "resident";
    }
         
    //Select Start Day   
    if(mouse_x > 0 && mouse_x < xwidth && mouse_y > yoffset*3 && mouse_y < yoffset*4){
        state = "startDay";
    }
}

