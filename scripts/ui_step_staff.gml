if(mouse_check_button_pressed(mb_left)){
    //Player presses go back button, 64 might need to change, it is based on size of something
    if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
        infoSelected = false;  
        hover = true;
        state = "menu";
    }
}
else{
    if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
            infoHover = "back";
    }
}
