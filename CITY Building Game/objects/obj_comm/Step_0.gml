// Set the building type for the Commercial object
var object_type = obj_comm; // the actual name of your Commercial object

// Check if it is the start of the turn
if obj_game.turn_start {
    // Check up
    if position_meeting(x + 1, y - 1, object_type) {
        var adjacent_building = instance_position(x + 1, y - 1, object_type);
        if adjacent_building.type == obj_res {
            // Scores 1 point per adjacent commercial
            score_perturn += 1;
        } else if adjacent_building.type == obj_park {
            // Scores 2 points per adjacent park
            score_perturn += 2;
        }
        // Generates 1 coin per adjacent residential
        coins_perturn += 1;
    }

    // Check down
    if position_meeting(x + 1, y + obj_game.cell_size + 1, object_type) {
        var adjacent_building = instance_position(x + 1, y + obj_game.cell_size + 1, object_type);
        if adjacent_building.type == obj_comm {
            // Scores 1 point per adjacent commercial
            score_perturn += 1;
        }
        // Generates 1 coin per adjacent residential
        coins_perturn += 1;
    }

    // Check left
    if position_meeting(x - 1, y + 1, object_type) {
        var adjacent_building = instance_position(x - 1, y + 1, object_type);
        if adjacent_building.type == obj_comm {
            // Scores 1 point per adjacent commercial
            score_perturn += 1;
        }
        // Generates 1 coin per adjacent residential
        coins_perturn += 1;
    }

    // Check right
    if position_meeting(x + obj_game.cell_size + 1, y + 1, object_type) {
        var adjacent_building = instance_position(x + obj_game.cell_size + 1, y + 1, object_type);
        if adjacent_building.type == obj_comm {
            // Scores 1 point per adjacent commercial
            score_perturn += 1;
        }
        // Generates 1 coin per adjacent residential
        coins_perturn += 1;
    }
}






