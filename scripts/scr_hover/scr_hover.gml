// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hover(mag)
{
	if (!variable_instance_exists(id, "hover")) hover = 0;
	hover += 1/30;
	if (hover > 359) hover = 0;
	y -= sin(hover) * mag;
}