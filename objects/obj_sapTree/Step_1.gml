/// @description Animations


if (place_meeting(x,y,obj_player))
{
	alpha = 0.5;
	with (obj_player) image_alpha = 0.5;
}
else
{
	alpha = 1;
	with (obj_player) image_alpha = 1;
}

image_alpha = alpha;