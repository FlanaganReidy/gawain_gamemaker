gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

cursor_x = 0;
cursor_y=0;

selected_x=-1;
selected_y=-1;

_dx = 0;
_dy = 0;

 _columns = 6
 _rows = 7
var _itemData = 3

inventory_array = array_create(_rows, 0);
for( var i = 0; i < _rows; i ++){
    
    row_array = array_create(_columns, 0)
    for(var j = 0; j < _columns; j++){
        row_array[j] = array_create(_itemData, 0)
        
    }
    inventory_array[i] = row_array
}

#macro item_name 0
#macro item_sprite 1
#macro item_amount 2