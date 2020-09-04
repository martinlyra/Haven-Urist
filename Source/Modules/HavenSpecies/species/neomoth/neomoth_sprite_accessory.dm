
#define SPECIES_NEOMOTH_DEFAULT_STYLE_ANTENNAE 	"Baseline antennae"
#define SPECIES_NEOMOTH_DEFAULT_STYLE_WINGS		"Generic pattern"

/*
 * Antennae accessories for the head
 */

// TODO: Change type from facial_hair to antennae
/datum/sprite_accessory/facial_hair/neomoth
	name = SPECIES_NEOMOTH_DEFAULT_STYLE_ANTENNAE
	icon = 'Source/Modules/HavenSpecies/~icons/mothmen_accessories.dmi'
	icon_state = "neomoth_default"

	gender = NEUTER
	species_allowed = list(SPECIES_NEOMOTH)

	do_colouration = 0

/*
 * Wing style accessories
 */

/datum/sprite_accessory/wings/neomoth
	name = SPECIES_NEOMOTH_DEFAULT_STYLE_WINGS
	icon = 'Source/Modules/HavenSpecies/~icons/mothmen_wings.dmi'
	icon_state = "default"

	gender = NEUTER
	species_allowed = list(SPECIES_NEOMOTH)
