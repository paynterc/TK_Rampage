//scr_op_blood(bool)
var setting = real(argument[0]);
global.blood = setting;
scr_option_save("blood",setting);
