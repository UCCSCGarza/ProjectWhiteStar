npc_name = "crazygirl";
active = false;

stage = 0;          // 0 = intro not shown yet, 1 = choices shown, 2 = responding, etc.
selected_choice = 0;

choices = {};
current_text = "";

choice_keys = ["1","2","3"];

// Create new Dialogue Struct
dialogue = new Dialogue();

key_next = vk_space;

showing_dialogue = false;

current_dialogue = {};

alpha = 0;
