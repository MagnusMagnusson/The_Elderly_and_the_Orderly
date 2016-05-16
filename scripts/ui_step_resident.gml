if(!ctrl.isDay){
    if(!instance_exists(o_ui_residents_night) && x >= 0){
        instance_create(0,0,o_ui_residents_night);
        x = -x;
        alarm[0] = 2;
    }
    else{
        if(instance_exists(o_ui_residents_night)){
            var xwidth =  display_get_gui_width()/6;
            yoffset = sprite_get_height(ui_menu_normal_buttons);//(display_get_gui_height()/1.5)/10; //string_height("Word");
            if(mouse_check_button_pressed(mb_left)){
                 if(realmx() > 0 && realmx() < xwidth){
                    //back button
                    if(realmx() < sprite_get_width(spr_go_back) && realmy() > 0 && realmy() <= sprite_get_height(spr_go_back) + 4){
                        with(o_ui_residents_night){
                            instance_destroy();
                        }
    
                        state = noone;
                        infoHover = noone;
                        x = xstart;
                        ctrl.hide_profile = false;
                    }
                    //Residents
                    if(realmy() > yoffset && realmy() < yoffset*2){
                        chosen_res_app = "resident";
                        o_ui_residents_night.state = 0;
                        ctrl.hide_profile = false;
                    }
                    //Applicants
                    else if(realmy() > yoffset*2 && realmy() < 3*yoffset){
                        chosen_res_app = "applicant";
                        o_ui_residents_night.state = 1;  
                        ctrl.hide_profile = false;
                    }
                }
            }
            else{
                if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back)+4){
                    infoHover = "back";
                }
                else{
                    infoHover = noone;
                }
            }
            
        }
        else{
            x = xstart;
            //state = noone;
        }
    }
}
else{
if(!instance_exists(o_ui_residents_night) && x >= 0){
        instance_create(0,0,o_ui_residents_night);
        x = -x;
        alarm[0] = 2;
    }
    else{
        if(instance_exists(o_ui_residents_night)){
            var xwidth =  display_get_gui_width()/6;
            yoffset = sprite_get_height(spr_go_back) + 8;//(display_get_gui_height()/1.5)/10; //string_height("Word");
            if(mouse_check_button_pressed(mb_left)){
                 if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back)){
                    //back button
                    if(realmy() > 0 && realmy() <= sprite_get_height(spr_go_back) + 4){
                        with(o_ui_residents_night){
                            instance_destroy();
                        }
    
                        state = noone;
                        infoHover = noone;
                        x = xstart;
                        ctrl.hide_profile = false;
                    }
                }
            }
            else{
                if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back)+4){
                    infoHover = "back";
                }
                else{
                    infoHover = noone;
                }
            }
        }
        else{
            x = xstart;
            //state = noone;
        }
    }
}
