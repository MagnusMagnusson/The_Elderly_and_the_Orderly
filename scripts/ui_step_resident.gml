if(!instance_exists(o_ui_residents_night) && x >= 0){
    instance_create(0,0,o_ui_residents_night);
    x = -1;
    alarm[0] = 2;
}
else{
    if(instance_exists(o_ui_residents_night)){
        var xwidth =  display_get_gui_width()/6;
        yoffset = sprite_get_height(spr_go_back) + 8;//(display_get_gui_height()/1.5)/10; //string_height("Word");
        if(mouse_check_button_pressed(mb_left)){
             if(mouse_check_button_pressed(mb_left) && realmx() > 0 && realmx() < xwidth){
                //back button
                if(realmy() > 0 && realmy() <= sprite_get_height(spr_go_back) + 4){
                    with(o_ui_residents_night){
                        instance_destroy();
                    }
                    state = noone;
                    x = xstart;
                }
                //Residents
                if(realmy() > yoffset && realmy() < yoffset*2){
                    o_ui_residents_night.state = 0;
                }
                //Applicants
                if(realmy() > yoffset*2 && realmy() < 3*yoffset){
                    o_ui_residents_night.state = 1;
                }
            }
        }
    }
    else{
        x = xstart;
        //state = noone;
    }
}
