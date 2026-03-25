
waterLayerId = layer_get_id("Water");
floorLayerId = layer_get_id("Floor")

var live_function = function (){
    layer_shader_start(4)
}
layer_script_begin(waterLayerId,live_function)
layer_script_end(waterLayerId, layer_shader_end)

var live_2_function = function (){
    layer_shader_start(1)
}
layer_script_begin(floorLayerId,live_2_function)
layer_script_end(floorLayerId, layer_shader_end)