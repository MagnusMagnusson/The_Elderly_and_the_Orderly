//switch sentence between store, station, person. Store is default case.
draw_set_colour(c_gray);
draw_rectangle(0 , display_get_height()/1.5, display_get_width()/6 , display_get_height(), false);
draw_set_colour(c_black);
draw_sprite(spr_icons, 1, (display_get_width()/6) - string_width(string(ctrl.funds))-40,  display_get_height()/1.5);
draw_text((display_get_width()/6) - string_width(string(ctrl.funds))-4, display_get_gui_height()/1.5, ctrl.funds);
var xoffset, yoffset;
xoffset = 4;
yoffset = string_height("Loy");

if(infoSelected){
    if(state == "store" && instance_exists(I)){
        switch(I.object_index){
            //#0 in store
            case(o_wall):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#0,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#0,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, ctrl.store[#0,2] , yoffset, display_get_width()/6);
                break;
            //#1 in store
            case(o_bed):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, statPrice + string(ctrl.store[#1,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_width()/6);
                break;
            //#2 in store
            case(o_TV):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_width()/6);
                break;
            //#3 in store
            case(o_Bingo):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#3,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_width()/6);
                break;
            //#4 in store
            case(o_disco):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_width()/6);
                break;
            //#5 in store
            case(o_sofa):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#5,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#5,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#5,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#5,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#5,2] , yoffset, display_get_width()/6);
                break;
            default:
                break;
            
        }
    }
}
else{
    //Each item in store menu has info that appears in infobox when mouse hovers over it
    if(state == "store"){
        /*Change stat values to change in infobox*/
        statName = "Station: ";
        statPrice = "Price: ";
        statOrderlies = "Orderlies: ";
        statResidents = "Residents: ";
        /*Add for later*/
        //Level
        //Upgrade
        
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
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"Back to Menu", yoffset, display_get_width()/6);
                break;
            //Maybe move this outside?
            case("cancel"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"If you have selected a station#you can cancel#it by clicking here", yoffset, display_get_width()/6);
                break;
            //#0 in store
            //Wall isn't a station so it doesn't have orderlies or residents to use it.
            case("wall"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#0,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#0,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, ctrl.store[#0,2] , yoffset, display_get_width()/6);
                break;
            //#1 in store
            case("bed"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, statPrice + string(ctrl.store[#1,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_width()/6);
                break;
            //#2 in store
            case("tv"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_width()/6);
                break;
            //#3 in store
            case("bingo"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#3,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_width()/6);
                break;
            //#4 in store
            case("disco"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_width()/6);
                break;
            //#5 in store
            case("sofa"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#5,1] , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#5,4]) , yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#5,7]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#5,8]), yoffset, display_get_width()/6);
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#5,2] , yoffset, display_get_width()/6);
                break;
            default:
                break;
        }
    }

}

