if(!instance_exists(o_ui_residents_night) && x >= 0){
    instance_create(0,0,o_ui_residents_night);
    x = -1;
    alarm[0] = 2;
}
else{
    if(instance_exists(o_ui_residents_night)){
    var xwidth =  display_get_width()/6;
        yoffset = (display_get_height()/1.5)/10; //string_height("Word");
        if(mouse_check_button_pressed(mb_left)){
             if(mouse_check_button_pressed(mb_left) && display_mouse_get_x() > 0 && display_mouse_get_x() < xwidth){
                    //Select store
                if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
                    with(o_ui_residents_night){
                        instance_destroy();
                    }
                    state = "menu";
                    x = xstart;
                }
                if(display_mouse_get_y() > 0 && display_mouse_get_y() < yoffset){
                    o_ui_residents_night.state = 0;
                }
                if(display_mouse_get_y() > yoffset && display_mouse_get_y() < 2*yoffset){
                    o_ui_residents_night.state = 1;
                }
            }
        }
    }
    else{
        x = xstart;
      //  state = "menu";
    }
}
