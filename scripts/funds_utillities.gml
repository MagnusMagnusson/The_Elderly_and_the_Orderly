var n,f;
n =  instance_number(O_Resident);
f = (n*n - n)/3;

return clamp(round(f)*5,0,65*n);
