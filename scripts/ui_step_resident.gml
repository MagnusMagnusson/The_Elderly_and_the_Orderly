if(!instance_exists(o_ui_residents_night) && x > 0){
    instance_create(0,0,o_ui_residents_night);
    x = -1;
}
else{
    if(instance_exists(o_ui_residents_night)){
        if(mouse_check_button_pressed(mb_left)){
             if(mouse_check_button_pressed(mb_left) && display_mouse_get_x() > 0 && display_mouse_get_x() < xwidth){
                    //Select store
                if(display_mouse_get_y() > 0 && display_mouse_get_y() < yoffset){
                    state = "store";
                }
            }
        }
    }
    else{
        x = xstart;
        state = 0;
    }
}
