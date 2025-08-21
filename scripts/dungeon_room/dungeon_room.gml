



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

function get_room_camera_bounds_from_tiles(roomWidth, roomHeight, startingX, startingY, tileMap){
    var _minX = startingX * tilemap_get_tile_height(tileMap);
    var _minY = startingY * tilemap_get_tile_width(tileMap);
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