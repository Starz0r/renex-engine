///warp_to(room,[x,y])

if (argument_count>=2 && !Player.dead) {
    move_player(argument[1],argument[2],0)
} else instance_destroy_id(Player)

input_clear()
room_goto(argument[0])
