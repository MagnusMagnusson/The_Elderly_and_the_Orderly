
switch(state){
    case 0:{
        state = 1;
        break;
    }
    case 1:{
        if(y > 260){
            y -= 14 * scr_delta();
                if(abs(y-260) < 10 * scr_delta()){
                    y = 260;
                    state = 2;
                    for (i = 0; i < 12; i++){
                        var Id = instance_create(x,y,o_gift);
                        Id.speed = 10 * scr_delta();
                        Id.direction = 90 + 15*(i+1);
                    }
                }
        }
        break;
    }
    case 2:{
        if(y < room_height - 260){
            y += 14 * scr_delta();
                if(abs(y-(room_height - 260)) < 10 * scr_delta()){
                    y = (room_height - 260);
                    state = choose(1,1,1,3,5);
                    for (i = 0; i < 12; i++){
                        var Id = instance_create(x,y,o_gift);
                        Id.speed = 10 * scr_delta();
                        Id.direction = 90 + 15*(i+1);
                    }
                }
        }
        break;
    }
    case 3:{
        if(y != ystart){
            y -= 3*scr_delta()*sign(y-ystart);
            if(abs(y-ystart)<3*scr_delta()){
                y = ystart;
                state = 4;
                I = 300;
            }
        }
        else{
            state = 1;
        }
        break;
    }
    case 4:{
        if(I>0){
            if(count > 0){
                count = 0;
                var ID = instance_create(x,y,o_gift);
                ID.speed = 9 * scr_delta();
                ID.direction = I*13.3
                I--;
            }
        }
        else{
            state = choose(3,3,7);
        }
        break;
    }
    case 5:{
        if(!alarm[1]){
            alarm[1] = room_speed * 3;
        }
        if(alarm[1] == 1){
            state = choose(1,6,6,6,6,6,4,4,7,7,10,1);
            I = 3;
            if(state == 4){
                I = 300;
            }
            alarm[1] = -1;
        }
        break;
    }
    case 6:{
        if(I > 0){
            if(!alarm[1]){
                for(i = 0; i < 5; i++){
                    var ID = instance_create(x,y,o_gift);
                    ID.speed = 8 * scr_delta();
                    ID.direction = 95 + I*25 + i*5; 
                }
                I--;
                alarm[1] = room_speed * 1/4;
            }
        }
        else{
            state = 7;
            I=3;
        }
        break;
    }
   case 7:{
        if(I > 0){
            if(!alarm[1]){
                for(i = 0; i < 5; i++){
                    var ID = instance_create(x,y,o_gift);
                    ID.speed = 8 * scr_delta();
                    ID.direction = 265 - I*25 - i*5;
                }
                I--;
                alarm[1] = room_speed * 1/3;
            }
        }
        else{ 
            I=200;
            state = choose(1,8,8,8,4,6,6,6);
            if(state = 6){
                I = 3;
            }
           
        }
        break;
    }
    case 8:{
        if(y == ystart){
            y += 5
            I = 350;
        }
        else{
            if(count > 1.5){
                count = 0;
                I--;
                y += sign(ystart-y) * 10;
                var ID = instance_create(room_width div 2 + lengthdir_x(1000,-I*(36 - (I/1000))),
                room_height div 2 + lengthdir_y(1000,-I*(36 - (I/1000))),
                o_gift);
                ID.speed = 8 * scr_delta();
                ID.direction = point_direction(ID.x,ID.y,room_width div 2,room_height div 2);
                ID.outside = true;
                if(I<=0){
                    I = room_speed * 10;
                    state = 9;
                }
            }
        }
        break;
    }
    case 9:{
        if(I>0){
            I--;
        }
        else{
            state = choose(1,5,5,10,10);
        }
        break;
    }
    case 10:{
        if(image_alpha >= 0){
            image_alpha -= 0.04 * scr_delta();
        }
        else{
            scr_wave(8);
            scr_wave(5);
            scr_wave(7);
            state = 11;
        }
        break;
    }
    case 11:{
        if(!instance_exists(o_deer)){
            state = 12;
        }
        break;
    }
    case 12:{
        if(image_alpha < 1){
            image_alpha += 0.04 * scr_delta();
        }
        else{
            state = 1;
        }
        break;
    }
}
