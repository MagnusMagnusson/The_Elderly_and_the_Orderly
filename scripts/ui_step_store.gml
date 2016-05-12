//make sprite appear more to right instead of at the beginning of store menu box
var xbeginoffset = 4;
var yoffset = 64;
press = noone
var n = ds_grid_width(ctrl.store) div 2;
//Selected
if(mouse_check_button_pressed(mb_left)){
    //Player presses go back button, 64 might need to change, it is based on size of something
    if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
        with(I){
                instance_destroy();   
        }
        infoSelected = false;  
        hover = true;
        state = "menu";
    }
    if(realmx() > xbeginoffset && realmx() < 64){
        //Cancel
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            with(I){
                instance_destroy();   
            }
            infoSelected = false;  
            hover = true;
        }
        //Draw left hand column
        for(var i = 3; i < 3 + n; i++){
            if(realmy() > i*yoffset && realmy() < (i+1)*yoffset){
                show_message("LEFT " + string(i));
                infoselected = true;
                press = 2*i - 5;
                hover = false;
            }
        }
    }
    if(realmx() > (display_get_gui_width()/6)/2 && realmx() < display_get_gui_width()/6){
        //If you have selected a station before then we must destroy it when you select another
        for(var i = 2; i < 3 + n; i++){
            if(realmy() > i*yoffset && realmy() < (i+1)*yoffset){
                infoselected = true;
                press = 2*i - 4;
                hover = false;
            }
        }
    }
    //Station selected appears where the mouse is
    if(press != noone && press < ds_grid_width(ctrl.store)){
        show_debug_message(string(press));
        with(I){
            instance_destroy();
            infoSelected = false;
            hover = true;
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
else if(hover && state == "store"){ 
    if(realmx() > xbeginoffset && realmx() < 64){
        if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
            infoHover = "back";
        }
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            infoHover = "cancel";
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoHover = "bed";
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoHover = "bingo";
        }
        if(realmy() > 5*yoffset && realmy() < 6*yoffset){
            infoHover = "sofa";
        }
    }
    else if(realmx() > (display_get_gui_width()/6)/2 && realmx() < display_get_gui_width()/6){
        //If you have selected a station before then we must destroy it when you select another
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            infoHover = "wall";
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            infoHover = "tv";
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            infoHover = "disco";
        }
    } 
    else{
        infoHover = noone;
    }
}
