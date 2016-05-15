xoffset = 4;
startoffset = sprite_get_height(spr_go_back)+4;
//night ui staff
if(!ctrl.isDay){
    var fire;
    if(mouse_check_button_pressed(mb_left)){
        //Player presses go back button
        if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back) + 4){
            infoSelected = false;  
            hover = true;
            state = noone;
            infoHover = noone;
            orderly_number = 0;
            orderly_salary = funds_salary();
            orderly_instance = instance_number(O_Orderly);
        }
        if(realmy() > 2*yoffset + startoffset && realmy() < 2*yoffset + startoffset + sprite_get_height(spr_plus_minus)){
            //Clicks minus image
            if(realmx() > 2*xoffset && realmx() < 2*xoffset + sprite_get_width(spr_plus_minus)){
                if(orderly_instance > 0){
                    orderly_number -= 1;
                    orderly_salary -= 10;
                    orderly_instance -= 1;
                    
                }
                else{
                    //Message about not having any orderlies to fire
                }
            }
            //Clicks plus image
            else if(realmx() > xoffset + 128 && realmx() < xoffset + 128 + sprite_get_width(spr_plus_minus)){
                //show_message("plus image" + string(orderly_number));
                if(ctrl.funds - orderly_salary > 0){ 
                    orderly_number += 1;
                    orderly_salary += 10;
                    orderly_instance += 1;
                }
            }
        }
        //Clicks check image
        if(realmy() > 3*yoffset + startoffset + sprite_get_height(spr_plus_minus) && realmy() < 3*yoffset + startoffset + 
                sprite_get_height(spr_plus_minus) + sprite_get_height(spr_cute_check)){
            if(realmx() > xoffset + 128 && realmx() < xoffset + 128 + sprite_get_height(spr_cute_check)){
                //Firing
                if(orderly_number < 0){
                    num = instance_number(O_Orderly);
                    num_fire = abs(orderly_number);
                    //show_message(num_fire);
                    for(var i = num; i > num-num_fire ; i--){
                        fire = instance_find(O_Orderly, i-1);
                        with(fire){
                            instance_destroy();
                        } 
                    }
                    ctrl.funds += abs(orderly_number)*10;
                    orderly_number = 0;
                    orderly_salary = funds_salary();
                    orderly_instance = instance_number(O_Orderly);
                    
                }
                //hiring
                else if(orderly_number > 0){
                    //show_message(orderly_number);
                    for(var i = orderly_number; i > 0; i--){
                        //range from ctrl basic room, to make sure orderlies appear within the house
                        instance_create( random_range(1, 961), random_range(151 div 31 + 1, 558), O_Orderly);
                    }
                    ctrl.funds -= abs(orderly_number)*10;
                    orderly_number = 0;
                    orderly_salary = funds_salary();
                    orderly_instance = instance_number(O_Orderly);
                }
            } 
        }
    }
    else{
        if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back)+4){
                infoHover = "back";
        }
        else if(realmy() > 2*yoffset + startoffset && realmy() < 2*yoffset + startoffset + sprite_get_height(spr_plus_minus)){
            //Hovers over minus image
            if(realmx() > 2*xoffset && realmx() < 2*xoffset + sprite_get_width(spr_plus_minus)){
                infoHover = "minus";
            }
            //Hovers over plus image
            else if(realmx() > xoffset + 128 && realmx() < xoffset + 128 + sprite_get_width(spr_plus_minus)){
                infoHover = "plus";
            }
        }
        //Hovers over check image
        else if(realmy() > 3*yoffset + startoffset + sprite_get_height(spr_plus_minus) && realmy() < 3*yoffset + startoffset + sprite_get_height(spr_plus_minus) + sprite_get_height(spr_cute_check)){
            if(realmx() > xoffset + 128 && realmx() < xoffset + 128 + sprite_get_height(spr_cute_check)){
                infoHover = "check";
            }
            else{
                infoHover = noone;
            }
        }
        else{
            infoHover = noone;
        }
    }
}
//daytime staff ui
else{
    if(mouse_check_button_pressed(mb_left)){
        if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back) + 4){
            state = noone;
            infoHover = noone;
        }
        selected = noone;
        for(var i = 0; i < instance_number(O_Orderly);i++){
            var X,Y;
            X = display_get_gui_width() div 2 + 62*(i % 5);
            Y = 16 + display_get_gui_height() div 2 + 115*(i div 5)- 256; 
            if(inside_range(realmx(),realmy(),X,Y,X+62,Y + 64 + 20 + 31)){
                selected = i;
            }
        }  
    }
    else if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back)+4){
        infoHover = "back";
    }
    else{
        infoHover = noone;
    }
    /*if(mouse_check_button_pressed(mb_left)){
        
    }*/

}
