#region vars

var left_pressed = keyboard_check(vk_left)
var right_pressed = keyboard_check(vk_right)
var down_pressed = keyboard_check(vk_down)
var up_pressed = keyboard_check(vk_up)
var shift_pressed = keyboard_check_pressed(vk_shift)

var left_released = keyboard_check_released(vk_left)
var right_released = keyboard_check_released(vk_right)
var down_released = keyboard_check_released(vk_down)
var up_released = keyboard_check_released(vk_up)
var shift_released = keyboard_check_released(vk_shift)

var xmove = (right_pressed - left_pressed) * global.spd
var ymove = (down_pressed - up_pressed) * global.spd

var controls_pressed = left_pressed || right_pressed || down_pressed || up_pressed
var controls_released = left_released || right_released || down_released || up_released

#endregion

#region movement

move_and_collide(xmove, ymove, obj_wall1)

if (left_pressed){
	image_angle = 90
} else if (right_pressed){
	image_angle = -90
} else if (down_pressed){
	image_angle = 180
} else if (up_pressed){
	image_angle = 0
}

if (shift_pressed){
	global.spd = 6
} else if (shift_released){
	global.spd = 5
}

#endregion

#region trail

if (controls_pressed){
	trail_delay -= 1
	if (trail_delay = 0){
		instance_create_layer(x, y, "Instances", obj_trail)
		trail_delay = 5
	}
}

#endregion

#region collisions

if (place_meeting(x, y, obj_spear)){
	room_restart()
}

#endregion