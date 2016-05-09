/// mouse presses
var press = noone;
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
}
