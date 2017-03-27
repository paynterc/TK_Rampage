/// Select a random item from a weighted list
// scr_random_weighted(array_items, array_weights)

// declare variables
var items = argument0;
var weights = argument1;
var maxRoll = 0;
var roll;
var r_wt;

 
// populate table and determine max roll

for(var i = 0; i<array_length_1d(items); i++)
{
    if(weights[i]<0) continue;
    if(i<array_length_1d(weights)){
        maxRoll += weights[i];   
    }else{
        weights[i]=1;
        maxRoll += 1;
    }

}

// Make the roll
roll = irandom(maxRoll);

for(var i = 0; i<array_length_1d(weights); i++)
{
   if(weights[i]<0) continue;
   if(roll < weights[i]) return items[i];
   
   // otherwise, subtract weight before moving on
   roll -= weights[i];
   //roll--;
}

return noone;

