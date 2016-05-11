///next_power_up(n)
//takes n, and returns the lowest integer number 2^k so that 2^k > n
var n;
n = argument0;
var k = 1;
if(n < 0){
    return 1;
}

while(k < n){
    k = k << 1;
}

return k;
