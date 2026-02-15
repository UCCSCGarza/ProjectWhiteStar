function load_area(area_name)
{
    global.current_area = area_name;
	global.conversation = false;

    // Destroy old NPCs & interactables
    with (obj_AreaObject) instance_destroy();

    // Destroy old background
    with (obj_Background) instance_destroy();

    // Depths
    var npc_depth = 0;      // NPCs in front
    var bg_depth  = -100;   // background behind everything

    switch(area_name)
    {
        case "boiler":
            // Spawn background
            var bg1 = instance_create_layer(0, 0, "Backgrounds", obj_Background);
            bg1.background_sprite = spr_boiler;

            // Spawn NPC
            var npc1 = instance_create_depth(480, 340, npc_depth, obj_engineer);
            npc1.sprite_index = spr_EngineerAfar;
            npc1.state      = "afar";
            npc1.x_default  = 480;
            npc1.y_afar     = 340;
            npc1.y_close    = 360; // adjust as needed
        break;

        case "captain":
            var bg2 = instance_create_layer(0, 0, "Backgrounds", obj_Background);
            bg2.background_sprite = spr_captain_quarters;

            var npc2 = instance_create_depth(480, 350, npc_depth, obj_captain);
            npc2.sprite_index = spr_CaptainAfar;
            npc2.state      = "afar";
            npc2.x_default  = 480;
            npc2.y_afar     = 250;
            npc2.y_close    = 370;

            if (global.clues.hull_number_mismatch && global.clues.stowaway_saw_switch)
            {
                var schematic = instance_create_depth(850, 420, npc_depth, obj_schematic);
            }
        break;

        case "dining":
            var bg3 = instance_create_layer(0, 0, "Backgrounds", obj_Background);
            bg3.background_sprite = spr_dining;

            var npc3 = instance_create_depth(500, 350, npc_depth, obj_rich);
			var npc4 = instance_create_depth(832, 320, npc_depth, obj_richwife);
            npc3.sprite_index = spr_RichRitchOneAfar;
            npc3.state      = "afar";
            npc3.x_default  = 300;
            npc3.y_afar     = 325;
            npc3.y_close    = 370;
			npc4.sprite_index = spr_RichRitchOneAfar;
            npc4.state      = "afar";
            npc4.x_default  = 700;
            npc4.y_afar     = 325;
            npc4.y_close    = 370;
        break;

        case "hidden":
            var bg4 = instance_create_layer(0, 0, "Backgrounds", obj_Background);
            bg4.background_sprite = spr_hidden;

            var npc5 = instance_create_depth(480, 300, npc_depth, obj_stowaway);
            npc5.sprite_index = spr_CrazyGirlAfar;
            npc5.state      = "afar";
            npc5.x_default  = 480;
            npc5.y_afar     = 300;
            npc5.y_close    = 320;
        break;
    }
}
