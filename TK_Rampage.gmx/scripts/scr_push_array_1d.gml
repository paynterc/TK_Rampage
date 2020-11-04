/// scr_push_array_1d(array,newvalue)
//Adds a value to the end of an array. scr_push_array(array,value);

if(argument0[0]==noone){
    argument0[@ 0] = argument1;
}else{
    argument0[@ array_length_1d( argument0 )] = argument1;
}



