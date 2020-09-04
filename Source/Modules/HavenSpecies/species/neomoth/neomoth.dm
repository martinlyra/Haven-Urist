/* #################################
 *
 *	DEFINITION OF NEOMOTH SPECIES
 *
 * ################################# */

#define SPECIES_NEOMOTH		"Neomoth"
#define SPECIES_NEOMOTH_PLURAL	SPECIES_NEOMOTH + "s"
#define SPECIES_NEOMOTH_DESCRIPTION "\
TODO: Add description"

#include "neomoth_anatomy.dm"

#include "neomoth_sprite_accessory.dm"

/datum/species/neomoth
	name = 			SPECIES_NEOMOTH
	name_plural = 	SPECIES_NEOMOTH_PLURAL
	description = 	SPECIES_NEOMOTH_DESCRIPTION

	icobase = 		'Source/Modules/HavenSpecies/~icons/mothmen_base.dmi'
	preview_icon = 	'Source/Modules/HavenSpecies/~icons/mothmen_preview.dmi'

	default_f_style = SPECIES_NEOMOTH_DEFAULT_STYLE_ANTENNAE

	spawn_flags = SPECIES_CAN_JOIN

	// Copy n paste from species.dm
	brute_mod =      0.95                  // Physical damage multiplier.
	burn_mod =       1.05                  // Burn damage multiplier.
	oxy_mod =        1.00                  // Oxyloss modifier
	toxins_mod =     1.20                  // Toxloss modifier
	radiation_mod =  1.00                  // Radiation modifier
	flash_mod =      1.50                  // Stun from blindness modifier.
	metabolism_mod = 1.00                  // Reagent metabolism modifier
	stun_mod =       1.00                  // Stun period modifier.
	paralysis_mod =  1.00                  // Paralysis period modifier.
	weaken_mod =     1.00                  // Weaken period modifier.

/* #################################
 *
 *	Biology/Biochemistry
 *
 * ################################# */

	poison_types = list(
		"phoron" = TRUE,
		"chlorine" = TRUE,
		"methyl bromide" = TRUE
	)
