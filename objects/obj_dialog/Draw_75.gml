var _dx = 0;
var _dy = gui_h *.7;
var _box_w = gui_w;
var _box_h = gui_h - _dy;

draw_sprite_stretched(ui_simple,0,_dx,_dy, _box_w, _box_h)

_dx += 8;
_dy += 8;

draw_set_font(font_gb_mono)