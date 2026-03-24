shader_set(shader_palette_swap)
samp_targets = shader_get_sampler_index(shader_palette_swap, "samp_targets");
samp_replacements = shader_get_sampler_index(shader_palette_swap, "samp_replacements");
texture_set_stage(samp_targets, sprite_get_texture(sprite_pallettes, 0));
texture_set_stage(samp_replacements, sprite_get_texture(sprite_pallettes, 2));
draw_self()
shader_reset()