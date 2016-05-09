if(ctrl.isDay){
    exit;
}


var cost, capacity, orderlies, happyMod, moneyMod,xx,yy;
xx = room_width - 256 + 8;
yy = 16;
Y = room_height - 128
draw_rectangle_color(0,Y,room_width,room_height,$ff0000,$ff0000,$ff9999,$ff7777,false)
if(!hidden){
    for(var i = 0; i < ds_grid_width(ctrl.store) div 2;i++){
        for(var j = 0; j < 2;j++){
            draw_sprite(spr_stations,2*i + j, i * 64,Y + j*64);
        //    draw_text(i * 64,Y + j*64,ctrl.store[#(2*i + j),1]);
        }
    }
    
    draw_set_color(c_white);
    draw_rectangle(room_width - 256,room_height - 0,room_width,room_height - 128,false);
    
    draw_set_color(0);
    if(selected != noone && selected < ds_grid_width(ctrl.store)){
        /*insert getting stuff heres*/
        
        name = ctrl.store[#selected,1];
        desc  = ctrl.store[#selected,2];
        cost = ctrl.store[#selected,4];
        width = ctrl.store[#selected,5];
        height = ctrl.store[#selected,6];
        capacity = 0;
        orderlies = 0;
        happyMod = 0;
        moneyMod = 0;
        
        draw_text(xx,Y +0*yy,string(name));
        draw_text(xx,Y +1*yy,string(desc));
        draw_text(xx,Y +2*yy,"Cost: " + string(cost));
        draw_text(xx + 32,Y +3*yy,"dimentions : " + string(width) +"x"+string(height));
        draw_text(xx + 32,Y +4*yy, string(moneyMod));
    }
}

draw_set_color(c_white);
draw_rectangle(room_width - 32 - string_width(string(ctrl.funds)),0,room_width,32,false);
draw_set_color(c_black);
draw_sprite(spr_icons,1,room_width - 32 - string_width(string(ctrl.funds)),0);
draw_text(room_width - string_width(string(ctrl.funds)),16,ctrl.funds);

draw_sprite(spr_icons,2,0,0);

draw_set_font(fnt_clock);

var w = string_width("Start New Day");
draw_cool_button((room_width - w) div 2,0,w,string_height("Start New Day"),0,"Start New Day");


draw_set_font(fnt_normal);
