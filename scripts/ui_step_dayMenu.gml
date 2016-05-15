var xwidth =  display_get_gui_width()/6;
yoffset = (display_get_gui_height()/1.5)/10;

/*CLICKS*/
if(mouse_check_button_pressed(mb_left) && realmx() > 0 && realmx() < xwidth && state == noone){
    //Select Orderlies
    if(realmy() > 0 && realmy() < yoffset){
        state = "staff";
    }
    //Select Residents
    if(realmy() > yoffset && realmy() < yoffset*2){
        state = "resident";
    }
}
