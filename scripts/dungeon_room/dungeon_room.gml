

tile_size_ = 16;

/**@description Function that sets the clamped bounds of a room as well as can switch object to follow
 * @param {integer} minX x coordinate of the left bound of the room in pixels
 * @param {integer} minY y coordinate of the upper bound of the room in pixels
 * @param {integer} maxX x coordinate of the right bound of the room in pixels
 * @param {integer} maxY y coordinate of the lower bound of the room in pixels
 * @param {Asset.GMObject} objToFollow object within the room for the camera to follow.
*/



function move_dungeon_room(minX, minY, maxX, maxY, objToFollow){
    
    halfViewWidth = camera_get_view_width(view_camera[0]/2)
    halfViewHeight = camera_get_view_width(view_camera[0]/2)
    
    var _cx = objToFollow.x - halfViewWidth;
    var _cy = objToFollow.y - halfViewHeight;
    
    _cx = clamp(_cx, minX, maxX);
    _cy = clamp(_cy, minY, maxY);
    
    camera_set_view_pos(view_camera[0], _cx, _cy)

}

function get_size_from_tiles(widthInTiles, heightInTiles, tileMap){
    var _tileHeight = tilemap_get_tile_height(tileMap);
    var _tileWidth = tilemap_get_tile_width(tileMap)
    
    var _roomHeight = _tileHeight * heightInTiles;
    var _roomWidth = _tileWidth * widthInTiles;
    
    return {
        width:_roomWidth,
        height:_roomHeight
    }
}

function get_room_camera_bounds_from_tiles(roomWidth, roomHeight, startingXInTiles, startingYInTiles, tileMap){
    var _minX = startingXInTiles * tilemap_get_tile_height(tileMap);
    var _minY = startingYInTiles * tilemap_get_tile_width(tileMap);
    var result = get_size_from_tiles(roomWidth, roomHeight, tileMap);
    var _maxX = _minX + result.width;
    var _maxY = _minY + result.height;
    
    return{
        minX: _minX,
        minY: _minY,
        maxX: _maxX,
        maxY: _maxY
    }
    
}

function construct_room_object(roomArray){
    var _startingX;
    var _startingY;
    var i = 0;
    var k = 0;
    for (i = 0; 0<roomArray.length; i++){
        for(k = 0; 0<roomArray[i].length; k++){
            
        }
    }
        
    
}
function checkSolveLocation(current_x, current_y, solved_array, tileMap){
    var _tileHeight = tilemap_get_tile_height(tileMap);
    var _tileWidth = tilemap_get_tile_width(tileMap)
    for(var i = 0; i < array_length(solved_array); i++){
        var temp_x = solved_array[i][0] * _tileWidth;
        var temp_y = solved_array[i][1] * _tileHeight;
        debug_event(temp_x);
        if(temp_x==current_x && temp_y==current_y){
            return true;
        }
    }
    return false;
}

// 0 is midwater
// 1 is highwater
// 2 is swap
//use this to change the water level in the object, 
//avoid setting it directly
function changeWaterLevel(water_level = 2){
    switch(water_level){
        case 2:
            dungeon_one_structs.water_level = !dungeon_one_structs.water_level;
        default:
            dungeon_one_structs.water_level = water_level
            
    }
}

function lowerWater(){
    layer_set_visible("high_water_water", false);
    layer_set_visible("high_water_deep_water", false);
    layer_set_visible("high_water_floor", false);
    layer_set_visible("high_water_col", false);
    layer_set_visible("mid_water_col", true);
    layer_set_visible("mid_water_ladder", true);
    layer_set_visible("mid_water_floor", true);
    layer_set_visible("mid_water_water", true);
    layer_set_visible("mid_water_deep_water", true);
}
function raiseWater(){
    layer_set_visible("high_water_water", true);
    layer_set_visible("high_water_deep_water", true);
    layer_set_visible("high_water_floor", true);
    layer_set_visible("high_water_col", true);
    layer_set_visible("mid_water_col", false);
    layer_set_visible("mid_water_ladder", false);
    layer_set_visible("mid_water_floor", false);
    layer_set_visible("mid_water_water", false);
    layer_set_visible("mid_water_deep_water", false);
}