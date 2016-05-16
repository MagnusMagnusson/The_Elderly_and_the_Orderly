var object = argument0;

if(object == O_Resident){
    //Female
    if(!argument1){
        return choose("Christian", "Sweetheart");
    }
    else{
        return choose("Reminising", "coot")
    }
}
else if(object == O_Orderly){
    return choose("Basic", "Lazy", "enthusiastic");
}
