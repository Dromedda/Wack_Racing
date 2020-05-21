global.pt_boost = part_type_create(); 

//Color 
var particle_color1 = make_color_rgb(230, 120, 20); 

//Add Particle Attributes Here!
part_type_shape(global.pt_boost, pt_shape_pixel);
part_type_size(global.pt_boost, 16, 24, 0.8, 0);
part_type_color1(global.pt_boost, particle_color1); 
part_type_life(global.pt_boost, 28, 32); 
part_type_direction(global.pt_boost, 0, 359, 0, 0); 
part_type_speed(global.pt_boost, 0.5, 2, 0.01, 1); 