///station_animate()

switch(object_index){
    case o_TV:{
        for(var i = 0; i < current_resident_count; i++){
            if(instance_exists(current_residents[i])){
                draw_person(x + 31*(i-1),y - (31 * (-1*(y < room_height / 2))),current_residents[i],2);
            }
        }
        break;
    }    
    case o_Bingo:{
        for(var i = 0; i < current_resident_count; i++){
            if(instance_exists(current_residents[i])){
                draw_person(x + 31*(i div 3),y - (31 *(i % 3)* (-1*(y < room_height / 2))),current_residents[i],0);
            }
        }
        break;
    }
    case o_toilet:{
        image_index = 1;
        break;
    }
    case o_disco:
    case o_carpet:{
         for(var i = 0; i < current_resident_count; i++){
            if(instance_exists(current_residents[i])){
                var theta = pi * get_timer()/100000
                draw_person(x + 31*(i div 3) + 8*cos(theta),y + 31 *(i % 3)+ 8*sin(theta),current_residents[i],current_second);
            }
        }
        break;
    }
    case o_buffet:{
        for(var i = 0; i < current_resident_count; i++){
            if(instance_exists(current_residents[i])){
                draw_person(x + 15 ,y -( 15 * (-1*(y < room_height / 2))),current_residents[i],current_second);
            }
        }
        break;
    }
}
