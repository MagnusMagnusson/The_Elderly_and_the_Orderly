var xoffset, yoffset;

xoffset = 4;
yoffset = string_height("Loy");
 
//Change stat* values to change in infobox
var statName, statPrice, statOrderlies, statResidents, sellPrice;
statName = "Station: ";
statPrice = "Price: ";
statOrderlies = "Orderlies: ";
statResidents = "Residents: ";
sellPrice = "Sell Price: ";

if(ctrl.selected_id == o_TV){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_gui_width()/6);          
}
//show_message(o_Station.station_id.type);
if(ctrl.selected_id == o_bed){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, "Sell Price: +" + string(ctrl.store[#1,4]/2) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_gui_width()/6);
}
if(ctrl.selected_id == o_Bingo){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, "Sell Price" + string(ctrl.store[#3,4]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_gui_width()/6);          
}
/*if(o_Station.station_id.type == "TV"){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_gui_width()/6);          
}*/
if(ctrl.selected_id == o_disco){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#6,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#6,4]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#6,7]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#6,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#6,2] , yoffset, display_get_gui_width()/6);
    
}
if(ctrl.selected_id == o_carpet){
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_gui_width()/6);
    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_gui_width()/6); 
}
if(ctrl.selected_id == O_Resident){
    draw_sprite_ext((ctrl.select_peeps).head, 0, 0, (display_get_gui_height()/1.5), 3, 3, false, c_white, 1);
    draw_sprite_ext((ctrl.select_peeps).hair, 0, 0, (display_get_gui_height()/1.5), 3, 3, false, c_white, 1);
    draw_text_ext(xoffset + sprite_get_width(spr_smile) + 4, (display_get_gui_height()/1.5)+64 + (sprite_get_height(spr_smile)/2), (ctrl.select_peeps).name , yoffset, display_get_gui_width()/6);
    draw_sprite(spr_smile,4-round((ctrl.select_peeps).happiness / 25),xoffset, (display_get_gui_height()/1.5)+72);
    
}
if(ctrl.selected_id == O_Orderly){
    draw_sprite_ext((ctrl.select_peeps).head, 0, 0, (display_get_gui_height()/1.5), 3, 3, false, c_white, 1);
    draw_sprite_ext((ctrl.select_peeps).hair, 0, 0, (display_get_gui_height()/1.5), 3, 3, false, c_white, 1);
    draw_text_ext(xoffset + 4, (display_get_gui_height()/1.5)+72 , (ctrl.select_peeps).name , yoffset, display_get_gui_width()/6);
}

