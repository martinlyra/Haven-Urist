
/datum/sprite_accessory/wing_style
	name = "Generic wings"

GLOBAL_LIST_EMPTY(sprite_accessory_wings)

/hook/global_init/proc/populate_sprite_accessory_wings_list()
	var/list/paths = typesof(/datum/sprite_accessory/wing_style) - /datum/sprite_accessory/wing_style
	for(var/path in paths)
		var/datum/sprite_accessory/A = new path()
		GLOB.sprite_accessory_wings[A.name] = A
