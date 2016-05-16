if(y > 0){
    audio_play_sound(snd_chime,1,false);
    y = -1;
    x = display_get_gui_width() + 256
    bounce = 0;
}
else{
    hspeed = -.2* abs((x - display_get_gui_width() div 2)) - .5
    if(x < -256 && !instance_exists(o_applicant)){
        y = 1;
        x = 0;
        hspeed = 0;
        ctrl.isDay = false;
        funds += funds_get();
        timeLeft = dayDuration;
        reputation_update();
        applicants_get();
        resident_leaving_update();
        instance_create(0,0,o_funds);
        state = noone;
    }
}

