//make sprite appear more to right instead of at the beginning of store menu box
var xbeginoffset = 12;
var yoffset = 72;
press = noone
var n = abs(sprite_get_number(spr_store_icons) div 2); // ds_grid_width(ctrl.store) div 2;
//Selected
if(mouse_check_button_pressed(mb_left) && realmx() < (display_get_gui_width()/6)){
    infoHover = noone;
    //Player presses go back button
    if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back)+4){
        with(I){
                instance_destroy();   
        }
        //back button
        back_effect = true;
        //Maybe this will be needed, just in case I will leave this here as a reminder
        //infoHover = noone;
        infoSelected = false;  
        //hover = true;
        state = noone;
    }
    else if(realmx() > xbeginoffset && realmx() < xbeginoffset + sprite_get_width(spr_store_icons)){
        //Cancel
        if(realmy() > 2*yoffset && realmy() < 2*yoffset + sprite_get_height(spr_store_icons)){
            with(I){
                instance_destroy();   
            }
            infoSelected = false;  
            hover = true;
            hoverCancel = false;
            
        }
        //Draw left hand column
        for(var i = 3; i < 3 + n; i++){
            if(realmy() > i*yoffset && realmy() < (i*yoffset)+ sprite_get_height(spr_store_icons)){
                infoSelected = true;
                press = 2*i - 5;
                hover = false;
                selected_id = noone;
                selected_stuff = false;
            }
        }
    }
    else if(realmx() > (display_get_gui_width()/6)/2 && realmx() < (display_get_gui_width()/6)/2 + sprite_get_width(spr_store_icons)){
        hoverCancel = false;
        //If you have selected a station before then we must destroy it when you select another
        for(var i = 2; i < 3 + n; i++){
            if(realmy() > i*yoffset && realmy() < (i*yoffset) + sprite_get_width(spr_store_icons)){
                infoSelected = true;
                press = 2*i - 4;
                hover = false;
                selected_id = noone;
                selected_stuff = false;
                
            }
        }
    }
    else{
        hover = true;
    }
    //Station selected appears where the mouse is, press cannot be more then items in store minus cancel item
    if(press != noone && press < sprite_get_number(spr_store_icons) - 1){ // ds_grid_width(ctrl.store)){
        //show_debug_message(string(press));
        with(I){
            instance_destroy();
        }
        I = instance_create(0,0,ctrl.store[#press,0]);
        I.name = ctrl.store[#press,1]
        I.desc = ctrl.store[#press,2]
        I.price = ctrl.store[#press,4]
        I.width = ctrl.store[#press,5]
        I.height = ctrl.store[#press,6]
        I.being_built = true;
        cancel_build = true
    }
} 
//if item is hovered over, then ifo needs to show in infobox
//info it needs is name, description, price, number of orderlies needed, number of residents that 
//can use them, upgrade?
else if(state == "store" && (display_get_gui_width()/6) && realmy() < display_get_height()/1.5  ){ 
    //Hover over back button
    if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back) + 4){     
        infoHover = "back";
        hoverCancel = false;
        //o_Station.station_selected = false;
    }
    //Left side of store sprites
    else if(realmx() > xbeginoffset && realmx() < xbeginoffset + sprite_get_width(spr_store_icons)){
        //Hover over cancel will always show info about it in infobox
        if(realmy() > 2*yoffset && realmy() < 2*yoffset + sprite_get_height(spr_store_icons)){
            //show_message("I am hovering");
            hoverCancel = true;
            infoHover = "cancel";
        }
        else{
            hoverCancel = false;
            infoHover = noone;
            /*if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
                
                infoHover = "back";
                o_Station.station_selected = false;
            }*/
            if(realmy() > 3*yoffset && realmy() < 3*yoffset + sprite_get_height(spr_store_icons)){
                infoHover = "bed";
            }
            else if(realmy() > 4*yoffset && realmy() < 4*yoffset + sprite_get_height(spr_store_icons)){
                infoHover = "bingo";
            }
            else if(realmy() > 5*yoffset && realmy() < 5*yoffset + sprite_get_height(spr_store_icons)){
                //Technically this should be toilet but then I have to change it everywhere else
                infoHover = "toilet";
            }
        }
        
    }
    else if(realmx() > (display_get_gui_width()/6)/2 && realmx() < (display_get_gui_width()/6)/2+sprite_get_width(spr_store_icons)){
        hoverCancel = false;
        infoHover = noone;
        //If you have selected a station before then we must destroy it when you select another
        if(realmy() > 2*yoffset && realmy() < 2*yoffset + sprite_get_height(spr_store_icons)){
            infoHover = "wall";
        }
        else if(realmy() > 3*yoffset && realmy() < 3*yoffset + sprite_get_height(spr_store_icons)){
            infoHover = "tv";
        }
        else if(realmy() > 4*yoffset && realmy() < 4*yoffset + sprite_get_height(spr_store_icons)){
            infoHover = "carpet";
        }
        else if(realmy() > 5*yoffset && realmy() < 5*yoffset + sprite_get_height(spr_store_icons)){
            //Technically this should be toilet but then I have to change it everywhere else
            infoHover = "buffet";
        }
    } 
    else{
        infoHover = noone;
        hoverCancel = false;
    }
}
