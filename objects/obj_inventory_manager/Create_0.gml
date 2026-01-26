var _columns = 3
var _rows = 8
var _itemData = 4

inventory_array = array_create(_columns, 0);
for( var i = 0; i < _columns; i ++){
    
    row_array = array_create(_rows, 0)
    for(var j = 0; j < _rows; j++){
        row_array[j] = array_create(_itemData, 0)
        
    }
    inventory_array[i] = row_array
}

#macro item_name 0
#macro item_sprite 1
#macro item_amount 2