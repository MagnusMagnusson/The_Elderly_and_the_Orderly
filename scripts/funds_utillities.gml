var n,f;
n =  instance_number(O_Resident);
f = (n - n*n)/3;

return min(round(f)*5,65*n);
