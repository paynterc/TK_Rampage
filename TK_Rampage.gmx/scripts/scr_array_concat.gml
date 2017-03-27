/// Concatenate an array to a string
//scr_array_concat(array,delimiter)
var a = argument0;
var d = argument1;
var s = "";
var l = array_length_1d(a);

for(var i=0; i < l; i++){
    s += string(a[i]);
    if(i< l-1) s+=string(d);
}

return s;

