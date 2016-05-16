for(var i = 0; i < instance_number(O_Resident); i++){
    var I = instance_find(O_Resident,i);
    if(I.happiness <= (10 + ( 1 - I.sadtolerance)*10)){
        I.sadtolerance--;
        if(I.sadtolerance < 0){
            with(I){
                instance_destroy();
            }
            ctrl.left++;
        }
    }
}
