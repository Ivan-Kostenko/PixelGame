#region particles

//ParticleSystem1
_ps = part_system_create();
part_system_draw_order(_ps, true);

//GM_Warp_Lines
_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_line);
part_type_size(_ptype1, 2, 1, 0, 0);
part_type_scale(_ptype1, 0.5, 0.1);
part_type_speed(_ptype1, 3, 10, 0, 0);
part_type_direction(_ptype1, 0, 360, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, true);
part_type_colour3(_ptype1, $FFFFFF, $00D4FF, $FF7B00);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 20, 80);

_pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -0.5, 0.5, -0.5, 0.5, ps_shape_ellipse, ps_distr_linear);

part_system_position(_ps, x, y);

#endregion