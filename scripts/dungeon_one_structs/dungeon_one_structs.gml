//water level 0 (mid water)
//water level 1 (high water)

high_water_water = layer_tilemap_get_id("high_water_water");
high_water_deep_water = layer_tilemap_get_id("high_water_deep_water");
floor_tiles = layer_tilemap_get_id("high_water_floor");
global_collision = layer_tilemap_get_id("high_water_col");

dungeon_one_structs_ = {
    water_level:1,
    roomStruct:{
        Room1: {
            screen0: {
                width:20, 
                height:18, 
                offSetX:0, 
                offSetY:0
                },
            screen1:{
                width:20, 
                height:18, 
                offSetX:0, 
                offSetY:16,
            },
        },
        FloodedAqueduct:{
            screen0:{
                width:20,
                height:18,
                offSetX:0,
                offSetY:80
            },
            screen1:{
                width:20,
                height:18,
                offSetX:20,
                offSetY:80
            },
            screen2:{
                width:20,
                height:18,
                offSetX:40,
                offSetY:80
            },
            screen3:{
                width:20,
                height:18,
                offSetX:60,
                offSetY:80
            },
            screen4:{
                width:20,
                height:18,
                offSetX:80,
                offSetY:80
            },
            
        },
        FloodedAqueductA_HighWater:
            {screen0:{
                width:20,
                height:18,
                offSetX:0,
                offSetY:16
            },
            screen1:{
                width:20,
                height:18,
                offSetX:20,
                offSetY:16
            },
            screen2:{
                width:20,
                height:18,
                offSetX:40,
                offSetY:16
            },
            screen3:{
                width:20,
                height:18,
                offSetX:60,
                offSetY:16
            },
            screen4:{
                width:20,
                height:18,
                offSetX:80,
                offSetY:16
            },
                screen5:{
                width:20,
                height:18,
                offSetX:100,
                offSetY:16
            }, screen6: {
                width:20,
                height:18,
                offSetX:80,
                offSetY:0
            }, screen7: {
                width:20,
                height:18,
                offSetX:40,
                offSetY:0    
            }
        }
        
    },
    puzzleStruct:{
        Room1:{
            screen1:
                {
                    solved:false,
                    reward_collected:false, 
                    solved_locations:[[14, 22]],
                    solve_count:0
                }
        }
    
    }
}
 #macro dungeon_one_structs global.dungeon_one_structs_ 