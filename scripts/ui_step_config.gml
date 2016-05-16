//Night menu
//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.
//If these 2 sentences are changed then ui_draw_menu also needs to change
if(!ctrl.isDay){
    var xwidth =  display_get_gui_width()/6;
    yoffset = (display_get_gui_height()/1.5)/10;
    
    /*CLICKS*/
    if(mouse_check_button_pressed(mb_left) && realmx() > 0 && realmx() < xwidth){
        //Select store
        if(realmy() > 0 && realmy() < yoffset){
            state = "menu";
            with(o_contex){
                instance_destroy();
            }
        }
        var butt = realmy() div yoffset;
        switch(o_contex.station.object_index){
            case o_buffet:{
            ////////////////////////////////Start Buffet
                switch(butt){
                    case 1:{
                        (o_contex.station).image_index = ((o_contex.station).image_index + 1) % 5;
                        break;
                    }
                }
                break;
            }////////////////////////////END BUFFET            
            case o_Bingo:{
            ////////////////////////////////Start Bingo
                switch(butt){
                    case 1:{
                        (o_contex.station).prizelevel = ((o_contex.station).prizelevel + 1) % 10;
                        break;
                    }
                }
                break;
            }////////////////////////////END Bingo
            default:{
                break;
            }
        }
    }
}

