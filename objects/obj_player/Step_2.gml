/// @description Non-movement

// Food decay
global.hunger -= 1/room_speed;
if global.hunger < 0 {global.hunger = 0;}

// Food gain
var _inst = instance_place(x,y,obj_resources); // Gets id of resources in contact
if (_inst != noone)
{
	instance_destroy(_inst); // Destroy resource
	if (_inst.image_index == 1) // If resource is correct type
	{
		global.hunger = min(global.hunger+10,100); // Adds 10 to hunger, caps at 100
	}
}

// health loss on 0 hunger
if (global.hunger <= 0)
{
	hungerchunk_counter += 1/room_speed;
	if (hungerchunk_counter >= 2.5)
	{
		hungerchunk_counter = 0;
		hp -= 5;
	}
}