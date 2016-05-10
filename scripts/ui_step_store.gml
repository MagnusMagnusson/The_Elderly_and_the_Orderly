//make sprite appear more to right instead of at the beginning of store menu box
var xbeginoffset = 4;
var yoffset = 64;


//Selected
if(mouse_check_button_pressed(mb_left)){
    //Player presses go back button, 32 might need to change it is based on size of sprite
    if(display_mouse_get_x() > 0 && display_mouse_get_x() < 64 && display_mouse_get_y() > 0 && display_mouse_get_y() < 64){
        instance_destroy();
        state = "menu";
    }
    /*if(ctrl.isclicked && being_built){
        with(ctrl.selected){
            instance_destroy();
            ctrl.isclicked = false;
        }
    }*/
    if(display_mouse_get_x() > xbeginoffset && display_mouse_get_x() < 64){
        //If you have selected a station before then we must destroy it when you select another
        
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoSelected = "wall";
            press = 0;
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoSelected = "tv";
            press = 2;
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoSelected = "disco";
            press = 4;
        }
    }
    if(display_mouse_get_x() > (display_get_width()/6)/2 && display_mouse_get_x() < display_get_width()/6){
        //If you have selected a station before then we must destroy it when you select another
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoSelected = "bed";
            press = 1;
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoSelected = "bingo";
            press = 3;
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoSelected = "sofa";
            press = 5;
        }
    }
    //Station selected appears where the mouse is
    if(press != noone && press < ds_grid_width(ctrl.store)){
        show_debug_message(string(press));
        var I;
        I = instance_create(0,0,ctrl.store[#press,0]);
        I.name = ctrl.store[#press,1]
        I.desc = ctrl.store[#press,2]
        I.price = ctrl.store[#press,4]
        I.width = ctrl.store[#press,5]
        I.height = ctrl.store[#press,6]
        I.being_built = true;
    }
} 
//if item is hovered over, then ifo needs to show in infobox
//info it needs is name, description, price, number of orderlies needed, number of residents that 
//can use them, upgrade?
else{  
    if(display_mouse_get_x() > xbeginoffset && display_mouse_get_x() < 64){ 
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoState = "store";
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoState = "store";
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoState = "store";
        }
    }
    if(display_mouse_get_x() > (display_get_width()/6)/2 && display_mouse_get_x() < display_get_width()/6){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoState = "store";
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoState = "store";
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoState = "store";
        }
    }
}
