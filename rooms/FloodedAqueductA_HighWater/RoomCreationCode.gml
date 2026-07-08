waterLayerId = layer_get_id("Water");
floorLayerId = layer_get_id("Floor");
deepwaterLayerId = layer_get_id("DeepWater");

var live_function = function (){
    layer_shader_start(0)
}
layer_script_begin(waterLayerId,live_function)
layer_script_end(waterLayerId, layer_shader_end)

var live_2_function = function (){
    layer_shader_start(1)
}
layer_script_begin(floorLayerId,live_2_function)
layer_script_end(floorLayerId, layer_shader_end)

var live_3_function = function(){
    layer_shader_start(5)
}
layer_script_begin(deepwaterLayerId,live_3_function)
layer_script_end(deepwaterLayerId, layer_shader_end)