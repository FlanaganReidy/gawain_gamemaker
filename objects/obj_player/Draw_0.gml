shader_set(shader_palette_swap)
var samp_targets = shader_get_sampler_index(shader_palette_swap, "samp_targets");
var samp_replacements = shader_get_sampler_index(shader_palette_swap, "samp_replacements");
texture_set_stage(samp_targets, sprite_get_texture(sprite_pallettes, 0));
texture_set_stage(samp_replacements, sprite_get_texture(sprite_pallettes, 1));
draw_self()
shader_reset()
//draw_line_colour(x, y, x + vector_x*10, y+vector_y*10, c_black, c_black)