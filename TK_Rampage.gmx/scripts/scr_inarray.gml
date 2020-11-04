///scr_inarray(item,array)
var if( !is_array(argument1) ) return false;
var result = false;
for(var i=0; i<array_length_1d(argument1); i++){
    if(argument1[i]==argument0){
        result = true;
        break;
    }
} 
return result;
