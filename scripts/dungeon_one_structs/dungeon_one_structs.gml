dungeon_one_structs_ = {
    flood_level:3,
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