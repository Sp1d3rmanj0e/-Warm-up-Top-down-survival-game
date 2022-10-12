// Spawn random resources

// Go to random screen location
x = irandom(room_width);
y = irandom(room_height);

// Create random resources

instance_create_layer(x,y,"instances",obj_resources);