if (timers.step("spawnCircle",true)){
	var _x = irandom(room_width);
	var _y = irandom(room_height);
	
	instance_create_depth(_x,_y,0,oCircle);
	show_debug_message("spawn circle at "+string(_x)+", "+string(_y));
}