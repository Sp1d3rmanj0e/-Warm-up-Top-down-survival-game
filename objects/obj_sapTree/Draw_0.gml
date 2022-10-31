/// @description Insert description here
// You can write your code in this editor

draw_self();

if (contact && !tapped)
{
	draw_set_halign(fa_center);
	draw_text(x,y-sprite_height+20,"Press E to gain Sap");
	draw_set_halign(fa_left);
}

if (tapped)
{
	image_index = 1;
}
else
{
	image_index = 0;
}