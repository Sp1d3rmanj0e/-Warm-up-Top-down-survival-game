// Sprinting Movement and Collisions
if (keyShift)
{
	walkSp = sprintSpeed;
}
else
{
	walkSp = normalSpeed;
}

// Basic movement
hsp = (keyRight - keyLeft) * walkSp;
vsp = (keyDown - keyUp) * walkSp;

#region stupid collision crap
var bbox_side = 0;

/*
 * if (hsp > 0) x = x - (x mod 64) + 63 - (bbox_right - x);
 *
 * x = x - (x mod 64) --> Brings the sprite back to the nearest left 64 snap
 * + 63               --> pushes the player's origin right up to the wall
 * - (bbox_right - x) --> Moves the player back the distance from bbox_right 
 *                        to the origin so the player isn't halfway into the wall
*/

// Horizontal Collision

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) > curElevation) 
|| (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) > curElevation)
{
	if (hsp > 0) x = x - (x mod 64) + 63 - (bbox_right - x);
	else x = x - (x mod 64) - (bbox_left - x);
	hsp = 0;
}

// Vertical Collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) > curElevation) 
|| (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) > curElevation)
{
	if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);
	else y = y - (y mod 64) - (bbox_top - y);
	vsp = 0;
}

curElevation = tilemap_get_at_pixel(tilemap,x,y);

if (tilemap_get_at_pixel(tilemap,x,y) == 0)
{
	curElevation = 3;
}
#endregion collisions

// Flip player facing based on direction of motion
if (hsp > 0) // If moving right
{
	image_xscale = 1;
}
else if (hsp < 0) // If moving left
{
	image_xscale = -1;
}





// Initiate movement
x += hsp;
y += vsp;