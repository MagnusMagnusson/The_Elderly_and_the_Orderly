//make sprite appear more to right instead of at the beginning of store menu box
var xbeginoffset = 4;
var yoffset = 64;
press = noone

//Selected
if(mouse_check_button_pressed(mb_left)){
    //Player presses go back button, 32 might need to change it is based on size of sprite
    if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
        state = "menu";
    }
    if(realmx() > xbeginoffset && realmx() < 64){
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            with(I){
                instance_destroy();
            }
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoSelected = "bed";
            press = 1;
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoSelected = "bingo";
            press = 3;
        }
        if(realmy() > 5*yoffset && realmy() < 6*yoffset){
            infoSelected = "sofa";
            press = 5;
        }
    }
    if(realmx() > (display_get_gui_width()/6)/2 && realmx() < display_get_gui_width()/6){
        //If you have selected a station before then we must destroy it when you select another
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            infoSelected = "wall";
            press = 0;
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoSelected = "tv";
            press = 2;
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoSelected = "disco";
            press = 4;
        }
    }
    //Station selected appears where the mouse is
    if(press != noone && press < ds_grid_width(ctrl.store)){
        show_debug_message(string(press));
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
else{  
    if(realmx() > xbeginoffset && realmx() < 64){ 
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            infoState = "store";
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoState = "store";
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoState = "store";
        }
    }
    if(realmx() > (display_get_gui_width()/6)/2 && realmx() < display_get_gui_width()/6){
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            infoState = "store";
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoState = "store";
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoState = "store";
        }
    }
}
