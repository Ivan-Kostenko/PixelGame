if (place_meeting(x, y, object)){
	instance_destroy()
	global.shards_collected += 1
	part_emitter_burst(_ps, _pemit1, _ptype1, 10)
	
	instance_create_layer(obj_screenfx.x, obj_screenfx.y, "Screen", obj_screenfx)
	
	if (obj_screenfx.image_alpha = 0){
		instance_destroy(obj_screenfx)
	}
}