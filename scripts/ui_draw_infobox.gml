/*This handles all info that appears in infobox*/
//Draw the infobox
//scr_draw_box();

//Variable for making cancel always show info on hover
//var hoverCancel = false;

//To make things in infobox be in correct place
var xoffset, yoffset;

xoffset = 4;
yoffset = string_height("Loy");
info_start_yoff = 62;
//Change stat* values to change in infobox
var statName, statPrice, statOrderlies, statResidents, sellPrice;
statName = "";
statPrice = "Price: ";
statOrderlies = "Orderlies: ";
statResidents = "Residents: ";
sellPrice = "Sell Price: ";
/*Add for later??*/
        //Level
        //Upgrade
//scr_draw_box();
        
//For clicking stations in room but if hovering over items in menu it will show that info
if(!infoSelected && infoHover == noone && ctrl.selected_stuff){
    //show_debug_message(ctrl.selected_id);
    //show_message("You are here");
    //1 - name
    //2 - desc
    //4 - price
    //7 - orderlies to man
    //8 - # of residents at a time
    //Use if because Magnus said oh god switch!
    //Draw the infobox
    //scr_draw_box();
    //if station is clicked
    scr_station_clicked();
}
//else if(state == "store"){
    if(hoverCancel){
        //Draw the infobox
        //scr_draw_box();
        draw_text_ext(xoffset, (display_get_gui_height()/1.5) + info_start_yoff,"If you have selected a station you can cancel#it by clicking here", yoffset, display_get_gui_width()/6);      
    } 
    //object in room selected (orderly/resident/station
    else if(!hoverCancel){
        //Station in store is selected then info about that station will be shown
        if(infoSelected && instance_exists(I)){
            //Draw the infobox
            //scr_draw_box();
            //o_Station.station_selected = false;
            switch(I.object_index){
                //#0 in store
                case(o_wall):
                    
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#0,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#0,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, ctrl.store[#0,2] , yoffset, display_get_gui_width()/6);
                    break;
                //#1 in store
                case(o_bed):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, statPrice + string(ctrl.store[#1,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_gui_width()/6);
                    break;
                //#2 in store
                case(o_TV):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_gui_width()/6);
                    break;
                //#3 in store
                case(o_Bingo):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#3,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_gui_width()/6);
                    break;
                //#4 in store
                case(o_carpet):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_gui_width()/6);
                    break;
                //#5 in store
                case(o_toilet):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#5,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#5,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#5,7]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#5,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#5,2] , yoffset, display_get_gui_width()/6);
                    break;
                case(o_buffet):
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#6,1] , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#6,4]) , yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#6,7]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#6,8]), yoffset, display_get_gui_width()/6);
                    draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#6,2] , yoffset, display_get_gui_width()/6);
                    break;
                default:
                    break;
                
                }
            }
            else{
                //Each item in store menu has info that appears in infobox when mouse hovers over it
                //o_Station.station_selected = false;
                //Draw the info box
                //scr_draw_box();
                
                /*What each number stands for*/
                //1 - name
                //2 - desc
                //4 - price
                //7 - orderlies to man
                //8 - # of residents at a time
                //Description of station is at the bottom of each station info due to yoffset issue
                switch(infoHover){
                    //Maybe move this outside?
                    case("back"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"Back to Menu", yoffset, display_get_gui_width()/6);
                        break;
                    //Maybe move this outside?
                    /*case("cancel"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"If you have selected a station#you can cancel#it by clicking here", yoffset, display_get_width()/6);
                        break;
                    *///#0 in store
                    //Wall isn't a station so it doesn't have orderlies or residents to use it.
                    case("wall"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#0,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#0,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, ctrl.store[#0,2] , yoffset, display_get_gui_width()/6);
                        break;
                    //#1 in store
                    case("bed"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, statPrice + string(ctrl.store[#1,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_gui_width()/6);
                        break;
                    //#2 in store
                    case("tv"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_gui_width()/6);
                        break;
                    //#3 in store
                    case("bingo"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#3,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_gui_width()/6);
                        break;
                    //#4 in store, shouldn't really be case disco but carpet or dancefloor...but it works
                    case("carpet"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_gui_width()/6);
                        break;
                    //#5 in store
                    case("toilet"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#5,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#5,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#5,7]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#5,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#5,2] , yoffset, display_get_gui_width()/6);
                        break;
                    //#6 in store
                    case("buffet"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#6,1] , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#6,4]) , yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#6,7]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#6,8]), yoffset, display_get_gui_width()/6);
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#6,2] , yoffset, display_get_gui_width()/6);
                        break;
                    case("minus"):
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,  "To fire, set number to less than 0" , yoffset, display_get_gui_width()/6);
                        break;
                    case("plus"):{
                        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, "To hire, set number to more than 0" , yoffset, display_get_gui_width()/6);
                        break;
                    }
                    default:
                        break;
                }
            }

        }
        else if(!infoSelected && infoHover == noone && ctrl.selected_stuff){
            //Draw the infobox
            //scr_draw_box();
            //if station is clicked
            scr_station_clicked();
        }
