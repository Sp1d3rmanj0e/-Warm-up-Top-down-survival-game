/// @description Animations

// If in contact with the player
contact = place_meeting(x,y,obj_player);

if (contact)
{
	image_alpha = 0.75;
}
else
{
	image_alpha = 1;
}

if (keyboard_check_pressed(ord("E")))
{
	tapped = true;
}