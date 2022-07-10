# PXLTimer
A struct-based timer system for Game Maker 

**There are 2 ways of using PXLTimer:**

## Method use

### Create Event
```
//initiate timer struct
timers = new PXLTimer();

//add timer
timers.add("spawnCircle",30,function(){
	var _x = irandom(room_width);
	var _y = irandom(room_height);
	
	instance_create_depth(_x,_y,0,oCircle);
	show_debug_message("spawn circle at "+string(_x)+", "+string(_y));
});
```

### Step Event
```
timers.step("spawnCircle",true);
```

## If check use
### Create Event
```
//initiate timer struct
timers = new PXLTimer();

//add timer
timers.add("spawnCircle",30);
```

### Step Event
```
if (timers.step("spawnCircle",true)){
	var _x = irandom(room_width);
	var _y = irandom(room_height);
	
	instance_create_depth(_x,_y,0,oCircle);
	show_debug_message("spawn circle at "+string(_x)+", "+string(_y));
}
```

WARNING: This is an early version of this, I am not smart, there a possibly better ways of doing this.
