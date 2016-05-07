switch(argument0){
    case 0:{
        for(var i = 0; i < 3; i++){
            instance_create(room_width + 50 + 30*i,64 + 256*i,o_deer);
        }
        break;
    }
    case 2:{
        for(var i = 0; i < 3; i++){
            instance_create(room_width + 50 + 80*i,64 + 256*i,o_deer);
        }
        for(var i = 0; i < 3; i++){
            instance_create(room_width + 80 + 80*i,room_height - 64 - 256*i,o_deer);
        }
            instance_create(room_width + 220 + 80*i,64 + 256*i,o_deer);
        for(var i = 0; i < 3; i++){
            instance_create(room_width + 260 + 80*i,room_height - 64 - 256*i,o_deer);
        }
        break;
    }
    case 3:{
        if(count > 30)
        { 
            I--;
            count = 0;
            var i = instance_create(room_width + 128,150,o_deer);
            i.mode = 1;
            i = instance_create(room_width + 128,room_height - 150,o_deer);
            i.mode = 1;
        }
        break;
    }
    case 5:{
        instance_create(room_width + 32,256,o_explogift);
        instance_create(room_width + 32,room_height - 256,o_explogift);
        break;
    }
    case 7:{
        for(var i = 0; i < 15; i++){
            var j = instance_create(room_width + 128 + 64*i,room_height div 2 - 128,o_deer);
            j.mode = 2;
        }
        break;
    }
    case 8:{
        var i;
        i = instance_create(room_width + 128,-128,o_elf);
        i.targetx = room_width - 256;
        i.targety = 256;
        i = instance_create(room_width + 128,room_height + 128,o_elf);
        i.targetx = room_width - 256;
        i.targety = room_height - 256;
        break;
    }
}
