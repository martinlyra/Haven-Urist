
/datum/sprite_accessory/antennae
	name = "Basic antennae"

GLOBAL_LIST_EMPTY(sprite_accessory_antennae)

/hook/global_init/proc/populate_sprite_accessory_antennae_list()
	var/list/paths = typesof(/datum/sprite_accessory/antennae) - /datum/sprite_accessory/antennae
	for(var/path in paths)
		var/datum/sprite_accessory/A = new path()
		GLOB.sprite_accessory_antennae[A.name] = A
	//sortAssoc(GLOB.sprite_accessory_antennae)
