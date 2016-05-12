/*This handles all info that appears in infobox*/
//Draw the infobox
scr_draw_box();

//Variable for making cancel always show info on hover
var hoverCancel = false;

//To make things in infobox be in correct place
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
/*Add for later??*/
        //Level
        //Upgrade
        
//Are you hovering over the cancel button
if(state == "store" && realmx() > 4 && realmx() < 64 && realmy() > 2*64 && realmy() < 3*64){
    hoverCancel = true;
}
//No I am not hovering over it
else{
    hoverCancel = false;
} 

//This makes station info disappear when holding station in "hand" and cancel info appear     
if(hoverCancel){
        //Draw the infobox
        scr_draw_box();
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"If you have selected a station#you can cancel#it by clicking here", yoffset, display_get_width()/6);      
}
//Station in room is selected, will need to do some magic if we want to make walls also selectable/sellable
if(o_Station.station_selected){
    //1 - name
    //2 - desc
    //4 - price
    //7 - orderlies to man
    //8 - # of residents at a time
    //Use if because Magnus said oh god switch!
    
    //Draw the infobox
    scr_draw_box();
    
    //show_message(o_Station.station_id.type);
    if(o_Station.station_id.type == "Bed"){
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#1,1] , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+ 64 + yoffset, "Sell Price: +" + string(ctrl.store[#1,4]/2) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#1,7]) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#1,8]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#1,2], yoffset, display_get_width()/6);
    }
    if(o_Station.station_id.type == "bingo"){
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#3,1] , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, "Sell Price" + string(ctrl.store[#3,4]) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#3,7]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#3,8]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#3,2] , yoffset, display_get_width()/6);          
    }
    if(o_Station.station_id.type == "TV"){
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#2,1] , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#2,4]) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies +  string(ctrl.store[#2,7]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#2,8]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#2,2] , yoffset, display_get_width()/6);
                
    }
    else if(o_Station.station_id.type == "Disco"){
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#6,1] , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#6,4]) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#6,7]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#6,8]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#6,2] , yoffset, display_get_width()/6);
        
    }
    else if(o_Station.station_id.type == "Dancefloor"){
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64, statName + ctrl.store[#4,1] , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + yoffset, statPrice + string(ctrl.store[#4,4]) , yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 2*yoffset, statOrderlies + string(ctrl.store[#4,7]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 3*yoffset, statResidents + string(ctrl.store[#4,8]), yoffset, display_get_width()/6);
        draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64 + 4*yoffset, ctrl.store[#4,2] , yoffset, display_get_width()/6); 
    }
    
    
}
//or just regular station info
if(infoSelected && !hoverCancel){
    if(state == "store" && instance_exists(I)){
        //Draw the infobox
        scr_draw_box();
        
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
            case(o_carpet):
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
else if(!hoverCancel){
    //Each item in store menu has info that appears in infobox when mouse hovers over it
    if(state == "store" && !hoverCancel){
        o_Station.station_selected = false;
        //Draw the info box
        scr_draw_box();
        
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
            /*case("cancel"):
                draw_text_ext(xoffset, (display_get_gui_height()/1.5)+64,"If you have selected a station#you can cancel#it by clicking here", yoffset, display_get_width()/6);
                break;*/
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
            //#4 in store, shouldn't really be case disco but carpet or dancefloor...but it works
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

