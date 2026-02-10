// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_area(area_name)
{
    global.current_area = area_name;

    // Destroy old area objects
    with (oAreaObject)
    {
        instance_destroy();
    }

    switch(area_name)
    {
        case "boiler":
            layer_background_sprite("Background", spr_boiler);
            instance_create_layer(600, 350, "Instances", obj_Engineer);
        break;

        case "captain":
            layer_background_sprite("Background", spr_captain);
            instance_create_layer(600, 350, "Instances", obj_Captain);

            // Only spawn schematic if clues unlocked
            if (global.clues.hull_number_mismatch
            && global.clues.stowaway_saw_switch)
            {
                instance_create_layer(850, 420, "Instances", obj_HiddenSchematic);
            }
        break;

        case "dining":
            layer_background_sprite("Background", spr_dining);
            instance_create_layer(600, 350, "Instances", obj_Rich);
        break;

        case "hidden":
            layer_background_sprite("Background", spr_hidden);
            instance_create_layer(600, 350, "Instances", obj_Stowaway);
        break;
    }
}