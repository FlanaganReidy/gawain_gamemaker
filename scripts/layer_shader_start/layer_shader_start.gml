global.sub_img = 0;

function layer_shader_start(sub_img){
        if(event_type == ev_draw){
            if(event_number == ev_draw_normal){
                shader_set(shader_palette_swap)
                var samp_targets = shader_get_sampler_index(shader_palette_swap, "samp_targets");
                var samp_replacements = shader_get_sampler_index(shader_palette_swap, "samp_replacements");
                texture_set_stage(samp_targets, sprite_get_texture(sprite_pallettes, 0));
                texture_set_stage(samp_replacements, sprite_get_texture(sprite_pallettes, sub_img));
            }
        }
}