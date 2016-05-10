if(!instance_exists(o_ui_residents_night) && x > 0){
    instance_create(0,0,o_ui_residents_night);
    x = -1;
}
else{
    if(instance_exists(o_ui_residents_night)){
    }
    else{
        x = xstart;
        state = 0;
    }
}
