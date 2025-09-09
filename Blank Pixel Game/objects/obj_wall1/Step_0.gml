if (place_meeting(x, y+1, object)){
	//show_debug_message("up")
	image_xscale = 1.1
	image_yscale = 1.1
	object.y = object.y + 5
} else if (place_meeting(x, y-1, object)){
	//show_debug_message("dn")
	image_xscale = 1.1
	image_yscale = 1.1
	object.y = object.y - 5
} else if (place_meeting(x+1, y, object)){
	//show_debug_message("lf")
	image_xscale = 1.1
	image_yscale = 1.1
	object.x = object.x + 5
} else if (place_meeting(x-1, y, object)){
	//show_debug_message("rt")
	image_xscale = 1.1
	image_yscale = 1.1
	object.x = object.x - 5
}

image_yscale = lerp(image_yscale, 1, 0.1)
image_xscale = lerp(image_xscale, 1, 0.1)