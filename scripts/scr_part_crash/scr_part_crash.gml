global.pt_crash = part_type_create(); 

//Color 
var particle_color1 = make_color_rgb(255, 0, 0); 

//Add Particle Attributes Here!
part_type_shape(global.pt_crash, pt_shape_pixel);
part_type_size(global.pt_crash, 6, 8, 0.75, 0);
part_type_color1(global.pt_crash, particle_color1); 
part_type_life(global.pt_crash, 30, 40); 
part_type_direction(global.pt_crash, 0, 359, 8, 0); 
part_type_speed(global.pt_crash, 5, 6, 1, 0.5); 