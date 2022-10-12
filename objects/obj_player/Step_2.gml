/// @description Non-movement

// Food decay
global.hunger -= 1/room_speed;

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