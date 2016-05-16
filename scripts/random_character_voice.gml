var object = argument0;

if(object == O_Resident){
    //Female
    if(!argument1){
        return choose("christ", "sweet");
    }
    else{
        return choose("rem", "coo")
    }
}
else if(object == O_Orderly){
    return choose("basic", "lazy", "ent");
}
