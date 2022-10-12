// Sprinting
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