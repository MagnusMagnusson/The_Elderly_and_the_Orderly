//make sprite appear more to right instead of at the beginning of store menu box
var xbeginoffset = 4;
var yoffset = 64;
//Selected
if(mouse_check_button_pressed(mb_left)){
    //Player presses go back button, 32 might need to change it is based on size of sprite
    if(display_mouse_get_x() > 0 && display_mouse_get_x() < 64 && display_mouse_get_y() > 0 && display_mouse_get_y() < 64){
        state = "menu";
    }
    if(display_mouse_get_x() > xbeginoffset && display_mouse_get_x() < 64){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoSelected = "wall";
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoSelected = "tv";
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoSelected = "disco";
        }
    }
    if(display_mouse_get_x() > (display_get_width()/6)/2 && display_mouse_get_x() < display_get_width()/6){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            infoSelected = "bed";
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            infoSelected = "bingo";
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            infoSelected = "sofa";
        }
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

//Not sure what to do with this at the moment
/// mouse presses
/*var press = noone;
var Y = room_height - 128;

if(mouse_check_button_pressed(mb_left)){
    if(mouse_x < 64 && mouse_y < 64){
        hidden = !hidden;
    }
    //Check if there is a new day command
    draw_set_font(fnt_clock);
    var w = string_width("Start New Day");
    if(inside_range(mouse_x,mouse_y,(room_width - w) div 2,0,(room_width +w) div 2,string_height("L"))){
        ctrl.timeLeft = ctrl.dayDuration;
        ctrl.isDay = true;
    }
    draw_set_font(fnt_normal);
}

if(!hidden && !ctrl.isDay){
    if(mouse_check_button_pressed(mb_left)){
        for(var i = 0; i < ds_grid_width(ctrl.store) div 2;i++){
            for(var j = 0; j < 2;j++){
                //draw_sprite(spr_stations,2*i + j, i * 64,Y + j*64);
                if(mouse_x > i * 64 && mouse_x < (1+i) * 64){
                    if(mouse_y > Y + j * 64 && mouse_y < Y +(1+j) * 64){
                        press = 2*i + j;
                    }
                }
            }
        }
    }
    
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
    
    if(mouse_check_button_pressed(mb_right)){
        for(var i = 0; i < ds_grid_width(ctrl.store) div 2;i++){
            for(var j = 0; j < 2;j++){
                //draw_sprite(spr_stations,2*i + j, i * 64,Y + j*64);
                if(mouse_x > i * 64 && mouse_x < (1+i) * 64){
                    if(mouse_y > Y + j * 64 && mouse_y < Y +(1+j) * 64){
                        selected = 2*i + j;
                    }
                }
            }
        }
    }
}*/
