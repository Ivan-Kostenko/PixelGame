#region vars

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])
//show_debug_message(string(camera_get_view_width(view_camera[0])) + " " + string(camera_get_view_height(view_camera[0])))

var target_x = object.x - camera_get_view_width(view_camera[0]) / 2
var target_y = object.y - camera_get_view_height(view_camera[0]) / 2

#endregion

lerp_x = lerp(cam_x, target_x, 0.1)
lerp_y = lerp(cam_y, target_y, 0.1)

camera_set_view_pos(view_camera[0], lerp_x, lerp_y)
