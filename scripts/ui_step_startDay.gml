if(y > 0){
    audio_play_sound(snd_rooster,1,false);
    y = -1;
    x = -256;
    bounce = 0;
}
else{
    
    hspeed = .2* abs((x - display_get_gui_width() div 2)) + .5
    if(x > display_get_gui_width() +256){
        y = 1;
        x = 0;
        hspeed = 0;
        ctrl.isDay = true;
        ctrl.day++;
        state = noone;
        with(o_applicant){
            instance_destroy();
        }
    }
}

