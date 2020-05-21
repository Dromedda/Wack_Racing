global.pt_smoke = part_type_create(); 

//Color 
var particle_color1 = make_color_rgb(230, 230, 230); 
var f_speed = obj_player.f_speed; 


//Add Particle Attributes Here!
part_type_shape(global.pt_smoke, pt_shape_pixel);
part_type_size(global.pt_smoke, 24, 32, -0.01, 0);
part_type_color1(global.pt_smoke, particle_color1); 
part_type_life(global.pt_smoke, 8, 12); 
part_type_direction(global.pt_smoke, 0, 359, 0, 0); 
part_type_speed(global.pt_smoke, f_speed/2, f_speed, 1, 0.5); 