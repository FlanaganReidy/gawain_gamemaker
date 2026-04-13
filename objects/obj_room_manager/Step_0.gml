
debug_event(currentPuzzleGroup)
if (currentPuzzleGroup.screen1.solved == true){
    create_dialog([{
        name:"Guidestone",
        msg: "~nailed it~"
    }])
}