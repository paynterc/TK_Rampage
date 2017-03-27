/// Get a single value for the submitted index. Check that index exists
//scr_array_get(array,index)
var a = argument0;
var i = argument1;
if(i<array_length_1d(a)){
    return a[i];
}

return noone;

