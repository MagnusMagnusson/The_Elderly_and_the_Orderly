if(!instance_exists(o_ui_residents_night) && x >= 0){
    instance_create(0,0,o_ui_residents_night);
    x = -x;
    alarm[0] = 2;
}
else{
    if(instance_exists(o_ui_residents_night)){
    var xwidth =  display_get_gui_width()/6;
        yoffset = (display_get_gui_height()/1.5)/10; //string_height("Word");
        if(mouse_check_button_pressed(mb_left)){
             if(mouse_check_button_pressed(mb_left) && realmx() > 0 && realmx() < xwidth){
                    //Select store
                if(realmy() > 2*yoffset && realmy() < 3*yoffset){
                    with(o_ui_residents_night){
                        instance_destroy();
                    }
                    state = "menu";
                    x = -x;
                }
                if(realmy() > 0 && realmy() < yoffset){
                    o_ui_residents_night.state = 0;
                }
                if(realmy() > yoffset && realmy() < 2*yoffset){
                    o_ui_residents_night.state = 1;
                }
            }
        }
    }
    else{
        x = xstart;
        state = "menu";
    }
}
