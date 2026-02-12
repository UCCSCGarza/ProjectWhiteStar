// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_area(area_name)
{
    global.current_area = area_name;

    // Destroy old NPCs & interactables (NOT background)
    with (obj_AreaObject)
    {
        instance_destroy();
    }

    switch(area_name)
    {
        case "boiler":

            with (obj_Background)
            {
                background_sprite = spr_boiler;
            }

            instance_create_layer(600, 350, "Instances", obj_engineer);
        break;


        case "captain":

            with (obj_Background)
            {
                background_sprite = spr_captain;
            }

            instance_create_layer(600, 350, "Instances", obj_captain);
            // Only spawn schematic if clues unlocked
            if (global.clues.hull_number_mismatch
            && global.clues.stowaway_saw_switch)
            {
                instance_create_layer(850, 420, "Instances", obj_schematic);
            }
        break;


        case "dining":

            with (obj_Background)
            {
                background_sprite = spr_dining;
            }

            instance_create_layer(600, 350, "Instances", obj_rich);
        break;


        case "hidden":

            with (obj_Background)
            {
                background_sprite = spr_hidden;
            }

            instance_create_layer(600, 350, "Instances", obj_stowaway);
        break;
    }
}
