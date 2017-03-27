/// Copy indexes from one array to another
// scr_fill_array(target,source);
var target = argument0;
var source = argument1;
for(var i=0; i<array_length_1d(source); i++){
    target[i]=source[i];
}

return target;

